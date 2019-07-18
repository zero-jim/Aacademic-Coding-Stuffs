// Name: MD. Khairul Basar



MVI A, 0FH                  // Initializing accumulator

MVI B, 0AH                  // Initializing register B


CMP B                       // Comparing the value of accumulator with the value
                            // of register B

JNC LARGE                   // If there is no carry, the value of accumulator is smaller


JMP SMALL                   // If there is a carry, the value of accumulator is larger
                            // so jump to the end

LARGE:    DI                // Do anything you want
          JMP END           // Jump to the end

SMALL:    EI                // Do anything you want
          JMP END           // Jump to the end


END:      HLT               // Halt the program
