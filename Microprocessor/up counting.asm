// Name: MD. Khairul Basar



MVI B, 00H                  // Initializing register B



LOOP:     INR B             // Incrementing the value in register B

          MVI A, 0FH        // Initilizing accumulator

          XRA B             // Bitwise xor the value of register B with the value of accumulator

                            // If both value are same the bitwise xor will produce 0

          JNZ LOOP          // If the value is not 0, loop continues



HLT                         // Halt the program
