TEXT ·init_perfcounters(SB),$0

    MOVW x+0(FP), R4
    MOVW y+4(FP), R5
  

    // program the performance-counter control-register
    MCR 15, 0, R4, C9, C12, 0

    // Enable all counters
    MCR 15, 0, R5, C9, C12, 1
 
    // Clear overflows
    MCR 15, 0, R5, C9, C12, 3

    // Debug: Illegal write to crash and dump reg values
    // MCR 15, 0, R5, C11, C0, 0
    
        RET

