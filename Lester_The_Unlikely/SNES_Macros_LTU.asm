
!LTU_DefinedRelativeLabels = 0
!Offset_ = 0

;--------------------------------------------------------------------

macro LTU_InsertLevelData(Address, Label, File)
%InsertMacroAtXPosition(<Address>)
<Label>:
if getfilestatus("<File>") == $00
	if filesize("<File>") != $00
	!TEMP1 #= readfile4("<File>", (readfile4("<File>", $00000000)+$08)+($00*$10))
	!HeaderByte1 #= readfile2("<File>", !TEMP1+$00)
	!HeaderByte2 #= readfile2("<File>", !TEMP1+$02)
	!HeaderByte3 #= readfile2("<File>", !TEMP1+$04)
	!HeaderByte4 #= readfile3("<File>", !TEMP1+$06)
	!HeaderByte5 #= readfile1("<File>", !TEMP1+$09)
	!HeaderByte6 #= readfile3("<File>", !TEMP1+$0A)
	!HeaderByte7 #= readfile2("<File>", !TEMP1+$0D)
	!HeaderByte8 #= readfile3("<File>", !TEMP1+$0F)
	!HeaderByte9 #= readfile3("<File>", !TEMP1+$12)
	!HeaderByte10 #= readfile2("<File>", !TEMP1+$15)
	!HeaderByte11 #= readfile2("<File>", !TEMP1+$17)
	!HeaderByte12 #= readfile3("<File>", !TEMP1+$19)

.Block0:	
	dw !HeaderByte1,!HeaderByte2,!HeaderByte3 : dl .Block1 : db !HeaderByte5 : dl .Block2 : dw !HeaderByte7
	dl .Block4,.Block5 : dw !HeaderByte10,!HeaderByte11 : dl .Block3

if defined("Offset_!{HeaderByte4}")
pushpc
org !{Offset_!{HeaderByte4}}
.Block1:
pullpc

else
.Block1:
	%LTU_CreatePointerDefine(!HeaderByte4, <Label>_Block1)
	%InsertRDCFile(NULLROM, 1, "<File>")
endif

if defined("Offset_!{HeaderByte6}")
pushpc
org !{Offset_!{HeaderByte6}}
.Block2:
pullpc

else
.Block2:
	%LTU_CreatePointerDefine(!HeaderByte6, <Label>_Block2)
	%InsertRDCFile(NULLROM, 2, "<File>")
endif

if defined("Offset_!{HeaderByte12}")
pushpc
org !{Offset_!{HeaderByte12}}
.Block3:
pullpc

else
.Block3:
	%LTU_CreatePointerDefine(!HeaderByte12, <Label>_Block3)
	%InsertRDCFile(NULLROM, 3, "<File>")
endif

if defined("Offset_!{HeaderByte8}")
pushpc
org !{Offset_!{HeaderByte8}}
.Block4:
pullpc

else
.Block4:
	%LTU_CreatePointerDefine(!HeaderByte8, <Label>_Block4)
	%InsertRDCFile(NULLROM, 4, "<File>")
endif

if defined("Offset_!{HeaderByte9}")
pushpc
org !{Offset_!{HeaderByte9}}
.Block5:
pullpc

else
.Block5:
	%LTU_CreatePointerDefine(!HeaderByte9, <Label>_Block5)
	%InsertRDCFile(NULLROM, 5, "<File>")
endif
endif
endif
endmacro

;--------------------------------------------------------------------

macro LTU_CreatePointerDefine(Offset, Address)
	!Offset_<Offset> = <Address>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOpXX_DisplayPoseXX(FrameID)
	db  <FrameID>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp80_UnknownOpcode()
	db $80
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp81_RestartAnimation()
	db $81
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp82_BranchAlways(Offset)
RelativeLabel!LTU_DefinedRelativeLabels:
	db $82 : dw <Offset>-RelativeLabel!LTU_DefinedRelativeLabels
!LTU_DefinedRelativeLabels #= !LTU_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp83_ChangeAnimation(AnimID)
	db $83 : db <AnimID>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp84_UnknownOpcode(Param1)
	db $84 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp85_UnknownOpcode(Param1)
	db $85 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp86_SetAnimationSpeed(Speed)
	db $86 : dw <Speed>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp87_UnknownOpcode(Param1)
	db $87 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp88_UnknownOpcode()
	db $88
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp89_UnknownOpcode(Param1)
	db $89 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp8A_UnknownOpcode(Param1)
	db $8A : db <Param1>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp8B_XFlip()
	db $8B
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp8C_YFlip()
	db $8C
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp8D_NOP()
	db $8D
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp8E_UnknownOpcode(Param1)
	db $8E : db <Param1>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp8F_UnknownOpcode(Param1)
	db $8F : db <Param1>
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp90_UnknownOpcode()
	db $90
endmacro

;--------------------------------------------------------------------

macro LTU_AnimScriptOp9A_UnknownOpcode(Param1)
	db $9A : dw <Param1>
endmacro

;--------------------------------------------------------------------
