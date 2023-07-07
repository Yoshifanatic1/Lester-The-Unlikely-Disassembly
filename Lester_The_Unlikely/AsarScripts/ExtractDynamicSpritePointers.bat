@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe ExtractDynamicSpritePointers.asm LTU.sfc > output1.asm

pause

asar.exe output1.asm LTU.sfc > TableData1.asm

pause
exit