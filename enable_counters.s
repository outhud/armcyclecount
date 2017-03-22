TEXT ·enable_counters(SB),$0

	MOVW x+0(FP), R4
	MCR 15, 0, R4, C9, C12, 1
 
        RET

