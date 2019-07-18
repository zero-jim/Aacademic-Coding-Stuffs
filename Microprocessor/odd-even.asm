// Name: MD. Khairul Basar



MVI A, 0FH                  // Initializing accumulator


ANI 01H                     // Bitwise and the value of accumulator with the value 1

JZ EVEN                     // If the value is 0 the number is even
JNZ ODD                     // If the value is not 0 the number is odd

EVEN:     DI                // If the value is 0, the number is even
          JMP END           // Jump to the end

ODD:      DI                // If the value is not 0, the number is odd
          JMP END           // Jump to the end



END:      HLT               // Halt the program
