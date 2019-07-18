// Name: MD. Khairul Basar



LXI H, 8000H                // Initializing register pair HL, the memory pointer
MVI A, 04H                  // Initilizing accumulator

LOOP:     MOV M, A          // Copy the value of accumulator to the memory location pointed by register pair HL
          INX H             // Increment the memory pointer and point to the next location
          DCR A             // Decrement the value of accumulator
          JNZ LOOP          // If accumulator is not 0, loop continues

LXI H, 8000H                // Initializing register pair HL
MVI B, 04H                  // Initializing register B

FIND:     MVI A, 03H        // Initilizing the accumulator with the value we want to find
          XRA M             // Bitwise xor the value of accumulator with the value of the memory location
                            // pointed to by the register pair HL
          JZ END            // If the xor produce 0, we found our desired value and jump to the end
          INX H             // Increment the memory pointer and point to the next location
          DCR B             // Decrement the value of register B
          MOV A, B          // Copy the value of register B to the accumulator
          JNZ FIND          // If the value of the accumulator is not 0, loop continues to search the number
                            // otherwise jump to the end
 
 
END:      HLT               // Halt the program
