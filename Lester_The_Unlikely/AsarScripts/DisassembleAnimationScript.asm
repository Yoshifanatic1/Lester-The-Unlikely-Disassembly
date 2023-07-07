@asar 1.81

; Modify these as needed
hirom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $C0B86B				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 8		; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.
!Bank = C0					; Affects the bank byte for the label used in JSR/JMP instructions.

; Don't touch these
!Input1 = $00
!Input2 = $00
!Output = ""
!ByteCounter = 0
!LoopCounter = 0
!Pass = 0
!CurrentOffset = 0

macro GetOpcode()
	!Input1 #= read1(!ROMOffset+!ByteCounter)
	;!Input1 #= !LoopCounter
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readbyte(Input)
	!<Input> #= read1(!ROMOffset+!ByteCounter)
	;!<Input> = $01
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readword(Input)
	!<Input> #= read2(!ROMOffset+!ByteCounter)
	;!<Input> = $0123
	!ByteCounter #= !ByteCounter+2
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro HandleBranch(Value, ByteCounter, Variable)
if !<Variable> >= <Value>
	if <Value> == $80
		!<Variable> #= (!ROMOffset+<ByteCounter>)-((!<Variable>^$FF)+$01)
	else
		!<Variable> #= (!ROMOffset+<ByteCounter>)-((!<Variable>^$FFFF)+$01)
	endif
else
	!<Variable> #= (!ROMOffset+<ByteCounter>)+!<Variable>
endif
	%GetBranchLabelLocation(!<Variable>)
endmacro

macro PrintLabel(Address)
if defined("ROM_<Address>") == 1
	if !ROM_<Address> == 1
		print ""
	endif
	print "DATA_",hex(!ROMOffset+!ByteCounter, 6),":"
endif
endmacro

macro DefineLabelAfterNoPassOpcode(Address)
	!ROM_<Address> = 1
endmacro

macro GetBranchLabelLocation(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro HandleJump(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro Op0()
if !Pass == 1
	print "	%LTU_AnimScriptOpXX_DisplayPoseXX($",hex(!Input1, 2),")"
endif
endmacro

macro Op128()
if !Pass == 1
	print "	%LTU_AnimScriptOp80_UnknownOpcode()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op129()
if !Pass == 1
	print "	%LTU_AnimScriptOp81_RestartAnimation()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op130()
	%readword(Input1)
	%HandleBranch($8000, !ByteCounter-$03, Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp82_BranchAlways(DATA_",hex(!Input1, 4),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op131()
	%readbyte(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp83_ChangeAnimation($",hex(!Input1, 2),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op132()
	%readbyte(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp84_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op133()
	%readword(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp85_UnknownOpcode($",hex(!Input1, 4),")"
endif
endmacro

macro Op134()
	%readword(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp86_SetAnimationSpeed($",hex(!Input1, 4),")"
endif
endmacro

macro Op135()
	%readbyte(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp87_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op136()
if !Pass == 1
	print "	%LTU_AnimScriptOp88_UnknownOpcode()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op137()
	%readbyte(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp89_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op138()
	%readbyte(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp8A_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op139()
if !Pass == 1
	print "	%LTU_AnimScriptOp8B_XFlip()"
endif
endmacro

macro Op140()
if !Pass == 1
	print "	%LTU_AnimScriptOp8C_YFlip()"
endif
endmacro

macro Op141()
if !Pass == 1
	print "	%LTU_AnimScriptOp8D_NOP()"
endif
endmacro

macro Op142()
	%readbyte(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp8E_UnknownOpcode($",hex(!Input1, 2),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op143()
	%readbyte(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp8F_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op144()
if !Pass == 1
	print "	%LTU_AnimScriptOp90_UnknownOpcode()"
endif
endmacro

macro Op145()
	%Op155()
endmacro

macro Op146()
	%Op155()
endmacro

macro Op147()
	%Op155()
endmacro

macro Op148()
	%Op155()
endmacro

macro Op149()
	%Op155()
endmacro

macro Op150()
	%Op155()
endmacro

macro Op151()
	%Op155()
endmacro

macro Op152()
	%Op155()
endmacro

macro Op153()
	%Op155()
endmacro

macro Op154()
	%readword(Input1)
if !Pass == 1
	print "	%LTU_AnimScriptOp9A_UnknownOpcode($",hex(!Input1, 4),")"
endif
endmacro

macro Op155()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 2)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1 < 128
			%Op0()
		elseif !Input1 > 154
			%Op155()
		else
			%Op!Input1()
		endif
		!LoopCounter #= !LoopCounter+1
	endif
	!LoopCounter #= 0
	!ByteCounter #= 0
endif
	!Pass = 1
while !ByteCounter < !MaxBytes
	%PrintLabel(!CurrentOffset)
	%GetOpcode()
	if !Input1 < 128
		%Op0()
	elseif !Input1 > 154
		%Op155()
	else
		%Op!Input1()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
