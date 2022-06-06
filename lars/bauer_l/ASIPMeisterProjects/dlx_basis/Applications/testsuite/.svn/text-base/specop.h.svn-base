#ifdef COSY
	/* INLINE-ASSEMBLER FÜR COSY */
    asm int SNAME(int a, int b)
	{
		@[ .barrier ]
		nop
		nop
		nop
		SNAME @{a}, @{b}
		nop
		nop
		nop
	};

#else
	/* LEERE DUMMY-BEFEHLE */
	int SNAME(int a, int b) { return 0; };
#endif

#undef SNAME
