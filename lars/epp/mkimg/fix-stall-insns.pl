#!/usr/bin/perl

use warnings;

# Instructions that may stall and the number of nops after them
%stalling_insns = (mult => 3,
	multu => 3, 
	div => 3,
	divu => 3,
	mac => 3,
	mad => 3,
	putc => 3,
	putci => 3,
	getc => 3,
	sw => 4,
	lw => 4,
	jal => 3,
	jr => 3);

# scan a hash. check if any key is part of $line. if it is, return the corresponding hash value
# $line is a assembly source line, hash is the above %stalling_insns. if the assembly line is one
# of the problematic instructions, the number of stalls is returned
sub hash_search {
	my ($line, $hash) = @_;

	foreach my $k (keys %$hash) {
		return $hash->{$k} if $line =~ /\b$k\b/;
	}

	return -1;
}

$prev_stalls = 0;
$stall_dist = 3;
$stalls_since_last = 0;
$fix_counter = 0;
$nop_counter = 0;
die "usage: $0 filename\n" if $#ARGV == -1;
open FN, "<$ARGV[0]" or die "Can't open $ARGV[0] for reading: $!";

# Scan each line of the assembly
while ($line = <FN>) {
	# Ignore comments and labels
	next if $line =~ /^\s*(;.*)?$/ or $line =~ /^\s*[^:]\s*:\s*$/;

	# Check if assembly source line contains one of the stalling instructions.
	if (grep {$line =~ /[^;]*$_/} keys %stalling_insns) {
		# line constains a stalling instruction
		if ($stall_dist < $stalls_since_last) {
			# there haven't been enough non-stalling instructions since the last stalling instruction
			if ($prev_stalls != 1) {
				# output nops (just enough that the minimal number of non-stalling instructions between
				# the last and this stalling instruction is maintained)
				$fix_counter++;
				for (my $i = 0; $i < $stalls_since_last - $stall_dist; $i++) {
					$nop_counter++;
					print "\tnop\t; Automatically added by fix-stall-insns.pl\n";
				}
				# reset counters
				$stall_dist = 0;
				$prev_stalls = 1;
			} else {
				# last line was a stalling instruction and the one before wasn't, hence we can
				# just output this instruction without additional nops (as groups of two stalling
				# instructions shouldn't cause problems)
				$prev_stalls++;
			}
		} else {
			# there have been enough non-stalling instructions since the last stalling instruction,
			# no nops necessary.
			$stall_dist = 0;
			# Indicate that this line is stalling (for the next iteration)
			$prev_stalls = 1;
		}
		# check how many non-stalling instructions this problematic instruction requires (for the following iterations)
		$stalls_since_last = &hash_search($line, \%stalling_insns);
#		print STDERR "; $stalls_since_last\n";
	} else {
		# the line is unproblematic, increase distance to last stalling instruction
		$stall_dist++;
		# and indicate that this line is not stalling (for the next iteration)
		$prev_stalls = 0;
	}

} continue {
	# this block is executed even if a while iteration is skipped with "next"
	print $line;
}

print STDERR "fix-stall-insns:\t\t$fix_counter multi-cycle problems encountered, $nop_counter NOPs inserted.\n";

exit 0;
