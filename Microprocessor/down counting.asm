// Name: MD. Khairul Basar



MVI A, 0FH                  // Initializing accumulator



LOOP:     DCR A             // Decrementing the value in accumulator

          JNZ LOOP          // If the value is not 0, loop continues



HLT                         // Halt the program
