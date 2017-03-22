package main

import (
        "fmt"
)

func get_cyclecount() int32
func init_perfcounters(x uint32, y uint32) int32
func issue_dmb_isb() int32
func issue_dmb() int32

func main() {

  init_perfcounters(7, 0x8000000F) // 0x07 to Performance Monitor Control Register to enable and reset all counters

  overhead := get_cyclecount()                      
  overhead = get_cyclecount() - overhead   

  issue_dmb_isb()
                                                  
  t := get_cyclecount()                          
                                            
  fmt.Println("\n Hello world!")  // measure cycle count for Println                                         
 
  issue_dmb()
  
  t = get_cyclecount() - t                                                                   
  fmt.Println(" ++ Count: ", t-overhead, " cycles (including function call) \n")  

}


