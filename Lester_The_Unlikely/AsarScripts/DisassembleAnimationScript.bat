@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleAnimationScript.asm LTU.sfc > output1.asm

pause
exit