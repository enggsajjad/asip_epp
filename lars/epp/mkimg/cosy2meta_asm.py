#!/usr/bin/python


##########################################################################
#
#	Written by K.Mita,
#	Modified by S.Kobayashi 		July 11, 2001.
#       Translated into Python and Customized for ee*.pdb
#                              by T.Yoshimura   April 16, 2003.
#
##########################################################################


from sys import argv, stderr, exit
import re
from string import split, lower, replace, find, join


#*********************************************************************
# check argument
#*********************************************************************
if len(argv) <> 3:
    stderr.write("Usgae: cosy2meta_asm_y inputfile outputfile\n")
    exit(1)


#*********************************************************************
# argument is txt file name
#*********************************************************************
(cosyfile, spimfile) = argv[1:3]


#*********************************************************************
# File open
#  variable "infile" is input file
#  variable "outfile" is output file
#*********************************************************************
infile = open(cosyfile)
outfile = open(spimfile, "w")


# Sascha - python syntax
# [:3] means first 3 characters
# [:-1] means last element
# 
# split
# sub
# join
# lower
# re.compile
# replace


#*********************************************************************
# cosy2meta_asm main
#*********************************************************************
num = 0  # line number
for line in infile.readlines():
    num = num+1
    # separate comment from string
    if line[-1] == '\n':
        line = line[:-1]
    (code, comment) = (split(line, ";", 1) + [""])[0:2]


    # divide code into label, opecode, operand
    (label, opcode, code) = (re.compile("\s+").split(code, 2)+["", ""])[:3]
    # opcode = lower(opcode)
    operand = code


    
    # comment out unavailable assembler controll instruction
    availinst = [".addr_space", ".space",  ".data",  ".code",
                 ".qword",      ".half",   ".org",   ".data.32",
                 ".data.16",    ".data.8", ".align", ".section"]
    if opcode and opcode[0] == '.' and not(opcode in availinst):
	if operand:
            opcode = opcode + "\t" + operand
        if comment:
            comment = "\t;" + comment
        comment = opcode + comment
        opcode = ""
        operand = ""


    # convert register name
    # operand = replace(operand, "%GPR", "%r")


    # convert instruction
    instset = [["NOP"],
               ["LI", "LA"],
               ["ADDI", "ADDUI", "ANDI", "ORI", "SLL",
                "SLTI", "SLTIU", "SRA",  "SRL", "XORI"],
               ["MSFR", "MSFRU"],
               ["LHI"],
#               ["J", "JAL"],
#               ["BNEZ", "BEQZ"],
               ["jr"]]
		
	       
    if opcode in instset[0]:
        opcode = "nop"
        operand = ""

    if opcode in instset[1]:
        (op1, op2) = (split(operand, ",") + [""])[:2]
        op2 = re.compile("[*$]").sub("", op2) #remove * or $ from beginning of op2
        outfile.write(label + "\tlhi\t"+op1+",$(" + op2 + "/0x10000)\n")
        outfile.write("\tnop\n")
        outfile.write("\tnop\n")
        outfile.write("\tnop\n")
        opcode = "ori"
        op2 = "$(" + op2 + "%0x10000)"
        operand = join([op1, op1, op2], ",") # immediate as last operand

    elif opcode in instset[2]:
        (op1, op2, op3) = (split(operand, ",") + ["",""])[:3]
        if op3 and re.compile("\s+").sub("", op3)[0] == "$":
            val = int(re.compile("\s+").sub("", op3)[1:])
        else:
            val = 0
        if opcode == "ADDI" and val > 32767:
            if val < 0:#65535:
                opcode = "ADDUI"
            else:
                p = re.compile("\s+")
                if p.sub("", op1) == p.sub("", op2):
                    stderr.write("Unsupported format:")
                    stderr.write(label + "\t" + opcode + "\t" + operand)
                else:
#                    valh = (val & 0xffff0000) >> 16
                    valh = (val >> 16 ) & 0xffff	# Testweise, um das Warning loszuwerden
                    vall = val & 0xffff
                    outfile.write(label+"\tLHI\t"+"$"+str(valh)+", "+op1+"\n")
                    label = ""
                    opcode = "ORI"
                    operand = join([op1, op1, "$"+str(vall)], ",")
        else:
            operand = join([op1, op2, op3], ",")

    elif opcode in instset[3]:
        (op1, op2, op3, op4) = (split(operand, ",") + ["","",""])[:4]
        operand = join([op1, op2, op3, op4], ",")

    elif opcode in instset[4]:
        (op1, op2) = (split(operand, ",") + [""])[:2]
        if find(op2, "%GPR0") < 0:
            operand = join([op1, op2], ",")

#    elif opcode in instset[5]:
#        if not label:
#            label = "LL" + str(num) + ":"
#        here = label
#        here = replace(here, ":", "")
#        operand = "$((" + operand + "-" + here + ")/4-1)"
#
#    elif opcode in instset[6]:
#        (op1, op2) = (split(operand, ",") + [""])[:2]
#        if not label:
#            label = "LL" + str(num) + ":"
#        here = label
#        here = replace(here, ":", "")
#        op2 = "$(((" + op2 + "-" + here + ")/4)-1)"
#        operand = join([op1, op2], ",")
        
    elif opcode in instset[5]:
       outfile.write("\tnop\n")


    # output
    code = label

    if opcode:
        code = code + "\t" + opcode
    if operand:
        code = code + "\t" + operand
    if comment:
        code = code + "\t;" + comment
    outfile.write(code + "\n")

    if opcode in instset[4] or opcode == "jalr":
        outfile.write("\tnop\t; Automatically added by cosy2meta_asm.sh\n")

    if (opcode == ".section") and (operand ==".text"):
	outfile.write("\t.addressing\tWord\n")


# close file
infile.close()
outfile.close()
