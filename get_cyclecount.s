TEXT ·get_cyclecount(SB),$0
    MRC 15, 0, R0, C9, C13, 0 // read counter to R0
    MOVW R0, ret+0(FP) 
    RET

