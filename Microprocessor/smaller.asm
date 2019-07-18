// Name: MD. Khairul Basar



MVI A, 0FH                  // Initializing accumulator

MVI B, 0AH                  // Initializing register B


CMP B                       // Comparing the value of accumulator with the value
                            // of register B

JNC LARGE                   // If there is no carry, the value of accumulator is smaller


JMP END                     // If there is a carry, the value of accumulator is larger
                            // so jump to the end

LARGE:    MOV A, B          // Move the value of register B to accumulator


END:      HLT               // Halt the program
