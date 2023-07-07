!RAM_LTU_Player_XPosLo = $000048

!RAM_LTU_Player_YPosLo = $00004D

!RAM_LTU_Global_HeldButtonsLoP1 = $00009D
!RAM_LTU_Global_HeldButtonsHiP1 = !RAM_LTU_Global_HeldButtonsLoP1+$01

!RAM_LTU_Global_HeldButtonsLoP2 = $00009F
!RAM_LTU_Global_HeldButtonsHiP2 = !RAM_LTU_Global_HeldButtonsLoP2+$01

!RAM_LTU_Global_Layer1XPos = $0000D3
!RAM_LTU_Global_Layer1YPos = $0000D5

!RAM_LTU_Global_OAMBuffer = $7E18F1

!RAM_LTU_Global_VRAMDMAUploadTable = $7E1B11
!RAM_LTU_Global_CGRAMDMAUploadTable = $7E1D69

!RAM_LTU_TitleScreen_LevelSelectCodeIndex = $7E2410
!RAM_LTU_TitleScreen_PreviouslyPressedButton = $7E2412

!RAM_LTU_Level_CurrentLevel = $7E3C0B

!RAM_LTU_Global_Layer2XPos = $7E3C19
!RAM_LTU_Global_Layer2YPos = $7E3C1B

!RAM_LTU_Player_LifeCount = $7E8599
!RAM_LTU_Player_CurrentHP = $7E859B

!RAM_LTU_Level_DeathFadeOutFlag = $7E85A5

!RAM_LTU_Player_IdleFrameCounter = $7E85AB

struct LTU_Global_OAMBuffer !RAM_LTU_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct LTU_Global_UpperOAMBuffer !RAM_LTU_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01

struct LTU_Global_VRAMDMAUploadTable !RAM_LTU_Global_VRAMDMAUploadTable
	.VRAMAddressIncrementValue: skip $02
	.VRAMAddress: skip $02
	.SourceLo: skip $02
	.SourceBank: skip $02
	.SizeLo: skip $02
endstruct align $0A

struct LTU_Global_CGRAMDMAUploadTable !RAM_LTU_Global_CGRAMDMAUploadTable
	.CGRAMAddress: skip $02
	.SourceLo: skip $02
	.SourceBank: skip $02
	.SizeLo: skip $02
endstruct align $08
