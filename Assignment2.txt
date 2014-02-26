COSC 519 - OS
Spring 2014
Emanuel Rivera

Question 1)
Commands Ran:
gcc -Wall -S -c "readfile.c"
gcc -Wall -o "readfile" "readfile.c"

C code is called readfile.c
ASM file is called readfile.s

System Calls:
Line 41: call fopen
Line 47: call fopen
Line 89: call fgets
Line 104: call fprintf
Line 107: call fclose
Line 110: call fclose

Question 2>
Commands Ran:
objdump -d readfile > readfile.objdump.asm

File for Objdump assembly code is called readfile.objdump.asm
 
System calls:
  4006c6:	e8 c5 fe ff ff       	callq  400590 <fopen@plt>
  4006e4:	e8 a7 fe ff ff       	callq  400590 <fopen@plt>
  400790:	e8 eb fd ff ff       	callq  400580 <fprintf@plt>
  4007ab:	e8 c0 fd ff ff       	callq  400570 <fgets@plt>
  4007cb:	e8 80 fd ff ff       	callq  400550 <printf@plt>
  4007ee:	e8 8d fd ff ff       	callq  400580 <fprintf@plt>
  4007fd:	e8 2e fd ff ff       	callq  400530 <fclose@plt>
  40080c:	e8 1f fd ff ff       	callq  400530 <fclose@plt>

