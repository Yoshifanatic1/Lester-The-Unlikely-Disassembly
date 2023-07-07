; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

hirom
;!ROMVer = $0000						; Note: This is set within the batch script
!LTU_U = $0001
!LTU_J = $0002

check bankcross off

org $C00000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl DynamicSpritePointersStart,(DynamicSpritePointersEnd-DynamicSpritePointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl LevelDataPointersStart,(LevelDataPointersEnd-LevelDataPointersStart)/$0C
	dl PalettesPointersStart,(PalettesPointersEnd-PalettesPointersStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $CA0000,$CD1880,GFX_Layer1_Tilesets,GFX_Layer1_TilesetsEnd
	dl $CEB769,$CEC169,GFX_Layer3_HUDAndFont,GFX_Layer3_HUDAndFontEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

DynamicSpritePointersStart:
	dl $C10000,$C10260,GFX_Lester_Kick1,GFX_Lester_Kick1End
	dl $C10260,$C10520,GFX_Lester_Kick2,GFX_Lester_Kick2End
	dl $C10520,$C108A0,GFX_Lester_Kick3,GFX_Lester_Kick3End
	dl $C108A0,$C10C40,GFX_Lester_Kick4,GFX_Lester_Kick4End
	dl $C10C40,$C11020,GFX_Lester_Kick5,GFX_Lester_Kick5End
	dl $C11020,$C113C0,GFX_Lester_Kick6,GFX_Lester_Kick6End
	dl $C113C0,$C116E0,GFX_Lester_Kick7,GFX_Lester_Kick7End
	dl $C116E0,$C11900,GFX_Lester_Duck1,GFX_Lester_Duck1End
	dl $C11900,$C11B60,GFX_Lester_Duck2,GFX_Lester_Duck2End
	dl $C11B60,$C11D80,GFX_Lester_Duck3,GFX_Lester_Duck3End
	dl $C11D80,$C11FC0,GFX_Lester_Duck4,GFX_Lester_Duck4End
	dl $C11FC0,$C12200,GFX_Lester_Duck5,GFX_Lester_Duck5End
	dl $C12200,$C123E0,GFX_Lester_Duck6,GFX_Lester_Duck6End
	dl $C123E0,$C126E0,GFX_Lester_JumpForward1,GFX_Lester_JumpForward1End
	dl $C126E0,$C129A0,GFX_Lester_JumpForward2,GFX_Lester_JumpForward2End
	dl $C129A0,$C12C60,GFX_Lester_JumpForward3,GFX_Lester_JumpForward3End
	dl $C12C60,$C12F80,GFX_Lester_JumpForward4,GFX_Lester_JumpForward4End
	dl $C12F80,$C131E0,GFX_Lester_JumpForward5,GFX_Lester_JumpForward5End
	dl $C131E0,$C13520,GFX_Lester_JumpForward6,GFX_Lester_JumpForward6End
	dl $C13520,$C138E0,GFX_Lester_JumpForward7,GFX_Lester_JumpForward7End
	dl $C138E0,$C13CE0,GFX_Lester_JumpForward8,GFX_Lester_JumpForward8End
	dl $C13CE0,$C14040,GFX_Lester_JumpForward9,GFX_Lester_JumpForward9End
	dl $C14040,$C14300,GFX_Lester_JumpForward10,GFX_Lester_JumpForward10End
	dl $C14300,$C14580,GFX_Lester_JumpForward11,GFX_Lester_JumpForward11End
	dl $C14580,$C14860,GFX_Lester_TurnAround1,GFX_Lester_TurnAround1End
	dl $C14860,$C14B40,GFX_Lester_TurnAround2,GFX_Lester_TurnAround2End
	dl $C14B40,$C14E80,GFX_Lester_TurnAround3,GFX_Lester_TurnAround3End
	dl $C14E80,$C151C0,GFX_Lester_TurnAround4,GFX_Lester_TurnAround4End
	dl $C151C0,$C155E0,GFX_Lester_TurnAround5,GFX_Lester_TurnAround5End
	dl $C155E0,$C15960,GFX_Lester_TurnAround6,GFX_Lester_TurnAround6End
	dl $C15960,$C15CA0,GFX_Lester_TurnAround7,GFX_Lester_TurnAround7End
	dl $C15CA0,$C15EE0,GFX_Lester_Dead1,GFX_Lester_Dead1End
	dl $C15EE0,$C160E0,GFX_Lester_Dead2,GFX_Lester_Dead2End
	dl $C160E0,$C162C0,GFX_Lester_Dead3,GFX_Lester_Dead3End
	dl $C162C0,$C16480,GFX_Lester_Dead4,GFX_Lester_Dead4End
	dl $C16480,$C16640,GFX_Lester_Dead5,GFX_Lester_Dead5End
	dl $C16640,$C167E0,GFX_Lester_Dead6,GFX_Lester_Dead6End
	dl $C167E0,$C16960,GFX_Lester_Dead7,GFX_Lester_Dead7End
	dl $C16960,$C16AA0,GFX_Lester_Dead8,GFX_Lester_Dead8End
	dl $C16AA0,$C16D40,GFX_Lester_Pushing1,GFX_Lester_Pushing1End
	dl $C16D40,$C16FA0,GFX_Lester_Pushing2,GFX_Lester_Pushing2End
	dl $C16FA0,$C17200,GFX_Lester_Pushing3,GFX_Lester_Pushing3End
	dl $C17200,$C17460,GFX_Lester_Pushing4,GFX_Lester_Pushing4End
	dl $C17460,$C176E0,GFX_Lester_Pushing5,GFX_Lester_Pushing5End
	dl $C176E0,$C17940,GFX_Lester_Pushing6,GFX_Lester_Pushing6End
	dl $C17940,$C17C20,GFX_Lester_Pushing7,GFX_Lester_Pushing7End
	dl $C17C20,$C17EA0,GFX_Lester_Pushing8,GFX_Lester_Pushing8End
	dl $C17EA0,$C181A0,GFX_Lester_Pushing9,GFX_Lester_Pushing9End
	dl $C181A0,$C18440,GFX_Lester_Pushing10,GFX_Lester_Pushing10End
	dl $C18440,$C187C0,GFX_Lester_NerdyWalk1,GFX_Lester_NerdyWalk1End
	dl $C187C0,$C18AA0,GFX_Lester_NerdyWalk2,GFX_Lester_NerdyWalk2End
	dl $C18AA0,$C18D40,GFX_Lester_NerdyWalk3,GFX_Lester_NerdyWalk3End
	dl $C18D40,$C19120,GFX_Lester_NerdyWalk4,GFX_Lester_NerdyWalk4End
	dl $C19120,$C19500,GFX_Lester_NerdyWalk5,GFX_Lester_NerdyWalk5End
	dl $C19500,$C197E0,GFX_Lester_NerdyWalk6,GFX_Lester_NerdyWalk6End
	dl $C197E0,$C19A60,GFX_Lester_NerdyWalk7,GFX_Lester_NerdyWalk7End
	dl $C19A60,$C19D80,GFX_Lester_NerdyWalk8,GFX_Lester_NerdyWalk8End
	dl $C19D80,$C1A0A0,GFX_Lester_NerdyRun1,GFX_Lester_NerdyRun1End
	dl $C1A0A0,$C1A480,GFX_Lester_NerdyRun2,GFX_Lester_NerdyRun2End
	dl $C1A480,$C1A7A0,GFX_Lester_NerdyRun3,GFX_Lester_NerdyRun3End
	dl $C1A7A0,$C1AAA0,GFX_Lester_NerdyRun4,GFX_Lester_NerdyRun4End
	dl $C1AAA0,$C1AE00,GFX_Lester_NerdyRun5,GFX_Lester_NerdyRun5End
	dl $C1AE00,$C1B140,GFX_Lester_NerdyRun6,GFX_Lester_NerdyRun6End
	dl $C1B140,$C1B460,GFX_Lester_NerdyRun7,GFX_Lester_NerdyRun7End
	dl $C1B460,$C1B720,GFX_Lester_NerdyRun8,GFX_Lester_NerdyRun8End
	dl $C1B720,$C1B980,GFX_Lester_ThrowWeapon1,GFX_Lester_ThrowWeapon1End
	dl $C1B980,$C1BC40,GFX_Lester_ThrowWeapon2,GFX_Lester_ThrowWeapon2End
	dl $C1BC40,$C1BFC0,GFX_Lester_ThrowWeapon3,GFX_Lester_ThrowWeapon3End
	dl $C1BFC0,$C1C320,GFX_Lester_ThrowWeapon4,GFX_Lester_ThrowWeapon4End
	dl $C1C320,$C1C5C0,GFX_Lester_ThrowWeapon5,GFX_Lester_ThrowWeapon5End
	dl $C1C5C0,$C1C8A0,GFX_Lester_ThrowWeapon6,GFX_Lester_ThrowWeapon6End
	dl $C1C8A0,$C1CB20,GFX_Lester_ThrowWeapon7,GFX_Lester_ThrowWeapon7End
	dl $C1CB20,$C1CD80,GFX_Lester_JumpUp1,GFX_Lester_JumpUp1End
	dl $C1CD80,$C1D020,GFX_Lester_JumpUp2,GFX_Lester_JumpUp2End
	dl $C1D020,$C1D300,GFX_Lester_JumpUp3,GFX_Lester_JumpUp3End
	dl $C1D300,$C1D5A0,GFX_Lester_JumpUp4,GFX_Lester_JumpUp4End
	dl $C1D5A0,$C1D820,GFX_Lester_JumpUp5,GFX_Lester_JumpUp5End
	dl $C1D820,$C1DAC0,GFX_Lester_JumpUp6,GFX_Lester_JumpUp6End
	dl $C1DAC0,$C1DD80,GFX_Lester_JumpUp7,GFX_Lester_JumpUp7End
	dl $C1DD80,$C1E0E0,GFX_Lester_JumpUp8,GFX_Lester_JumpUp8End
	dl $C1E0E0,$C1E480,GFX_Lester_JumpUp9,GFX_Lester_JumpUp9End
	dl $C1E480,$C1E7C0,GFX_Lester_JumpUp10,GFX_Lester_JumpUp10End
	dl $C1E7C0,$C1EA60,GFX_Lester_JumpUp11,GFX_Lester_JumpUp11End
	dl $C1EA60,$C1ED60,GFX_Lester_NerdyRunningJump1,GFX_Lester_NerdyRunningJump1End
	dl $C1ED60,$C1F120,GFX_Lester_NerdyRunningJump2,GFX_Lester_NerdyRunningJump2End
	dl $C1F120,$C1F560,GFX_Lester_NerdyRunningJump3,GFX_Lester_NerdyRunningJump3End
	dl $C1F560,$C1F9C0,GFX_Lester_NerdyRunningJump4,GFX_Lester_NerdyRunningJump4End
	dl $C1F9C0,$C1FDE0,GFX_Lester_NerdyRunningJump5,GFX_Lester_NerdyRunningJump5End
	dl $C1FDE0,$C20180,GFX_Lester_NerdyRunningJump6,GFX_Lester_NerdyRunningJump6End
	dl $C20180,$C20480,GFX_Lester_NerdyRunningJump7,GFX_Lester_NerdyRunningJump7End
	dl $C20480,$C206E0,GFX_Lester_NerdyRunningJump8,GFX_Lester_NerdyRunningJump8End
	dl $C206E0,$C20940,GFX_Lester_NerdyRunningJump9,GFX_Lester_NerdyRunningJump9End
	dl $C20940,$C20BC0,GFX_Lester_Panic1,GFX_Lester_Panic1End
	dl $C20BC0,$C20E40,GFX_Lester_Panic2,GFX_Lester_Panic2End
	dl $C20E40,$C210C0,GFX_Lester_Panic3,GFX_Lester_Panic3End
	dl $C210C0,$C21380,GFX_Lester_Panic4,GFX_Lester_Panic4End
	dl $C21380,$C215C0,GFX_Lester_Panic5,GFX_Lester_Panic5End
	dl $C215C0,$C21860,GFX_Lester_Panic6,GFX_Lester_Panic6End
	dl $C21860,$C21B20,GFX_Lester_Panic7,GFX_Lester_Panic7End
	dl $C21B20,$C21E20,GFX_Lester_Panic8,GFX_Lester_Panic8End
	dl $C21E20,$C220A0,GFX_Lester_Panic9,GFX_Lester_Panic9End
	dl $C220A0,$C22380,GFX_Lester_Panic10,GFX_Lester_Panic10End
	dl $C22380,$C22660,GFX_Lester_ClimbUp1,GFX_Lester_ClimbUp1End
	dl $C22660,$C22920,GFX_Lester_ClimbUp2,GFX_Lester_ClimbUp2End
	dl $C22920,$C22BE0,GFX_Lester_ClimbUp3,GFX_Lester_ClimbUp3End
	dl $C22BE0,$C22E60,GFX_Lester_ClimbUp4,GFX_Lester_ClimbUp4End
	dl $C22E60,$C230E0,GFX_Lester_ClimbUp5,GFX_Lester_ClimbUp5End
	dl $C230E0,$C233C0,GFX_Lester_ClimbUp6,GFX_Lester_ClimbUp6End
	dl $C233C0,$C23600,GFX_Lester_ClimbUp7,GFX_Lester_ClimbUp7End
	dl $C23600,$C23880,GFX_Lester_ClimbUp8,GFX_Lester_ClimbUp8End
	dl $C23880,$C23AE0,GFX_Lester_ClimbUp9,GFX_Lester_ClimbUp9End
	dl $C23AE0,$C23CC0,GFX_Lester_ClimbUp10,GFX_Lester_ClimbUp10End
	dl $C23CC0,$C23F20,GFX_Lester_ClimbUp11,GFX_Lester_ClimbUp11End
	dl $C23F20,$C24100,GFX_Lester_ClimbUp12,GFX_Lester_ClimbUp12End
	dl $C24100,$C24380,GFX_Lester_PickUpItem1,GFX_Lester_PickUpItem1End
	dl $C24380,$C245C0,GFX_Lester_PickUpItem2,GFX_Lester_PickUpItem2End
	dl $C245C0,$C24860,GFX_Lester_PickUpItem3,GFX_Lester_PickUpItem3End
	dl $C24860,$C24AC0,GFX_Lester_PickUpItem4,GFX_Lester_PickUpItem4End
	dl $C24AC0,$C24D60,GFX_Lester_PickUpItem5,GFX_Lester_PickUpItem5End
	dl $C24D60,$C24F60,GFX_Lester_GrabbedByEagle1,GFX_Lester_GrabbedByEagle1End
	dl $C24F60,$C25160,GFX_Lester_GrabbedByEagle2,GFX_Lester_GrabbedByEagle2End
	dl $C25160,$C253C0,GFX_Lester_GrabbedByEagle3,GFX_Lester_GrabbedByEagle3End
	dl $C253C0,$C25600,GFX_Lester_GrabbedByEagle4,GFX_Lester_GrabbedByEagle4End
	dl $C25600,$C258A0,GFX_Lester_ShakeHead1,GFX_Lester_ShakeHead1End
	dl $C258A0,$C25F20,GFX_Lester_ShakeHead2,GFX_Lester_ShakeHead2End
	dl $C25F20,$C26180,GFX_Lester_AttemptToPickUp1,GFX_Lester_AttemptToPickUp1End
	dl $C26180,$C263E0,GFX_Lester_AttemptToPickUp2,GFX_Lester_AttemptToPickUp2End
	dl $C263E0,$C26620,GFX_Lester_AttemptToPickUp3,GFX_Lester_AttemptToPickUp3End
	dl $C26620,$C268E0,GFX_Lester_AttemptToPickUp4,GFX_Lester_AttemptToPickUp4End
	dl $C268E0,$C26B60,GFX_Lester_CautiousWalk1,GFX_Lester_CautiousWalk1End
	dl $C26B60,$C26E00,GFX_Lester_CautiousWalk2,GFX_Lester_CautiousWalk2End
	dl $C26E00,$C27140,GFX_Lester_CautiousWalk3,GFX_Lester_CautiousWalk3End
	dl $C27140,$C27460,GFX_Lester_CautiousWalk4,GFX_Lester_CautiousWalk4End
	dl $C27460,$C27740,GFX_Lester_CautiousWalk5,GFX_Lester_CautiousWalk5End
	dl $C27740,$C27A40,GFX_Lester_CautiousWalk6,GFX_Lester_CautiousWalk6End
	dl $C27A40,$C27D60,GFX_Lester_CautiousWalk7,GFX_Lester_CautiousWalk7End
	dl $C27D60,$C28040,GFX_Lester_CautiousWalk8,GFX_Lester_CautiousWalk8End
	dl $C28040,$C282C0,GFX_Lester_CautiousWalk9,GFX_Lester_CautiousWalk9End
	dl $C282C0,$C28540,GFX_Lester_RunIntoWall1,GFX_Lester_RunIntoWall1End
	dl $C28540,$C287A0,GFX_Lester_RunIntoWall2,GFX_Lester_RunIntoWall2End
	dl $C287A0,$C289E0,GFX_Lester_RunIntoWall3,GFX_Lester_RunIntoWall3End
	dl $C289E0,$C28C40,GFX_Lester_RunIntoWall4,GFX_Lester_RunIntoWall4End
	dl $C28C40,$C28EC0,GFX_Lester_RunIntoWall5,GFX_Lester_RunIntoWall5End
	dl $C28EC0,$C291C0,GFX_Lester_RunIntoWall6,GFX_Lester_RunIntoWall6End
	dl $C291C0,$C29440,GFX_Lester_RunIntoWall7,GFX_Lester_RunIntoWall7End
	dl $C29440,$C29700,GFX_Lester_RunIntoWall8,GFX_Lester_RunIntoWall8End
	dl $C29700,$C29900,GFX_Lester_CowerFromEagle1,GFX_Lester_CowerFromEagle1End
	dl $C29900,$C29AA0,GFX_Lester_CowerFromEagle2,GFX_Lester_CowerFromEagle2End
	dl $C29AA0,$C29C20,GFX_Lester_CowerFromEagle3,GFX_Lester_CowerFromEagle3End
	dl $C29C20,$C29D40,GFX_Lester_CowerFromEagle4,GFX_Lester_CowerFromEagle4End
	dl $C29D40,$C29F80,GFX_Lester_Hmmmmm1,GFX_Lester_Hmmmmm1End
	dl $C29F80,$C2A1C0,GFX_Lester_Hmmmmm2,GFX_Lester_Hmmmmm2End
	dl $C2A1C0,$C2A4C0,GFX_Lester_Hmmmmm3,GFX_Lester_Hmmmmm3End
	dl $C2A4C0,$C2A7A0,GFX_Lester_Hmmmmm4,GFX_Lester_Hmmmmm4End
	dl $C2A7A0,$C2AA80,GFX_Lester_Hmmmmm5,GFX_Lester_Hmmmmm5End
	dl $C2AA80,$C2ACA0,GFX_Lester_SwingFromVine1,GFX_Lester_SwingFromVine1End
	dl $C2ACA0,$C2AEA0,GFX_Lester_SwingFromVine2,GFX_Lester_SwingFromVine2End
	dl $C2AEA0,$C2B040,GFX_Lester_SwingFromVine3,GFX_Lester_SwingFromVine3End
	dl $C2B040,$C2B1E0,GFX_Lester_SwingFromVine4,GFX_Lester_SwingFromVine4End
	dl $C2B1E0,$C2B420,GFX_Lester_SwingFromVine5,GFX_Lester_SwingFromVine5End
	dl $C2B420,$C2B5C0,GFX_Lester_NerdyStand,GFX_Lester_NerdyStandEnd
	dl $C2B5C0,$C2B840,GFX_Lester_BrandishSword1,GFX_Lester_BrandishSword1End
	dl $C2B840,$C2BAE0,GFX_Lester_BrandishSword2,GFX_Lester_BrandishSword2End
	dl $C2BAE0,$C2BE20,GFX_Lester_BrandishSword3,GFX_Lester_BrandishSword3End
	dl $C2BE20,$C2C1E0,GFX_Lester_BrandishSword4,GFX_Lester_BrandishSword4End
	dl $C2C1E0,$C2C560,GFX_Lester_BrandishSword5,GFX_Lester_BrandishSword5End
	dl $C2C560,$C2C960,GFX_Lester_StabSword1,GFX_Lester_StabSword1End
	dl $C2C960,$C2CD60,GFX_Lester_StabSword2,GFX_Lester_StabSword2End
	dl $C2CD60,$C2D160,GFX_Lester_StabSword3,GFX_Lester_StabSword3End
	dl $C2D160,$C2D540,GFX_Lester_StabSword4,GFX_Lester_StabSword4End
	dl $C2D540,$C2D940,GFX_Lester_StabSword5,GFX_Lester_StabSword5End
	dl $C2D940,$C2DC60,GFX_Lester_ClimbLadder1,GFX_Lester_ClimbLadder1End
	dl $C2DC60,$C2DF20,GFX_Lester_ClimbLadder2,GFX_Lester_ClimbLadder2End
	dl $C2DF20,$C2E260,GFX_Lester_ClimbLadder3,GFX_Lester_ClimbLadder3End
	dl $C2E260,$C2E4E0,GFX_Lester_ClimbLadder4,GFX_Lester_ClimbLadder4End
	dl $C2E4E0,$C2E800,GFX_Lester_ClimbLadder5,GFX_Lester_ClimbLadder5End
	dl $C2E800,$C2EB20,GFX_Lester_ClimbLadder6,GFX_Lester_ClimbLadder6End
	dl $C2EB20,$C2EE60,GFX_Lester_ClimbLadder7,GFX_Lester_ClimbLadder7End
	dl $C2EE60,$C2F160,GFX_Lester_ClimbLadder8,GFX_Lester_ClimbLadder8End
	dl $C2F160,$C2F440,GFX_Lester_EnterDoor1,GFX_Lester_EnterDoor1End
	dl $C2F440,$C2F740,GFX_Lester_EnterDoor2,GFX_Lester_EnterDoor2End
	dl $C2F740,$C2FA40,GFX_Lester_EnterDoor3,GFX_Lester_EnterDoor3End
	dl $C2FA40,$C2FE60,GFX_Lester_WalkWithSword1,GFX_Lester_WalkWithSword1End
	dl $C2FE60,$C30280,GFX_Lester_WalkWithSword2,GFX_Lester_WalkWithSword2End
	dl $C30280,$C30620,GFX_Lester_WalkWithSword3,GFX_Lester_WalkWithSword3End
	dl $C30620,$C30A00,GFX_Lester_WalkWithSword4,GFX_Lester_WalkWithSword4End
	dl $C30A00,$C30CE0,GFX_Lester_WobbleNearEdge1,GFX_Lester_WobbleNearEdge1End
	dl $C30CE0,$C30F60,GFX_Lester_WobbleNearEdge2,GFX_Lester_WobbleNearEdge2End
	dl $C30F60,$C311E0,GFX_Lester_WobbleNearEdge3,GFX_Lester_WobbleNearEdge3End
	dl $C311E0,$C31440,GFX_Lester_WobbleNearEdge4,GFX_Lester_WobbleNearEdge4End
	dl $C31440,$C316A0,GFX_Lester_WobbleNearEdge5,GFX_Lester_WobbleNearEdge5End
	dl $C316A0,$C31920,GFX_Lester_DrinkCanteen1,GFX_Lester_DrinkCanteen1End
	dl $C31920,$C31C00,GFX_Lester_DrinkCanteen2,GFX_Lester_DrinkCanteen2End
	dl $C31C00,$C31EC0,GFX_Lester_DrinkCanteen3,GFX_Lester_DrinkCanteen3End
	dl $C31EC0,$C321A0,GFX_Lester_DrinkCanteen4,GFX_Lester_DrinkCanteen4End
	dl $C321A0,$C324C0,GFX_Lester_DrinkCanteen5,GFX_Lester_DrinkCanteen5End
	dl $C324C0,$C32860,GFX_Lester_ConfidentWalk1,GFX_Lester_ConfidentWalk1End
	dl $C32860,$C32B40,GFX_Lester_ConfidentWalk2,GFX_Lester_ConfidentWalk2End
	dl $C32B40,$C32F00,GFX_Lester_ConfidentWalk3,GFX_Lester_ConfidentWalk3End
	dl $C32F00,$C332A0,GFX_Lester_ConfidentWalk4,GFX_Lester_ConfidentWalk4End
	dl $C332A0,$C33600,GFX_Lester_ConfidentWalk5,GFX_Lester_ConfidentWalk5End
	dl $C33600,$C338E0,GFX_Lester_ConfidentWalk6,GFX_Lester_ConfidentWalk6End
	dl $C338E0,$C33C20,GFX_Lester_ConfidentWalk7,GFX_Lester_ConfidentWalk7End
	dl $C33C20,$C33FE0,GFX_Lester_ConfidentWalk8,GFX_Lester_ConfidentWalk8End
	dl $C33FE0,$C34320,GFX_Lester_ConfidentRun1,GFX_Lester_ConfidentRun1End
	dl $C34320,$C34600,GFX_Lester_ConfidentRun2,GFX_Lester_ConfidentRun2End
	dl $C34600,$C348C0,GFX_Lester_ConfidentRun3,GFX_Lester_ConfidentRun3End
	dl $C348C0,$C34C40,GFX_Lester_ConfidentRun4,GFX_Lester_ConfidentRun4End
	dl $C34C40,$C34FA0,GFX_Lester_ConfidentRun5,GFX_Lester_ConfidentRun5End
	dl $C34FA0,$C35220,GFX_Lester_ConfidentRun6,GFX_Lester_ConfidentRun6End
	dl $C35220,$C35500,GFX_Lester_ConfidentRun7,GFX_Lester_ConfidentRun7End
	dl $C35500,$C35840,GFX_Lester_ConfidentRun8,GFX_Lester_ConfidentRun8End
	dl $C35840,$C35B20,GFX_Lester_ConfidentJumpForward1,GFX_Lester_ConfidentJumpForward1End
	dl $C35B20,$C35E60,GFX_Lester_ConfidentJumpForward2,GFX_Lester_ConfidentJumpForward2End
	dl $C35E60,$C361E0,GFX_Lester_ConfidentJumpForward3,GFX_Lester_ConfidentJumpForward3End
	dl $C361E0,$C36580,GFX_Lester_ConfidentJumpForward4,GFX_Lester_ConfidentJumpForward4End
	dl $C36580,$C368C0,GFX_Lester_LandBeforeFalling1,GFX_Lester_LandBeforeFalling1End
	dl $C368C0,$C36BC0,GFX_Lester_LandBeforeFalling2,GFX_Lester_LandBeforeFalling2End
	dl $C36BC0,$C36E80,GFX_Lester_HangFromLedge1,GFX_Lester_HangFromLedge1End
	dl $C36E80,$C37140,GFX_Lester_HangFromLedge2,GFX_Lester_HangFromLedge2End
	dl $C37140,$C37440,GFX_Lester_Surfing1,GFX_Lester_Surfing1End
	dl $C37440,$C376E0,GFX_Lester_Surfing2,GFX_Lester_Surfing2End
	dl $C376E0,$C37900,GFX_Lester_ArmFlex1,GFX_Lester_ArmFlex1End
	dl $C37900,$C37B40,GFX_Lester_ArmFlex2,GFX_Lester_ArmFlex2End
	dl $C37B40,$C37DE0,GFX_Lester_ArmFlex3,GFX_Lester_ArmFlex3End
	dl $C37DE0,$C38040,GFX_Lester_ArmFlex4,GFX_Lester_ArmFlex4End
	dl $C38040,$C382A0,GFX_Lester_ArmFlex5,GFX_Lester_ArmFlex5End
	dl $C382A0,$C384E0,GFX_Lester_ArmFlex6,GFX_Lester_ArmFlex6End
	dl $C384E0,$C38740,GFX_Lester_GetOnLadder1,GFX_Lester_GetOnLadder1End
	dl $C38740,$C389A0,GFX_Lester_GetOnLadder2,GFX_Lester_GetOnLadder2End
	dl $C389A0,$C38C20,GFX_Lester_GetOnLadder3,GFX_Lester_GetOnLadder3End
	dl $C38C20,$C38EE0,GFX_Lester_GetOnLadder4,GFX_Lester_GetOnLadder4End
	dl $C38EE0,$C39180,GFX_Lester_GetOnLadder5,GFX_Lester_GetOnLadder5End
	dl $C39180,$C393C0,GFX_Lester_ConfidentStand,GFX_Lester_ConfidentStandEnd
	dl $C393C0,$C397E0,GFX_Lester_GrabbedByGhostHand1,GFX_Lester_GrabbedByGhostHand1End
	dl $C397E0,$C39C60,GFX_Lester_GrabbedByGhostHand2,GFX_Lester_GrabbedByGhostHand2End
	dl $C39C60,$C39D60,GFX_Sprite_Crab_Scuttle1,GFX_Sprite_Crab_Scuttle1End
	dl $C39D60,$C39E80,GFX_Sprite_Crab_Scuttle2,GFX_Sprite_Crab_Scuttle2End
	dl $C39E80,$C39FC0,GFX_Sprite_Crab_Scuttle3,GFX_Sprite_Crab_Scuttle3End
	dl $C39FC0,$C3A100,GFX_Sprite_Crab_Scuttle4,GFX_Sprite_Crab_Scuttle4End
	dl $C3A100,$C3A240,GFX_Sprite_Crab_Scuttle5,GFX_Sprite_Crab_Scuttle5End
	dl $C3A240,$C3A3A0,GFX_Sprite_Crab_Scuttle6,GFX_Sprite_Crab_Scuttle6End
	dl $C3A3A0,$C3A500,GFX_Sprite_Crab_Scuttle7,GFX_Sprite_Crab_Scuttle7End
	dl $C3A500,$C3A640,GFX_Sprite_Crab_Scuttle8,GFX_Sprite_Crab_Scuttle8End
	dl $C3A640,$C3A760,GFX_Sprite_Crab_Scuttle9,GFX_Sprite_Crab_Scuttle9End
	dl $C3A760,$C3A8A0,GFX_Sprite_Crab_Idle,GFX_Sprite_Crab_IdleEnd
	dl $C3A8A0,$C3AA20,GFX_Sprite_Crab_Dead1,GFX_Sprite_Crab_Dead1End
	dl $C3AA20,$C3AB60,GFX_Sprite_Crab_Dead2,GFX_Sprite_Crab_Dead2End
	dl $C3AB60,$C3B0E0,GFX_Sprite_BeachCrate,GFX_Sprite_BeachCrateEnd
	dl $C3B0E0,$C3B440,GFX_Sprite_Eagle_Frame1,GFX_Sprite_Eagle_Frame1End
	dl $C3B440,$C3B7C0,GFX_Sprite_Eagle_Frame2,GFX_Sprite_Eagle_Frame2End
	dl $C3B7C0,$C3BB60,GFX_Sprite_Eagle_Frame3,GFX_Sprite_Eagle_Frame3End
	dl $C3BB60,$C3BBE0,GFX_Sprite_Bat_Frame1,GFX_Sprite_Bat_Frame1End
	dl $C3BBE0,$C3BC60,GFX_Sprite_Bat_Frame2,GFX_Sprite_Bat_Frame2End
	dl $C3BC60,$C3BCE0,GFX_Sprite_Bat_Frame3,GFX_Sprite_Bat_Frame3End
	dl $C3BCE0,$C3BDA0,GFX_Sprite_Bat_Frame4,GFX_Sprite_Bat_Frame4End
	dl $C3BDA0,$C3C120,GFX_Sprite_SlimeDroplet_Frame1,GFX_Sprite_SlimeDroplet_Frame1End
	dl $C3C120,$C3C160,GFX_Sprite_SlimeDroplet_Frame2,GFX_Sprite_SlimeDroplet_Frame2End
	dl $C3C160,$C3C1A0,GFX_Sprite_SlimeDroplet_Frame3,GFX_Sprite_SlimeDroplet_Frame3End
	dl $C3C1A0,$C3C200,GFX_Sprite_SlimeDroplet_Frame4,GFX_Sprite_SlimeDroplet_Frame4End
	dl $C3C200,$C3C280,GFX_Sprite_SlimeDroplet_Frame5,GFX_Sprite_SlimeDroplet_Frame5End
	dl $C3C280,$C3C2A0,GFX_Sprite_SlimeDroplet_Frame6,GFX_Sprite_SlimeDroplet_Frame6End
	dl $C3C2A0,$C3C2C0,GFX_Sprite_SlimeDroplet_Frame7,GFX_Sprite_SlimeDroplet_Frame7End
	dl $C3C2C0,$C3C300,GFX_Sprite_SlimeDroplet_Frame8,GFX_Sprite_SlimeDroplet_Frame8End
	dl $C3C300,$C3C340,GFX_Sprite_SlimeDroplet_Frame9,GFX_Sprite_SlimeDroplet_Frame9End
	dl $C3C340,$C3C3C0,GFX_Sprite_StoneWeapon,GFX_Sprite_StoneWeaponEnd
	dl $C3C3C0,$C3C440,GFX_Sprite_Ruby,GFX_Sprite_RubyEnd
	dl $C3C440,$C3CB00,GFX_Sprite_TreasureChest_Frame1,GFX_Sprite_TreasureChest_Frame1End
	dl $C3CB00,$C3CEC0,GFX_Sprite_TreasureChest_Frame2,GFX_Sprite_TreasureChest_Frame2End
	dl $C3CEC0,$C3D280,GFX_Sprite_TreasureChest_Frame3,GFX_Sprite_TreasureChest_Frame3End
	dl $C3D280,$C3D700,GFX_Sprite_TreasureChest_Frame4,GFX_Sprite_TreasureChest_Frame4End
	dl $C3D700,$C3DB80,GFX_Sprite_TreasureChest_Frame5,GFX_Sprite_TreasureChest_Frame5End
	dl $C3DB80,$C3E000,GFX_Sprite_TreasureChest_Frame6,GFX_Sprite_TreasureChest_Frame6End
	dl $C3E000,$C3E500,GFX_Sprite_KickedTotemPole_Frame1,GFX_Sprite_KickedTotemPole_Frame1End
	dl $C3E500,$C3EA00,GFX_Sprite_KickedTotemPole_Frame2,GFX_Sprite_KickedTotemPole_Frame2End
	dl $C3EA00,$C3EF80,GFX_Sprite_KickedTotemPole_Frame3,GFX_Sprite_KickedTotemPole_Frame3End
	dl $C3EF80,$C3F460,GFX_Sprite_KickedTotemPole_Frame4,GFX_Sprite_KickedTotemPole_Frame4End
	dl $C3F460,$C3F960,GFX_Sprite_KickedTotemPole_Frame5,GFX_Sprite_KickedTotemPole_Frame5End
	dl $C3F960,$C3FEE0,GFX_Sprite_KickedTotemPole_Frame6,GFX_Sprite_KickedTotemPole_Frame6End
	dl $C3FEE0,$C40300,GFX_Sprite_KickedTotemPole_Frame7,GFX_Sprite_KickedTotemPole_Frame7End
	dl $C40300,$C40320,GFX_Sprite_RubyBeam_Frame1,GFX_Sprite_RubyBeam_Frame1End
	dl $C40320,$C403C0,GFX_Sprite_RubyBeam_Frame2,GFX_Sprite_RubyBeam_Frame2End
	dl $C403C0,$C40480,GFX_Sprite_RubyBeam_Frame3,GFX_Sprite_RubyBeam_Frame3End
	dl $C40480,$C40560,GFX_Sprite_RubyBeam_Frame4,GFX_Sprite_RubyBeam_Frame4End
	dl $C40560,$C405A0,GFX_Sprite_RubyBeam_Frame5,GFX_Sprite_RubyBeam_Frame5End
	dl $C405A0,$C405E0,GFX_Sprite_RubyBeam_Frame6,GFX_Sprite_RubyBeam_Frame6End
	dl $C405E0,$C40620,GFX_Sprite_RubyBeam_Frame7,GFX_Sprite_RubyBeam_Frame7End
	dl $C40620,$C40660,GFX_Sprite_RubyBeam_Frame8,GFX_Sprite_RubyBeam_Frame8End
	dl $C40660,$C40A20,GFX_Sprite_WoodenBarrierBrokenByRuby,GFX_Sprite_WoodenBarrierBrokenByRubyEnd
	dl $C40A20,$C40AC0,GFX_Sprite_Explosion_Frame1,GFX_Sprite_Explosion_Frame1End
	dl $C40AC0,$C40D40,GFX_Sprite_Explosion_Frame2,GFX_Sprite_Explosion_Frame2End
	dl $C40D40,$C41340,GFX_Sprite_Explosion_Frame3,GFX_Sprite_Explosion_Frame3End
	dl $C41340,$C41840,GFX_Sprite_Explosion_Frame4,GFX_Sprite_Explosion_Frame4End
	dl $C41840,$C41C40,GFX_Sprite_Explosion_Frame5,GFX_Sprite_Explosion_Frame5End
	dl $C41C40,$C41F40,GFX_Sprite_CrumblingBurialGroundsFloor_Frame1,GFX_Sprite_CrumblingBurialGroundsFloor_Frame1End
	dl $C41F40,$C42240,GFX_Sprite_CrumblingBurialGroundsFloor_Frame2,GFX_Sprite_CrumblingBurialGroundsFloor_Frame2End
	dl $C42240,$C42540,GFX_Sprite_CrumblingBurialGroundsFloor_Frame3,GFX_Sprite_CrumblingBurialGroundsFloor_Frame3End
	dl $C42540,$C427C0,GFX_Sprite_CrumblingBurialGroundsFloor_Frame4,GFX_Sprite_CrumblingBurialGroundsFloor_Frame4End
	dl $C427C0,$C429A0,GFX_Sprite_CrumblingBurialGroundsFloor_Frame5,GFX_Sprite_CrumblingBurialGroundsFloor_Frame5End
	dl $C429A0,$C42AA0,GFX_Sprite_CrumblingBurialGroundsFloor_Frame6,GFX_Sprite_CrumblingBurialGroundsFloor_Frame6End
	dl $C42AA0,$C43720,GFX_Sprite_MovingBurialGroundsFloor,GFX_Sprite_MovingBurialGroundsFloorEnd
	dl $C43720,$C43800,GFX_Sprite_GhostlyArm_Frame1,GFX_Sprite_GhostlyArm_Frame1End
	dl $C43800,$C43940,GFX_Sprite_GhostlyArm_Frame2,GFX_Sprite_GhostlyArm_Frame2End
	dl $C43940,$C43A60,GFX_Sprite_GhostlyArm_Frame3,GFX_Sprite_GhostlyArm_Frame3End
	dl $C43A60,$C43C40,GFX_Sprite_GhostlyArm_Frame4,GFX_Sprite_GhostlyArm_Frame4End
	dl $C43C40,$C43E20,GFX_Sprite_GhostlyArm_Frame5,GFX_Sprite_GhostlyArm_Frame5End
	dl $C43E20,$C44000,GFX_Sprite_GhostlyArm_Frame6,GFX_Sprite_GhostlyArm_Frame6End
	dl $C44000,$C44180,GFX_Sprite_GhostlyArm_Frame7,GFX_Sprite_GhostlyArm_Frame7End
	dl $C44180,$C44320,GFX_Sprite_GhostlyArm_Frame8,GFX_Sprite_GhostlyArm_Frame8End
	dl $C44320,$C44400,GFX_Sprite_FogCloud,GFX_Sprite_FogCloudEnd
	dl $C44400,$C44580,GFX_Sprite_BurialGroundsSkull1,GFX_Sprite_BurialGroundsSkull1End
	dl $C44580,$C44700,GFX_Sprite_BurialGroundsSkull2,GFX_Sprite_BurialGroundsSkull2End
	dl $C44700,$C44880,GFX_Sprite_BurialGroundsSkull3,GFX_Sprite_BurialGroundsSkull3End
	dl $C44880,$C44F00,GFX_Sprite_BurialGroundsSpirit_Angry1,GFX_Sprite_BurialGroundsSpirit_Angry1End
	dl $C44F00,$C45540,GFX_Sprite_BurialGroundsSpirit_Angry2,GFX_Sprite_BurialGroundsSpirit_Angry2End
	dl $C45540,$C45BA0,GFX_Sprite_BurialGroundsSpirit_Neutral,GFX_Sprite_BurialGroundsSpirit_NeutralEnd
	dl $C45BA0,$C45F60,GFX_Sprite_IslandNative_Walk1,GFX_Sprite_IslandNative_Walk1End
	dl $C45F60,$C46260,GFX_Sprite_IslandNative_Walk2,GFX_Sprite_IslandNative_Walk2End
	dl $C46260,$C46520,GFX_Sprite_IslandNative_Walk3,GFX_Sprite_IslandNative_Walk3End
	dl $C46520,$C468C0,GFX_Sprite_IslandNative_Walk4,GFX_Sprite_IslandNative_Walk4End
	dl $C468C0,$C46BE0,GFX_Sprite_IslandNative_Walk5,GFX_Sprite_IslandNative_Walk5End
	dl $C46BE0,$C46E60,GFX_Sprite_IslandNative_Walk6,GFX_Sprite_IslandNative_Walk6End
	dl $C46E60,$C470A0,GFX_Sprite_IslandNative_Stand,GFX_Sprite_IslandNative_StandEnd
	dl $C470A0,$C47420,GFX_Sprite_IslandNative_Attack1,GFX_Sprite_IslandNative_Attack1End
	dl $C47420,$C478A0,GFX_Sprite_IslandNative_Attack2,GFX_Sprite_IslandNative_Attack2End
	dl $C478A0,$C47C40,GFX_Sprite_IslandNative_Attack3,GFX_Sprite_IslandNative_Attack3End
	dl $C47C40,$C47F80,GFX_Sprite_IslandNative_Attack4,GFX_Sprite_IslandNative_Attack4End
	dl $C47F80,$C483A0,GFX_Sprite_IslandNative_TurnAround1,GFX_Sprite_IslandNative_TurnAround1End
	dl $C483A0,$C487C0,GFX_Sprite_IslandNative_TurnAround2,GFX_Sprite_IslandNative_TurnAround2End
	dl $C487C0,$C48860,GFX_Sprite_ThrownJavelin,GFX_Sprite_ThrownJavelinEnd
	dl $C48860,$C49040,GFX_Sprite_HectorsThrone,GFX_Sprite_HectorsThroneEnd
	dl $C49040,$C49320,GFX_Sprite_Tikka_Stand,GFX_Sprite_Tikka_StandEnd
	dl $C49320,$C49720,GFX_Sprite_Tikka_StuckInTree,GFX_Sprite_Tikka_StuckInTreeEnd
	dl $C49720,$C499C0,GFX_Sprite_Tikka_ClimbDownTree1,GFX_Sprite_Tikka_ClimbDownTree1End
	dl $C499C0,$C49C60,GFX_Sprite_Tikka_ClimbDownTree2,GFX_Sprite_Tikka_ClimbDownTree2End
	dl $C49C60,$C49F80,GFX_Sprite_Tikka_ClimbDownTree3,GFX_Sprite_Tikka_ClimbDownTree3End
	dl $C49F80,$C4A1A0,GFX_Sprite_Tikka_Kiss1,GFX_Sprite_Tikka_Kiss1End
	dl $C4A1A0,$C4A3A0,GFX_Sprite_Tikka_Kiss2,GFX_Sprite_Tikka_Kiss2End
	dl $C4A3A0,$C4A580,GFX_Sprite_Tikka_Kiss3,GFX_Sprite_Tikka_Kiss3End
	dl $C4A580,$C4A740,GFX_Sprite_Tikka_Kiss4,GFX_Sprite_Tikka_Kiss4End
	dl $C4A740,$C4AA00,GFX_Sprite_Tikka_Talk1,GFX_Sprite_Tikka_Talk1End
	dl $C4AA00,$C4AD00,GFX_Sprite_Tikka_Talk2,GFX_Sprite_Tikka_Talk2End
	dl $C4AD00,$C4AFE0,GFX_Sprite_Tikka_Talk3,GFX_Sprite_Tikka_Talk3End
	dl $C4AFE0,$C4B260,GFX_Sprite_Tikka_Talk4,GFX_Sprite_Tikka_Talk4End
	dl $C4B260,$C4B4E0,GFX_Sprite_Tikka_Talk5,GFX_Sprite_Tikka_Talk5End
	dl $C4B4E0,$C4B560,GFX_Sprite_Unused_Frame1,GFX_Sprite_Unused_Frame1End
	dl $C4B560,$C4B5E0,GFX_Sprite_Unused_Frame2,GFX_Sprite_Unused_Frame2End
	dl $C4B5E0,$C4B640,GFX_Sprite_TotemPoleEyes_LookLeft,GFX_Sprite_TotemPoleEyes_LookLeftEnd
	dl $C4B640,$C4B6A0,GFX_Sprite_TotemPoleEyes_LookRight,GFX_Sprite_TotemPoleEyes_LookRightEnd
	dl $C4B6A0,$C4B700,GFX_Sprite_TotemPoleEyes_LookDown,GFX_Sprite_TotemPoleEyes_LookDownEnd
	dl $C4B700,$C4B720,GFX_Sprite_PoisonDart_Diagonal,GFX_Sprite_PoisonDart_DiagonalEnd
	dl $C4B720,$C4B740,GFX_Sprite_PoisonDart_Vertical,GFX_Sprite_PoisonDart_VerticalEnd
	dl $C4B740,$C4B760,GFX_Sprite_PoisonDart_Horizontal,GFX_Sprite_PoisonDart_HorizontalEnd
	dl $C4B760,$C4B8E0,GFX_Sprite_CollapsingRoof_Frame1,GFX_Sprite_CollapsingRoof_Frame1End
	dl $C4B8E0,$C4BB20,GFX_Sprite_CollapsingRoof_Frame2,GFX_Sprite_CollapsingRoof_Frame2End
	dl $C4BB20,$C4BCA0,GFX_Sprite_CollapsingRoof_Frame3,GFX_Sprite_CollapsingRoof_Frame3End
	dl $C4BCA0,$C4BE20,GFX_Sprite_CollapsingRoof_Frame4,GFX_Sprite_CollapsingRoof_Frame4End
	dl $C4BE20,$C4BFE0,GFX_Sprite_FallingStalactite_Frame1,GFX_Sprite_FallingStalactite_Frame1End
	dl $C4BFE0,$C4C160,GFX_Sprite_FallingStalactite_Frame2,GFX_Sprite_FallingStalactite_Frame2End
	dl $C4C160,$C4C300,GFX_Sprite_FallingStalactite_Frame3,GFX_Sprite_FallingStalactite_Frame3End
	dl $C4C300,$C4C440,GFX_Sprite_FallingStalactite_Frame4,GFX_Sprite_FallingStalactite_Frame4End
	dl $C4C440,$C4C540,GFX_Sprite_FallingStalactite_Frame5,GFX_Sprite_FallingStalactite_Frame5End
	dl $C4C540,$C4C640,GFX_Sprite_FallingStalactite_Frame6,GFX_Sprite_FallingStalactite_Frame6End
	dl $C4C640,$C4C980,GFX_Sprite_LargeWeight,GFX_Sprite_LargeWeightEnd
	dl $C4C980,$C4C9C0,GFX_Sprite_Rope,GFX_Sprite_RopeEnd
	dl $C4C9C0,$C4CA40,GFX_Sprite_Candle_Frame1,GFX_Sprite_Candle_Frame1End
	dl $C4CA40,$C4CAA0,GFX_Sprite_Candle_Frame2,GFX_Sprite_Candle_Frame2End
	dl $C4CAA0,$C4CB60,GFX_Sprite_Pulley_Frame1,GFX_Sprite_Pulley_Frame1End
	dl $C4CB60,$C4CC20,GFX_Sprite_Pulley_Frame2,GFX_Sprite_Pulley_Frame2End
	dl $C4CC20,$C4CCE0,GFX_Sprite_Pulley_Frame3,GFX_Sprite_Pulley_Frame3End
	dl $C4CCE0,$C4CDA0,GFX_Sprite_Pulley_Frame4,GFX_Sprite_Pulley_Frame4End
	dl $C4CDA0,$C4D0C0,GFX_Sprite_TreehouseDoor_Frame1,GFX_Sprite_TreehouseDoor_Frame1End
	dl $C4D0C0,$C4D400,GFX_Sprite_TreehouseDoor_Frame2,GFX_Sprite_TreehouseDoor_Frame2End
	dl $C4D400,$C4D5A0,GFX_Sprite_TreehouseDoor_Frame3,GFX_Sprite_TreehouseDoor_Frame3End
	dl $C4D5A0,$C4D8C0,GFX_Sprite_TreehouseDoor_Frame4,GFX_Sprite_TreehouseDoor_Frame4End
	dl $C4D8C0,$C4DE40,GFX_Sprite_TreehouseDoor_Frame5,GFX_Sprite_TreehouseDoor_Frame5End
	dl $C4DE40,$C4E140,GFX_Sprite_BreakableTreehouseFloor_Frame1,GFX_Sprite_BreakableTreehouseFloor_Frame1End
	dl $C4E140,$C4E420,GFX_Sprite_BreakableTreehouseFloor_Frame2,GFX_Sprite_BreakableTreehouseFloor_Frame2End
	dl $C4E420,$C4E820,GFX_Sprite_BreakableTreehouseFloor_Frame3,GFX_Sprite_BreakableTreehouseFloor_Frame3End
	dl $C4E820,$C4EC20,GFX_Sprite_BreakableTreehouseFloor_Frame4,GFX_Sprite_BreakableTreehouseFloor_Frame4End
	dl $C4EC20,$C4EE20,GFX_Sprite_TreehouseCrate,GFX_Sprite_TreehouseCrateEnd
	dl $C4EE20,$C4EFC0,GFX_Sprite_Snake_Wait,GFX_Sprite_Snake_WaitEnd
	dl $C4EFC0,$C4F140,GFX_Sprite_Snake_Fall,GFX_Sprite_Snake_FallEnd
	dl $C4F140,$C4F2E0,GFX_Sprite_Snake_Slither1,GFX_Sprite_Snake_Slither1End
	dl $C4F2E0,$C4F480,GFX_Sprite_Snake_Slither2,GFX_Sprite_Snake_Slither2End
	dl $C4F480,$C4F600,GFX_Sprite_Snake_Slither3,GFX_Sprite_Snake_Slither3End
	dl $C4F600,$C4F780,GFX_Sprite_Snake_Slither4,GFX_Sprite_Snake_Slither4End
	dl $C4F780,$C4F7C0,GFX_Sprite_SwingableVine_Frame1,GFX_Sprite_SwingableVine_Frame1End
	dl $C4F7C0,$C4F800,GFX_Sprite_SwingableVine_Frame2,GFX_Sprite_SwingableVine_Frame2End
	dl $C4F800,$C4F840,GFX_Sprite_SwingableVine_Frame3,GFX_Sprite_SwingableVine_Frame3End
	dl $C4F840,$C4F880,GFX_Sprite_SwingableVine_Frame4,GFX_Sprite_SwingableVine_Frame4End
	dl $C4F880,$C4F8C0,GFX_Sprite_SwingableVine_Frame5,GFX_Sprite_SwingableVine_Frame5End
	dl $C4F8C0,$C4F920,GFX_Sprite_SwingableVine_Frame6,GFX_Sprite_SwingableVine_Frame6End
	dl $C4F920,$C4F980,GFX_Sprite_SwingableVine_Frame7,GFX_Sprite_SwingableVine_Frame7End
	dl $C4F980,$C4F9E0,GFX_Sprite_SwingableVine_Frame8,GFX_Sprite_SwingableVine_Frame8End
	dl $C4F9E0,$C4FA40,GFX_Sprite_SwingableVine_Frame9,GFX_Sprite_SwingableVine_Frame9End
	dl $C4FA40,$C4FAA0,GFX_Sprite_SwingableVine_Frame10,GFX_Sprite_SwingableVine_Frame10End
	dl $C4FAA0,$C4FB00,GFX_Sprite_SwingableVine_Frame11,GFX_Sprite_SwingableVine_Frame11End
	dl $C4FB00,$C4FB40,GFX_Sprite_SwingableVine_Frame12,GFX_Sprite_SwingableVine_Frame12End
	dl $C4FB40,$C4FB80,GFX_Sprite_SwingableVine_Frame13,GFX_Sprite_SwingableVine_Frame13End
	dl $C4FB80,$C4FBC0,GFX_Sprite_SwingableVine_Frame14,GFX_Sprite_SwingableVine_Frame14End
	dl $C4FBC0,$C4FC00,GFX_Sprite_SwingableVine_Frame15,GFX_Sprite_SwingableVine_Frame15End
	dl $C4FC00,$C4FDA0,GFX_Sprite_Fireball_Frame1,GFX_Sprite_Fireball_Frame1End
	dl $C4FDA0,$C50000,GFX_Sprite_Fireball_Frame2,GFX_Sprite_Fireball_Frame2End
	dl $C50000,$C50260,GFX_Sprite_Fireball_Frame3,GFX_Sprite_Fireball_Frame3End
	dl $C50260,$C50460,GFX_Sprite_Fireball_Frame4,GFX_Sprite_Fireball_Frame4End
	dl $C50460,$C50640,GFX_Sprite_Fireball_Frame5,GFX_Sprite_Fireball_Frame5End
	dl $C50640,$C506C0,GFX_Sprite_Raft,GFX_Sprite_RaftEnd
	dl $C506C0,$C50820,GFX_Sprite_RiverFish_Frame1,GFX_Sprite_RiverFish_Frame1End
	dl $C50820,$C509A0,GFX_Sprite_RiverFish_Frame2,GFX_Sprite_RiverFish_Frame2End
	dl $C509A0,$C50B20,GFX_Sprite_RiverFish_Frame3,GFX_Sprite_RiverFish_Frame3End
	dl $C50B20,$C50CA0,GFX_Sprite_RiverFish_Frame4,GFX_Sprite_RiverFish_Frame4End
	dl $C50CA0,$C50E40,GFX_Sprite_RiverFish_Frame5,GFX_Sprite_RiverFish_Frame5End
	dl $C50E40,$C50EC0,GFX_Sprite_LargeWeightChain,GFX_Sprite_LargeWeightChainEnd
	dl $C50EC0,$C50F00,GFX_Sprite_Boomerang_Frame1,GFX_Sprite_Boomerang_Frame1End
	dl $C50F00,$C50F40,GFX_Sprite_Boomerang_Frame2,GFX_Sprite_Boomerang_Frame2End
	dl $C50F40,$C50FC0,GFX_Sprite_Boomerang_Frame3,GFX_Sprite_Boomerang_Frame3End
	dl $C50FC0,$C51040,GFX_Sprite_Boomerang_Frame4,GFX_Sprite_Boomerang_Frame4End
	dl $C51040,$C510C0,GFX_Sprite_Boomerang_Frame5,GFX_Sprite_Boomerang_Frame5End
	dl $C510C0,$C51120,GFX_Sprite_Boomerang_Frame6,GFX_Sprite_Boomerang_Frame6End
	dl $C51120,$C51180,GFX_Sprite_Boomerang_Frame7,GFX_Sprite_Boomerang_Frame7End
	dl $C51180,$C511C0,GFX_Sprite_CageDoorKey,GFX_Sprite_CageDoorKeyEnd
	dl $C511C0,$C51700,GFX_Sprite_CageDoor_Frame1,GFX_Sprite_CageDoor_Frame1End
	dl $C51700,$C51E00,GFX_Sprite_CageDoor_Frame2,GFX_Sprite_CageDoor_Frame2End
	dl $C51E00,$C523A0,GFX_Sprite_CageDoor_Frame3,GFX_Sprite_CageDoor_Frame3End
	dl $C523A0,$C52E80,GFX_Sprite_Ape_Stand1,GFX_Sprite_Ape_Stand1End
	dl $C52E80,$C53A20,GFX_Sprite_Ape_Stand2,GFX_Sprite_Ape_Stand2End
	dl $C53A20,$C543C0,GFX_Sprite_Ape_ClimbTree1,GFX_Sprite_Ape_ClimbTree1End
	dl $C543C0,$C54DA0,GFX_Sprite_Ape_ClimbTree2,GFX_Sprite_Ape_ClimbTree2End
	dl $C54DA0,$C55820,GFX_Sprite_Ape_Unknown,GFX_Sprite_Ape_UnknownEnd
	dl $C55820,$C56180,GFX_Sprite_Ape_Dead1,GFX_Sprite_Ape_Dead1End
	dl $C56180,$C566A0,GFX_Sprite_Ape_Dead2,GFX_Sprite_Ape_Dead2End
	dl $C566A0,$C568A0,GFX_Sprite_CaveMouthBoulder,GFX_Sprite_CaveMouthBoulderEnd
	dl $C568A0,$C56900,GFX_Sprite_FallingLeaf_Frame1,GFX_Sprite_FallingLeaf_Frame1End
	dl $C56900,$C56940,GFX_Sprite_FallingLeaf_Frame2,GFX_Sprite_FallingLeaf_Frame2End
	dl $C56940,$C569A0,GFX_Sprite_FallingLeaf_Frame3,GFX_Sprite_FallingLeaf_Frame3End
	dl $C569A0,$C56BA0,GFX_Sprite_EmeraldCrystalPedestal_Frame1,GFX_Sprite_EmeraldCrystalPedestal_Frame1End
	dl $C56BA0,$C56DA0,GFX_Sprite_EmeraldCrystalPedestal_Frame2,GFX_Sprite_EmeraldCrystalPedestal_Frame2End
	dl $C56DA0,$C56FA0,GFX_Sprite_EmeraldCrystalPedestal_Frame3,GFX_Sprite_EmeraldCrystalPedestal_Frame3End
	dl $C56FA0,$C571A0,GFX_Sprite_EmeraldCrystalPedestal_Frame4,GFX_Sprite_EmeraldCrystalPedestal_Frame4End
	dl $C571A0,$C575A0,GFX_Sprite_EmeraldCrystalPedestal_Frame5,GFX_Sprite_EmeraldCrystalPedestal_Frame5End
	dl $C575A0,$C57660,GFX_Sprite_EmeraldCrystal_Frame1,GFX_Sprite_EmeraldCrystal_Frame1End
	dl $C57660,$C57720,GFX_Sprite_EmeraldCrystal_Frame2,GFX_Sprite_EmeraldCrystal_Frame2End
	dl $C57720,$C577E0,GFX_Sprite_EmeraldCrystal_Frame3,GFX_Sprite_EmeraldCrystal_Frame3End
	dl $C577E0,$C579A0,GFX_Sprite_EmeraldCrystal_Frame4,GFX_Sprite_EmeraldCrystal_Frame4End
	dl $C579A0,$C57A60,GFX_Sprite_EmeraldCrystal_Frame5,GFX_Sprite_EmeraldCrystal_Frame5End
	dl $C57A60,$C57B80,GFX_Sprite_EmeraldCrystal_Frame6,GFX_Sprite_EmeraldCrystal_Frame6End
	dl $C57B80,$C57E00,GFX_Sprite_EmeraldCrystal_Frame7,GFX_Sprite_EmeraldCrystal_Frame7End
	dl $C57E00,$C58080,GFX_Sprite_BeachBoulder,GFX_Sprite_BeachBoulderEnd
	dl $C58080,$C58100,GFX_Sprite_WallTorch_Frame1,GFX_Sprite_WallTorch_Frame1End
	dl $C58100,$C58180,GFX_Sprite_WallTorch_Frame2,GFX_Sprite_WallTorch_Frame2End
	dl $C58180,$C58200,GFX_Sprite_WallTorch_Frame3,GFX_Sprite_WallTorch_Frame3End
	dl $C58200,$C58400,GFX_Sprite_WrongTorchSpikeTrap,GFX_Sprite_WrongTorchSpikeTrapEnd
	dl $C58400,$C58B80,GFX_Sprite_SinkingMossyPillar,GFX_Sprite_SinkingMossyPillarEnd
	dl $C58B80,$C59240,GFX_Sprite_LargeBoulder,GFX_Sprite_LargeBoulderEnd
	dl $C59240,$C59320,GFX_Sprite_LargeBoulderCrack_Frame1,GFX_Sprite_LargeBoulderCrack_Frame1End
	dl $C59320,$C594C0,GFX_Sprite_LargeBoulderCrack_Frame2,GFX_Sprite_LargeBoulderCrack_Frame2End
	dl $C594C0,$C59940,GFX_Sprite_LargeBoulderCrack_Frame3,GFX_Sprite_LargeBoulderCrack_Frame3End
	dl $C59940,$C599C0,GFX_Sprite_LargeBoulderDebris,GFX_Sprite_LargeBoulderDebrisEnd
	dl $C599C0,$C59D20,GFX_Sprite_Pylon_Frame1,GFX_Sprite_Pylon_Frame1End
	dl $C59D20,$C5A040,GFX_Sprite_Pylon_Frame2,GFX_Sprite_Pylon_Frame2End
	dl $C5A040,$C5A240,GFX_Sprite_RollingBarrel_Frame1,GFX_Sprite_RollingBarrel_Frame1End
	dl $C5A240,$C5A440,GFX_Sprite_RollingBarrel_Frame2,GFX_Sprite_RollingBarrel_Frame2End
	dl $C5A440,$C5A640,GFX_Sprite_RollingBarrel_Frame3,GFX_Sprite_RollingBarrel_Frame3End
	dl $C5A640,$C5A9C0,GFX_Sprite_Pirate_Stand,GFX_Sprite_Pirate_StandEnd
	dl $C5A9C0,$C5AEE0,GFX_Sprite_Pirate_Move1,GFX_Sprite_Pirate_Move1End
	dl $C5AEE0,$C5B400,GFX_Sprite_Pirate_Move2,GFX_Sprite_Pirate_Move2End
	dl $C5B400,$C5B760,GFX_Sprite_Pirate_Move3,GFX_Sprite_Pirate_Move3End
	dl $C5B760,$C5BA80,GFX_Sprite_Pirate_Slash1,GFX_Sprite_Pirate_Slash1End
	dl $C5BA80,$C5BE60,GFX_Sprite_Pirate_Slash2,GFX_Sprite_Pirate_Slash2End
	dl $C5BE60,$C5C200,GFX_Sprite_Pirate_Slash3,GFX_Sprite_Pirate_Slash3End
	dl $C5C200,$C5C660,GFX_Sprite_Pirate_Slash4,GFX_Sprite_Pirate_Slash4End
	dl $C5C660,$C5C8A0,GFX_Sprite_Pirate_Dead1,GFX_Sprite_Pirate_Dead1End
	dl $C5C8A0,$C5CAC0,GFX_Sprite_Pirate_Dead2,GFX_Sprite_Pirate_Dead2End
	dl $C5CAC0,$C5CCE0,GFX_Sprite_Pirate_Dead3,GFX_Sprite_Pirate_Dead3End
	dl $C5CCE0,$C5CF00,GFX_Sprite_Pirate_Dead4,GFX_Sprite_Pirate_Dead4End
	dl $C5CF00,$C5D040,GFX_Sprite_Pirate_Dead5,GFX_Sprite_Pirate_Dead5End
	dl $C5D040,$C5D2C0,GFX_Sprite_Pirate_ThrowDynamite1,GFX_Sprite_Pirate_ThrowDynamite1End
	dl $C5D2C0,$C5D5C0,GFX_Sprite_Pirate_ThrowDynamite2,GFX_Sprite_Pirate_ThrowDynamite2End
	dl $C5D5C0,$C5D9E0,GFX_Sprite_Pirate_ThrowDynamite3,GFX_Sprite_Pirate_ThrowDynamite3End
	dl $C5D9E0,$C5DD20,GFX_Sprite_Pirate_ThrowDynamite4,GFX_Sprite_Pirate_ThrowDynamite4End
	dl $C5DD20,$C5DDE0,GFX_Sprite_SwordItem_InInventory,GFX_Sprite_SwordItem_InInventoryEnd
	dl $C5DDE0,$C5DEA0,GFX_Sprite_SwordItem_Dropped,GFX_Sprite_SwordItem_DroppedEnd
	dl $C5DEA0,$C5E300,GFX_Sprite_Cannon,GFX_Sprite_CannonEnd
	dl $C5E300,$C5E380,GFX_Sprite_UnusedCannonball,GFX_Sprite_UnusedCannonballEnd
	dl $C5E380,$C5E7A0,GFX_Sprite_Jaguar_Jump1,GFX_Sprite_Jaguar_Jump1End
	dl $C5E7A0,$C5EC60,GFX_Sprite_Jaguar_Jump2,GFX_Sprite_Jaguar_Jump2End
	dl $C5EC60,$C5F1C0,GFX_Sprite_Jaguar_Jump3,GFX_Sprite_Jaguar_Jump3End
	dl $C5F1C0,$C5F700,GFX_Sprite_Jaguar_Jump4,GFX_Sprite_Jaguar_Jump4End
	dl $C5F700,$C5FC40,GFX_Sprite_Jaguar_Stand,GFX_Sprite_Jaguar_StandEnd
	dl $C5FC40,$C60280,GFX_Sprite_Jaguar_Run1,GFX_Sprite_Jaguar_Run1End
	dl $C60280,$C60900,GFX_Sprite_Jaguar_Run2,GFX_Sprite_Jaguar_Run2End
	dl $C60900,$C60EA0,GFX_Sprite_Jaguar_Run3,GFX_Sprite_Jaguar_Run3End
	dl $C60EA0,$C613E0,GFX_Sprite_Jaguar_Run4,GFX_Sprite_Jaguar_Run4End
	dl $C613E0,$C61A80,GFX_Sprite_Jaguar_Run5,GFX_Sprite_Jaguar_Run5End
	dl $C61A80,$C620A0,GFX_Sprite_Jaguar_Run6,GFX_Sprite_Jaguar_Run6End
	dl $C620A0,$C62160,GFX_Sprite_HUDLesterFace,GFX_Sprite_HUDLesterFaceEnd
	dl $C62160,$C62220,GFX_Sprite_HUDCanteen,GFX_Sprite_HUDCanteenEnd
	dl $C62220,$C62540,GFX_Sprite_Turtle_Walk1,GFX_Sprite_Turtle_Walk1End
	dl $C62540,$C62840,GFX_Sprite_Turtle_Walk2,GFX_Sprite_Turtle_Walk2End
	dl $C62840,$C62B80,GFX_Sprite_Turtle_Walk3,GFX_Sprite_Turtle_Walk3End
	dl $C62B80,$C62EC0,GFX_Sprite_Turtle_Walk4,GFX_Sprite_Turtle_Walk4End
	dl $C62EC0,$C63140,GFX_Sprite_Turtle_HideInShell1,GFX_Sprite_Turtle_HideInShell1End
	dl $C63140,$C63380,GFX_Sprite_Turtle_HideInShell2,GFX_Sprite_Turtle_HideInShell2End
	dl $C63380,$C63580,GFX_Sprite_SmallSpider_Frame1,GFX_Sprite_SmallSpider_Frame1End
	dl $C63580,$C63780,GFX_Sprite_SmallSpider_Frame2,GFX_Sprite_SmallSpider_Frame2End
	dl $C63780,$C639A0,GFX_Sprite_SmallSpider_Frame3,GFX_Sprite_SmallSpider_Frame3End
	dl $C639A0,$C63D60,GFX_Sprite_WebWall_Frame1,GFX_Sprite_WebWall_Frame1End
	dl $C63D60,$C63FE0,GFX_Sprite_WebWall_Frame2,GFX_Sprite_WebWall_Frame2End
	dl $C63FE0,$C64260,GFX_Sprite_WebWall_Frame3,GFX_Sprite_WebWall_Frame3End
	dl $C64260,$C644E0,GFX_Sprite_WebWall_Frame4,GFX_Sprite_WebWall_Frame4End
	dl $C644E0,$C64760,GFX_Sprite_WebWall_Frame5,GFX_Sprite_WebWall_Frame5End
	dl $C64760,$C65280,GFX_Sprite_GiantSpider,GFX_Sprite_GiantSpiderEnd
	dl $C65280,$C653A0,GFX_Sprite_LavaBubble_Frame1,GFX_Sprite_LavaBubble_Frame1End
	dl $C653A0,$C65460,GFX_Sprite_LavaBubble_Frame2,GFX_Sprite_LavaBubble_Frame2End
	dl $C65460,$C65540,GFX_Sprite_LavaBubble_Frame3,GFX_Sprite_LavaBubble_Frame3End
	dl $C65540,$C655C0,GFX_Sprite_LavaBubble_Frame4,GFX_Sprite_LavaBubble_Frame4End
	dl $C655C0,$C65720,GFX_Sprite_PushStart,GFX_Sprite_PushStartEnd
	dl $C65720,$C65780,GFX_Sprite_CorpseFlowerStink_Frame1,GFX_Sprite_CorpseFlowerStink_Frame1End
	dl $C65780,$C65900,GFX_Sprite_CorpseFlowerStink_Frame2,GFX_Sprite_CorpseFlowerStink_Frame2End
	dl $C65900,$C65B40,GFX_Sprite_CorpseFlowerStink_Frame3,GFX_Sprite_CorpseFlowerStink_Frame3End
	dl $C65B40,$C65C00,GFX_Sprite_CorpseFlowerStink_Frame4,GFX_Sprite_CorpseFlowerStink_Frame4End
	dl $C65C00,$C65CA0,GFX_Sprite_CorpseFlowerStink_Frame5,GFX_Sprite_CorpseFlowerStink_Frame5End
	dl $C65CA0,$C65D60,GFX_Sprite_ApeDefeatedParticle_Frame1,GFX_Sprite_ApeDefeatedParticle_Frame1End
	dl $C65D60,$C65E00,GFX_Sprite_ApeDefeatedParticle_Frame2,GFX_Sprite_ApeDefeatedParticle_Frame2End
	dl $C65E00,$C65EA0,GFX_Sprite_ApeDefeatedParticle_Frame3,GFX_Sprite_ApeDefeatedParticle_Frame3End
	dl $C65EA0,$C65F60,GFX_Sprite_ApeDefeatedParticle_Frame4,GFX_Sprite_ApeDefeatedParticle_Frame4End
	dl $C65F60,$C66020,GFX_Sprite_ApeDefeatedParticle_Frame5,GFX_Sprite_ApeDefeatedParticle_Frame5End
	dl $C66020,$C660E0,GFX_Sprite_CrumblingVolcanoLedge_Frame1,GFX_Sprite_CrumblingVolcanoLedge_Frame1End
	dl $C660E0,$C661A0,GFX_Sprite_CrumblingVolcanoLedge_Frame2,GFX_Sprite_CrumblingVolcanoLedge_Frame2End
	dl $C661A0,$C66260,GFX_Sprite_CrumblingVolcanoLedge_Frame3,GFX_Sprite_CrumblingVolcanoLedge_Frame3End
	dl $C66260,$C663E0,GFX_Sprite_CrumblingVolcanoFloor_Frame1,GFX_Sprite_CrumblingVolcanoFloor_Frame1End
	dl $C663E0,$C665A0,GFX_Sprite_CrumblingVolcanoFloor_Frame2,GFX_Sprite_CrumblingVolcanoFloor_Frame2End
	dl $C665A0,$C666E0,GFX_Sprite_CrumblingVolcanoFloor_Frame3,GFX_Sprite_CrumblingVolcanoFloor_Frame3End
	dl $C666E0,$C667E0,GFX_Sprite_CrumblingVolcanoFloor_Frame4,GFX_Sprite_CrumblingVolcanoFloor_Frame4End
	dl $C667E0,$C66820,GFX_Sprite_RopeFlame_Frame1,GFX_Sprite_RopeFlame_Frame1End
	dl $C66820,$C668E0,GFX_Sprite_RopeFlame_Frame2,GFX_Sprite_RopeFlame_Frame2End
	dl $C668E0,$C66A00,GFX_Sprite_RopeFlame_Frame3,GFX_Sprite_RopeFlame_Frame3End
	dl $C66A00,$C66AE0,GFX_Sprite_RopeFlame_Frame4,GFX_Sprite_RopeFlame_Frame4End
	dl $C66AE0,$C66BA0,GFX_Sprite_TreeHouseDoorLock_Frame1,GFX_Sprite_TreeHouseDoorLock_Frame1End
	dl $C66BA0,$C66C60,GFX_Sprite_TreeHouseDoorLock_Frame2,GFX_Sprite_TreeHouseDoorLock_Frame2End
	dl $C66C60,$C66D20,GFX_Sprite_TreeHouseDoorLock_Frame3,GFX_Sprite_TreeHouseDoorLock_Frame3End
	dl $C66D20,$C66DE0,GFX_Sprite_TreeHouseDoorLock_Frame4,GFX_Sprite_TreeHouseDoorLock_Frame4End
	dl $C66DE0,$C671E0,GFX_Sprite_CaveFloorSwitch,GFX_Sprite_CaveFloorSwitchEnd
	dl $C671E0,$C674A0,GFX_Sprite_CavernSwitchDoor,GFX_Sprite_CavernSwitchDoorEnd
	dl $C674A0,$C676A0,GFX_Sprite_IntroLester_Walk1,GFX_Sprite_IntroLester_Walk1End
	dl $C676A0,$C679A0,GFX_Sprite_IntroLester_Walk2,GFX_Sprite_IntroLester_Walk2End
	dl $C679A0,$C67C60,GFX_Sprite_IntroLester_Walk3,GFX_Sprite_IntroLester_Walk3End
	dl $C67C60,$C67E60,GFX_Sprite_IntroLester_Walk4,GFX_Sprite_IntroLester_Walk4End
	dl $C67E60,$C68160,GFX_Sprite_IntroLester_Walk5,GFX_Sprite_IntroLester_Walk5End
	dl $C68160,$C68440,GFX_Sprite_IntroLester_Walk6,GFX_Sprite_IntroLester_Walk6End
	dl $C68440,$C685C0,GFX_Sprite_IntroLester_Sleep,GFX_Sprite_IntroLester_SleepEnd
	dl $C685C0,$C68DC0,GFX_Sprite_IntroCargoLift,GFX_Sprite_IntroCargoLiftEnd
	dl $C68DC0,$C68EA0,GFX_Sprite_IntroLester_Swim1,GFX_Sprite_IntroLester_Swim1End
	dl $C68EA0,$C68F80,GFX_Sprite_IntroLester_Swim2,GFX_Sprite_IntroLester_Swim2End
	dl $C68F80,$C690A0,GFX_Sprite_IntroLester_Swim3,GFX_Sprite_IntroLester_Swim3End
	dl $C690A0,$C69200,GFX_Sprite_IntroLester_Swim4,GFX_Sprite_IntroLester_Swim4End
	dl $C69200,$C69340,GFX_Sprite_IntroLester_Swim5,GFX_Sprite_IntroLester_Swim5End
	dl $C69340,$C695A0,GFX_Sprite_Surfboard_Ridden,GFX_Sprite_Surfboard_RiddenEnd
	dl $C695A0,$C69A20,GFX_Sprite_Surfboard_Upright,GFX_Sprite_Surfboard_UprightEnd
	dl $C69A20,$C69AA0,GFX_Sprite_UnknownEffect_Frame1,GFX_Sprite_UnknownEffect_Frame1End
	dl $C69AA0,$C69BA0,GFX_Sprite_UnknownEffect_Frame2,GFX_Sprite_UnknownEffect_Frame2End
	dl $C69BA0,$C69CC0,GFX_Sprite_UnknownEffect_Frame3,GFX_Sprite_UnknownEffect_Frame3End
	dl $C69CC0,$C69DE0,GFX_Sprite_UnknownEffect_Frame4,GFX_Sprite_UnknownEffect_Frame4End
	dl $C69DE0,$C6A360,GFX_Sprite_Hector_Stand,GFX_Sprite_Hector_StandEnd
	dl $C6A360,$C6A760,GFX_Sprite_Hector_TiedUp,GFX_Sprite_Hector_TiedUpEnd
	dl $C6A760,$C6AAE0,GFX_Sprite_Hector_Talk1,GFX_Sprite_Hector_Talk1End
	dl $C6AAE0,$C6B020,GFX_Sprite_Hector_Talk2,GFX_Sprite_Hector_Talk2End
	dl $C6B020,$C6B5A0,GFX_Sprite_Hector_Talk3,GFX_Sprite_Hector_Talk3End
	dl $C6B5A0,$C6BBA0,GFX_Sprite_Hector_Talk4,GFX_Sprite_Hector_Talk4End
	dl $C6BBA0,$C6BC00,GFX_Sprite_Spoon,GFX_Sprite_SpoonEnd
	dl $C6BC00,$C6C380,GFX_Sprite_PirateShipDoor,GFX_Sprite_PirateShipDoorEnd
	dl $C6C380,$C6C420,GFX_Sprite_PirateShipTorch_HeldOut1,GFX_Sprite_PirateShipTorch_HeldOut1End
	dl $C6C420,$C6C4C0,GFX_Sprite_PirateShipTorch_HeldOut2,GFX_Sprite_PirateShipTorch_HeldOut2End
	dl $C6C4C0,$C6C560,GFX_Sprite_PirateShipTorch_HeldOut3,GFX_Sprite_PirateShipTorch_HeldOut3End
	dl $C6C560,$C6C5E0,GFX_Sprite_PirateShipTorch_Idle1,GFX_Sprite_PirateShipTorch_Idle1End
	dl $C6C5E0,$C6C660,GFX_Sprite_PirateShipTorch_Idle2,GFX_Sprite_PirateShipTorch_Idle2End
	dl $C6C660,$C6C6E0,GFX_Sprite_PirateShipTorch_Idle3,GFX_Sprite_PirateShipTorch_Idle3End
	dl $C6C6E0,$C6C840,GFX_Sprite_PirateShipTorch_OnWall1,GFX_Sprite_PirateShipTorch_OnWall1End
	dl $C6C840,$C6CA80,GFX_Sprite_PirateShipTorch_OnWall2,GFX_Sprite_PirateShipTorch_OnWall2End
	dl $C6CA80,$C6CE60,GFX_Sprite_TNTCrate_Idle,GFX_Sprite_TNTCrate_IdleEnd
	dl $C6CE60,$C6D0E0,GFX_Sprite_TNTCrate_Broken,GFX_Sprite_TNTCrate_BrokenEnd
	dl $C6D0E0,$C6D120,GFX_Sprite_TNTFuse_Frame1,GFX_Sprite_TNTFuse_Frame1End
	dl $C6D120,$C6D140,GFX_Sprite_TNTFuse_Frame2,GFX_Sprite_TNTFuse_Frame2End
	dl $C6D140,$C6D160,GFX_Sprite_TNTFuse_Frame3,GFX_Sprite_TNTFuse_Frame3End
	dl $C6D160,$C6D180,GFX_Sprite_PouredWater_Frame1,GFX_Sprite_PouredWater_Frame1End
	dl $C6D180,$C6D1C0,GFX_Sprite_PouredWater_Frame2,GFX_Sprite_PouredWater_Frame2End
	dl $C6D1C0,$C6D200,GFX_Sprite_PouredWater_Frame3,GFX_Sprite_PouredWater_Frame3End
	dl $C6D200,$C6D280,GFX_Sprite_TNTFuseSmokePuff_Frame1,GFX_Sprite_TNTFuseSmokePuff_Frame1End
	dl $C6D280,$C6D3A0,GFX_Sprite_TNTFuseSmokePuff_Frame2,GFX_Sprite_TNTFuseSmokePuff_Frame2End
	dl $C6D3A0,$C6D460,GFX_Sprite_TNTFuseSmokePuff_Frame3,GFX_Sprite_TNTFuseSmokePuff_Frame3End
	dl $C6D460,$C6D500,GFX_Sprite_TNTFuseSmokePuff_Frame4,GFX_Sprite_TNTFuseSmokePuff_Frame4End
	dl $C6D500,$C6D540,GFX_Sprite_TNTFuseSmokePuff_Frame5,GFX_Sprite_TNTFuseSmokePuff_Frame5End
	dl $C6D540,$C6D5A0,GFX_Sprite_ThrownTNTFuse_Frame1,GFX_Sprite_ThrownTNTFuse_Frame1End
	dl $C6D5A0,$C6D640,GFX_Sprite_ThrownTNTFuse_Frame2,GFX_Sprite_ThrownTNTFuse_Frame2End
	dl $C6D640,$C6D6A0,GFX_Sprite_ThrownTNTFuse_Frame3,GFX_Sprite_ThrownTNTFuse_Frame3End
	dl $C6D6A0,$C6D700,GFX_Sprite_ThrownTNTFuse_Frame4,GFX_Sprite_ThrownTNTFuse_Frame4End
	dl $C6D700,$C6D760,GFX_Sprite_ThrownTNTFuse_Frame5,GFX_Sprite_ThrownTNTFuse_Frame5End
	dl $C6D760,$C6D820,GFX_Sprite_CrumblingDockFloor_Frame1,GFX_Sprite_CrumblingDockFloor_Frame1End
	dl $C6D820,$C6D980,GFX_Sprite_CrumblingDockFloor_Frame2,GFX_Sprite_CrumblingDockFloor_Frame2End
	dl $C6D980,$C6DB60,GFX_Sprite_CrumblingDockFloor_Frame3,GFX_Sprite_CrumblingDockFloor_Frame3End
	dl $C6DB60,$C6DD00,GFX_Sprite_CrumblingDockFloor_Frame4,GFX_Sprite_CrumblingDockFloor_Frame4End
	dl $C6DD00,$C6DE20,GFX_Sprite_CrumblingDockFloor_Frame5,GFX_Sprite_CrumblingDockFloor_Frame5End
	dl $C6DE20,$C6DF80,GFX_Sprite_CrumblingDockFloor_Frame6,GFX_Sprite_CrumblingDockFloor_Frame6End
	dl $C6DF80,$C6E040,GFX_Sprite_CrumblingDockFloor_Frame7,GFX_Sprite_CrumblingDockFloor_Frame7End
	dl $C6E040,$C6E340,GFX_Sprite_CollapsingSandFloor_Frame1,GFX_Sprite_CollapsingSandFloor_Frame1End
	dl $C6E340,$C6E640,GFX_Sprite_CollapsingSandFloor_Frame2,GFX_Sprite_CollapsingSandFloor_Frame2End
	dl $C6E640,$C6E920,GFX_Sprite_CollapsingSandFloor_Frame3,GFX_Sprite_CollapsingSandFloor_Frame3End
	dl $C6E920,$C6EB40,GFX_Sprite_CollapsingSandFloor_Frame4,GFX_Sprite_CollapsingSandFloor_Frame4End
	dl $C6EB40,$C6F080,GFX_Sprite_FallingCrate_Frame1,GFX_Sprite_FallingCrate_Frame1End
	dl $C6F080,$C6F600,GFX_Sprite_FallingCrate_Frame2,GFX_Sprite_FallingCrate_Frame2End
	dl $C6F600,$C6F640,GFX_Sprite_CrateRope_Frame1,GFX_Sprite_CrateRope_Frame1End
	dl $C6F640,$C6F660,GFX_Sprite_CrateRope_Frame2,GFX_Sprite_CrateRope_Frame2End
	dl $C6F660,$C6F6A0,GFX_Sprite_VolcanoLadder,GFX_Sprite_VolcanoLadderEnd
	dl $C6F6A0,$C6F7E0,GFX_Sprite_ContinueScreenCursor,GFX_Sprite_ContinueScreenCursorEnd
	dl $C6F7E0,$C6F9E0,GFX_Sprite_HalfCavernSwitchDoor_Frame1,GFX_Sprite_HalfCavernSwitchDoor_Frame1End
	dl $C6F9E0,$C6FB60,GFX_Sprite_HalfCavernSwitchDoor_Frame2,GFX_Sprite_HalfCavernSwitchDoor_Frame2End
	dl $C6FB60,$C6FC60,GFX_Sprite_HalfCavernSwitchDoor_Frame3,GFX_Sprite_HalfCavernSwitchDoor_Frame3End
	dl $C6FC60,$C6FCE0,GFX_Sprite_HalfCavernSwitchDoor_Frame4,GFX_Sprite_HalfCavernSwitchDoor_Frame4End
	dl $C6FCE0,$C6FD20,GFX_Sprite_BarrelWater_Frame1,GFX_Sprite_BarrelWater_Frame1End
	dl $C6FD20,$C6FD60,GFX_Sprite_BarrelWater_Frame2,GFX_Sprite_BarrelWater_Frame2End
	dl $C6FD60,$C6FDA0,GFX_Sprite_BarrelWater_Frame3,GFX_Sprite_BarrelWater_Frame3End
	dl $C6FDA0,$C6FDE0,GFX_Sprite_BarrelWater_Frame4,GFX_Sprite_BarrelWater_Frame4End
DynamicSpritePointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $C0EBF6,$C0F753,GFX_Layer1_DTMCLogoScreen,GFX_Layer1_DTMCLogoScreenEnd
	dl $C70820,$C731EC,GFX_Layer1_EndingCutsceneScene4,GFX_Layer1_EndingCutsceneScene4End
	dl $CEC169,$CEC950,GFX_Layer1_VisualConceptsLogo,GFX_Layer1_VisualConceptsLogoEnd
	dl $CEC970,$CED068,GFX_Layer3_SplashScreen,GFX_Layer3_SplashScreenEnd
	dl $CED070,$CEF3CA,GFX_Layer1_IntroScene1,GFX_Layer1_IntroScene1End
	dl $CEF5CA,$CF14E0,GFX_Layer1_IntroScene2,GFX_Layer1_IntroScene2End
	dl $CF16E0,$CF311A,GFX_Layer1_IntroScene3,GFX_Layer1_IntroScene3End
	dl $CF331A,$CF4BDD,GFX_Layer1_LavaRunCutscene,GFX_Layer1_LavaRunCutsceneEnd
	dl $CF4DDD,$CF5691,GFX_Layer3_TitleScreen,GFX_Layer3_TitleScreenEnd
	dl $CF56C1,$CF6CDC,GFX_Layer1_GameOverScreen,GFX_Layer1_GameOverScreenEnd
	dl $CF6CFC,$CF81A3,GFX_Layer1_ContinueScreen,GFX_Layer1_ContinueScreenEnd
	dl $CF81C3,$CF985F,GFX_Layer1_EndingCutsceneScene3,GFX_Layer1_EndingCutsceneScene3End
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

LevelDataPointersStart:
	dl $000100,LVL_Beach1_Ptrs,LVL_Beach1,LVL_Beach1End
	dl $000100,LVL_Cave1_Ptrs,LVL_Cave1,LVL_Cave1End
	dl $000100,LVL_CaveBackground_Ptrs,LVL_CaveBackground,LVL_CaveBackgroundEnd
	dl $000100,LVL_BeachBackground_Ptrs,LVL_BeachBackground,LVL_BeachBackgroundEnd
	dl $000100,LVL_TotemPoles_Ptrs,LVL_TotemPoles,LVL_TotemPolesEnd
	dl $000100,LVL_BurialGrounds_Ptrs,LVL_BurialGrounds,LVL_BurialGroundsEnd
	dl $000100,LVL_BurialGroundsBackground_Ptrs,LVL_BurialGroundsBackground,LVL_BurialGroundsBackgroundEnd
	dl $000100,LVL_Village_Outside_Ptrs,LVL_Village_Outside,LVL_Village_OutsideEnd
	dl $000100,LVL_Village_SafeHutInterior_Ptrs,LVL_Village_SafeHutInterior,LVL_Village_SafeHutInteriorEnd
	dl $000100,LVL_Village_DangerousHutInterior_Ptrs,LVL_Village_DangerousHutInterior,LVL_Village_DangerousHutInteriorEnd
	dl $000100,LVL_Village_HectorsHut_Ptrs,LVL_Village_HectorsHut,LVL_Village_HectorsHutEnd
	dl $000100,LVL_Rooftops_Ptrs,LVL_Rooftops,LVL_RooftopsEnd
	dl $000100,LVL_TreeHouse_Ptrs,LVL_TreeHouse,LVL_TreeHouseEnd
	dl $000100,LVL_JungleBackground_Ptrs,LVL_JungleBackground,LVL_JungleBackgroundEnd
	dl $000100,LVL_Jungle_Ptrs,LVL_Jungle,LVL_JungleEnd
	dl $000100,LVL_River_Ptrs,LVL_River,LVL_RiverEnd
	dl $000100,LVL_Cage_Ptrs,LVL_Cage,LVL_CageEnd
	dl $000100,LVL_Ape_Ptrs,LVL_Ape,LVL_ApeEnd
	dl $000100,LVL_CaveMouth_Ptrs,LVL_CaveMouth,LVL_CaveMouthEnd
	dl $000100,LVL_Cavern1_Ptrs,LVL_Cavern1,LVL_Cavern1End
	dl $000100,LVL_Cavern2_Ptrs,LVL_Cavern2,LVL_Cavern2End
	dl $000100,LVL_Cavern2MovingCeiling_Ptrs,LVL_Cavern2MovingCeiling,LVL_Cavern2MovingCeilingEnd
	dl $000100,LVL_PylonLevel_Ptrs,LVL_PylonLevel,LVL_PylonLevelEnd
	dl $000100,LVL_Dock_Ptrs,LVL_Dock,LVL_DockEnd
	dl $000100,LVL_PirateShip1_Ptrs,LVL_PirateShip1,LVL_PirateShip1End
	dl $000100,LVL_PirateShip2_Outside_Ptrs,LVL_PirateShip2_Outside,LVL_PirateShip2_OutsideEnd
	dl $000100,LVL_LavaRun_Ptrs,LVL_LavaRun,LVL_LavaRunEnd
	dl $000100,LVL_LavaRunMovingLava_Ptrs,LVL_LavaRunMovingLava,LVL_LavaRunMovingLavaEnd
	dl $000100,LVL_TitleScreen_Ptrs,LVL_TitleScreen,LVL_TitleScreenEnd
	dl $000100,LVL_Beach2_Ptrs,LVL_Beach2,LVL_Beach2End
	dl $000100,LVL_Cave2_Ptrs,LVL_Cave2,LVL_Cave2End
	dl $000100,LVL_SpiderLevel_Ptrs,LVL_SpiderLevel,LVL_SpiderLevelEnd
	dl $000100,LVL_CaughtCutscene_Ptrs,LVL_CaughtCutscene,LVL_CaughtCutsceneEnd
	dl $000100,LVL_PirateShip2_InteriorWithGas_Ptrs,LVL_PirateShip2_InteriorWithGas,LVL_PirateShip2_InteriorWithGasEnd
	dl $000100,LVL_PirateShip2_InteriorWithWater_Ptrs,LVL_PirateShip2_InteriorWithWater,LVL_PirateShip2_InteriorWithWaterEnd
	dl $000100,LVL_PirateShip2_InteriorWithHector_Ptrs,LVL_PirateShip2_InteriorWithHector,LVL_PirateShip2_InteriorWithHectorEnd
	dl $000100,LVL_Ending_Scene1_Ptrs,LVL_Ending_Scene1,LVL_Ending_Scene1End
	dl $000100,LVL_VillageBackground_Ptrs,LVL_VillageBackground,LVL_VillageBackgroundEnd
	dl $000100,LVL_PirateShip2_GenericInterior_Ptrs,LVL_PirateShip2_GenericInterior,LVL_PirateShip2_GenericInteriorEnd
LevelDataPointersEnd:

LVL_Beach1_Ptrs:
	db $06 : dw $0000
	dl $C80081,$C8009D				; Header
	dl $C8009D,$C80155				; Tileset Collision indexes?
	dl $C80155,$C8015D				; Palette Indexes
	dl $C8015D,$C8075E				; ???
	dl $C8075E,$C8078E				; Sprite data
	dl $C8078E,$C807A0				; ???

LVL_Cave1_Ptrs:
	db $06 : dw $0000
	dl $C807A0,$C807BC				; Header
	dl $C807BC,$C80892				; Tileset Collision indexes?
	dl $C80892,$C808A0				; Palette Indexes
	dl $C808A0,$C81306				; ???
	dl $C81306,$C813D2				; Sprite data
	dl $C813D2,$C81498				; ???

LVL_CaveBackground_Ptrs:
	db $06 : dw $0000
	dl $C81498,$C814B4				; Header
	dl $C814B4,$C81512				; Tileset Collision indexes?
	dl $C81512,$C81514				; Palette Indexes
	dl $C81514,$C8184F				; ???
	dl $C8184F,$C81850				; Sprite data
	dl $C81850,$C81852				; ???

LVL_BeachBackground_Ptrs:
	db $06 : dw $0000
	dl $C81852,$C8186E				; Header
	dl $C8186E,$C818C6				; Tileset Collision indexes?
	dl $C818C6,$C818CA				; Palette Indexes
	dl $C818CA,$C819AB				; ???
	dl $C8184F,$C81850				; Sprite data
	dl $C81850,$C81852				; ???

LVL_TotemPoles_Ptrs:
	db $06 : dw $0000
	dl $C819AB,$C819C7				; Header
	dl $C819C7,$C81AD3				; Tileset Collision indexes?
	dl $C81AD3,$C81ADB				; Palette Indexes
	dl $C81ADB,$C82354				; ???
	dl $C82354,$C823AE				; Sprite data
	dl $C823AE,$C823CC				; ???

LVL_BurialGrounds_Ptrs:
	db $06 : dw $0000
	dl $C823CC,$C823E8				; Header
	dl $C823E8,$C82476				; Tileset Collision indexes?
	dl $C82476,$C82480				; Palette Indexes
	dl $C82480,$C827ED				; ???
	dl $C827ED,$C828B9				; Sprite data
	dl $C828B9,$C8292B				; ???

LVL_BurialGroundsBackground_Ptrs:
	db $06 : dw $0000
	dl $C8292B,$C82947				; Header
	dl $C82947,$C829B9				; Tileset Collision indexes?
	dl $C829B9,$C829BD				; Palette Indexes
	dl $C829BD,$C82B23				; ???
	dl $C8184F,$C81850				; Sprite data
	dl $C81850,$C81852				; ???

LVL_Village_Outside_Ptrs:
	db $06 : dw $0000
	dl $C82B23,$C82B3F				; Header
	dl $C82B3F,$C82C29				; Tileset Collision indexes?
	dl $C82C29,$C82C33				; Palette Indexes
	dl $C82C33,$C82FDA				; ???
	dl $C82FDA,$C83058				; Sprite data
	dl $C83058,$C8307E				; ???

LVL_Village_SafeHutInterior_Ptrs:
	db $06 : dw $0000
	dl $C8307E,$C8309A				; Header
	dl $C8309A,$C83108				; Tileset Collision indexes?
	dl $C83108,$C83112				; Palette Indexes
	dl $C83112,$C83287				; ???
	dl $C83287,$C83293				; Sprite data
	dl $C83293,$C832BD				; ???

LVL_Village_DangerousHutInterior_Ptrs:
	db $06 : dw $0000
	dl $C832BD,$C832D9				; Header
	dl $C832D9,$C8333B				; Tileset Collision indexes?
	dl $C8333B,$C83345				; Palette Indexes
	dl $C83345,$C83495				; ???
	dl $C83495,$C834A7				; Sprite data
	dl $C834A7,$C834C9				; ???

LVL_Village_HectorsHut_Ptrs:
	db $06 : dw $0000
	dl $C834C9,$C834E5				; Header
	dl $C834E5,$C83585				; Tileset Collision indexes?
	dl $C83585,$C8358F				; Palette Indexes
	dl $C8358F,$C837A5				; ???
	dl $C837A5,$C837B7				; Sprite data
	dl $C837B7,$C837E1				; ???

LVL_Rooftops_Ptrs:
	db $06 : dw $0000
	dl $C837E1,$C837FD				; Header
	dl $C837FD,$C838DB				; Tileset Collision indexes?
	dl $C838DB,$C838E7				; Palette Indexes
	dl $C838E7,$C83BF1				; ???
	dl $C83BF1,$C83C63				; Sprite data
	dl $C83C63,$C83CA1				; ???

LVL_TreeHouse_Ptrs:
	db $06 : dw $0000
	dl $C83CA1,$C83CBD				; Header
	dl $C83CBD,$C83D49				; Tileset Collision indexes?
	dl $C83D49,$C83D51				; Palette Indexes
	dl $C83D51,$C840C5				; ???
	dl $C840C5,$C84107				; Sprite data
	dl $C84107,$C84131				; ???

LVL_JungleBackground_Ptrs:
	db $06 : dw $0000
	dl $C84131,$C8414D				; Header
	dl $C8414D,$C841F1				; Tileset Collision indexes?
	dl $C841F1,$C841F5				; Palette Indexes
	dl $C841F5,$C84418				; ???
	dl $C8184F,$C81850				; Sprite data
	dl $C84418,$C8444A				; ???

LVL_Jungle_Ptrs:
	db $06 : dw $0000
	dl $C8444A,$C84466				; Header
	dl $C84466,$C84572				; Tileset Collision indexes?
	dl $C84572,$C8457A				; Palette Indexes
	dl $C8457A,$C84EEE				; ???
	dl $C84EEE,$C84F84				; Sprite data
	dl $C84F84,$C84F86				; ???

LVL_River_Ptrs:
	db $06 : dw $0000
	dl $C84F86,$C84FA2				; Header
	dl $C84FA2,$C85078				; Tileset Collision indexes?
	dl $C85078,$C85082				; Palette Indexes
	dl $C85082,$C856DF				; ???
	dl $C856DF,$C8577B				; Sprite data
	dl $C8577B,$C857DD				; ???

LVL_Cage_Ptrs:
	db $06 : dw $0000
	dl $C857DD,$C857F9				; Header
	dl $C857F9,$C8584D				; Tileset Collision indexes?
	dl $C8584D,$C85857				; Palette Indexes
	dl $C85857,$C85912				; ???
	dl $C85912,$C8595A				; Sprite data
	dl $C8595A,$C85978				; ???

LVL_Ape_Ptrs:
	db $06 : dw $0000
	dl $C85978,$C85994				; Header
	dl $C85994,$C859D0				; Tileset Collision indexes?
	dl $C859D0,$C859D8				; Palette Indexes
	dl $C859D8,$C85BCF				; ???
	dl $C85BCF,$C85C2F				; Sprite data
	dl $C84F84,$C84F86				; ???

LVL_CaveMouth_Ptrs:
	db $06 : dw $0000
	dl $C85C2F,$C85C4B				; Header
	dl $C85C4B,$C85D53				; Tileset Collision indexes?
	dl $C85D53,$C85D5D				; Palette Indexes
	dl $C85D5D,$C8621E				; ???
	dl $C8621E,$C8629C				; Sprite data
	dl $C8629C,$C862C6				; ???

LVL_Cavern1_Ptrs:
	db $06 : dw $0000
	dl $C862C6,$C862E2				; Header
	dl $C862E2,$C86394				; Tileset Collision indexes?
	dl $C86394,$C863A0				; Palette Indexes
	dl $C863A0,$C86E69				; ???
	dl $C86E69,$C86F7D				; Sprite data
	dl $C86F7D,$C86FF7				; ???

LVL_Cavern2_Ptrs:
	db $06 : dw $0000
	dl $C86FF7,$C87013				; Header
	dl $C87013,$C87053				; Tileset Collision indexes?
	dl $C87053,$C87059				; Palette Indexes
	dl $C87059,$C87815				; ???
	dl $C87815,$C87833				; Sprite data
	dl $C87833,$C8784D				; ???

LVL_Cavern2MovingCeiling_Ptrs:
	db $06 : dw $0000
	dl $C8784D,$C87869				; Header
	dl $C87869,$C87871				; Tileset Collision indexes?
	dl $C87871,$C87875				; Palette Indexes
	dl $C87875,$C878B6				; ???
	dl $C8184F,$C81850				; Sprite data
	dl $C81850,$C81852				; ???

LVL_PylonLevel_Ptrs:
	db $06 : dw $0000
	dl $C878B6,$C878D2				; Header
	dl $C878D2,$C8792C				; Tileset Collision indexes?
	dl $C8792C,$C87934				; Palette Indexes
	dl $C87934,$C87A4E				; ???
	dl $C87A4E,$C87A72				; Sprite data
	dl $C87A72,$C87AD4				; ???

LVL_Dock_Ptrs:
	db $06 : dw $0000
	dl $C87AD4,$C87AF0				; Header
	dl $C87AF0,$C87C6A				; Tileset Collision indexes?
	dl $C87C6A,$C87C74				; Palette Indexes
	dl $C87C74,$C884F5				; ???
	dl $C884F5,$C8853D				; Sprite data
	dl $C8853D,$C885A7				; ???

LVL_PirateShip1_Ptrs:
	db $06 : dw $0000
	dl $C885A7,$C885C3				; Header
	dl $C885C3,$C88689				; Tileset Collision indexes?
	dl $C88689,$C88693				; Palette Indexes
	dl $C88693,$C88FDD				; ???
	dl $C88FDD,$C89091				; Sprite data
	dl $C89091,$C8910B				; ???

LVL_PirateShip2_Outside_Ptrs:
	db $06 : dw $0000
	dl $C8910B,$C89127				; Header
	dl $C89127,$C891B9				; Tileset Collision indexes?
	dl $C891B9,$C891C3				; Palette Indexes
	dl $C891C3,$C8978A				; ???
	dl $C8978A,$C89832				; Sprite data
	dl $C81850,$C81852				; ???

LVL_LavaRun_Ptrs:
	db $06 : dw $0000
	dl $C89832,$C8984E				; Header
	dl $C8984E,$C898E2				; Tileset Collision indexes?
	dl $C898E2,$C898EA				; Palette Indexes
	dl $C898EA,$C8A22D				; ???
	dl $C8A22D,$C8A2F9				; Sprite data
	dl $C8A2F9,$C8A353				; ???

LVL_LavaRunMovingLava_Ptrs:
	db $06 : dw $0000
	dl $C8A353,$C8A36F				; Header
	dl $C8A36F,$C8A3C9				; Tileset Collision indexes?
	dl $C8A3C9,$C8A3CB				; Palette Indexes
	dl $C8A3CB,$C8A456				; ???
	dl $C8184F,$C81850				; Sprite data
	dl $C8A456,$C8A508				; ???

LVL_TitleScreen_Ptrs:
	db $06 : dw $0000
	dl $C8A508,$C8A524				; Header
	dl $C8A524,$C8A550				; Tileset Collision indexes?
	dl $C8A550,$C8A554				; Palette Indexes
	dl $C8A554,$C8A5B1				; ???
	dl $C8184F,$C81850				; Sprite data
	dl $C8A5B1,$C8A5BB				; ???

LVL_Beach2_Ptrs:
	db $06 : dw $0000
	dl $C8A5BB,$C8A5D7				; Header
	dl $C8A5D7,$C8A6A3				; Tileset Collision indexes?
	dl $C8A6A3,$C8A6A9				; Palette Indexes
	dl $C8A6A9,$C8ACC2				; ???
	dl $C8ACC2,$C8AD1C				; Sprite data
	dl $C8AD1C,$C8AD2E				; ???

LVL_Cave2_Ptrs:
	db $06 : dw $0000
	dl $C8AD2E,$C8AD4A				; Header
	dl $C8AD4A,$C8AE20				; Tileset Collision indexes?
	dl $C8AE20,$C8AE2E				; Palette Indexes
	dl $C8AE2E,$C8B621				; ???
	dl $C8B621,$C8B717				; Sprite data
	dl $C813D2,$C81498				; ???

LVL_SpiderLevel_Ptrs:
	db $06 : dw $0000
	dl $C8B717,$C8B733				; Header
	dl $C8B733,$C8B7CB				; Tileset Collision indexes?
	dl $C8B7CB,$C8B7CF				; Palette Indexes
	dl $C8B7CF,$C8BE5A				; ???
	dl $C8BE5A,$C8BEC0				; Sprite data
	dl $C81850,$C81852				; ???

LVL_CaughtCutscene_Ptrs:
	db $06 : dw $0000
	dl $C8BEC0,$C8BEDC				; Header
	dl $C8BEDC,$C8BF40				; Tileset Collision indexes?
	dl $C8BF40,$C8BF46				; Palette Indexes
	dl $C8BF46,$C8C073				; ???
	dl $C8C073,$C8C07F				; Sprite data
	dl $C81850,$C81852				; ???

LVL_PirateShip2_InteriorWithGas_Ptrs:
	db $06 : dw $0000
	dl $C8C07F,$C8C09B				; Header
	dl $C8C09B,$C8C121				; Tileset Collision indexes?
	dl $C8C121,$C8C127				; Palette Indexes
	dl $C8C127,$C8C2CE				; ???
	dl $C8C2CE,$C8C2F2				; Sprite data
	dl $C81850,$C81852				; ???

LVL_PirateShip2_InteriorWithWater_Ptrs:
	db $06 : dw $0000
	dl $C8C2F2,$C8C30E				; Header
	dl $C8C30E,$C8C394				; Tileset Collision indexes?
	dl $C8C394,$C8C39A				; Palette Indexes
	dl $C8C39A,$C8C53F				; ???
	dl $C8C53F,$C8C55D				; Sprite data
	dl $C81850,$C81852				; ???

LVL_PirateShip2_InteriorWithHector_Ptrs:
	db $06 : dw $0000
	dl $C8C55D,$C8C579				; Header
	dl $C8C579,$C8C601				; Tileset Collision indexes?
	dl $C8C601,$C8C607				; Palette Indexes
	dl $C8C607,$C8C7AF				; ???
	dl $C8C7AF,$C8C7CD				; Sprite data
	dl $C81850,$C81852				; ???

LVL_Ending_Scene1_Ptrs:
	db $06 : dw $0000
	dl $C8C7CD,$C8C7E9				; Header
	dl $C8C7E9,$C8C871				; Tileset Collision indexes?
	dl $C8C871,$C8C877				; Palette Indexes
	dl $C8C607,$C8C7AF				; ???
	dl $C8C877,$C8C87D				; Sprite data
	dl $C81850,$C81852				; ???

LVL_VillageBackground_Ptrs:
	db $06 : dw $0000
	dl $C8C87D,$C8C899				; Header
	dl $C8C899,$C8C8D9				; Tileset Collision indexes?
	dl $C8C8D9,$C8C8DD				; Palette Indexes
	dl $C8C8DD,$C8CC33				; ???
	dl $C8184F,$C81850				; Sprite data
	dl $C81850,$C81852				; ???

LVL_PirateShip2_GenericInterior_Ptrs:
	db $06 : dw $0000
	dl $C8CC33,$C8CC4F				; Header
	dl $C8CC4F,$C8CCCB				; Tileset Collision indexes?
	dl $C8CCCB,$C8CCD1				; Palette Indexes
	dl $C8CCD1,$C8CE6D				; ???
	dl $C8CE6D,$C8CE85				; Sprite data
	dl $C81850,$C81852				; ???

;--------------------------------------------------------------------

PalettesPointersStart:
	dl $000001,PAL_Layer1_DTMCLogoScreen_Ptrs,PAL_Layer1_DTMCLogoScreen,PAL_Layer1_DTMCLogoScreenEnd
	dl $000001,PAL_Sprite_Lester_Ptrs,PAL_Sprite_Lester,PAL_Sprite_LesterEnd
	dl $000001,PAL_Sprite_Unknown1_Ptrs,PAL_Sprite_Unknown1,PAL_Sprite_Unknown1End
	dl $000001,PAL_Sprite_Crab_Ptrs,PAL_Sprite_Crab,PAL_Sprite_CrabEnd
	dl $000001,PAL_Sprite_Unknown2_Ptrs,PAL_Sprite_Unknown2,PAL_Sprite_Unknown2End
	dl $000001,PAL_Sprite_BeachCrate_Ptrs,PAL_Sprite_BeachCrate,PAL_Sprite_BeachCrateEnd
	dl $000001,PAL_Sprite_Eagle_Ptrs,PAL_Sprite_Eagle,PAL_Sprite_EagleEnd
	dl $000001,PAL_Sprite_Bat_Ptrs,PAL_Sprite_Bat,PAL_Sprite_BatEnd
	dl $000001,PAL_Sprite_SlimeDroplet_Ptrs,PAL_Sprite_SlimeDroplet,PAL_Sprite_SlimeDropletEnd
	dl $000001,PAL_Sprite_StoneWeapon_Ptrs,PAL_Sprite_StoneWeapon,PAL_Sprite_StoneWeaponEnd
	dl $000001,PAL_Sprite_Ruby_Ptrs,PAL_Sprite_Ruby,PAL_Sprite_RubyEnd
	dl $000001,PAL_Sprite_TreasureChest_Ptrs,PAL_Sprite_TreasureChest,PAL_Sprite_TreasureChestEnd
	dl $000001,PAL_Sprite_KickedTotemPole_Ptrs,PAL_Sprite_KickedTotemPole,PAL_Sprite_KickedTotemPoleEnd
	dl $000001,PAL_Sprite_WoodenBarrierBrokenByRuby_Ptrs,PAL_Sprite_WoodenBarrierBrokenByRuby,PAL_Sprite_WoodenBarrierBrokenByRubyEnd
	dl $000001,PAL_Sprite_Explosion_Ptrs,PAL_Sprite_Explosion,PAL_Sprite_ExplosionEnd
	dl $000001,PAL_Sprite_BurialGroundsFloor_Ptrs,PAL_Sprite_BurialGroundsFloor,PAL_Sprite_BurialGroundsFloorEnd
	dl $000001,PAL_Sprite_GhostlyArm_Ptrs,PAL_Sprite_GhostlyArm,PAL_Sprite_GhostlyArmEnd
	dl $000001,PAL_Sprite_FogCloud_Ptrs,PAL_Sprite_FogCloud,PAL_Sprite_FogCloudEnd
	dl $000001,PAL_Sprite_BurialGroundsSkull_Ptrs,PAL_Sprite_BurialGroundsSkull,PAL_Sprite_BurialGroundsSkullEnd
	dl $000001,PAL_Sprite_BurialGroundsSpirit_Ptrs,PAL_Sprite_BurialGroundsSpirit,PAL_Sprite_BurialGroundsSpiritEnd
	dl $000001,PAL_Sprite_IslandNative_Ptrs,PAL_Sprite_IslandNative,PAL_Sprite_IslandNativeEnd
	dl $000001,PAL_Sprite_ThrownJavelin_Ptrs,PAL_Sprite_ThrownJavelin,PAL_Sprite_ThrownJavelinEnd
	dl $000001,PAL_Sprite_HectorsThrone_Ptrs,PAL_Sprite_HectorsThrone,PAL_Sprite_HectorsThroneEnd
	dl $000001,PAL_Sprite_Tikka_Ptrs,PAL_Sprite_Tikka,PAL_Sprite_TikkaEnd
	dl $000001,PAL_Sprite_Unknown3_Ptrs,PAL_Sprite_Unknown3,PAL_Sprite_Unknown3End
	dl $000001,PAL_Sprite_TotemPoleEyes_Ptrs,PAL_Sprite_TotemPoleEyes,PAL_Sprite_TotemPoleEyesEnd
	dl $000001,PAL_Sprite_PoisonDart_Ptrs,PAL_Sprite_PoisonDart,PAL_Sprite_PoisonDartEnd
	dl $000001,PAL_Sprite_CollapsingRoof_Ptrs,PAL_Sprite_CollapsingRoof,PAL_Sprite_CollapsingRoofEnd
	dl $000001,PAL_Sprite_FallingStalactite_Ptrs,PAL_Sprite_FallingStalactite,PAL_Sprite_FallingStalactiteEnd
	dl $000001,PAL_Sprite_LargeWeight_Ptrs,PAL_Sprite_LargeWeight,PAL_Sprite_LargeWeightEnd
	dl $000001,PAL_Sprite_Pulley_Ptrs,PAL_Sprite_Pulley,PAL_Sprite_PulleyEnd
	dl $000001,PAL_Sprite_Candle_Ptrs,PAL_Sprite_Candle,PAL_Sprite_CandleEnd
	dl $000001,PAL_Sprite_TreehouseCrate_Ptrs,PAL_Sprite_TreehouseCrate,PAL_Sprite_TreehouseCrateEnd
	dl $000001,PAL_Sprite_BreakableTreehouseFloor_Ptrs,PAL_Sprite_BreakableTreehouseFloor,PAL_Sprite_BreakableTreehouseFloorEnd
	dl $000001,PAL_Sprite_Snake_Ptrs,PAL_Sprite_Snake,PAL_Sprite_SnakeEnd
	dl $000001,PAL_Sprite_SwingableVine_Ptrs,PAL_Sprite_SwingableVine,PAL_Sprite_SwingableVineEnd
	dl $000001,PAL_Sprite_Raft_Ptrs,PAL_Sprite_Raft,PAL_Sprite_RaftEnd
	dl $000001,PAL_Sprite_RiverFish_Ptrs,PAL_Sprite_RiverFish,PAL_Sprite_RiverFishEnd
	dl $000001,PAL_Sprite_Boomerang_Ptrs,PAL_Sprite_Boomerang,PAL_Sprite_BoomerangEnd
	dl $000001,PAL_Sprite_CageDoorKey_Ptrs,PAL_Sprite_CageDoorKey,PAL_Sprite_CageDoorKeyEnd
	dl $000001,PAL_Sprite_CageDoor_Ptrs,PAL_Sprite_CageDoor,PAL_Sprite_CageDoorEnd
	dl $000001,PAL_Sprite_Ape_Ptrs,PAL_Sprite_Ape,PAL_Sprite_ApeEnd
	dl $000001,PAL_Sprite_CaveMouthBoulder_Ptrs,PAL_Sprite_CaveMouthBoulder,PAL_Sprite_CaveMouthBoulderEnd
	dl $000001,PAL_Sprite_FallingLeaves_Ptrs,PAL_Sprite_FallingLeaves,PAL_Sprite_FallingLeavesEnd
	dl $000001,PAL_Sprite_EmeraldCrystalPedestal_Ptrs,PAL_Sprite_EmeraldCrystalPedestal,PAL_Sprite_EmeraldCrystalPedestalEnd
	dl $000001,PAL_Sprite_EmeraldCrystal_Ptrs,PAL_Sprite_EmeraldCrystal,PAL_Sprite_EmeraldCrystalEnd
	dl $000001,PAL_Sprite_BlueWallTorch_Ptrs,PAL_Sprite_BlueWallTorch,PAL_Sprite_BlueWallTorchEnd
	dl $000001,PAL_Sprite_RedWallTorch_Ptrs,PAL_Sprite_RedWallTorch,PAL_Sprite_RedWallTorchEnd
	dl $000001,PAL_Sprite_YellowWallTorch_Ptrs,PAL_Sprite_YellowWallTorch,PAL_Sprite_YellowWallTorchEnd
	dl $000001,PAL_Sprite_CavernSwitchDoor_Ptrs,PAL_Sprite_CavernSwitchDoor,PAL_Sprite_CavernSwitchDoorEnd
	dl $000001,PAL_Sprite_SinkingMossyPillar_Ptrs,PAL_Sprite_SinkingMossyPillar,PAL_Sprite_SinkingMossyPillarEnd
	dl $000001,PAL_Sprite_LargeBoulder_Ptrs,PAL_Sprite_LargeBoulder,PAL_Sprite_LargeBoulderEnd
	dl $000001,PAL_Sprite_Pylon_Ptrs,PAL_Sprite_Pylon,PAL_Sprite_PylonEnd
	dl $000001,PAL_Sprite_RollingBarrel_Ptrs,PAL_Sprite_RollingBarrel,PAL_Sprite_RollingBarrelEnd
	dl $000001,PAL_Sprite_Pirate_Ptrs,PAL_Sprite_Pirate,PAL_Sprite_PirateEnd
	dl $000001,PAL_Sprite_Cannon_Ptrs,PAL_Sprite_Cannon,PAL_Sprite_CannonEnd
	dl $000001,PAL_Sprite_Unknown4_Ptrs,PAL_Sprite_Unknown4,PAL_Sprite_Unknown4End
	dl $000001,PAL_Sprite_Jaguar_Ptrs,PAL_Sprite_Jaguar,PAL_Sprite_JaguarEnd
	dl $000001,PAL_Sprite_Canteen_Ptrs,PAL_Sprite_Canteen,PAL_Sprite_CanteenEnd
	dl $000001,PAL_Sprite_Turtle_Ptrs,PAL_Sprite_Turtle,PAL_Sprite_TurtleEnd
	dl $000001,PAL_Sprite_Spider_Ptrs,PAL_Sprite_Spider,PAL_Sprite_SpiderEnd
	dl $000001,PAL_Sprite_GiantSpider_Ptrs,PAL_Sprite_GiantSpider,PAL_Sprite_GiantSpiderEnd
	dl $000001,PAL_Sprite_LavaBubble_Ptrs,PAL_Sprite_LavaBubble,PAL_Sprite_LavaBubbleEnd
	dl $000001,PAL_Sprite_PushStartText_Ptrs,PAL_Sprite_PushStartText,PAL_Sprite_PushStartTextEnd
	dl $000001,PAL_Sprite_CorpseFlowerStink_Ptrs,PAL_Sprite_CorpseFlowerStink,PAL_Sprite_CorpseFlowerStinkEnd
	dl $000001,PAL_Sprite_ApeDefeatedParticle_Ptrs,PAL_Sprite_ApeDefeatedParticle,PAL_Sprite_ApeDefeatedParticleEnd
	dl $000001,PAL_Sprite_BurningPulley_Ptrs,PAL_Sprite_BurningPulley,PAL_Sprite_BurningPulleyEnd
	dl $000001,PAL_Sprite_IntroCargoLift_Ptrs,PAL_Sprite_IntroCargoLift,PAL_Sprite_IntroCargoLiftEnd
	dl $000001,PAL_Sprite_IntroLester_Swim_Ptrs,PAL_Sprite_IntroLester_Swim,PAL_Sprite_IntroLester_SwimEnd
	dl $000001,PAL_Sprite_IntroLester_Surfboard_Ptrs,PAL_Sprite_IntroLester_Surfboard,PAL_Sprite_IntroLester_SurfboardEnd
	dl $000001,PAL_Sprite_Unknown5_Ptrs,PAL_Sprite_Unknown5,PAL_Sprite_Unknown5End
	dl $000001,PAL_Sprite_Hector_Ptrs,PAL_Sprite_Hector,PAL_Sprite_HectorEnd
	dl $000001,PAL_Sprite_Spoon_Ptrs,PAL_Sprite_Spoon,PAL_Sprite_SpoonEnd
	dl $000001,PAL_Sprite_PirateShipDoor_Ptrs,PAL_Sprite_PirateShipDoor,PAL_Sprite_PirateShipDoorEnd
	dl $000001,PAL_Sprite_PirateShipTorch_Ptrs,PAL_Sprite_PirateShipTorch,PAL_Sprite_PirateShipTorchEnd
	dl $000001,PAL_Sprite_TNTCrate_Ptrs,PAL_Sprite_TNTCrate,PAL_Sprite_TNTCrateEnd
	dl $000001,PAL_Sprite_PouredWater_Ptrs,PAL_Sprite_PouredWater,PAL_Sprite_PouredWaterEnd
	dl $000001,PAL_Sprite_CrumblingDockFloor_Ptrs,PAL_Sprite_CrumblingDockFloor,PAL_Sprite_CrumblingDockFloorEnd
	dl $000001,PAL_Sprite_CollapsingSandFloor_Ptrs,PAL_Sprite_CollapsingSandFloor,PAL_Sprite_CollapsingSandFloorEnd
	dl $000001,PAL_Sprite_VolcanoLadder_Ptrs,PAL_Sprite_VolcanoLadder,PAL_Sprite_VolcanoLadderEnd
	dl $000001,PAL_Sprite_Unknown6_Ptrs,PAL_Sprite_Unknown6,PAL_Sprite_Unknown6End
	dl $000001,PAL_Sprite_ContinueScreenCursor_Ptrs,PAL_Sprite_ContinueScreenCursor,PAL_Sprite_ContinueScreenCursorEnd
	dl $000001,PAL_Sprite_BarrelWater_Ptrs,PAL_Sprite_BarrelWater,PAL_Sprite_BarrelWaterEnd
	dl $000001,PAL_Layer1_EndingCutsceneScene4_Ptrs,PAL_Layer1_EndingCutsceneScene4,PAL_Layer1_EndingCutsceneScene4End
	dl $000001,PAL_BeachTileset_Layer1_Sand_Ptrs,PAL_BeachTileset_Layer1_Sand,PAL_BeachTileset_Layer1_SandEnd
	dl $000001,PAL_BeachTileset_Layer1_Starfish_Ptrs,PAL_BeachTileset_Layer1_Starfish,PAL_BeachTileset_Layer1_StarfishEnd
	dl $000001,PAL_BeachTileset_Layer1_Plants_Ptrs,PAL_BeachTileset_Layer1_Plants,PAL_BeachTileset_Layer1_PlantsEnd
	dl $000001,PAL_BeachTileset_Layer1_Rockwalls_Ptrs,PAL_BeachTileset_Layer1_Rockwalls,PAL_BeachTileset_Layer1_RockwallsEnd
	dl $000001,PAL_CaveTileset_Layer1_StalactitesAndStalagmite_Ptrs,PAL_CaveTileset_Layer1_StalactitesAndStalagmite,PAL_CaveTileset_Layer1_StalactitesAndStalagmiteEnd
	dl $000001,PAL_CaveTileset_Layer1_GroundAndWalls_Ptrs,PAL_CaveTileset_Layer1_GroundAndWalls,PAL_CaveTileset_Layer1_GroundAndWallsEnd
	dl $000001,PAL_CaveTileset_Layer1_SlimeFloors_Ptrs,PAL_CaveTileset_Layer1_SlimeFloors,PAL_CaveTileset_Layer1_SlimeFloorsEnd
	dl $000001,PAL_CaveTileset_Layer1_GemstonesAndLavaCracks_Ptrs,PAL_CaveTileset_Layer1_GemstonesAndLavaCracks,PAL_CaveTileset_Layer1_GemstonesAndLavaCracksEnd
	dl $000001,PAL_CaveTileset_Layer1_Waterfalls_Ptrs,PAL_CaveTileset_Layer1_Waterfalls,PAL_CaveTileset_Layer1_WaterfallsEnd
	dl $000001,PAL_CaveTileset_Layer1_LightPillar_Ptrs,PAL_CaveTileset_Layer1_LightPillar,PAL_CaveTileset_Layer1_LightPillarEnd
	dl $000001,PAL_CaveTileset_Layer2_Unknown_Ptrs,PAL_CaveTileset_Layer2_Unknown,PAL_CaveTileset_Layer2_UnknownEnd
	dl $000001,PAL_CaveTileset_Layer2_Background_Ptrs,PAL_CaveTileset_Layer2_Background,PAL_CaveTileset_Layer2_BackgroundEnd
	dl $000001,PAL_BeachTileset_Layer2_MountainsAndClouds_Ptrs,PAL_BeachTileset_Layer2_MountainsAndClouds,PAL_BeachTileset_Layer2_MountainsAndCloudsEnd
	dl $000001,PAL_BeachTileset_Layer2_Waterline_Ptrs,PAL_BeachTileset_Layer2_Waterline,PAL_BeachTileset_Layer2_WaterlineEnd
	dl $000001,PAL_BurialGroundsTileset_Layer1_Ground_Ptrs,PAL_BurialGroundsTileset_Layer1_Ground,PAL_BurialGroundsTileset_Layer1_GroundEnd
	dl $000001,PAL_BurialGroundsTileset_Layer1_Fire_Ptrs,PAL_BurialGroundsTileset_Layer1_Fire,PAL_BurialGroundsTileset_Layer1_FireEnd
	dl $000001,PAL_BurialGroundsTileset_Layer1_Bones_Ptrs,PAL_BurialGroundsTileset_Layer1_Bones,PAL_BurialGroundsTileset_Layer1_BonesEnd
	dl $000001,PAL_BurialGroundsTileset_Layer1_Ledges_Ptrs,PAL_BurialGroundsTileset_Layer1_Ledges,PAL_BurialGroundsTileset_Layer1_LedgesEnd
	dl $000001,PAL_BurialGroundsTileset_Layer2_SkyAndHills_Ptrs,PAL_BurialGroundsTileset_Layer2_SkyAndHills,PAL_BurialGroundsTileset_Layer2_SkyAndHillsEnd
	dl $000001,PAL_BurialGroundsTileset_Layer2_BackgroundFire_Ptrs,PAL_BurialGroundsTileset_Layer2_BackgroundFire,PAL_BurialGroundsTileset_Layer2_BackgroundFireEnd
	dl $000001,PAL_VillageTileset_Layer1_TreeBranch_Ptrs,PAL_VillageTileset_Layer1_TreeBranch,PAL_VillageTileset_Layer1_TreeBranchEnd
	dl $000001,PAL_VillageTileset_Layer1_WoodObjects_Ptrs,PAL_VillageTileset_Layer1_WoodObjects,PAL_VillageTileset_Layer1_WoodObjectsEnd
	dl $000001,PAL_VillageTileset_Layer1_MeatAndChimney_Ptrs,PAL_VillageTileset_Layer1_MeatAndChimney,PAL_VillageTileset_Layer1_MeatAndChimneyEnd
	dl $000001,PAL_VillageTileset_Layer1_GroundAndPlantObjects_Ptrs,PAL_VillageTileset_Layer1_GroundAndPlantObjects,PAL_VillageTileset_Layer1_GroundAndPlantObjectsEnd
	dl $000001,PAL_HutInteriorTileset_Layer1_Main_Ptrs,PAL_HutInteriorTileset_Layer1_Main,PAL_HutInteriorTileset_Layer1_MainEnd
	dl $000001,PAL_HutInteriorTileset_Layer1_GreenBowl_Ptrs,PAL_HutInteriorTileset_Layer1_GreenBowl,PAL_HutInteriorTileset_Layer1_GreenBowlEnd
	dl $000001,PAL_HutInteriorTileset_Layer1_BrownJar_Ptrs,PAL_HutInteriorTileset_Layer1_BrownJar,PAL_HutInteriorTileset_Layer1_BrownJarEnd
	dl $000001,PAL_HutInteriorTileset_Layer1_FireplaceLightsAndJars_Ptrs,PAL_HutInteriorTileset_Layer1_FireplaceLightsAndJars,PAL_HutInteriorTileset_Layer1_FireplaceLightsAndJarsEnd
	dl $000001,PAL_HutInteriorTileset_Layer1_HectorBust_Ptrs,PAL_HutInteriorTileset_Layer1_HectorBust,PAL_HutInteriorTileset_Layer1_HectorBustEnd
	dl $000001,PAL_VillageTileset_Layer1_Rocks_Ptrs,PAL_VillageTileset_Layer1_Rocks,PAL_VillageTileset_Layer1_RocksEnd
	dl $000001,PAL_JungleTileset_Layer2_DistantBackground_Ptrs,PAL_JungleTileset_Layer2_DistantBackground,PAL_JungleTileset_Layer2_DistantBackgroundEnd
	dl $000001,PAL_JungleTileset_Layer2_NearBackground_Ptrs,PAL_JungleTileset_Layer2_NearBackground,PAL_JungleTileset_Layer2_NearBackgroundEnd
	dl $000001,PAL_JungleTileset_Layer1_Dirt_Ptrs,PAL_JungleTileset_Layer1_Dirt,PAL_JungleTileset_Layer1_DirtEnd
	dl $000001,PAL_JungleTileset_Layer1_Grass_Ptrs,PAL_JungleTileset_Layer1_Grass,PAL_JungleTileset_Layer1_GrassEnd
	dl $000001,PAL_JungleTileset_Layer1_WaterAndEdges_Ptrs,PAL_JungleTileset_Layer1_WaterAndEdges,PAL_JungleTileset_Layer1_WaterAndEdgesEnd
	dl $000001,PAL_JungleTileset_Layer1_GrassCorner_Ptrs,PAL_JungleTileset_Layer1_GrassCorner,PAL_JungleTileset_Layer1_GrassCornerEnd
	dl $000001,PAL_DockTileset_Layer1_FlatGround_Ptrs,PAL_DockTileset_Layer1_FlatGround,PAL_DockTileset_Layer1_FlatGroundEnd
	dl $000001,PAL_DockTileset_Layer1_FishingNets_Ptrs,PAL_DockTileset_Layer1_FishingNets,PAL_DockTileset_Layer1_FishingNetsEnd
	dl $000001,PAL_DockTileset_Layer1_SlopesCratesAndPosts_Ptrs,PAL_DockTileset_Layer1_SlopesCratesAndPosts,PAL_DockTileset_Layer1_SlopesCratesAndPostsEnd
	dl $000001,PAL_DockTileset_Layer1_BirdsAndMetal_Ptrs,PAL_DockTileset_Layer1_BirdsAndMetal,PAL_DockTileset_Layer1_BirdsAndMetalEnd
	dl $000001,PAL_ShipTileset_Layer1_Main_Ptrs,PAL_ShipTileset_Layer1_Main,PAL_ShipTileset_Layer1_MainEnd
	dl $000001,PAL_ShipTileset_Layer1_Railing_Ptrs,PAL_ShipTileset_Layer1_Railing,PAL_ShipTileset_Layer1_RailingEnd
	dl $000001,PAL_ShipTileset_Layer1_HorizontalPoles_Ptrs,PAL_ShipTileset_Layer1_HorizontalPoles,PAL_ShipTileset_Layer1_HorizontalPolesEnd
	dl $000001,PAL_CaveTileset_Layer1_Lava_Ptrs,PAL_CaveTileset_Layer1_Lava,PAL_CaveTileset_Layer1_LavaEnd
	dl $000001,PAL_CaveTileset_Layer2_Lava_Ptrs,PAL_CaveTileset_Layer2_Lava,PAL_CaveTileset_Layer2_LavaEnd
	dl $000001,PAL_TitleScreen_Layer1_Vine_Ptrs,PAL_TitleScreen_Layer1_Vine,PAL_TitleScreen_Layer1_VineEnd
	dl $000001,PAL_TitleScreen_Layer1_Lester_Ptrs,PAL_TitleScreen_Layer1_Lester,PAL_TitleScreen_Layer1_LesterEnd
	dl $000001,PAL_ShipInteriorTileset_Layer1_Main_Ptrs,PAL_ShipInteriorTileset_Layer1_Main,PAL_ShipInteriorTileset_Layer1_MainEnd
	dl $000001,PAL_ShipInteriorTileset_Layer1_DoorFrame_Ptrs,PAL_ShipInteriorTileset_Layer1_DoorFrame,PAL_ShipInteriorTileset_Layer1_DoorFrameEnd
	dl $000001,PAL_ShipInteriorTileset_Layer1_Decorations_Ptrs,PAL_ShipInteriorTileset_Layer1_Decorations,PAL_ShipInteriorTileset_Layer1_DecorationsEnd
	dl $000001,PAL_VillageTileset_Layer2_MainBackground_Ptrs,PAL_VillageTileset_Layer2_MainBackground,PAL_VillageTileset_Layer2_MainBackgroundEnd
	dl $000001,PAL_VillageTileset_Layer2_BerryLeaves_Ptrs,PAL_VillageTileset_Layer2_BerryLeaves,PAL_VillageTileset_Layer2_BerryLeavesEnd
	dl $000001,PAL_Layer3_HUDAndFont_Ptrs,PAL_Layer3_HUDAndFont,PAL_Layer3_HUDAndFontEnd
	dl $000001,PAL_Layer1_VisualConceptsLogo_Ptrs,PAL_Layer1_VisualConceptsLogo,PAL_Layer1_VisualConceptsLogoEnd
	dl $000001,PAL_Layer3_SplashScreen_Ptrs,PAL_Layer3_SplashScreen,PAL_Layer3_SplashScreenEnd
	dl $000001,PAL_Layer1_IntroScene1_Ptrs,PAL_Layer1_IntroScene1,PAL_Layer1_IntroScene1End
	dl $000001,PAL_Layer1_IntroScene2_Ptrs,PAL_Layer1_IntroScene2,PAL_Layer1_IntroScene2End
	dl $000001,PAL_Layer1_IntroScene3_Ptrs,PAL_Layer1_IntroScene3,PAL_Layer1_IntroScene3End
	dl $000001,PAL_Layer1_LavaRunCutscene_Ptrs,PAL_Layer1_LavaRunCutscene,PAL_Layer1_LavaRunCutsceneEnd
	dl $000001,PAL_Layer3_TitleScreen_Ptrs,PAL_Layer3_TitleScreen,PAL_Layer3_TitleScreenEnd
	dl $000001,PAL_Layer1_GameOverScreen_Ptrs,PAL_Layer1_GameOverScreen,PAL_Layer1_GameOverScreenEnd
	dl $000001,PAL_Layer1_ContinueScreen_Ptrs,PAL_Layer1_ContinueScreen,PAL_Layer1_ContinueScreenEnd
	dl $000001,PAL_Layer1_EndingCutsceneScene3_Ptrs,PAL_Layer1_EndingCutsceneScene3,PAL_Layer1_EndingCutsceneScene3End
PalettesPointersEnd:

PAL_Layer1_DTMCLogoScreen_Ptrs:
	db $01 : dw $0000
	dl $000000,$C0F753,$C0F773	;

PAL_Sprite_Lester_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FDE0,$C6FE00	;

PAL_Sprite_Unknown1_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FE00,$C6FE20	;

PAL_Sprite_Crab_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FE20,$C6FE40	;

PAL_Sprite_Unknown2_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FE40,$C6FE60	;

PAL_Sprite_BeachCrate_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FE60,$C6FE80	;

PAL_Sprite_Eagle_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FE80,$C6FEA0	;

PAL_Sprite_Bat_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FEA0,$C6FEC0	;

PAL_Sprite_SlimeDroplet_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FEC0,$C6FEE0	;

PAL_Sprite_StoneWeapon_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FEE0,$C6FF00	;

PAL_Sprite_Ruby_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FF00,$C6FF20	;

PAL_Sprite_TreasureChest_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FF20,$C6FF40	;

PAL_Sprite_KickedTotemPole_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FF40,$C6FF60	;

PAL_Sprite_WoodenBarrierBrokenByRuby_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FF60,$C6FF80	;

PAL_Sprite_Explosion_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FF80,$C6FFA0	;

PAL_Sprite_BurialGroundsFloor_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FFA0,$C6FFC0	;

PAL_Sprite_GhostlyArm_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FFC0,$C6FFE0	;

PAL_Sprite_FogCloud_Ptrs:
	db $01 : dw $0000
	dl $000000,$C6FFE0,$C70000	;

PAL_Sprite_BurialGroundsSkull_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70000,$C70020	;

PAL_Sprite_BurialGroundsSpirit_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70020,$C70040	;

PAL_Sprite_IslandNative_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70040,$C70060	;

PAL_Sprite_ThrownJavelin_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70060,$C70080	;

PAL_Sprite_HectorsThrone_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70080,$C700A0	;

PAL_Sprite_Tikka_Ptrs:
	db $01 : dw $0000
	dl $000000,$C700A0,$C700C0	;

PAL_Sprite_Unknown3_Ptrs:
	db $01 : dw $0000
	dl $000000,$C700C0,$C700E0	;

PAL_Sprite_TotemPoleEyes_Ptrs:
	db $01 : dw $0000
	dl $000000,$C700E0,$C70100	;

PAL_Sprite_PoisonDart_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70100,$C70120	;

PAL_Sprite_CollapsingRoof_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70120,$C70140	;

PAL_Sprite_FallingStalactite_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70140,$C70160	;

PAL_Sprite_LargeWeight_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70160,$C70180	;

PAL_Sprite_Pulley_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70180,$C701A0	;

PAL_Sprite_Candle_Ptrs:
	db $01 : dw $0000
	dl $000000,$C701A0,$C701C0	;

PAL_Sprite_TreehouseCrate_Ptrs:
	db $01 : dw $0000
	dl $000000,$C701C0,$C701E0	;

PAL_Sprite_BreakableTreehouseFloor_Ptrs:
	db $01 : dw $0000
	dl $000000,$C701E0,$C70200	;

PAL_Sprite_Snake_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70200,$C70220	;

PAL_Sprite_SwingableVine_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70220,$C70240	;

PAL_Sprite_Raft_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70240,$C70260	;

PAL_Sprite_RiverFish_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70260,$C70280	;

PAL_Sprite_Boomerang_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70280,$C702A0	;

PAL_Sprite_CageDoorKey_Ptrs:
	db $01 : dw $0000
	dl $000000,$C702A0,$C702C0	;

PAL_Sprite_CageDoor_Ptrs:
	db $01 : dw $0000
	dl $000000,$C702C0,$C702E0	;

PAL_Sprite_Ape_Ptrs:
	db $01 : dw $0000
	dl $000000,$C702E0,$C70300	;

PAL_Sprite_CaveMouthBoulder_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70300,$C70320	;

PAL_Sprite_FallingLeaves_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70320,$C70340	;

PAL_Sprite_EmeraldCrystalPedestal_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70340,$C70360	;

PAL_Sprite_EmeraldCrystal_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70360,$C70380	;

PAL_Sprite_BlueWallTorch_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70380,$C703A0	;

PAL_Sprite_RedWallTorch_Ptrs:
	db $01 : dw $0000
	dl $000000,$C703A0,$C703C0	;

PAL_Sprite_YellowWallTorch_Ptrs:
	db $01 : dw $0000
	dl $000000,$C703C0,$C703E0	;

PAL_Sprite_CavernSwitchDoor_Ptrs:
	db $01 : dw $0000
	dl $000000,$C703E0,$C70400	;

PAL_Sprite_SinkingMossyPillar_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70400,$C70420	;

PAL_Sprite_LargeBoulder_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70420,$C70440	;

PAL_Sprite_Pylon_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70440,$C70460	;

PAL_Sprite_RollingBarrel_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70460,$C70480	;

PAL_Sprite_Pirate_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70480,$C704A0	;

PAL_Sprite_Cannon_Ptrs:
	db $01 : dw $0000
	dl $000000,$C704A0,$C704C0	;

PAL_Sprite_Unknown4_Ptrs:
	db $01 : dw $0000
	dl $000000,$C704C0,$C704E0	;

PAL_Sprite_Jaguar_Ptrs:
	db $01 : dw $0000
	dl $000000,$C704E0,$C70500	;

PAL_Sprite_Canteen_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70500,$C70520	;

PAL_Sprite_Turtle_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70520,$C70540	;

PAL_Sprite_Spider_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70540,$C70560	;

PAL_Sprite_GiantSpider_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70560,$C70580	;

PAL_Sprite_LavaBubble_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70580,$C705A0	;

PAL_Sprite_PushStartText_Ptrs:
	db $01 : dw $0000
	dl $000000,$C705A0,$C705C0	;

PAL_Sprite_CorpseFlowerStink_Ptrs:
	db $01 : dw $0000
	dl $000000,$C705C0,$C705E0	;

PAL_Sprite_ApeDefeatedParticle_Ptrs:
	db $01 : dw $0000
	dl $000000,$C705E0,$C70600	;

PAL_Sprite_BurningPulley_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70600,$C70620	;

PAL_Sprite_IntroCargoLift_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70620,$C70640	;

PAL_Sprite_IntroLester_Swim_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70640,$C70660	;

PAL_Sprite_IntroLester_Surfboard_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70660,$C70680	;

PAL_Sprite_Unknown5_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70680,$C706A0	;

PAL_Sprite_Hector_Ptrs:
	db $01 : dw $0000
	dl $000000,$C706A0,$C706C0	;

PAL_Sprite_Spoon_Ptrs:
	db $01 : dw $0000
	dl $000000,$C706C0,$C706E0	;

PAL_Sprite_PirateShipDoor_Ptrs:
	db $01 : dw $0000
	dl $000000,$C706E0,$C70700	;

PAL_Sprite_PirateShipTorch_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70700,$C70720	;

PAL_Sprite_TNTCrate_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70720,$C70740	;

PAL_Sprite_PouredWater_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70740,$C70760	;

PAL_Sprite_CrumblingDockFloor_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70760,$C70780	;

PAL_Sprite_CollapsingSandFloor_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70780,$C707A0	;

PAL_Sprite_VolcanoLadder_Ptrs:
	db $01 : dw $0000
	dl $000000,$C707A0,$C707C0	;

PAL_Sprite_Unknown6_Ptrs:
	db $01 : dw $0000
	dl $000000,$C707C0,$C707E0	;

PAL_Sprite_ContinueScreenCursor_Ptrs:
	db $01 : dw $0000
	dl $000000,$C707E0,$C70800	;

PAL_Sprite_BarrelWater_Ptrs:
	db $01 : dw $0000
	dl $000000,$C70800,$C70820	;

PAL_Layer1_EndingCutsceneScene4_Ptrs:
	db $01 : dw $0000
	dl $000000,$C731EC,$C733EC	;

PAL_BeachTileset_Layer1_Sand_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1880,$CD18A0	;

PAL_BeachTileset_Layer1_Starfish_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD18A0,$CD18C0	;

PAL_BeachTileset_Layer1_Plants_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD18C0,$CD18E0	;

PAL_BeachTileset_Layer1_Rockwalls_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD18E0,$CD1900	;

PAL_CaveTileset_Layer1_StalactitesAndStalagmite_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1900,$CD1920	;

PAL_CaveTileset_Layer1_GroundAndWalls_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1920,$CD1940	;

PAL_CaveTileset_Layer1_SlimeFloors_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1940,$CD1960	;

PAL_CaveTileset_Layer1_GemstonesAndLavaCracks_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1960,$CD1980	;

PAL_CaveTileset_Layer1_Waterfalls_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1980,$CD19A0	;

PAL_CaveTileset_Layer1_LightPillar_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD19A0,$CD19C0	;

PAL_CaveTileset_Layer2_Unknown_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD19C0,$CD19E0	;

PAL_CaveTileset_Layer2_Background_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD19E0,$CD1A00	;

PAL_BeachTileset_Layer2_MountainsAndClouds_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1A00,$CD1A20	;

PAL_BeachTileset_Layer2_Waterline_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1A20,$CD1A40	;

PAL_BurialGroundsTileset_Layer1_Ground_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1A40,$CD1A60	;

PAL_BurialGroundsTileset_Layer1_Fire_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1A60,$CD1A80	;

PAL_BurialGroundsTileset_Layer1_Bones_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1A80,$CD1AA0	;

PAL_BurialGroundsTileset_Layer1_Ledges_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1AA0,$CD1AC0	;

PAL_BurialGroundsTileset_Layer2_SkyAndHills_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1AC0,$CD1AE0	;

PAL_BurialGroundsTileset_Layer2_BackgroundFire_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1AE0,$CD1B00	;

PAL_VillageTileset_Layer1_TreeBranch_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1B00,$CD1B20	;

PAL_VillageTileset_Layer1_WoodObjects_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1B20,$CD1B40	;

PAL_VillageTileset_Layer1_MeatAndChimney_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1B40,$CD1B60	;

PAL_VillageTileset_Layer1_GroundAndPlantObjects_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1B60,$CD1B80	;

PAL_HutInteriorTileset_Layer1_Main_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1B80,$CD1BA0	;

PAL_HutInteriorTileset_Layer1_GreenBowl_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1BA0,$CD1BC0	;

PAL_HutInteriorTileset_Layer1_BrownJar_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1BC0,$CD1BE0	;

PAL_HutInteriorTileset_Layer1_FireplaceLightsAndJars_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1BE0,$CD1C00	;

PAL_HutInteriorTileset_Layer1_HectorBust_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1C00,$CD1C20	;

PAL_VillageTileset_Layer1_Rocks_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1C20,$CD1C40	;

PAL_JungleTileset_Layer2_DistantBackground_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1C40,$CD1C60	;

PAL_JungleTileset_Layer2_NearBackground_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1C60,$CD1C80	;

PAL_JungleTileset_Layer1_Dirt_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1C80,$CD1CA0	;

PAL_JungleTileset_Layer1_Grass_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1CA0,$CD1CC0	;

PAL_JungleTileset_Layer1_WaterAndEdges_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1CC0,$CD1CE0	;

PAL_JungleTileset_Layer1_GrassCorner_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1CE0,$CD1D00	;

PAL_DockTileset_Layer1_FlatGround_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1D00,$CD1D20	;

PAL_DockTileset_Layer1_FishingNets_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1D20,$CD1D40	;

PAL_DockTileset_Layer1_SlopesCratesAndPosts_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1D40,$CD1D60	;

PAL_DockTileset_Layer1_BirdsAndMetal_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1D60,$CD1D80	;

PAL_ShipTileset_Layer1_Main_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1D80,$CD1DA0	;

PAL_ShipTileset_Layer1_Railing_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1DA0,$CD1DC0	;

PAL_ShipTileset_Layer1_HorizontalPoles_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1DC0,$CD1DE0	;

PAL_CaveTileset_Layer1_Lava_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1DE0,$CD1E00	;

PAL_CaveTileset_Layer2_Lava_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1E00,$CD1E20	;

PAL_TitleScreen_Layer1_Vine_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1E20,$CD1E40	;

PAL_TitleScreen_Layer1_Lester_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1E40,$CD1E60	;

PAL_ShipInteriorTileset_Layer1_Main_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1E60,$CD1E80	;

PAL_ShipInteriorTileset_Layer1_DoorFrame_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1E80,$CD1EA0	;

PAL_ShipInteriorTileset_Layer1_Decorations_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1EA0,$CD1EC0	;

PAL_VillageTileset_Layer2_MainBackground_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1EC0,$CD1EE0	;

PAL_VillageTileset_Layer2_BerryLeaves_Ptrs:
	db $01 : dw $0000
	dl $000000,$CD1EE0,$CD1F00	;

PAL_Layer3_HUDAndFont_Ptrs:
	db $01 : dw $0000
	dl $000000,$CEB729,$CEB769	;

PAL_Layer1_VisualConceptsLogo_Ptrs:
	db $01 : dw $0000
	dl $000000,$CEC950,$CEC970	;

PAL_Layer3_SplashScreen_Ptrs:
	db $01 : dw $0018
	dl $000000,$CED068,$CED070	;

PAL_Layer1_IntroScene1_Ptrs:
	db $01 : dw $0000
	dl $000000,$CEF3CA,$CEF5CA	;

PAL_Layer1_IntroScene2_Ptrs:
	db $01 : dw $0000
	dl $000000,$CF14E0,$CF16E0	;

PAL_Layer1_IntroScene3_Ptrs:
	db $01 : dw $0000
	dl $000000,$CF311A,$CF331A	;

PAL_Layer1_LavaRunCutscene_Ptrs:
	db $01 : dw $0000
	dl $000000,$CF4BDD,$CF4DDD	;

PAL_Layer3_TitleScreen_Ptrs:
	db $01 : dw $0010
	dl $000000,$CF5691,$CF56C1	;

PAL_Layer1_GameOverScreen_Ptrs:
	db $01 : dw $0000
	dl $000000,$CF6CDC,$CF6CFC	;

PAL_Layer1_ContinueScreen_Ptrs:
	db $01 : dw $0000
	dl $000000,$CF81A3,$CF81C3	;

PAL_Layer1_EndingCutsceneScene3_Ptrs:
	db $01 : dw $0000
	dl $000000,$CF985F,$CF987F	;


;--------------------------------------------------------------------

MusicPointersStart:
	dl $C8CE85,$C8DB7F,Music_TitleScreen,Music_TitleScreenEnd
	dl $C8DB7F,$C8F89F,Music_Beach,Music_BeachEnd
	dl $C8F89F,$C8FFC8,Music_IntroCutscene,Music_IntroCutsceneEnd
	dl $C8FFC8,$C90C68,Music_BurialGrounds,Music_BurialGroundsEnd
	dl $C90C68,$C91540,Music_Ending,Music_EndingEnd
	dl $C91540,$C91AF5,Music_Cave,Music_CaveEnd
	dl $C91AF5,$C92044,Music_Ape,Music_ApeEnd
	dl $C92044,$C92792,Music_PirateShips,Music_PirateShipsEnd
	dl $C92792,$C92E14,Music_TotemPoles,Music_TotemPolesEnd
	dl $C92E14,$C93A35,Music_River,Music_RiverEnd
	dl $C93A35,$C9483E,Music_Village,Music_VillageEnd
MusicPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $C744F1,$C74EAE,BRRFile00,BRRFile00End
	dl $C74EB8,$C75E15,BRRFile01,BRRFile01End
	dl $C75E1F,$C7623C,BRRFile02,BRRFile02End
	dl $C76246,$C7659D,BRRFile03,BRRFile03End
	dl $C765A7,$C76E8C,BRRFile04,BRRFile04End
	dl $C76E96,$C77DBD,BRRFile05,BRRFile05End
	dl $C77DC7,$C790A8,BRRFile06,BRRFile06End
	dl $C790B2,$C797CC,BRRFile07,BRRFile07End
	dl $C797D6,$C7A93D,BRRFile08,BRRFile08End
	dl $C7A947,$C7B4E1,BRRFile09,BRRFile09End
	dl $C7B4EB,$C7BC29,BRRFile0A,BRRFile0AEnd
	dl $C7BC33,$C7CF2F,BRRFile0B,BRRFile0BEnd
	dl $C7CF39,$C7E436,BRRFile0C,BRRFile0CEnd
	dl $C7E440,$C7FD24,BRR_JaguarRoar,BRR_JaguarRoarEnd
	dl $C94848,$C966B1,BRR_Lester_NervousYell,BRR_Lester_NervousYellEnd
	dl $C966BB,$C97AF2,BRR_BatFlutter,BRR_BatFlutterEnd
	dl $C97AFC,$C98E76,BRR_Lester_FallingYell,BRR_Lester_FallingYellEnd
	dl $C98E80,$C9A1CD,BRR_TNTFuse,BRR_TNTFuseEnd
	dl $C9A1D7,$C9B4B8,BRR_EagleScreech,BRR_EagleScreechEnd
	dl $C9B4C2,$C9C56C,BRR_ObjectPushRumble,BRR_ObjectPushRumbleEnd
	dl $C9C576,$C9D4C1,BRR_Explosion,BRR_ExplosionEnd
	dl $C9D4CB,$C9E002,BRR_Tikka_Help,BRR_Tikka_HelpEnd
	dl $C9E00C,$C9EA08,BRR_Lester_Oh,BRR_Lester_OhEnd
	dl $C9EA12,$C9EEAD,BRR_Laser,BRR_LaserEnd
	dl $C9EEB7,$C9F283,BRR_SwordSwing,BRR_SwordSwingEnd
	dl $C9F28D,$C9F63E,BRR_Lester_Gulp,BRR_Lester_GulpEnd
	dl $C9F648,$C9F87F,BRR_Thud,BRR_ThudEnd
	dl $C9F889,$C9FFA3,BRR_ApeHurt,BRR_ApeHurtEnd
	dl $CF9889,$CFA675,BRR_Lester_No,BRR_Lester_NoEnd
	dl $CFA67F,$CFA841,BRR_ThownRockBounce,BRR_ThownRockBounceEnd
	dl $CFA84B,$CFA9F2,BRR_PressFloorSwitch,BRR_PressFloorSwitchEnd
	dl $CFA9FC,$CFBD40,BRR_Lester_Hmmmmm,BRR_Lester_HmmmmmEnd
	dl $CFBD4A,$CFD922,BRR_Lester_Wahh,BRR_Lester_WahhEnd
	dl $CFD92C,$CFE2E9,BRR_Kiss,BRR_KissEnd
	dl $CFE2F3,$CFED88,BRR_Lester_Grunt,BRR_Lester_GruntEnd
	dl $CFED92,$CFEF9C,BRR_KillCrab,BRR_KillCrabEnd
	dl $CFEFA6,$CFF9F3,BRR_WaterSplash,BRR_WaterSplashEnd
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Layer1_Tilesets:
	db "GFX_Layer1_Tilesets.bin"
GFX_Layer1_TilesetsEnd:
GFX_Layer3_HUDAndFont:
	db "GFX_Layer3_HUDAndFont.bin"
GFX_Layer3_HUDAndFontEnd:

;--------------------------------------------------------------------

GFX_Lester_Kick1:
	db "GFX_Lester_Kick1.bin"
GFX_Lester_Kick1End:
GFX_Lester_Kick2:
	db "GFX_Lester_Kick2.bin"
GFX_Lester_Kick2End:
GFX_Lester_Kick3:
	db "GFX_Lester_Kick3.bin"
GFX_Lester_Kick3End:
GFX_Lester_Kick4:
	db "GFX_Lester_Kick4.bin"
GFX_Lester_Kick4End:
GFX_Lester_Kick5:
	db "GFX_Lester_Kick5.bin"
GFX_Lester_Kick5End:
GFX_Lester_Kick6:
	db "GFX_Lester_Kick6.bin"
GFX_Lester_Kick6End:
GFX_Lester_Kick7:
	db "GFX_Lester_Kick7.bin"
GFX_Lester_Kick7End:
GFX_Lester_Duck1:
	db "GFX_Lester_Duck1.bin"
GFX_Lester_Duck1End:
GFX_Lester_Duck2:
	db "GFX_Lester_Duck2.bin"
GFX_Lester_Duck2End:
GFX_Lester_Duck3:
	db "GFX_Lester_Duck3.bin"
GFX_Lester_Duck3End:
GFX_Lester_Duck4:
	db "GFX_Lester_Duck4.bin"
GFX_Lester_Duck4End:
GFX_Lester_Duck5:
	db "GFX_Lester_Duck5.bin"
GFX_Lester_Duck5End:
GFX_Lester_Duck6:
	db "GFX_Lester_Duck6.bin"
GFX_Lester_Duck6End:
GFX_Lester_JumpForward1:
	db "GFX_Lester_JumpForward1.bin"
GFX_Lester_JumpForward1End:
GFX_Lester_JumpForward2:
	db "GFX_Lester_JumpForward2.bin"
GFX_Lester_JumpForward2End:
GFX_Lester_JumpForward3:
	db "GFX_Lester_JumpForward3.bin"
GFX_Lester_JumpForward3End:
GFX_Lester_JumpForward4:
	db "GFX_Lester_JumpForward4.bin"
GFX_Lester_JumpForward4End:
GFX_Lester_JumpForward5:
	db "GFX_Lester_JumpForward5.bin"
GFX_Lester_JumpForward5End:
GFX_Lester_JumpForward6:
	db "GFX_Lester_JumpForward6.bin"
GFX_Lester_JumpForward6End:
GFX_Lester_JumpForward7:
	db "GFX_Lester_JumpForward7.bin"
GFX_Lester_JumpForward7End:
GFX_Lester_JumpForward8:
	db "GFX_Lester_JumpForward8.bin"
GFX_Lester_JumpForward8End:
GFX_Lester_JumpForward9:
	db "GFX_Lester_JumpForward9.bin"
GFX_Lester_JumpForward9End:
GFX_Lester_JumpForward10:
	db "GFX_Lester_JumpForward10.bin"
GFX_Lester_JumpForward10End:
GFX_Lester_JumpForward11:
	db "GFX_Lester_JumpForward11.bin"
GFX_Lester_JumpForward11End:
GFX_Lester_TurnAround1:
	db "GFX_Lester_TurnAround1.bin"
GFX_Lester_TurnAround1End:
GFX_Lester_TurnAround2:
	db "GFX_Lester_TurnAround2.bin"
GFX_Lester_TurnAround2End:
GFX_Lester_TurnAround3:
	db "GFX_Lester_TurnAround3.bin"
GFX_Lester_TurnAround3End:
GFX_Lester_TurnAround4:
	db "GFX_Lester_TurnAround4.bin"
GFX_Lester_TurnAround4End:
GFX_Lester_TurnAround5:
	db "GFX_Lester_TurnAround5.bin"
GFX_Lester_TurnAround5End:
GFX_Lester_TurnAround6:
	db "GFX_Lester_TurnAround6.bin"
GFX_Lester_TurnAround6End:
GFX_Lester_TurnAround7:
	db "GFX_Lester_TurnAround7.bin"
GFX_Lester_TurnAround7End:
GFX_Lester_Dead1:
	db "GFX_Lester_Dead1.bin"
GFX_Lester_Dead1End:
GFX_Lester_Dead2:
	db "GFX_Lester_Dead2.bin"
GFX_Lester_Dead2End:
GFX_Lester_Dead3:
	db "GFX_Lester_Dead3.bin"
GFX_Lester_Dead3End:
GFX_Lester_Dead4:
	db "GFX_Lester_Dead4.bin"
GFX_Lester_Dead4End:
GFX_Lester_Dead5:
	db "GFX_Lester_Dead5.bin"
GFX_Lester_Dead5End:
GFX_Lester_Dead6:
	db "GFX_Lester_Dead6.bin"
GFX_Lester_Dead6End:
GFX_Lester_Dead7:
	db "GFX_Lester_Dead7.bin"
GFX_Lester_Dead7End:
GFX_Lester_Dead8:
	db "GFX_Lester_Dead8.bin"
GFX_Lester_Dead8End:
GFX_Lester_Pushing1:
	db "GFX_Lester_Pushing1.bin"
GFX_Lester_Pushing1End:
GFX_Lester_Pushing2:
	db "GFX_Lester_Pushing2.bin"
GFX_Lester_Pushing2End:
GFX_Lester_Pushing3:
	db "GFX_Lester_Pushing3.bin"
GFX_Lester_Pushing3End:
GFX_Lester_Pushing4:
	db "GFX_Lester_Pushing4.bin"
GFX_Lester_Pushing4End:
GFX_Lester_Pushing5:
	db "GFX_Lester_Pushing5.bin"
GFX_Lester_Pushing5End:
GFX_Lester_Pushing6:
	db "GFX_Lester_Pushing6.bin"
GFX_Lester_Pushing6End:
GFX_Lester_Pushing7:
	db "GFX_Lester_Pushing7.bin"
GFX_Lester_Pushing7End:
GFX_Lester_Pushing8:
	db "GFX_Lester_Pushing8.bin"
GFX_Lester_Pushing8End:
GFX_Lester_Pushing9:
	db "GFX_Lester_Pushing9.bin"
GFX_Lester_Pushing9End:
GFX_Lester_Pushing10:
	db "GFX_Lester_Pushing10.bin"
GFX_Lester_Pushing10End:
GFX_Lester_NerdyWalk1:
	db "GFX_Lester_NerdyWalk1.bin"
GFX_Lester_NerdyWalk1End:
GFX_Lester_NerdyWalk2:
	db "GFX_Lester_NerdyWalk2.bin"
GFX_Lester_NerdyWalk2End:
GFX_Lester_NerdyWalk3:
	db "GFX_Lester_NerdyWalk3.bin"
GFX_Lester_NerdyWalk3End:
GFX_Lester_NerdyWalk4:
	db "GFX_Lester_NerdyWalk4.bin"
GFX_Lester_NerdyWalk4End:
GFX_Lester_NerdyWalk5:
	db "GFX_Lester_NerdyWalk5.bin"
GFX_Lester_NerdyWalk5End:
GFX_Lester_NerdyWalk6:
	db "GFX_Lester_NerdyWalk6.bin"
GFX_Lester_NerdyWalk6End:
GFX_Lester_NerdyWalk7:
	db "GFX_Lester_NerdyWalk7.bin"
GFX_Lester_NerdyWalk7End:
GFX_Lester_NerdyWalk8:
	db "GFX_Lester_NerdyWalk8.bin"
GFX_Lester_NerdyWalk8End:
GFX_Lester_NerdyRun1:
	db "GFX_Lester_NerdyRun1.bin"
GFX_Lester_NerdyRun1End:
GFX_Lester_NerdyRun2:
	db "GFX_Lester_NerdyRun2.bin"
GFX_Lester_NerdyRun2End:
GFX_Lester_NerdyRun3:
	db "GFX_Lester_NerdyRun3.bin"
GFX_Lester_NerdyRun3End:
GFX_Lester_NerdyRun4:
	db "GFX_Lester_NerdyRun4.bin"
GFX_Lester_NerdyRun4End:
GFX_Lester_NerdyRun5:
	db "GFX_Lester_NerdyRun5.bin"
GFX_Lester_NerdyRun5End:
GFX_Lester_NerdyRun6:
	db "GFX_Lester_NerdyRun6.bin"
GFX_Lester_NerdyRun6End:
GFX_Lester_NerdyRun7:
	db "GFX_Lester_NerdyRun7.bin"
GFX_Lester_NerdyRun7End:
GFX_Lester_NerdyRun8:
	db "GFX_Lester_NerdyRun8.bin"
GFX_Lester_NerdyRun8End:
GFX_Lester_ThrowWeapon1:
	db "GFX_Lester_ThrowWeapon1.bin"
GFX_Lester_ThrowWeapon1End:
GFX_Lester_ThrowWeapon2:
	db "GFX_Lester_ThrowWeapon2.bin"
GFX_Lester_ThrowWeapon2End:
GFX_Lester_ThrowWeapon3:
	db "GFX_Lester_ThrowWeapon3.bin"
GFX_Lester_ThrowWeapon3End:
GFX_Lester_ThrowWeapon4:
	db "GFX_Lester_ThrowWeapon4.bin"
GFX_Lester_ThrowWeapon4End:
GFX_Lester_ThrowWeapon5:
	db "GFX_Lester_ThrowWeapon5.bin"
GFX_Lester_ThrowWeapon5End:
GFX_Lester_ThrowWeapon6:
	db "GFX_Lester_ThrowWeapon6.bin"
GFX_Lester_ThrowWeapon6End:
GFX_Lester_ThrowWeapon7:
	db "GFX_Lester_ThrowWeapon7.bin"
GFX_Lester_ThrowWeapon7End:
GFX_Lester_JumpUp1:
	db "GFX_Lester_JumpUp1.bin"
GFX_Lester_JumpUp1End:
GFX_Lester_JumpUp2:
	db "GFX_Lester_JumpUp2.bin"
GFX_Lester_JumpUp2End:
GFX_Lester_JumpUp3:
	db "GFX_Lester_JumpUp3.bin"
GFX_Lester_JumpUp3End:
GFX_Lester_JumpUp4:
	db "GFX_Lester_JumpUp4.bin"
GFX_Lester_JumpUp4End:
GFX_Lester_JumpUp5:
	db "GFX_Lester_JumpUp5.bin"
GFX_Lester_JumpUp5End:
GFX_Lester_JumpUp6:
	db "GFX_Lester_JumpUp6.bin"
GFX_Lester_JumpUp6End:
GFX_Lester_JumpUp7:
	db "GFX_Lester_JumpUp7.bin"
GFX_Lester_JumpUp7End:
GFX_Lester_JumpUp8:
	db "GFX_Lester_JumpUp8.bin"
GFX_Lester_JumpUp8End:
GFX_Lester_JumpUp9:
	db "GFX_Lester_JumpUp9.bin"
GFX_Lester_JumpUp9End:
GFX_Lester_JumpUp10:
	db "GFX_Lester_JumpUp10.bin"
GFX_Lester_JumpUp10End:
GFX_Lester_JumpUp11:
	db "GFX_Lester_JumpUp11.bin"
GFX_Lester_JumpUp11End:
GFX_Lester_NerdyRunningJump1:
	db "GFX_Lester_NerdyRunningJump1.bin"
GFX_Lester_NerdyRunningJump1End:
GFX_Lester_NerdyRunningJump2:
	db "GFX_Lester_NerdyRunningJump2.bin"
GFX_Lester_NerdyRunningJump2End:
GFX_Lester_NerdyRunningJump3:
	db "GFX_Lester_NerdyRunningJump3.bin"
GFX_Lester_NerdyRunningJump3End:
GFX_Lester_NerdyRunningJump4:
	db "GFX_Lester_NerdyRunningJump4.bin"
GFX_Lester_NerdyRunningJump4End:
GFX_Lester_NerdyRunningJump5:
	db "GFX_Lester_NerdyRunningJump5.bin"
GFX_Lester_NerdyRunningJump5End:
GFX_Lester_NerdyRunningJump6:
	db "GFX_Lester_NerdyRunningJump6.bin"
GFX_Lester_NerdyRunningJump6End:
GFX_Lester_NerdyRunningJump7:
	db "GFX_Lester_NerdyRunningJump7.bin"
GFX_Lester_NerdyRunningJump7End:
GFX_Lester_NerdyRunningJump8:
	db "GFX_Lester_NerdyRunningJump8.bin"
GFX_Lester_NerdyRunningJump8End:
GFX_Lester_NerdyRunningJump9:
	db "GFX_Lester_NerdyRunningJump9.bin"
GFX_Lester_NerdyRunningJump9End:
GFX_Lester_Panic1:
	db "GFX_Lester_Panic1.bin"
GFX_Lester_Panic1End:
GFX_Lester_Panic2:
	db "GFX_Lester_Panic2.bin"
GFX_Lester_Panic2End:
GFX_Lester_Panic3:
	db "GFX_Lester_Panic3.bin"
GFX_Lester_Panic3End:
GFX_Lester_Panic4:
	db "GFX_Lester_Panic4.bin"
GFX_Lester_Panic4End:
GFX_Lester_Panic5:
	db "GFX_Lester_Panic5.bin"
GFX_Lester_Panic5End:
GFX_Lester_Panic6:
	db "GFX_Lester_Panic6.bin"
GFX_Lester_Panic6End:
GFX_Lester_Panic7:
	db "GFX_Lester_Panic7.bin"
GFX_Lester_Panic7End:
GFX_Lester_Panic8:
	db "GFX_Lester_Panic8.bin"
GFX_Lester_Panic8End:
GFX_Lester_Panic9:
	db "GFX_Lester_Panic9.bin"
GFX_Lester_Panic9End:
GFX_Lester_Panic10:
	db "GFX_Lester_Panic10.bin"
GFX_Lester_Panic10End:
GFX_Lester_ClimbUp1:
	db "GFX_Lester_ClimbUp1.bin"
GFX_Lester_ClimbUp1End:
GFX_Lester_ClimbUp2:
	db "GFX_Lester_ClimbUp2.bin"
GFX_Lester_ClimbUp2End:
GFX_Lester_ClimbUp3:
	db "GFX_Lester_ClimbUp3.bin"
GFX_Lester_ClimbUp3End:
GFX_Lester_ClimbUp4:
	db "GFX_Lester_ClimbUp4.bin"
GFX_Lester_ClimbUp4End:
GFX_Lester_ClimbUp5:
	db "GFX_Lester_ClimbUp5.bin"
GFX_Lester_ClimbUp5End:
GFX_Lester_ClimbUp6:
	db "GFX_Lester_ClimbUp6.bin"
GFX_Lester_ClimbUp6End:
GFX_Lester_ClimbUp7:
	db "GFX_Lester_ClimbUp7.bin"
GFX_Lester_ClimbUp7End:
GFX_Lester_ClimbUp8:
	db "GFX_Lester_ClimbUp8.bin"
GFX_Lester_ClimbUp8End:
GFX_Lester_ClimbUp9:
	db "GFX_Lester_ClimbUp9.bin"
GFX_Lester_ClimbUp9End:
GFX_Lester_ClimbUp10:
	db "GFX_Lester_ClimbUp10.bin"
GFX_Lester_ClimbUp10End:
GFX_Lester_ClimbUp11:
	db "GFX_Lester_ClimbUp11.bin"
GFX_Lester_ClimbUp11End:
GFX_Lester_ClimbUp12:
	db "GFX_Lester_ClimbUp12.bin"
GFX_Lester_ClimbUp12End:
GFX_Lester_PickUpItem1:
	db "GFX_Lester_PickUpItem1.bin"
GFX_Lester_PickUpItem1End:
GFX_Lester_PickUpItem2:
	db "GFX_Lester_PickUpItem2.bin"
GFX_Lester_PickUpItem2End:
GFX_Lester_PickUpItem3:
	db "GFX_Lester_PickUpItem3.bin"
GFX_Lester_PickUpItem3End:
GFX_Lester_PickUpItem4:
	db "GFX_Lester_PickUpItem4.bin"
GFX_Lester_PickUpItem4End:
GFX_Lester_PickUpItem5:
	db "GFX_Lester_PickUpItem5.bin"
GFX_Lester_PickUpItem5End:
GFX_Lester_GrabbedByEagle1:
	db "GFX_Lester_GrabbedByEagle1.bin"
GFX_Lester_GrabbedByEagle1End:
GFX_Lester_GrabbedByEagle2:
	db "GFX_Lester_GrabbedByEagle2.bin"
GFX_Lester_GrabbedByEagle2End:
GFX_Lester_GrabbedByEagle3:
	db "GFX_Lester_GrabbedByEagle3.bin"
GFX_Lester_GrabbedByEagle3End:
GFX_Lester_GrabbedByEagle4:
	db "GFX_Lester_GrabbedByEagle4.bin"
GFX_Lester_GrabbedByEagle4End:
GFX_Lester_ShakeHead1:
	db "GFX_Lester_ShakeHead1.bin"
GFX_Lester_ShakeHead1End:
GFX_Lester_ShakeHead2:
	db "GFX_Lester_ShakeHead2.bin"
GFX_Lester_ShakeHead2End:
GFX_Lester_AttemptToPickUp1:
	db "GFX_Lester_AttemptToPickUp1.bin"
GFX_Lester_AttemptToPickUp1End:
GFX_Lester_AttemptToPickUp2:
	db "GFX_Lester_AttemptToPickUp2.bin"
GFX_Lester_AttemptToPickUp2End:
GFX_Lester_AttemptToPickUp3:
	db "GFX_Lester_AttemptToPickUp3.bin"
GFX_Lester_AttemptToPickUp3End:
GFX_Lester_AttemptToPickUp4:
	db "GFX_Lester_AttemptToPickUp4.bin"
GFX_Lester_AttemptToPickUp4End:
GFX_Lester_CautiousWalk1:
	db "GFX_Lester_CautiousWalk1.bin"
GFX_Lester_CautiousWalk1End:
GFX_Lester_CautiousWalk2:
	db "GFX_Lester_CautiousWalk2.bin"
GFX_Lester_CautiousWalk2End:
GFX_Lester_CautiousWalk3:
	db "GFX_Lester_CautiousWalk3.bin"
GFX_Lester_CautiousWalk3End:
GFX_Lester_CautiousWalk4:
	db "GFX_Lester_CautiousWalk4.bin"
GFX_Lester_CautiousWalk4End:
GFX_Lester_CautiousWalk5:
	db "GFX_Lester_CautiousWalk5.bin"
GFX_Lester_CautiousWalk5End:
GFX_Lester_CautiousWalk6:
	db "GFX_Lester_CautiousWalk6.bin"
GFX_Lester_CautiousWalk6End:
GFX_Lester_CautiousWalk7:
	db "GFX_Lester_CautiousWalk7.bin"
GFX_Lester_CautiousWalk7End:
GFX_Lester_CautiousWalk8:
	db "GFX_Lester_CautiousWalk8.bin"
GFX_Lester_CautiousWalk8End:
GFX_Lester_CautiousWalk9:
	db "GFX_Lester_CautiousWalk9.bin"
GFX_Lester_CautiousWalk9End:
GFX_Lester_RunIntoWall1:
	db "GFX_Lester_RunIntoWall1.bin"
GFX_Lester_RunIntoWall1End:
GFX_Lester_RunIntoWall2:
	db "GFX_Lester_RunIntoWall2.bin"
GFX_Lester_RunIntoWall2End:
GFX_Lester_RunIntoWall3:
	db "GFX_Lester_RunIntoWall3.bin"
GFX_Lester_RunIntoWall3End:
GFX_Lester_RunIntoWall4:
	db "GFX_Lester_RunIntoWall4.bin"
GFX_Lester_RunIntoWall4End:
GFX_Lester_RunIntoWall5:
	db "GFX_Lester_RunIntoWall5.bin"
GFX_Lester_RunIntoWall5End:
GFX_Lester_RunIntoWall6:
	db "GFX_Lester_RunIntoWall6.bin"
GFX_Lester_RunIntoWall6End:
GFX_Lester_RunIntoWall7:
	db "GFX_Lester_RunIntoWall7.bin"
GFX_Lester_RunIntoWall7End:
GFX_Lester_RunIntoWall8:
	db "GFX_Lester_RunIntoWall8.bin"
GFX_Lester_RunIntoWall8End:
GFX_Lester_CowerFromEagle1:
	db "GFX_Lester_CowerFromEagle1.bin"
GFX_Lester_CowerFromEagle1End:
GFX_Lester_CowerFromEagle2:
	db "GFX_Lester_CowerFromEagle2.bin"
GFX_Lester_CowerFromEagle2End:
GFX_Lester_CowerFromEagle3:
	db "GFX_Lester_CowerFromEagle3.bin"
GFX_Lester_CowerFromEagle3End:
GFX_Lester_CowerFromEagle4:
	db "GFX_Lester_CowerFromEagle4.bin"
GFX_Lester_CowerFromEagle4End:
GFX_Lester_Hmmmmm1:
	db "GFX_Lester_Hmmmmm1.bin"
GFX_Lester_Hmmmmm1End:
GFX_Lester_Hmmmmm2:
	db "GFX_Lester_Hmmmmm2.bin"
GFX_Lester_Hmmmmm2End:
GFX_Lester_Hmmmmm3:
	db "GFX_Lester_Hmmmmm3.bin"
GFX_Lester_Hmmmmm3End:
GFX_Lester_Hmmmmm4:
	db "GFX_Lester_Hmmmmm4.bin"
GFX_Lester_Hmmmmm4End:
GFX_Lester_Hmmmmm5:
	db "GFX_Lester_Hmmmmm5.bin"
GFX_Lester_Hmmmmm5End:
GFX_Lester_SwingFromVine1:
	db "GFX_Lester_SwingFromVine1.bin"
GFX_Lester_SwingFromVine1End:
GFX_Lester_SwingFromVine2:
	db "GFX_Lester_SwingFromVine2.bin"
GFX_Lester_SwingFromVine2End:
GFX_Lester_SwingFromVine3:
	db "GFX_Lester_SwingFromVine3.bin"
GFX_Lester_SwingFromVine3End:
GFX_Lester_SwingFromVine4:
	db "GFX_Lester_SwingFromVine4.bin"
GFX_Lester_SwingFromVine4End:
GFX_Lester_SwingFromVine5:
	db "GFX_Lester_SwingFromVine5.bin"
GFX_Lester_SwingFromVine5End:
GFX_Lester_NerdyStand:
	db "GFX_Lester_NerdyStand.bin"
GFX_Lester_NerdyStandEnd:
GFX_Lester_BrandishSword1:
	db "GFX_Lester_BrandishSword1.bin"
GFX_Lester_BrandishSword1End:
GFX_Lester_BrandishSword2:
	db "GFX_Lester_BrandishSword2.bin"
GFX_Lester_BrandishSword2End:
GFX_Lester_BrandishSword3:
	db "GFX_Lester_BrandishSword3.bin"
GFX_Lester_BrandishSword3End:
GFX_Lester_BrandishSword4:
	db "GFX_Lester_BrandishSword4.bin"
GFX_Lester_BrandishSword4End:
GFX_Lester_BrandishSword5:
	db "GFX_Lester_BrandishSword5.bin"
GFX_Lester_BrandishSword5End:
GFX_Lester_StabSword1:
	db "GFX_Lester_StabSword1.bin"
GFX_Lester_StabSword1End:
GFX_Lester_StabSword2:
	db "GFX_Lester_StabSword2.bin"
GFX_Lester_StabSword2End:
GFX_Lester_StabSword3:
	db "GFX_Lester_StabSword3.bin"
GFX_Lester_StabSword3End:
GFX_Lester_StabSword4:
	db "GFX_Lester_StabSword4.bin"
GFX_Lester_StabSword4End:
GFX_Lester_StabSword5:
	db "GFX_Lester_StabSword5.bin"
GFX_Lester_StabSword5End:
GFX_Lester_ClimbLadder1:
	db "GFX_Lester_ClimbLadder1.bin"
GFX_Lester_ClimbLadder1End:
GFX_Lester_ClimbLadder2:
	db "GFX_Lester_ClimbLadder2.bin"
GFX_Lester_ClimbLadder2End:
GFX_Lester_ClimbLadder3:
	db "GFX_Lester_ClimbLadder3.bin"
GFX_Lester_ClimbLadder3End:
GFX_Lester_ClimbLadder4:
	db "GFX_Lester_ClimbLadder4.bin"
GFX_Lester_ClimbLadder4End:
GFX_Lester_ClimbLadder5:
	db "GFX_Lester_ClimbLadder5.bin"
GFX_Lester_ClimbLadder5End:
GFX_Lester_ClimbLadder6:
	db "GFX_Lester_ClimbLadder6.bin"
GFX_Lester_ClimbLadder6End:
GFX_Lester_ClimbLadder7:
	db "GFX_Lester_ClimbLadder7.bin"
GFX_Lester_ClimbLadder7End:
GFX_Lester_ClimbLadder8:
	db "GFX_Lester_ClimbLadder8.bin"
GFX_Lester_ClimbLadder8End:
GFX_Lester_EnterDoor1:
	db "GFX_Lester_EnterDoor1.bin"
GFX_Lester_EnterDoor1End:
GFX_Lester_EnterDoor2:
	db "GFX_Lester_EnterDoor2.bin"
GFX_Lester_EnterDoor2End:
GFX_Lester_EnterDoor3:
	db "GFX_Lester_EnterDoor3.bin"
GFX_Lester_EnterDoor3End:
GFX_Lester_WalkWithSword1:
	db "GFX_Lester_WalkWithSword1.bin"
GFX_Lester_WalkWithSword1End:
GFX_Lester_WalkWithSword2:
	db "GFX_Lester_WalkWithSword2.bin"
GFX_Lester_WalkWithSword2End:
GFX_Lester_WalkWithSword3:
	db "GFX_Lester_WalkWithSword3.bin"
GFX_Lester_WalkWithSword3End:
GFX_Lester_WalkWithSword4:
	db "GFX_Lester_WalkWithSword4.bin"
GFX_Lester_WalkWithSword4End:
GFX_Lester_WobbleNearEdge1:
	db "GFX_Lester_WobbleNearEdge1.bin"
GFX_Lester_WobbleNearEdge1End:
GFX_Lester_WobbleNearEdge2:
	db "GFX_Lester_WobbleNearEdge2.bin"
GFX_Lester_WobbleNearEdge2End:
GFX_Lester_WobbleNearEdge3:
	db "GFX_Lester_WobbleNearEdge3.bin"
GFX_Lester_WobbleNearEdge3End:
GFX_Lester_WobbleNearEdge4:
	db "GFX_Lester_WobbleNearEdge4.bin"
GFX_Lester_WobbleNearEdge4End:
GFX_Lester_WobbleNearEdge5:
	db "GFX_Lester_WobbleNearEdge5.bin"
GFX_Lester_WobbleNearEdge5End:
GFX_Lester_DrinkCanteen1:
	db "GFX_Lester_DrinkCanteen1.bin"
GFX_Lester_DrinkCanteen1End:
GFX_Lester_DrinkCanteen2:
	db "GFX_Lester_DrinkCanteen2.bin"
GFX_Lester_DrinkCanteen2End:
GFX_Lester_DrinkCanteen3:
	db "GFX_Lester_DrinkCanteen3.bin"
GFX_Lester_DrinkCanteen3End:
GFX_Lester_DrinkCanteen4:
	db "GFX_Lester_DrinkCanteen4.bin"
GFX_Lester_DrinkCanteen4End:
GFX_Lester_DrinkCanteen5:
	db "GFX_Lester_DrinkCanteen5.bin"
GFX_Lester_DrinkCanteen5End:
GFX_Lester_ConfidentWalk1:
	db "GFX_Lester_ConfidentWalk1.bin"
GFX_Lester_ConfidentWalk1End:
GFX_Lester_ConfidentWalk2:
	db "GFX_Lester_ConfidentWalk2.bin"
GFX_Lester_ConfidentWalk2End:
GFX_Lester_ConfidentWalk3:
	db "GFX_Lester_ConfidentWalk3.bin"
GFX_Lester_ConfidentWalk3End:
GFX_Lester_ConfidentWalk4:
	db "GFX_Lester_ConfidentWalk4.bin"
GFX_Lester_ConfidentWalk4End:
GFX_Lester_ConfidentWalk5:
	db "GFX_Lester_ConfidentWalk5.bin"
GFX_Lester_ConfidentWalk5End:
GFX_Lester_ConfidentWalk6:
	db "GFX_Lester_ConfidentWalk6.bin"
GFX_Lester_ConfidentWalk6End:
GFX_Lester_ConfidentWalk7:
	db "GFX_Lester_ConfidentWalk7.bin"
GFX_Lester_ConfidentWalk7End:
GFX_Lester_ConfidentWalk8:
	db "GFX_Lester_ConfidentWalk8.bin"
GFX_Lester_ConfidentWalk8End:
GFX_Lester_ConfidentRun1:
	db "GFX_Lester_ConfidentRun1.bin"
GFX_Lester_ConfidentRun1End:
GFX_Lester_ConfidentRun2:
	db "GFX_Lester_ConfidentRun2.bin"
GFX_Lester_ConfidentRun2End:
GFX_Lester_ConfidentRun3:
	db "GFX_Lester_ConfidentRun3.bin"
GFX_Lester_ConfidentRun3End:
GFX_Lester_ConfidentRun4:
	db "GFX_Lester_ConfidentRun4.bin"
GFX_Lester_ConfidentRun4End:
GFX_Lester_ConfidentRun5:
	db "GFX_Lester_ConfidentRun5.bin"
GFX_Lester_ConfidentRun5End:
GFX_Lester_ConfidentRun6:
	db "GFX_Lester_ConfidentRun6.bin"
GFX_Lester_ConfidentRun6End:
GFX_Lester_ConfidentRun7:
	db "GFX_Lester_ConfidentRun7.bin"
GFX_Lester_ConfidentRun7End:
GFX_Lester_ConfidentRun8:
	db "GFX_Lester_ConfidentRun8.bin"
GFX_Lester_ConfidentRun8End:
GFX_Lester_ConfidentJumpForward1:
	db "GFX_Lester_ConfidentJumpForward1.bin"
GFX_Lester_ConfidentJumpForward1End:
GFX_Lester_ConfidentJumpForward2:
	db "GFX_Lester_ConfidentJumpForward2.bin"
GFX_Lester_ConfidentJumpForward2End:
GFX_Lester_ConfidentJumpForward3:
	db "GFX_Lester_ConfidentJumpForward3.bin"
GFX_Lester_ConfidentJumpForward3End:
GFX_Lester_ConfidentJumpForward4:
	db "GFX_Lester_ConfidentJumpForward4.bin"
GFX_Lester_ConfidentJumpForward4End:
GFX_Lester_LandBeforeFalling1:
	db "GFX_Lester_LandBeforeFalling1.bin"
GFX_Lester_LandBeforeFalling1End:
GFX_Lester_LandBeforeFalling2:
	db "GFX_Lester_LandBeforeFalling2.bin"
GFX_Lester_LandBeforeFalling2End:
GFX_Lester_HangFromLedge1:
	db "GFX_Lester_HangFromLedge1.bin"
GFX_Lester_HangFromLedge1End:
GFX_Lester_HangFromLedge2:
	db "GFX_Lester_HangFromLedge2.bin"
GFX_Lester_HangFromLedge2End:
GFX_Lester_Surfing1:
	db "GFX_Lester_Surfing1.bin"
GFX_Lester_Surfing1End:
GFX_Lester_Surfing2:
	db "GFX_Lester_Surfing2.bin"
GFX_Lester_Surfing2End:
GFX_Lester_ArmFlex1:
	db "GFX_Lester_ArmFlex1.bin"
GFX_Lester_ArmFlex1End:
GFX_Lester_ArmFlex2:
	db "GFX_Lester_ArmFlex2.bin"
GFX_Lester_ArmFlex2End:
GFX_Lester_ArmFlex3:
	db "GFX_Lester_ArmFlex3.bin"
GFX_Lester_ArmFlex3End:
GFX_Lester_ArmFlex4:
	db "GFX_Lester_ArmFlex4.bin"
GFX_Lester_ArmFlex4End:
GFX_Lester_ArmFlex5:
	db "GFX_Lester_ArmFlex5.bin"
GFX_Lester_ArmFlex5End:
GFX_Lester_ArmFlex6:
	db "GFX_Lester_ArmFlex6.bin"
GFX_Lester_ArmFlex6End:
GFX_Lester_GetOnLadder1:
	db "GFX_Lester_GetOnLadder1.bin"
GFX_Lester_GetOnLadder1End:
GFX_Lester_GetOnLadder2:
	db "GFX_Lester_GetOnLadder2.bin"
GFX_Lester_GetOnLadder2End:
GFX_Lester_GetOnLadder3:
	db "GFX_Lester_GetOnLadder3.bin"
GFX_Lester_GetOnLadder3End:
GFX_Lester_GetOnLadder4:
	db "GFX_Lester_GetOnLadder4.bin"
GFX_Lester_GetOnLadder4End:
GFX_Lester_GetOnLadder5:
	db "GFX_Lester_GetOnLadder5.bin"
GFX_Lester_GetOnLadder5End:
GFX_Lester_ConfidentStand:
	db "GFX_Lester_ConfidentStand.bin"
GFX_Lester_ConfidentStandEnd:
GFX_Lester_GrabbedByGhostHand1:
	db "GFX_Lester_GrabbedByGhostHand1.bin"
GFX_Lester_GrabbedByGhostHand1End:
GFX_Lester_GrabbedByGhostHand2:
	db "GFX_Lester_GrabbedByGhostHand2.bin"
GFX_Lester_GrabbedByGhostHand2End:
GFX_Sprite_Crab_Scuttle1:
	db "GFX_Sprite_Crab_Scuttle1.bin"
GFX_Sprite_Crab_Scuttle1End:
GFX_Sprite_Crab_Scuttle2:
	db "GFX_Sprite_Crab_Scuttle2.bin"
GFX_Sprite_Crab_Scuttle2End:
GFX_Sprite_Crab_Scuttle3:
	db "GFX_Sprite_Crab_Scuttle3.bin"
GFX_Sprite_Crab_Scuttle3End:
GFX_Sprite_Crab_Scuttle4:
	db "GFX_Sprite_Crab_Scuttle4.bin"
GFX_Sprite_Crab_Scuttle4End:
GFX_Sprite_Crab_Scuttle5:
	db "GFX_Sprite_Crab_Scuttle5.bin"
GFX_Sprite_Crab_Scuttle5End:
GFX_Sprite_Crab_Scuttle6:
	db "GFX_Sprite_Crab_Scuttle6.bin"
GFX_Sprite_Crab_Scuttle6End:
GFX_Sprite_Crab_Scuttle7:
	db "GFX_Sprite_Crab_Scuttle7.bin"
GFX_Sprite_Crab_Scuttle7End:
GFX_Sprite_Crab_Scuttle8:
	db "GFX_Sprite_Crab_Scuttle8.bin"
GFX_Sprite_Crab_Scuttle8End:
GFX_Sprite_Crab_Scuttle9:
	db "GFX_Sprite_Crab_Scuttle9.bin"
GFX_Sprite_Crab_Scuttle9End:
GFX_Sprite_Crab_Idle:
	db "GFX_Sprite_Crab_Idle.bin"
GFX_Sprite_Crab_IdleEnd:
GFX_Sprite_Crab_Dead1:
	db "GFX_Sprite_Crab_Dead1.bin"
GFX_Sprite_Crab_Dead1End:
GFX_Sprite_Crab_Dead2:
	db "GFX_Sprite_Crab_Dead2.bin"
GFX_Sprite_Crab_Dead2End:
GFX_Sprite_BeachCrate:
	db "GFX_Sprite_BeachCrate.bin"
GFX_Sprite_BeachCrateEnd:
GFX_Sprite_Eagle_Frame1:
	db "GFX_Sprite_Eagle_Frame1.bin"
GFX_Sprite_Eagle_Frame1End:
GFX_Sprite_Eagle_Frame2:
	db "GFX_Sprite_Eagle_Frame2.bin"
GFX_Sprite_Eagle_Frame2End:
GFX_Sprite_Eagle_Frame3:
	db "GFX_Sprite_Eagle_Frame3.bin"
GFX_Sprite_Eagle_Frame3End:
GFX_Sprite_Bat_Frame1:
	db "GFX_Sprite_Bat_Frame1.bin"
GFX_Sprite_Bat_Frame1End:
GFX_Sprite_Bat_Frame2:
	db "GFX_Sprite_Bat_Frame2.bin"
GFX_Sprite_Bat_Frame2End:
GFX_Sprite_Bat_Frame3:
	db "GFX_Sprite_Bat_Frame3.bin"
GFX_Sprite_Bat_Frame3End:
GFX_Sprite_Bat_Frame4:
	db "GFX_Sprite_Bat_Frame4.bin"
GFX_Sprite_Bat_Frame4End:
GFX_Sprite_SlimeDroplet_Frame1:
	db "GFX_Sprite_SlimeDroplet_Frame1.bin"
GFX_Sprite_SlimeDroplet_Frame1End:
GFX_Sprite_SlimeDroplet_Frame2:
	db "GFX_Sprite_SlimeDroplet_Frame2.bin"
GFX_Sprite_SlimeDroplet_Frame2End:
GFX_Sprite_SlimeDroplet_Frame3:
	db "GFX_Sprite_SlimeDroplet_Frame3.bin"
GFX_Sprite_SlimeDroplet_Frame3End:
GFX_Sprite_SlimeDroplet_Frame4:
	db "GFX_Sprite_SlimeDroplet_Frame4.bin"
GFX_Sprite_SlimeDroplet_Frame4End:
GFX_Sprite_SlimeDroplet_Frame5:
	db "GFX_Sprite_SlimeDroplet_Frame5.bin"
GFX_Sprite_SlimeDroplet_Frame5End:
GFX_Sprite_SlimeDroplet_Frame6:
	db "GFX_Sprite_SlimeDroplet_Frame6.bin"
GFX_Sprite_SlimeDroplet_Frame6End:
GFX_Sprite_SlimeDroplet_Frame7:
	db "GFX_Sprite_SlimeDroplet_Frame7.bin"
GFX_Sprite_SlimeDroplet_Frame7End:
GFX_Sprite_SlimeDroplet_Frame8:
	db "GFX_Sprite_SlimeDroplet_Frame8.bin"
GFX_Sprite_SlimeDroplet_Frame8End:
GFX_Sprite_SlimeDroplet_Frame9:
	db "GFX_Sprite_SlimeDroplet_Frame9.bin"
GFX_Sprite_SlimeDroplet_Frame9End:
GFX_Sprite_StoneWeapon:
	db "GFX_Sprite_StoneWeapon.bin"
GFX_Sprite_StoneWeaponEnd:
GFX_Sprite_Ruby:
	db "GFX_Sprite_Ruby.bin"
GFX_Sprite_RubyEnd:
GFX_Sprite_TreasureChest_Frame1:
	db "GFX_Sprite_TreasureChest_Frame1.bin"
GFX_Sprite_TreasureChest_Frame1End:
GFX_Sprite_TreasureChest_Frame2:
	db "GFX_Sprite_TreasureChest_Frame2.bin"
GFX_Sprite_TreasureChest_Frame2End:
GFX_Sprite_TreasureChest_Frame3:
	db "GFX_Sprite_TreasureChest_Frame3.bin"
GFX_Sprite_TreasureChest_Frame3End:
GFX_Sprite_TreasureChest_Frame4:
	db "GFX_Sprite_TreasureChest_Frame4.bin"
GFX_Sprite_TreasureChest_Frame4End:
GFX_Sprite_TreasureChest_Frame5:
	db "GFX_Sprite_TreasureChest_Frame5.bin"
GFX_Sprite_TreasureChest_Frame5End:
GFX_Sprite_TreasureChest_Frame6:
	db "GFX_Sprite_TreasureChest_Frame6.bin"
GFX_Sprite_TreasureChest_Frame6End:
GFX_Sprite_KickedTotemPole_Frame1:
	db "GFX_Sprite_KickedTotemPole_Frame1.bin"
GFX_Sprite_KickedTotemPole_Frame1End:
GFX_Sprite_KickedTotemPole_Frame2:
	db "GFX_Sprite_KickedTotemPole_Frame2.bin"
GFX_Sprite_KickedTotemPole_Frame2End:
GFX_Sprite_KickedTotemPole_Frame3:
	db "GFX_Sprite_KickedTotemPole_Frame3.bin"
GFX_Sprite_KickedTotemPole_Frame3End:
GFX_Sprite_KickedTotemPole_Frame4:
	db "GFX_Sprite_KickedTotemPole_Frame4.bin"
GFX_Sprite_KickedTotemPole_Frame4End:
GFX_Sprite_KickedTotemPole_Frame5:
	db "GFX_Sprite_KickedTotemPole_Frame5.bin"
GFX_Sprite_KickedTotemPole_Frame5End:
GFX_Sprite_KickedTotemPole_Frame6:
	db "GFX_Sprite_KickedTotemPole_Frame6.bin"
GFX_Sprite_KickedTotemPole_Frame6End:
GFX_Sprite_KickedTotemPole_Frame7:
	db "GFX_Sprite_KickedTotemPole_Frame7.bin"
GFX_Sprite_KickedTotemPole_Frame7End:
GFX_Sprite_RubyBeam_Frame1:
	db "GFX_Sprite_RubyBeam_Frame1.bin"
GFX_Sprite_RubyBeam_Frame1End:
GFX_Sprite_RubyBeam_Frame2:
	db "GFX_Sprite_RubyBeam_Frame2.bin"
GFX_Sprite_RubyBeam_Frame2End:
GFX_Sprite_RubyBeam_Frame3:
	db "GFX_Sprite_RubyBeam_Frame3.bin"
GFX_Sprite_RubyBeam_Frame3End:
GFX_Sprite_RubyBeam_Frame4:
	db "GFX_Sprite_RubyBeam_Frame4.bin"
GFX_Sprite_RubyBeam_Frame4End:
GFX_Sprite_RubyBeam_Frame5:
	db "GFX_Sprite_RubyBeam_Frame5.bin"
GFX_Sprite_RubyBeam_Frame5End:
GFX_Sprite_RubyBeam_Frame6:
	db "GFX_Sprite_RubyBeam_Frame6.bin"
GFX_Sprite_RubyBeam_Frame6End:
GFX_Sprite_RubyBeam_Frame7:
	db "GFX_Sprite_RubyBeam_Frame7.bin"
GFX_Sprite_RubyBeam_Frame7End:
GFX_Sprite_RubyBeam_Frame8:
	db "GFX_Sprite_RubyBeam_Frame8.bin"
GFX_Sprite_RubyBeam_Frame8End:
GFX_Sprite_WoodenBarrierBrokenByRuby:
	db "GFX_Sprite_WoodenBarrierBrokenByRuby.bin"
GFX_Sprite_WoodenBarrierBrokenByRubyEnd:
GFX_Sprite_Explosion_Frame1:
	db "GFX_Sprite_Explosion_Frame1.bin"
GFX_Sprite_Explosion_Frame1End:
GFX_Sprite_Explosion_Frame2:
	db "GFX_Sprite_Explosion_Frame2.bin"
GFX_Sprite_Explosion_Frame2End:
GFX_Sprite_Explosion_Frame3:
	db "GFX_Sprite_Explosion_Frame3.bin"
GFX_Sprite_Explosion_Frame3End:
GFX_Sprite_Explosion_Frame4:
	db "GFX_Sprite_Explosion_Frame4.bin"
GFX_Sprite_Explosion_Frame4End:
GFX_Sprite_Explosion_Frame5:
	db "GFX_Sprite_Explosion_Frame5.bin"
GFX_Sprite_Explosion_Frame5End:
GFX_Sprite_CrumblingBurialGroundsFloor_Frame1:
	db "GFX_Sprite_CrumblingBurialGroundsFloor_Frame1.bin"
GFX_Sprite_CrumblingBurialGroundsFloor_Frame1End:
GFX_Sprite_CrumblingBurialGroundsFloor_Frame2:
	db "GFX_Sprite_CrumblingBurialGroundsFloor_Frame2.bin"
GFX_Sprite_CrumblingBurialGroundsFloor_Frame2End:
GFX_Sprite_CrumblingBurialGroundsFloor_Frame3:
	db "GFX_Sprite_CrumblingBurialGroundsFloor_Frame3.bin"
GFX_Sprite_CrumblingBurialGroundsFloor_Frame3End:
GFX_Sprite_CrumblingBurialGroundsFloor_Frame4:
	db "GFX_Sprite_CrumblingBurialGroundsFloor_Frame4.bin"
GFX_Sprite_CrumblingBurialGroundsFloor_Frame4End:
GFX_Sprite_CrumblingBurialGroundsFloor_Frame5:
	db "GFX_Sprite_CrumblingBurialGroundsFloor_Frame5.bin"
GFX_Sprite_CrumblingBurialGroundsFloor_Frame5End:
GFX_Sprite_CrumblingBurialGroundsFloor_Frame6:
	db "GFX_Sprite_CrumblingBurialGroundsFloor_Frame6.bin"
GFX_Sprite_CrumblingBurialGroundsFloor_Frame6End:
GFX_Sprite_MovingBurialGroundsFloor:
	db "GFX_Sprite_MovingBurialGroundsFloor.bin"
GFX_Sprite_MovingBurialGroundsFloorEnd:
GFX_Sprite_GhostlyArm_Frame1:
	db "GFX_Sprite_GhostlyArm_Frame1.bin"
GFX_Sprite_GhostlyArm_Frame1End:
GFX_Sprite_GhostlyArm_Frame2:
	db "GFX_Sprite_GhostlyArm_Frame2.bin"
GFX_Sprite_GhostlyArm_Frame2End:
GFX_Sprite_GhostlyArm_Frame3:
	db "GFX_Sprite_GhostlyArm_Frame3.bin"
GFX_Sprite_GhostlyArm_Frame3End:
GFX_Sprite_GhostlyArm_Frame4:
	db "GFX_Sprite_GhostlyArm_Frame4.bin"
GFX_Sprite_GhostlyArm_Frame4End:
GFX_Sprite_GhostlyArm_Frame5:
	db "GFX_Sprite_GhostlyArm_Frame5.bin"
GFX_Sprite_GhostlyArm_Frame5End:
GFX_Sprite_GhostlyArm_Frame6:
	db "GFX_Sprite_GhostlyArm_Frame6.bin"
GFX_Sprite_GhostlyArm_Frame6End:
GFX_Sprite_GhostlyArm_Frame7:
	db "GFX_Sprite_GhostlyArm_Frame7.bin"
GFX_Sprite_GhostlyArm_Frame7End:
GFX_Sprite_GhostlyArm_Frame8:
	db "GFX_Sprite_GhostlyArm_Frame8.bin"
GFX_Sprite_GhostlyArm_Frame8End:
GFX_Sprite_FogCloud:
	db "GFX_Sprite_FogCloud.bin"
GFX_Sprite_FogCloudEnd:
GFX_Sprite_BurialGroundsSkull1:
	db "GFX_Sprite_BurialGroundsSkull1.bin"
GFX_Sprite_BurialGroundsSkull1End:
GFX_Sprite_BurialGroundsSkull2:
	db "GFX_Sprite_BurialGroundsSkull2.bin"
GFX_Sprite_BurialGroundsSkull2End:
GFX_Sprite_BurialGroundsSkull3:
	db "GFX_Sprite_BurialGroundsSkull3.bin"
GFX_Sprite_BurialGroundsSkull3End:
GFX_Sprite_BurialGroundsSpirit_Angry1:
	db "GFX_Sprite_BurialGroundsSpirit_Angry1.bin"
GFX_Sprite_BurialGroundsSpirit_Angry1End:
GFX_Sprite_BurialGroundsSpirit_Angry2:
	db "GFX_Sprite_BurialGroundsSpirit_Angry2.bin"
GFX_Sprite_BurialGroundsSpirit_Angry2End:
GFX_Sprite_BurialGroundsSpirit_Neutral:
	db "GFX_Sprite_BurialGroundsSpirit_Neutral.bin"
GFX_Sprite_BurialGroundsSpirit_NeutralEnd:
GFX_Sprite_IslandNative_Walk1:
	db "GFX_Sprite_IslandNative_Walk1.bin"
GFX_Sprite_IslandNative_Walk1End:
GFX_Sprite_IslandNative_Walk2:
	db "GFX_Sprite_IslandNative_Walk2.bin"
GFX_Sprite_IslandNative_Walk2End:
GFX_Sprite_IslandNative_Walk3:
	db "GFX_Sprite_IslandNative_Walk3.bin"
GFX_Sprite_IslandNative_Walk3End:
GFX_Sprite_IslandNative_Walk4:
	db "GFX_Sprite_IslandNative_Walk4.bin"
GFX_Sprite_IslandNative_Walk4End:
GFX_Sprite_IslandNative_Walk5:
	db "GFX_Sprite_IslandNative_Walk5.bin"
GFX_Sprite_IslandNative_Walk5End:
GFX_Sprite_IslandNative_Walk6:
	db "GFX_Sprite_IslandNative_Walk6.bin"
GFX_Sprite_IslandNative_Walk6End:
GFX_Sprite_IslandNative_Stand:
	db "GFX_Sprite_IslandNative_Stand.bin"
GFX_Sprite_IslandNative_StandEnd:
GFX_Sprite_IslandNative_Attack1:
	db "GFX_Sprite_IslandNative_Attack1.bin"
GFX_Sprite_IslandNative_Attack1End:
GFX_Sprite_IslandNative_Attack2:
	db "GFX_Sprite_IslandNative_Attack2.bin"
GFX_Sprite_IslandNative_Attack2End:
GFX_Sprite_IslandNative_Attack3:
	db "GFX_Sprite_IslandNative_Attack3.bin"
GFX_Sprite_IslandNative_Attack3End:
GFX_Sprite_IslandNative_Attack4:
	db "GFX_Sprite_IslandNative_Attack4.bin"
GFX_Sprite_IslandNative_Attack4End:
GFX_Sprite_IslandNative_TurnAround1:
	db "GFX_Sprite_IslandNative_TurnAround1.bin"
GFX_Sprite_IslandNative_TurnAround1End:
GFX_Sprite_IslandNative_TurnAround2:
	db "GFX_Sprite_IslandNative_TurnAround2.bin"
GFX_Sprite_IslandNative_TurnAround2End:
GFX_Sprite_ThrownJavelin:
	db "GFX_Sprite_ThrownJavelin.bin"
GFX_Sprite_ThrownJavelinEnd:
GFX_Sprite_HectorsThrone:
	db "GFX_Sprite_HectorsThrone.bin"
GFX_Sprite_HectorsThroneEnd:
GFX_Sprite_Tikka_Stand:
	db "GFX_Sprite_Tikka_Stand.bin"
GFX_Sprite_Tikka_StandEnd:
GFX_Sprite_Tikka_StuckInTree:
	db "GFX_Sprite_Tikka_StuckInTree.bin"
GFX_Sprite_Tikka_StuckInTreeEnd:
GFX_Sprite_Tikka_ClimbDownTree1:
	db "GFX_Sprite_Tikka_ClimbDownTree1.bin"
GFX_Sprite_Tikka_ClimbDownTree1End:
GFX_Sprite_Tikka_ClimbDownTree2:
	db "GFX_Sprite_Tikka_ClimbDownTree2.bin"
GFX_Sprite_Tikka_ClimbDownTree2End:
GFX_Sprite_Tikka_ClimbDownTree3:
	db "GFX_Sprite_Tikka_ClimbDownTree3.bin"
GFX_Sprite_Tikka_ClimbDownTree3End:
GFX_Sprite_Tikka_Kiss1:
	db "GFX_Sprite_Tikka_Kiss1.bin"
GFX_Sprite_Tikka_Kiss1End:
GFX_Sprite_Tikka_Kiss2:
	db "GFX_Sprite_Tikka_Kiss2.bin"
GFX_Sprite_Tikka_Kiss2End:
GFX_Sprite_Tikka_Kiss3:
	db "GFX_Sprite_Tikka_Kiss3.bin"
GFX_Sprite_Tikka_Kiss3End:
GFX_Sprite_Tikka_Kiss4:
	db "GFX_Sprite_Tikka_Kiss4.bin"
GFX_Sprite_Tikka_Kiss4End:
GFX_Sprite_Tikka_Talk1:
	db "GFX_Sprite_Tikka_Talk1.bin"
GFX_Sprite_Tikka_Talk1End:
GFX_Sprite_Tikka_Talk2:
	db "GFX_Sprite_Tikka_Talk2.bin"
GFX_Sprite_Tikka_Talk2End:
GFX_Sprite_Tikka_Talk3:
	db "GFX_Sprite_Tikka_Talk3.bin"
GFX_Sprite_Tikka_Talk3End:
GFX_Sprite_Tikka_Talk4:
	db "GFX_Sprite_Tikka_Talk4.bin"
GFX_Sprite_Tikka_Talk4End:
GFX_Sprite_Tikka_Talk5:
	db "GFX_Sprite_Tikka_Talk5.bin"
GFX_Sprite_Tikka_Talk5End:
GFX_Sprite_Unused_Frame1:
	db "GFX_Sprite_Unused_Frame1.bin"
GFX_Sprite_Unused_Frame1End:
GFX_Sprite_Unused_Frame2:
	db "GFX_Sprite_Unused_Frame2.bin"
GFX_Sprite_Unused_Frame2End:
GFX_Sprite_TotemPoleEyes_LookLeft:
	db "GFX_Sprite_TotemPoleEyes_LookLeft.bin"
GFX_Sprite_TotemPoleEyes_LookLeftEnd:
GFX_Sprite_TotemPoleEyes_LookRight:
	db "GFX_Sprite_TotemPoleEyes_LookRight.bin"
GFX_Sprite_TotemPoleEyes_LookRightEnd:
GFX_Sprite_TotemPoleEyes_LookDown:
	db "GFX_Sprite_TotemPoleEyes_LookDown.bin"
GFX_Sprite_TotemPoleEyes_LookDownEnd:
GFX_Sprite_PoisonDart_Diagonal:
	db "GFX_Sprite_PoisonDart_Diagonal.bin"
GFX_Sprite_PoisonDart_DiagonalEnd:
GFX_Sprite_PoisonDart_Vertical:
	db "GFX_Sprite_PoisonDart_Vertical.bin"
GFX_Sprite_PoisonDart_VerticalEnd:
GFX_Sprite_PoisonDart_Horizontal:
	db "GFX_Sprite_PoisonDart_Horizontal.bin"
GFX_Sprite_PoisonDart_HorizontalEnd:
GFX_Sprite_CollapsingRoof_Frame1:
	db "GFX_Sprite_CollapsingRoof_Frame1.bin"
GFX_Sprite_CollapsingRoof_Frame1End:
GFX_Sprite_CollapsingRoof_Frame2:
	db "GFX_Sprite_CollapsingRoof_Frame2.bin"
GFX_Sprite_CollapsingRoof_Frame2End:
GFX_Sprite_CollapsingRoof_Frame3:
	db "GFX_Sprite_CollapsingRoof_Frame3.bin"
GFX_Sprite_CollapsingRoof_Frame3End:
GFX_Sprite_CollapsingRoof_Frame4:
	db "GFX_Sprite_CollapsingRoof_Frame4.bin"
GFX_Sprite_CollapsingRoof_Frame4End:
GFX_Sprite_FallingStalactite_Frame1:
	db "GFX_Sprite_FallingStalactite_Frame1.bin"
GFX_Sprite_FallingStalactite_Frame1End:
GFX_Sprite_FallingStalactite_Frame2:
	db "GFX_Sprite_FallingStalactite_Frame2.bin"
GFX_Sprite_FallingStalactite_Frame2End:
GFX_Sprite_FallingStalactite_Frame3:
	db "GFX_Sprite_FallingStalactite_Frame3.bin"
GFX_Sprite_FallingStalactite_Frame3End:
GFX_Sprite_FallingStalactite_Frame4:
	db "GFX_Sprite_FallingStalactite_Frame4.bin"
GFX_Sprite_FallingStalactite_Frame4End:
GFX_Sprite_FallingStalactite_Frame5:
	db "GFX_Sprite_FallingStalactite_Frame5.bin"
GFX_Sprite_FallingStalactite_Frame5End:
GFX_Sprite_FallingStalactite_Frame6:
	db "GFX_Sprite_FallingStalactite_Frame6.bin"
GFX_Sprite_FallingStalactite_Frame6End:
GFX_Sprite_LargeWeight:
	db "GFX_Sprite_LargeWeight.bin"
GFX_Sprite_LargeWeightEnd:
GFX_Sprite_Rope:
	db "GFX_Sprite_Rope.bin"
GFX_Sprite_RopeEnd:
GFX_Sprite_Candle_Frame1:
	db "GFX_Sprite_Candle_Frame1.bin"
GFX_Sprite_Candle_Frame1End:
GFX_Sprite_Candle_Frame2:
	db "GFX_Sprite_Candle_Frame2.bin"
GFX_Sprite_Candle_Frame2End:
GFX_Sprite_Pulley_Frame1:
	db "GFX_Sprite_Pulley_Frame1.bin"
GFX_Sprite_Pulley_Frame1End:
GFX_Sprite_Pulley_Frame2:
	db "GFX_Sprite_Pulley_Frame2.bin"
GFX_Sprite_Pulley_Frame2End:
GFX_Sprite_Pulley_Frame3:
	db "GFX_Sprite_Pulley_Frame3.bin"
GFX_Sprite_Pulley_Frame3End:
GFX_Sprite_Pulley_Frame4:
	db "GFX_Sprite_Pulley_Frame4.bin"
GFX_Sprite_Pulley_Frame4End:
GFX_Sprite_TreehouseDoor_Frame1:
	db "GFX_Sprite_TreehouseDoor_Frame1.bin"
GFX_Sprite_TreehouseDoor_Frame1End:
GFX_Sprite_TreehouseDoor_Frame2:
	db "GFX_Sprite_TreehouseDoor_Frame2.bin"
GFX_Sprite_TreehouseDoor_Frame2End:
GFX_Sprite_TreehouseDoor_Frame3:
	db "GFX_Sprite_TreehouseDoor_Frame3.bin"
GFX_Sprite_TreehouseDoor_Frame3End:
GFX_Sprite_TreehouseDoor_Frame4:
	db "GFX_Sprite_TreehouseDoor_Frame4.bin"
GFX_Sprite_TreehouseDoor_Frame4End:
GFX_Sprite_TreehouseDoor_Frame5:
	db "GFX_Sprite_TreehouseDoor_Frame5.bin"
GFX_Sprite_TreehouseDoor_Frame5End:
GFX_Sprite_BreakableTreehouseFloor_Frame1:
	db "GFX_Sprite_BreakableTreehouseFloor_Frame1.bin"
GFX_Sprite_BreakableTreehouseFloor_Frame1End:
GFX_Sprite_BreakableTreehouseFloor_Frame2:
	db "GFX_Sprite_BreakableTreehouseFloor_Frame2.bin"
GFX_Sprite_BreakableTreehouseFloor_Frame2End:
GFX_Sprite_BreakableTreehouseFloor_Frame3:
	db "GFX_Sprite_BreakableTreehouseFloor_Frame3.bin"
GFX_Sprite_BreakableTreehouseFloor_Frame3End:
GFX_Sprite_BreakableTreehouseFloor_Frame4:
	db "GFX_Sprite_BreakableTreehouseFloor_Frame4.bin"
GFX_Sprite_BreakableTreehouseFloor_Frame4End:
GFX_Sprite_TreehouseCrate:
	db "GFX_Sprite_TreehouseCrate.bin"
GFX_Sprite_TreehouseCrateEnd:
GFX_Sprite_Snake_Wait:
	db "GFX_Sprite_Snake_Wait.bin"
GFX_Sprite_Snake_WaitEnd:
GFX_Sprite_Snake_Fall:
	db "GFX_Sprite_Snake_Fall.bin"
GFX_Sprite_Snake_FallEnd:
GFX_Sprite_Snake_Slither1:
	db "GFX_Sprite_Snake_Slither1.bin"
GFX_Sprite_Snake_Slither1End:
GFX_Sprite_Snake_Slither2:
	db "GFX_Sprite_Snake_Slither2.bin"
GFX_Sprite_Snake_Slither2End:
GFX_Sprite_Snake_Slither3:
	db "GFX_Sprite_Snake_Slither3.bin"
GFX_Sprite_Snake_Slither3End:
GFX_Sprite_Snake_Slither4:
	db "GFX_Sprite_Snake_Slither4.bin"
GFX_Sprite_Snake_Slither4End:
GFX_Sprite_SwingableVine_Frame1:
	db "GFX_Sprite_SwingableVine_Frame1.bin"
GFX_Sprite_SwingableVine_Frame1End:
GFX_Sprite_SwingableVine_Frame2:
	db "GFX_Sprite_SwingableVine_Frame2.bin"
GFX_Sprite_SwingableVine_Frame2End:
GFX_Sprite_SwingableVine_Frame3:
	db "GFX_Sprite_SwingableVine_Frame3.bin"
GFX_Sprite_SwingableVine_Frame3End:
GFX_Sprite_SwingableVine_Frame4:
	db "GFX_Sprite_SwingableVine_Frame4.bin"
GFX_Sprite_SwingableVine_Frame4End:
GFX_Sprite_SwingableVine_Frame5:
	db "GFX_Sprite_SwingableVine_Frame5.bin"
GFX_Sprite_SwingableVine_Frame5End:
GFX_Sprite_SwingableVine_Frame6:
	db "GFX_Sprite_SwingableVine_Frame6.bin"
GFX_Sprite_SwingableVine_Frame6End:
GFX_Sprite_SwingableVine_Frame7:
	db "GFX_Sprite_SwingableVine_Frame7.bin"
GFX_Sprite_SwingableVine_Frame7End:
GFX_Sprite_SwingableVine_Frame8:
	db "GFX_Sprite_SwingableVine_Frame8.bin"
GFX_Sprite_SwingableVine_Frame8End:
GFX_Sprite_SwingableVine_Frame9:
	db "GFX_Sprite_SwingableVine_Frame9.bin"
GFX_Sprite_SwingableVine_Frame9End:
GFX_Sprite_SwingableVine_Frame10:
	db "GFX_Sprite_SwingableVine_Frame10.bin"
GFX_Sprite_SwingableVine_Frame10End:
GFX_Sprite_SwingableVine_Frame11:
	db "GFX_Sprite_SwingableVine_Frame11.bin"
GFX_Sprite_SwingableVine_Frame11End:
GFX_Sprite_SwingableVine_Frame12:
	db "GFX_Sprite_SwingableVine_Frame12.bin"
GFX_Sprite_SwingableVine_Frame12End:
GFX_Sprite_SwingableVine_Frame13:
	db "GFX_Sprite_SwingableVine_Frame13.bin"
GFX_Sprite_SwingableVine_Frame13End:
GFX_Sprite_SwingableVine_Frame14:
	db "GFX_Sprite_SwingableVine_Frame14.bin"
GFX_Sprite_SwingableVine_Frame14End:
GFX_Sprite_SwingableVine_Frame15:
	db "GFX_Sprite_SwingableVine_Frame15.bin"
GFX_Sprite_SwingableVine_Frame15End:
GFX_Sprite_Fireball_Frame1:
	db "GFX_Sprite_Fireball_Frame1.bin"
GFX_Sprite_Fireball_Frame1End:
GFX_Sprite_Fireball_Frame2:
	db "GFX_Sprite_Fireball_Frame2.bin"
GFX_Sprite_Fireball_Frame2End:
GFX_Sprite_Fireball_Frame3:
	db "GFX_Sprite_Fireball_Frame3.bin"
GFX_Sprite_Fireball_Frame3End:
GFX_Sprite_Fireball_Frame4:
	db "GFX_Sprite_Fireball_Frame4.bin"
GFX_Sprite_Fireball_Frame4End:
GFX_Sprite_Fireball_Frame5:
	db "GFX_Sprite_Fireball_Frame5.bin"
GFX_Sprite_Fireball_Frame5End:
GFX_Sprite_Raft:
	db "GFX_Sprite_Raft.bin"
GFX_Sprite_RaftEnd:
GFX_Sprite_RiverFish_Frame1:
	db "GFX_Sprite_RiverFish_Frame1.bin"
GFX_Sprite_RiverFish_Frame1End:
GFX_Sprite_RiverFish_Frame2:
	db "GFX_Sprite_RiverFish_Frame2.bin"
GFX_Sprite_RiverFish_Frame2End:
GFX_Sprite_RiverFish_Frame3:
	db "GFX_Sprite_RiverFish_Frame3.bin"
GFX_Sprite_RiverFish_Frame3End:
GFX_Sprite_RiverFish_Frame4:
	db "GFX_Sprite_RiverFish_Frame4.bin"
GFX_Sprite_RiverFish_Frame4End:
GFX_Sprite_RiverFish_Frame5:
	db "GFX_Sprite_RiverFish_Frame5.bin"
GFX_Sprite_RiverFish_Frame5End:
GFX_Sprite_LargeWeightChain:
	db "GFX_Sprite_LargeWeightChain.bin"
GFX_Sprite_LargeWeightChainEnd:
GFX_Sprite_Boomerang_Frame1:
	db "GFX_Sprite_Boomerang_Frame1.bin"
GFX_Sprite_Boomerang_Frame1End:
GFX_Sprite_Boomerang_Frame2:
	db "GFX_Sprite_Boomerang_Frame2.bin"
GFX_Sprite_Boomerang_Frame2End:
GFX_Sprite_Boomerang_Frame3:
	db "GFX_Sprite_Boomerang_Frame3.bin"
GFX_Sprite_Boomerang_Frame3End:
GFX_Sprite_Boomerang_Frame4:
	db "GFX_Sprite_Boomerang_Frame4.bin"
GFX_Sprite_Boomerang_Frame4End:
GFX_Sprite_Boomerang_Frame5:
	db "GFX_Sprite_Boomerang_Frame5.bin"
GFX_Sprite_Boomerang_Frame5End:
GFX_Sprite_Boomerang_Frame6:
	db "GFX_Sprite_Boomerang_Frame6.bin"
GFX_Sprite_Boomerang_Frame6End:
GFX_Sprite_Boomerang_Frame7:
	db "GFX_Sprite_Boomerang_Frame7.bin"
GFX_Sprite_Boomerang_Frame7End:
GFX_Sprite_CageDoorKey:
	db "GFX_Sprite_CageDoorKey.bin"
GFX_Sprite_CageDoorKeyEnd:
GFX_Sprite_CageDoor_Frame1:
	db "GFX_Sprite_CageDoor_Frame1.bin"
GFX_Sprite_CageDoor_Frame1End:
GFX_Sprite_CageDoor_Frame2:
	db "GFX_Sprite_CageDoor_Frame2.bin"
GFX_Sprite_CageDoor_Frame2End:
GFX_Sprite_CageDoor_Frame3:
	db "GFX_Sprite_CageDoor_Frame3.bin"
GFX_Sprite_CageDoor_Frame3End:
GFX_Sprite_Ape_Stand1:
	db "GFX_Sprite_Ape_Stand1.bin"
GFX_Sprite_Ape_Stand1End:
GFX_Sprite_Ape_Stand2:
	db "GFX_Sprite_Ape_Stand2.bin"
GFX_Sprite_Ape_Stand2End:
GFX_Sprite_Ape_ClimbTree1:
	db "GFX_Sprite_Ape_ClimbTree1.bin"
GFX_Sprite_Ape_ClimbTree1End:
GFX_Sprite_Ape_ClimbTree2:
	db "GFX_Sprite_Ape_ClimbTree2.bin"
GFX_Sprite_Ape_ClimbTree2End:
GFX_Sprite_Ape_Unknown:
	db "GFX_Sprite_Ape_Unknown.bin"
GFX_Sprite_Ape_UnknownEnd:
GFX_Sprite_Ape_Dead1:
	db "GFX_Sprite_Ape_Dead1.bin"
GFX_Sprite_Ape_Dead1End:
GFX_Sprite_Ape_Dead2:
	db "GFX_Sprite_Ape_Dead2.bin"
GFX_Sprite_Ape_Dead2End:
GFX_Sprite_CaveMouthBoulder:
	db "GFX_Sprite_CaveMouthBoulder.bin"
GFX_Sprite_CaveMouthBoulderEnd:
GFX_Sprite_FallingLeaf_Frame1:
	db "GFX_Sprite_FallingLeaf_Frame1.bin"
GFX_Sprite_FallingLeaf_Frame1End:
GFX_Sprite_FallingLeaf_Frame2:
	db "GFX_Sprite_FallingLeaf_Frame2.bin"
GFX_Sprite_FallingLeaf_Frame2End:
GFX_Sprite_FallingLeaf_Frame3:
	db "GFX_Sprite_FallingLeaf_Frame3.bin"
GFX_Sprite_FallingLeaf_Frame3End:
GFX_Sprite_EmeraldCrystalPedestal_Frame1:
	db "GFX_Sprite_EmeraldCrystalPedestal_Frame1.bin"
GFX_Sprite_EmeraldCrystalPedestal_Frame1End:
GFX_Sprite_EmeraldCrystalPedestal_Frame2:
	db "GFX_Sprite_EmeraldCrystalPedestal_Frame2.bin"
GFX_Sprite_EmeraldCrystalPedestal_Frame2End:
GFX_Sprite_EmeraldCrystalPedestal_Frame3:
	db "GFX_Sprite_EmeraldCrystalPedestal_Frame3.bin"
GFX_Sprite_EmeraldCrystalPedestal_Frame3End:
GFX_Sprite_EmeraldCrystalPedestal_Frame4:
	db "GFX_Sprite_EmeraldCrystalPedestal_Frame4.bin"
GFX_Sprite_EmeraldCrystalPedestal_Frame4End:
GFX_Sprite_EmeraldCrystalPedestal_Frame5:
	db "GFX_Sprite_EmeraldCrystalPedestal_Frame5.bin"
GFX_Sprite_EmeraldCrystalPedestal_Frame5End:
GFX_Sprite_EmeraldCrystal_Frame1:
	db "GFX_Sprite_EmeraldCrystal_Frame1.bin"
GFX_Sprite_EmeraldCrystal_Frame1End:
GFX_Sprite_EmeraldCrystal_Frame2:
	db "GFX_Sprite_EmeraldCrystal_Frame2.bin"
GFX_Sprite_EmeraldCrystal_Frame2End:
GFX_Sprite_EmeraldCrystal_Frame3:
	db "GFX_Sprite_EmeraldCrystal_Frame3.bin"
GFX_Sprite_EmeraldCrystal_Frame3End:
GFX_Sprite_EmeraldCrystal_Frame4:
	db "GFX_Sprite_EmeraldCrystal_Frame4.bin"
GFX_Sprite_EmeraldCrystal_Frame4End:
GFX_Sprite_EmeraldCrystal_Frame5:
	db "GFX_Sprite_EmeraldCrystal_Frame5.bin"
GFX_Sprite_EmeraldCrystal_Frame5End:
GFX_Sprite_EmeraldCrystal_Frame6:
	db "GFX_Sprite_EmeraldCrystal_Frame6.bin"
GFX_Sprite_EmeraldCrystal_Frame6End:
GFX_Sprite_EmeraldCrystal_Frame7:
	db "GFX_Sprite_EmeraldCrystal_Frame7.bin"
GFX_Sprite_EmeraldCrystal_Frame7End:
GFX_Sprite_BeachBoulder:
	db "GFX_Sprite_BeachBoulder.bin"
GFX_Sprite_BeachBoulderEnd:
GFX_Sprite_WallTorch_Frame1:
	db "GFX_Sprite_WallTorch_Frame1.bin"
GFX_Sprite_WallTorch_Frame1End:
GFX_Sprite_WallTorch_Frame2:
	db "GFX_Sprite_WallTorch_Frame2.bin"
GFX_Sprite_WallTorch_Frame2End:
GFX_Sprite_WallTorch_Frame3:
	db "GFX_Sprite_WallTorch_Frame3.bin"
GFX_Sprite_WallTorch_Frame3End:
GFX_Sprite_WrongTorchSpikeTrap:
	db "GFX_Sprite_WrongTorchSpikeTrap.bin"
GFX_Sprite_WrongTorchSpikeTrapEnd:
GFX_Sprite_SinkingMossyPillar:
	db "GFX_Sprite_SinkingMossyPillar.bin"
GFX_Sprite_SinkingMossyPillarEnd:
GFX_Sprite_LargeBoulder:
	db "GFX_Sprite_LargeBoulder.bin"
GFX_Sprite_LargeBoulderEnd:
GFX_Sprite_LargeBoulderCrack_Frame1:
	db "GFX_Sprite_LargeBoulderCrack_Frame1.bin"
GFX_Sprite_LargeBoulderCrack_Frame1End:
GFX_Sprite_LargeBoulderCrack_Frame2:
	db "GFX_Sprite_LargeBoulderCrack_Frame2.bin"
GFX_Sprite_LargeBoulderCrack_Frame2End:
GFX_Sprite_LargeBoulderCrack_Frame3:
	db "GFX_Sprite_LargeBoulderCrack_Frame3.bin"
GFX_Sprite_LargeBoulderCrack_Frame3End:
GFX_Sprite_LargeBoulderDebris:
	db "GFX_Sprite_LargeBoulderDebris.bin"
GFX_Sprite_LargeBoulderDebrisEnd:
GFX_Sprite_Pylon_Frame1:
	db "GFX_Sprite_Pylon_Frame1.bin"
GFX_Sprite_Pylon_Frame1End:
GFX_Sprite_Pylon_Frame2:
	db "GFX_Sprite_Pylon_Frame2.bin"
GFX_Sprite_Pylon_Frame2End:
GFX_Sprite_RollingBarrel_Frame1:
	db "GFX_Sprite_RollingBarrel_Frame1.bin"
GFX_Sprite_RollingBarrel_Frame1End:
GFX_Sprite_RollingBarrel_Frame2:
	db "GFX_Sprite_RollingBarrel_Frame2.bin"
GFX_Sprite_RollingBarrel_Frame2End:
GFX_Sprite_RollingBarrel_Frame3:
	db "GFX_Sprite_RollingBarrel_Frame3.bin"
GFX_Sprite_RollingBarrel_Frame3End:
GFX_Sprite_Pirate_Stand:
	db "GFX_Sprite_Pirate_Stand.bin"
GFX_Sprite_Pirate_StandEnd:
GFX_Sprite_Pirate_Move1:
	db "GFX_Sprite_Pirate_Move1.bin"
GFX_Sprite_Pirate_Move1End:
GFX_Sprite_Pirate_Move2:
	db "GFX_Sprite_Pirate_Move2.bin"
GFX_Sprite_Pirate_Move2End:
GFX_Sprite_Pirate_Move3:
	db "GFX_Sprite_Pirate_Move3.bin"
GFX_Sprite_Pirate_Move3End:
GFX_Sprite_Pirate_Slash1:
	db "GFX_Sprite_Pirate_Slash1.bin"
GFX_Sprite_Pirate_Slash1End:
GFX_Sprite_Pirate_Slash2:
	db "GFX_Sprite_Pirate_Slash2.bin"
GFX_Sprite_Pirate_Slash2End:
GFX_Sprite_Pirate_Slash3:
	db "GFX_Sprite_Pirate_Slash3.bin"
GFX_Sprite_Pirate_Slash3End:
GFX_Sprite_Pirate_Slash4:
	db "GFX_Sprite_Pirate_Slash4.bin"
GFX_Sprite_Pirate_Slash4End:
GFX_Sprite_Pirate_Dead1:
	db "GFX_Sprite_Pirate_Dead1.bin"
GFX_Sprite_Pirate_Dead1End:
GFX_Sprite_Pirate_Dead2:
	db "GFX_Sprite_Pirate_Dead2.bin"
GFX_Sprite_Pirate_Dead2End:
GFX_Sprite_Pirate_Dead3:
	db "GFX_Sprite_Pirate_Dead3.bin"
GFX_Sprite_Pirate_Dead3End:
GFX_Sprite_Pirate_Dead4:
	db "GFX_Sprite_Pirate_Dead4.bin"
GFX_Sprite_Pirate_Dead4End:
GFX_Sprite_Pirate_Dead5:
	db "GFX_Sprite_Pirate_Dead5.bin"
GFX_Sprite_Pirate_Dead5End:
GFX_Sprite_Pirate_ThrowDynamite1:
	db "GFX_Sprite_Pirate_ThrowDynamite1.bin"
GFX_Sprite_Pirate_ThrowDynamite1End:
GFX_Sprite_Pirate_ThrowDynamite2:
	db "GFX_Sprite_Pirate_ThrowDynamite2.bin"
GFX_Sprite_Pirate_ThrowDynamite2End:
GFX_Sprite_Pirate_ThrowDynamite3:
	db "GFX_Sprite_Pirate_ThrowDynamite3.bin"
GFX_Sprite_Pirate_ThrowDynamite3End:
GFX_Sprite_Pirate_ThrowDynamite4:
	db "GFX_Sprite_Pirate_ThrowDynamite4.bin"
GFX_Sprite_Pirate_ThrowDynamite4End:
GFX_Sprite_SwordItem_InInventory:
	db "GFX_Sprite_SwordItem_InInventory.bin"
GFX_Sprite_SwordItem_InInventoryEnd:
GFX_Sprite_SwordItem_Dropped:
	db "GFX_Sprite_SwordItem_Dropped.bin"
GFX_Sprite_SwordItem_DroppedEnd:
GFX_Sprite_Cannon:
	db "GFX_Sprite_Cannon.bin"
GFX_Sprite_CannonEnd:
GFX_Sprite_UnusedCannonball:
	db "GFX_Sprite_UnusedCannonball.bin"
GFX_Sprite_UnusedCannonballEnd:
GFX_Sprite_Jaguar_Jump1:
	db "GFX_Sprite_Jaguar_Jump1.bin"
GFX_Sprite_Jaguar_Jump1End:
GFX_Sprite_Jaguar_Jump2:
	db "GFX_Sprite_Jaguar_Jump2.bin"
GFX_Sprite_Jaguar_Jump2End:
GFX_Sprite_Jaguar_Jump3:
	db "GFX_Sprite_Jaguar_Jump3.bin"
GFX_Sprite_Jaguar_Jump3End:
GFX_Sprite_Jaguar_Jump4:
	db "GFX_Sprite_Jaguar_Jump4.bin"
GFX_Sprite_Jaguar_Jump4End:
GFX_Sprite_Jaguar_Stand:
	db "GFX_Sprite_Jaguar_Stand.bin"
GFX_Sprite_Jaguar_StandEnd:
GFX_Sprite_Jaguar_Run1:
	db "GFX_Sprite_Jaguar_Run1.bin"
GFX_Sprite_Jaguar_Run1End:
GFX_Sprite_Jaguar_Run2:
	db "GFX_Sprite_Jaguar_Run2.bin"
GFX_Sprite_Jaguar_Run2End:
GFX_Sprite_Jaguar_Run3:
	db "GFX_Sprite_Jaguar_Run3.bin"
GFX_Sprite_Jaguar_Run3End:
GFX_Sprite_Jaguar_Run4:
	db "GFX_Sprite_Jaguar_Run4.bin"
GFX_Sprite_Jaguar_Run4End:
GFX_Sprite_Jaguar_Run5:
	db "GFX_Sprite_Jaguar_Run5.bin"
GFX_Sprite_Jaguar_Run5End:
GFX_Sprite_Jaguar_Run6:
	db "GFX_Sprite_Jaguar_Run6.bin"
GFX_Sprite_Jaguar_Run6End:
GFX_Sprite_HUDLesterFace:
	db "GFX_Sprite_HUDLesterFace.bin"
GFX_Sprite_HUDLesterFaceEnd:
GFX_Sprite_HUDCanteen:
	db "GFX_Sprite_HUDCanteen.bin"
GFX_Sprite_HUDCanteenEnd:
GFX_Sprite_Turtle_Walk1:
	db "GFX_Sprite_Turtle_Walk1.bin"
GFX_Sprite_Turtle_Walk1End:
GFX_Sprite_Turtle_Walk2:
	db "GFX_Sprite_Turtle_Walk2.bin"
GFX_Sprite_Turtle_Walk2End:
GFX_Sprite_Turtle_Walk3:
	db "GFX_Sprite_Turtle_Walk3.bin"
GFX_Sprite_Turtle_Walk3End:
GFX_Sprite_Turtle_Walk4:
	db "GFX_Sprite_Turtle_Walk4.bin"
GFX_Sprite_Turtle_Walk4End:
GFX_Sprite_Turtle_HideInShell1:
	db "GFX_Sprite_Turtle_HideInShell1.bin"
GFX_Sprite_Turtle_HideInShell1End:
GFX_Sprite_Turtle_HideInShell2:
	db "GFX_Sprite_Turtle_HideInShell2.bin"
GFX_Sprite_Turtle_HideInShell2End:
GFX_Sprite_SmallSpider_Frame1:
	db "GFX_Sprite_SmallSpider_Frame1.bin"
GFX_Sprite_SmallSpider_Frame1End:
GFX_Sprite_SmallSpider_Frame2:
	db "GFX_Sprite_SmallSpider_Frame2.bin"
GFX_Sprite_SmallSpider_Frame2End:
GFX_Sprite_SmallSpider_Frame3:
	db "GFX_Sprite_SmallSpider_Frame3.bin"
GFX_Sprite_SmallSpider_Frame3End:
GFX_Sprite_WebWall_Frame1:
	db "GFX_Sprite_WebWall_Frame1.bin"
GFX_Sprite_WebWall_Frame1End:
GFX_Sprite_WebWall_Frame2:
	db "GFX_Sprite_WebWall_Frame2.bin"
GFX_Sprite_WebWall_Frame2End:
GFX_Sprite_WebWall_Frame3:
	db "GFX_Sprite_WebWall_Frame3.bin"
GFX_Sprite_WebWall_Frame3End:
GFX_Sprite_WebWall_Frame4:
	db "GFX_Sprite_WebWall_Frame4.bin"
GFX_Sprite_WebWall_Frame4End:
GFX_Sprite_WebWall_Frame5:
	db "GFX_Sprite_WebWall_Frame5.bin"
GFX_Sprite_WebWall_Frame5End:
GFX_Sprite_GiantSpider:
	db "GFX_Sprite_GiantSpider.bin"
GFX_Sprite_GiantSpiderEnd:
GFX_Sprite_LavaBubble_Frame1:
	db "GFX_Sprite_LavaBubble_Frame1.bin"
GFX_Sprite_LavaBubble_Frame1End:
GFX_Sprite_LavaBubble_Frame2:
	db "GFX_Sprite_LavaBubble_Frame2.bin"
GFX_Sprite_LavaBubble_Frame2End:
GFX_Sprite_LavaBubble_Frame3:
	db "GFX_Sprite_LavaBubble_Frame3.bin"
GFX_Sprite_LavaBubble_Frame3End:
GFX_Sprite_LavaBubble_Frame4:
	db "GFX_Sprite_LavaBubble_Frame4.bin"
GFX_Sprite_LavaBubble_Frame4End:
GFX_Sprite_PushStart:
	db "GFX_Sprite_PushStart.bin"
GFX_Sprite_PushStartEnd:
GFX_Sprite_CorpseFlowerStink_Frame1:
	db "GFX_Sprite_CorpseFlowerStink_Frame1.bin"
GFX_Sprite_CorpseFlowerStink_Frame1End:
GFX_Sprite_CorpseFlowerStink_Frame2:
	db "GFX_Sprite_CorpseFlowerStink_Frame2.bin"
GFX_Sprite_CorpseFlowerStink_Frame2End:
GFX_Sprite_CorpseFlowerStink_Frame3:
	db "GFX_Sprite_CorpseFlowerStink_Frame3.bin"
GFX_Sprite_CorpseFlowerStink_Frame3End:
GFX_Sprite_CorpseFlowerStink_Frame4:
	db "GFX_Sprite_CorpseFlowerStink_Frame4.bin"
GFX_Sprite_CorpseFlowerStink_Frame4End:
GFX_Sprite_CorpseFlowerStink_Frame5:
	db "GFX_Sprite_CorpseFlowerStink_Frame5.bin"
GFX_Sprite_CorpseFlowerStink_Frame5End:
GFX_Sprite_ApeDefeatedParticle_Frame1:
	db "GFX_Sprite_ApeDefeatedParticle_Frame1.bin"
GFX_Sprite_ApeDefeatedParticle_Frame1End:
GFX_Sprite_ApeDefeatedParticle_Frame2:
	db "GFX_Sprite_ApeDefeatedParticle_Frame2.bin"
GFX_Sprite_ApeDefeatedParticle_Frame2End:
GFX_Sprite_ApeDefeatedParticle_Frame3:
	db "GFX_Sprite_ApeDefeatedParticle_Frame3.bin"
GFX_Sprite_ApeDefeatedParticle_Frame3End:
GFX_Sprite_ApeDefeatedParticle_Frame4:
	db "GFX_Sprite_ApeDefeatedParticle_Frame4.bin"
GFX_Sprite_ApeDefeatedParticle_Frame4End:
GFX_Sprite_ApeDefeatedParticle_Frame5:
	db "GFX_Sprite_ApeDefeatedParticle_Frame5.bin"
GFX_Sprite_ApeDefeatedParticle_Frame5End:
GFX_Sprite_CrumblingVolcanoLedge_Frame1:
	db "GFX_Sprite_CrumblingVolcanoLedge_Frame1.bin"
GFX_Sprite_CrumblingVolcanoLedge_Frame1End:
GFX_Sprite_CrumblingVolcanoLedge_Frame2:
	db "GFX_Sprite_CrumblingVolcanoLedge_Frame2.bin"
GFX_Sprite_CrumblingVolcanoLedge_Frame2End:
GFX_Sprite_CrumblingVolcanoLedge_Frame3:
	db "GFX_Sprite_CrumblingVolcanoLedge_Frame3.bin"
GFX_Sprite_CrumblingVolcanoLedge_Frame3End:
GFX_Sprite_CrumblingVolcanoFloor_Frame1:
	db "GFX_Sprite_CrumblingVolcanoFloor_Frame1.bin"
GFX_Sprite_CrumblingVolcanoFloor_Frame1End:
GFX_Sprite_CrumblingVolcanoFloor_Frame2:
	db "GFX_Sprite_CrumblingVolcanoFloor_Frame2.bin"
GFX_Sprite_CrumblingVolcanoFloor_Frame2End:
GFX_Sprite_CrumblingVolcanoFloor_Frame3:
	db "GFX_Sprite_CrumblingVolcanoFloor_Frame3.bin"
GFX_Sprite_CrumblingVolcanoFloor_Frame3End:
GFX_Sprite_CrumblingVolcanoFloor_Frame4:
	db "GFX_Sprite_CrumblingVolcanoFloor_Frame4.bin"
GFX_Sprite_CrumblingVolcanoFloor_Frame4End:
GFX_Sprite_RopeFlame_Frame1:
	db "GFX_Sprite_RopeFlame_Frame1.bin"
GFX_Sprite_RopeFlame_Frame1End:
GFX_Sprite_RopeFlame_Frame2:
	db "GFX_Sprite_RopeFlame_Frame2.bin"
GFX_Sprite_RopeFlame_Frame2End:
GFX_Sprite_RopeFlame_Frame3:
	db "GFX_Sprite_RopeFlame_Frame3.bin"
GFX_Sprite_RopeFlame_Frame3End:
GFX_Sprite_RopeFlame_Frame4:
	db "GFX_Sprite_RopeFlame_Frame4.bin"
GFX_Sprite_RopeFlame_Frame4End:
GFX_Sprite_TreeHouseDoorLock_Frame1:
	db "GFX_Sprite_TreeHouseDoorLock_Frame1.bin"
GFX_Sprite_TreeHouseDoorLock_Frame1End:
GFX_Sprite_TreeHouseDoorLock_Frame2:
	db "GFX_Sprite_TreeHouseDoorLock_Frame2.bin"
GFX_Sprite_TreeHouseDoorLock_Frame2End:
GFX_Sprite_TreeHouseDoorLock_Frame3:
	db "GFX_Sprite_TreeHouseDoorLock_Frame3.bin"
GFX_Sprite_TreeHouseDoorLock_Frame3End:
GFX_Sprite_TreeHouseDoorLock_Frame4:
	db "GFX_Sprite_TreeHouseDoorLock_Frame4.bin"
GFX_Sprite_TreeHouseDoorLock_Frame4End:
GFX_Sprite_CaveFloorSwitch:
	db "GFX_Sprite_CaveFloorSwitch.bin"
GFX_Sprite_CaveFloorSwitchEnd:
GFX_Sprite_CavernSwitchDoor:
	db "GFX_Sprite_CavernSwitchDoor.bin"
GFX_Sprite_CavernSwitchDoorEnd:
GFX_Sprite_IntroLester_Walk1:
	db "GFX_Sprite_IntroLester_Walk1.bin"
GFX_Sprite_IntroLester_Walk1End:
GFX_Sprite_IntroLester_Walk2:
	db "GFX_Sprite_IntroLester_Walk2.bin"
GFX_Sprite_IntroLester_Walk2End:
GFX_Sprite_IntroLester_Walk3:
	db "GFX_Sprite_IntroLester_Walk3.bin"
GFX_Sprite_IntroLester_Walk3End:
GFX_Sprite_IntroLester_Walk4:
	db "GFX_Sprite_IntroLester_Walk4.bin"
GFX_Sprite_IntroLester_Walk4End:
GFX_Sprite_IntroLester_Walk5:
	db "GFX_Sprite_IntroLester_Walk5.bin"
GFX_Sprite_IntroLester_Walk5End:
GFX_Sprite_IntroLester_Walk6:
	db "GFX_Sprite_IntroLester_Walk6.bin"
GFX_Sprite_IntroLester_Walk6End:
GFX_Sprite_IntroLester_Sleep:
	db "GFX_Sprite_IntroLester_Sleep.bin"
GFX_Sprite_IntroLester_SleepEnd:
GFX_Sprite_IntroCargoLift:
	db "GFX_Sprite_IntroCargoLift.bin"
GFX_Sprite_IntroCargoLiftEnd:
GFX_Sprite_IntroLester_Swim1:
	db "GFX_Sprite_IntroLester_Swim1.bin"
GFX_Sprite_IntroLester_Swim1End:
GFX_Sprite_IntroLester_Swim2:
	db "GFX_Sprite_IntroLester_Swim2.bin"
GFX_Sprite_IntroLester_Swim2End:
GFX_Sprite_IntroLester_Swim3:
	db "GFX_Sprite_IntroLester_Swim3.bin"
GFX_Sprite_IntroLester_Swim3End:
GFX_Sprite_IntroLester_Swim4:
	db "GFX_Sprite_IntroLester_Swim4.bin"
GFX_Sprite_IntroLester_Swim4End:
GFX_Sprite_IntroLester_Swim5:
	db "GFX_Sprite_IntroLester_Swim5.bin"
GFX_Sprite_IntroLester_Swim5End:
GFX_Sprite_Surfboard_Ridden:
	db "GFX_Sprite_Surfboard_Ridden.bin"
GFX_Sprite_Surfboard_RiddenEnd:
GFX_Sprite_Surfboard_Upright:
	db "GFX_Sprite_Surfboard_Upright.bin"
GFX_Sprite_Surfboard_UprightEnd:
GFX_Sprite_UnknownEffect_Frame1:
	db "GFX_Sprite_UnknownEffect_Frame1.bin"
GFX_Sprite_UnknownEffect_Frame1End:
GFX_Sprite_UnknownEffect_Frame2:
	db "GFX_Sprite_UnknownEffect_Frame2.bin"
GFX_Sprite_UnknownEffect_Frame2End:
GFX_Sprite_UnknownEffect_Frame3:
	db "GFX_Sprite_UnknownEffect_Frame3.bin"
GFX_Sprite_UnknownEffect_Frame3End:
GFX_Sprite_UnknownEffect_Frame4:
	db "GFX_Sprite_UnknownEffect_Frame4.bin"
GFX_Sprite_UnknownEffect_Frame4End:
GFX_Sprite_Hector_Stand:
	db "GFX_Sprite_Hector_Stand.bin"
GFX_Sprite_Hector_StandEnd:
GFX_Sprite_Hector_TiedUp:
	db "GFX_Sprite_Hector_TiedUp.bin"
GFX_Sprite_Hector_TiedUpEnd:
GFX_Sprite_Hector_Talk1:
	db "GFX_Sprite_Hector_Talk1.bin"
GFX_Sprite_Hector_Talk1End:
GFX_Sprite_Hector_Talk2:
	db "GFX_Sprite_Hector_Talk2.bin"
GFX_Sprite_Hector_Talk2End:
GFX_Sprite_Hector_Talk3:
	db "GFX_Sprite_Hector_Talk3.bin"
GFX_Sprite_Hector_Talk3End:
GFX_Sprite_Hector_Talk4:
	db "GFX_Sprite_Hector_Talk4.bin"
GFX_Sprite_Hector_Talk4End:
GFX_Sprite_Spoon:
	db "GFX_Sprite_Spoon.bin"
GFX_Sprite_SpoonEnd:
GFX_Sprite_PirateShipDoor:
	db "GFX_Sprite_PirateShipDoor.bin"
GFX_Sprite_PirateShipDoorEnd:
GFX_Sprite_PirateShipTorch_HeldOut1:
	db "GFX_Sprite_PirateShipTorch_HeldOut1.bin"
GFX_Sprite_PirateShipTorch_HeldOut1End:
GFX_Sprite_PirateShipTorch_HeldOut2:
	db "GFX_Sprite_PirateShipTorch_HeldOut2.bin"
GFX_Sprite_PirateShipTorch_HeldOut2End:
GFX_Sprite_PirateShipTorch_HeldOut3:
	db "GFX_Sprite_PirateShipTorch_HeldOut3.bin"
GFX_Sprite_PirateShipTorch_HeldOut3End:
GFX_Sprite_PirateShipTorch_Idle1:
	db "GFX_Sprite_PirateShipTorch_Idle1.bin"
GFX_Sprite_PirateShipTorch_Idle1End:
GFX_Sprite_PirateShipTorch_Idle2:
	db "GFX_Sprite_PirateShipTorch_Idle2.bin"
GFX_Sprite_PirateShipTorch_Idle2End:
GFX_Sprite_PirateShipTorch_Idle3:
	db "GFX_Sprite_PirateShipTorch_Idle3.bin"
GFX_Sprite_PirateShipTorch_Idle3End:
GFX_Sprite_PirateShipTorch_OnWall1:
	db "GFX_Sprite_PirateShipTorch_OnWall1.bin"
GFX_Sprite_PirateShipTorch_OnWall1End:
GFX_Sprite_PirateShipTorch_OnWall2:
	db "GFX_Sprite_PirateShipTorch_OnWall2.bin"
GFX_Sprite_PirateShipTorch_OnWall2End:
GFX_Sprite_TNTCrate_Idle:
	db "GFX_Sprite_TNTCrate_Idle.bin"
GFX_Sprite_TNTCrate_IdleEnd:
GFX_Sprite_TNTCrate_Broken:
	db "GFX_Sprite_TNTCrate_Broken.bin"
GFX_Sprite_TNTCrate_BrokenEnd:
GFX_Sprite_TNTFuse_Frame1:
	db "GFX_Sprite_TNTFuse_Frame1.bin"
GFX_Sprite_TNTFuse_Frame1End:
GFX_Sprite_TNTFuse_Frame2:
	db "GFX_Sprite_TNTFuse_Frame2.bin"
GFX_Sprite_TNTFuse_Frame2End:
GFX_Sprite_TNTFuse_Frame3:
	db "GFX_Sprite_TNTFuse_Frame3.bin"
GFX_Sprite_TNTFuse_Frame3End:
GFX_Sprite_PouredWater_Frame1:
	db "GFX_Sprite_PouredWater_Frame1.bin"
GFX_Sprite_PouredWater_Frame1End:
GFX_Sprite_PouredWater_Frame2:
	db "GFX_Sprite_PouredWater_Frame2.bin"
GFX_Sprite_PouredWater_Frame2End:
GFX_Sprite_PouredWater_Frame3:
	db "GFX_Sprite_PouredWater_Frame3.bin"
GFX_Sprite_PouredWater_Frame3End:
GFX_Sprite_TNTFuseSmokePuff_Frame1:
	db "GFX_Sprite_TNTFuseSmokePuff_Frame1.bin"
GFX_Sprite_TNTFuseSmokePuff_Frame1End:
GFX_Sprite_TNTFuseSmokePuff_Frame2:
	db "GFX_Sprite_TNTFuseSmokePuff_Frame2.bin"
GFX_Sprite_TNTFuseSmokePuff_Frame2End:
GFX_Sprite_TNTFuseSmokePuff_Frame3:
	db "GFX_Sprite_TNTFuseSmokePuff_Frame3.bin"
GFX_Sprite_TNTFuseSmokePuff_Frame3End:
GFX_Sprite_TNTFuseSmokePuff_Frame4:
	db "GFX_Sprite_TNTFuseSmokePuff_Frame4.bin"
GFX_Sprite_TNTFuseSmokePuff_Frame4End:
GFX_Sprite_TNTFuseSmokePuff_Frame5:
	db "GFX_Sprite_TNTFuseSmokePuff_Frame5.bin"
GFX_Sprite_TNTFuseSmokePuff_Frame5End:
GFX_Sprite_ThrownTNTFuse_Frame1:
	db "GFX_Sprite_ThrownTNTFuse_Frame1.bin"
GFX_Sprite_ThrownTNTFuse_Frame1End:
GFX_Sprite_ThrownTNTFuse_Frame2:
	db "GFX_Sprite_ThrownTNTFuse_Frame2.bin"
GFX_Sprite_ThrownTNTFuse_Frame2End:
GFX_Sprite_ThrownTNTFuse_Frame3:
	db "GFX_Sprite_ThrownTNTFuse_Frame3.bin"
GFX_Sprite_ThrownTNTFuse_Frame3End:
GFX_Sprite_ThrownTNTFuse_Frame4:
	db "GFX_Sprite_ThrownTNTFuse_Frame4.bin"
GFX_Sprite_ThrownTNTFuse_Frame4End:
GFX_Sprite_ThrownTNTFuse_Frame5:
	db "GFX_Sprite_ThrownTNTFuse_Frame5.bin"
GFX_Sprite_ThrownTNTFuse_Frame5End:
GFX_Sprite_CrumblingDockFloor_Frame1:
	db "GFX_Sprite_CrumblingDockFloor_Frame1.bin"
GFX_Sprite_CrumblingDockFloor_Frame1End:
GFX_Sprite_CrumblingDockFloor_Frame2:
	db "GFX_Sprite_CrumblingDockFloor_Frame2.bin"
GFX_Sprite_CrumblingDockFloor_Frame2End:
GFX_Sprite_CrumblingDockFloor_Frame3:
	db "GFX_Sprite_CrumblingDockFloor_Frame3.bin"
GFX_Sprite_CrumblingDockFloor_Frame3End:
GFX_Sprite_CrumblingDockFloor_Frame4:
	db "GFX_Sprite_CrumblingDockFloor_Frame4.bin"
GFX_Sprite_CrumblingDockFloor_Frame4End:
GFX_Sprite_CrumblingDockFloor_Frame5:
	db "GFX_Sprite_CrumblingDockFloor_Frame5.bin"
GFX_Sprite_CrumblingDockFloor_Frame5End:
GFX_Sprite_CrumblingDockFloor_Frame6:
	db "GFX_Sprite_CrumblingDockFloor_Frame6.bin"
GFX_Sprite_CrumblingDockFloor_Frame6End:
GFX_Sprite_CrumblingDockFloor_Frame7:
	db "GFX_Sprite_CrumblingDockFloor_Frame7.bin"
GFX_Sprite_CrumblingDockFloor_Frame7End:
GFX_Sprite_CollapsingSandFloor_Frame1:
	db "GFX_Sprite_CollapsingSandFloor_Frame1.bin"
GFX_Sprite_CollapsingSandFloor_Frame1End:
GFX_Sprite_CollapsingSandFloor_Frame2:
	db "GFX_Sprite_CollapsingSandFloor_Frame2.bin"
GFX_Sprite_CollapsingSandFloor_Frame2End:
GFX_Sprite_CollapsingSandFloor_Frame3:
	db "GFX_Sprite_CollapsingSandFloor_Frame3.bin"
GFX_Sprite_CollapsingSandFloor_Frame3End:
GFX_Sprite_CollapsingSandFloor_Frame4:
	db "GFX_Sprite_CollapsingSandFloor_Frame4.bin"
GFX_Sprite_CollapsingSandFloor_Frame4End:
GFX_Sprite_FallingCrate_Frame1:
	db "GFX_Sprite_FallingCrate_Frame1.bin"
GFX_Sprite_FallingCrate_Frame1End:
GFX_Sprite_FallingCrate_Frame2:
	db "GFX_Sprite_FallingCrate_Frame2.bin"
GFX_Sprite_FallingCrate_Frame2End:
GFX_Sprite_CrateRope_Frame1:
	db "GFX_Sprite_CrateRope_Frame1.bin"
GFX_Sprite_CrateRope_Frame1End:
GFX_Sprite_CrateRope_Frame2:
	db "GFX_Sprite_CrateRope_Frame2.bin"
GFX_Sprite_CrateRope_Frame2End:
GFX_Sprite_VolcanoLadder:
	db "GFX_Sprite_VolcanoLadder.bin"
GFX_Sprite_VolcanoLadderEnd:
GFX_Sprite_ContinueScreenCursor:
	db "GFX_Sprite_ContinueScreenCursor.bin"
GFX_Sprite_ContinueScreenCursorEnd:
GFX_Sprite_HalfCavernSwitchDoor_Frame1:
	db "GFX_Sprite_HalfCavernSwitchDoor_Frame1.bin"
GFX_Sprite_HalfCavernSwitchDoor_Frame1End:
GFX_Sprite_HalfCavernSwitchDoor_Frame2:
	db "GFX_Sprite_HalfCavernSwitchDoor_Frame2.bin"
GFX_Sprite_HalfCavernSwitchDoor_Frame2End:
GFX_Sprite_HalfCavernSwitchDoor_Frame3:
	db "GFX_Sprite_HalfCavernSwitchDoor_Frame3.bin"
GFX_Sprite_HalfCavernSwitchDoor_Frame3End:
GFX_Sprite_HalfCavernSwitchDoor_Frame4:
	db "GFX_Sprite_HalfCavernSwitchDoor_Frame4.bin"
GFX_Sprite_HalfCavernSwitchDoor_Frame4End:
GFX_Sprite_BarrelWater_Frame1:
	db "GFX_Sprite_BarrelWater_Frame1.bin"
GFX_Sprite_BarrelWater_Frame1End:
GFX_Sprite_BarrelWater_Frame2:
	db "GFX_Sprite_BarrelWater_Frame2.bin"
GFX_Sprite_BarrelWater_Frame2End:
GFX_Sprite_BarrelWater_Frame3:
	db "GFX_Sprite_BarrelWater_Frame3.bin"
GFX_Sprite_BarrelWater_Frame3End:
GFX_Sprite_BarrelWater_Frame4:
	db "GFX_Sprite_BarrelWater_Frame4.bin"
GFX_Sprite_BarrelWater_Frame4End:

;--------------------------------------------------------------------

GFX_Layer1_DTMCLogoScreen:
	db "GFX_Layer1_DTMCLogoScreen.bin"
GFX_Layer1_DTMCLogoScreenEnd:
GFX_Layer1_EndingCutsceneScene4:
	db "GFX_Layer1_EndingCutsceneScene4.bin"
GFX_Layer1_EndingCutsceneScene4End:
GFX_Layer1_VisualConceptsLogo:
	db "GFX_Layer1_VisualConceptsLogo.bin"
GFX_Layer1_VisualConceptsLogoEnd:
GFX_Layer3_SplashScreen:
	db "GFX_Layer3_SplashScreen.bin"
GFX_Layer3_SplashScreenEnd:
GFX_Layer1_IntroScene1:
	db "GFX_Layer1_IntroScene1.bin"
GFX_Layer1_IntroScene1End:
GFX_Layer1_IntroScene2:
	db "GFX_Layer1_IntroScene2.bin"
GFX_Layer1_IntroScene2End:
GFX_Layer1_IntroScene3:
	db "GFX_Layer1_IntroScene3.bin"
GFX_Layer1_IntroScene3End:
GFX_Layer1_LavaRunCutscene:
	db "GFX_Layer1_LavaRunCutscene.bin"
GFX_Layer1_LavaRunCutsceneEnd:
GFX_Layer3_TitleScreen:
	db "GFX_Layer3_TitleScreen.bin"
GFX_Layer3_TitleScreenEnd:
GFX_Layer1_GameOverScreen:
	db "GFX_Layer1_GameOverScreen.bin"
GFX_Layer1_GameOverScreenEnd:
GFX_Layer1_ContinueScreen:
	db "GFX_Layer1_ContinueScreen.bin"
GFX_Layer1_ContinueScreenEnd:
GFX_Layer1_EndingCutsceneScene3:
	db "GFX_Layer1_EndingCutsceneScene3.bin"
GFX_Layer1_EndingCutsceneScene3End:

;--------------------------------------------------------------------

LVL_Beach1:
	db "LVL_Beach1.rdc"
LVL_Beach1End:
LVL_Cave1:
	db "LVL_Cave1.rdc"
LVL_Cave1End:
LVL_CaveBackground:
	db "LVL_CaveBackground.rdc"
LVL_CaveBackgroundEnd:
LVL_BeachBackground:
	db "LVL_BeachBackground.rdc"
LVL_BeachBackgroundEnd:
LVL_TotemPoles:
	db "LVL_TotemPoles.rdc"
LVL_TotemPolesEnd:
LVL_BurialGrounds:
	db "LVL_BurialGrounds.rdc"
LVL_BurialGroundsEnd:
LVL_BurialGroundsBackground:
	db "LVL_BurialGroundsBackground.rdc"
LVL_BurialGroundsBackgroundEnd:
LVL_Village_Outside:
	db "LVL_Village_Outside.rdc"
LVL_Village_OutsideEnd:
LVL_Village_SafeHutInterior:
	db "LVL_Village_SafeHutInterior.rdc"
LVL_Village_SafeHutInteriorEnd:
LVL_Village_DangerousHutInterior:
	db "LVL_Village_DangerousHutInterior.rdc"
LVL_Village_DangerousHutInteriorEnd:
LVL_Village_HectorsHut:
	db "LVL_Village_HectorsHut.rdc"
LVL_Village_HectorsHutEnd:
LVL_Rooftops:
	db "LVL_Rooftops.rdc"
LVL_RooftopsEnd:
LVL_TreeHouse:
	db "LVL_TreeHouse.rdc"
LVL_TreeHouseEnd:
LVL_JungleBackground:
	db "LVL_JungleBackground.rdc"
LVL_JungleBackgroundEnd:
LVL_Jungle:
	db "LVL_Jungle.rdc"
LVL_JungleEnd:
LVL_River:
	db "LVL_River.rdc"
LVL_RiverEnd:
LVL_Cage:
	db "LVL_Cage.rdc"
LVL_CageEnd:
LVL_Ape:
	db "LVL_Ape.rdc"
LVL_ApeEnd:
LVL_CaveMouth:
	db "LVL_CaveMouth.rdc"
LVL_CaveMouthEnd:
LVL_Cavern1:
	db "LVL_Cavern1.rdc"
LVL_Cavern1End:
LVL_Cavern2:
	db "LVL_Cavern2.rdc"
LVL_Cavern2End:
LVL_Cavern2MovingCeiling:
	db "LVL_Cavern2MovingCeiling.rdc"
LVL_Cavern2MovingCeilingEnd:
LVL_PylonLevel:
	db "LVL_PylonLevel.rdc"
LVL_PylonLevelEnd:
LVL_Dock:
	db "LVL_Dock.rdc"
LVL_DockEnd:
LVL_PirateShip1:
	db "LVL_PirateShip1.rdc"
LVL_PirateShip1End:
LVL_PirateShip2_Outside:
	db "LVL_PirateShip2_Outside.rdc"
LVL_PirateShip2_OutsideEnd:
LVL_LavaRun:
	db "LVL_LavaRun.rdc"
LVL_LavaRunEnd:
LVL_LavaRunMovingLava:
	db "LVL_LavaRunMovingLava.rdc"
LVL_LavaRunMovingLavaEnd:
LVL_TitleScreen:
	db "LVL_TitleScreen.rdc"
LVL_TitleScreenEnd:
LVL_Beach2:
	db "LVL_Beach2.rdc"
LVL_Beach2End:
LVL_Cave2:
	db "LVL_Cave2.rdc"
LVL_Cave2End:
LVL_SpiderLevel:
	db "LVL_SpiderLevel.rdc"
LVL_SpiderLevelEnd:
LVL_CaughtCutscene:
	db "LVL_CaughtCutscene.rdc"
LVL_CaughtCutsceneEnd:
LVL_PirateShip2_InteriorWithGas:
	db "LVL_PirateShip2_InteriorWithGas.rdc"
LVL_PirateShip2_InteriorWithGasEnd:
LVL_PirateShip2_InteriorWithWater:
	db "LVL_PirateShip2_InteriorWithWater.rdc"
LVL_PirateShip2_InteriorWithWaterEnd:
LVL_PirateShip2_InteriorWithHector:
	db "LVL_PirateShip2_InteriorWithHector.rdc"
LVL_PirateShip2_InteriorWithHectorEnd:
LVL_Ending_Scene1:
	db "LVL_Ending_Scene1.rdc"
LVL_Ending_Scene1End:
LVL_VillageBackground:
	db "LVL_VillageBackground.rdc"
LVL_VillageBackgroundEnd:
LVL_PirateShip2_GenericInterior:
	db "LVL_PirateShip2_GenericInterior.rdc"
LVL_PirateShip2_GenericInteriorEnd:

;--------------------------------------------------------------------

PAL_Layer1_DTMCLogoScreen:
	db "PAL_Layer1_DTMCLogoScreen.tpl"
PAL_Layer1_DTMCLogoScreenEnd:
PAL_Sprite_Lester:
	db "PAL_Sprite_Lester.tpl"
PAL_Sprite_LesterEnd:
PAL_Sprite_Unknown1:
	db "PAL_Sprite_Unknown1.tpl"
PAL_Sprite_Unknown1End:
PAL_Sprite_Crab:
	db "PAL_Sprite_Crab.tpl"
PAL_Sprite_CrabEnd:
PAL_Sprite_Unknown2:
	db "PAL_Sprite_Unknown2.tpl"
PAL_Sprite_Unknown2End:
PAL_Sprite_BeachCrate:
	db "PAL_Sprite_BeachCrate.tpl"
PAL_Sprite_BeachCrateEnd:
PAL_Sprite_Eagle:
	db "PAL_Sprite_Eagle.tpl"
PAL_Sprite_EagleEnd:
PAL_Sprite_Bat:
	db "PAL_Sprite_Bat.tpl"
PAL_Sprite_BatEnd:
PAL_Sprite_SlimeDroplet:
	db "PAL_Sprite_SlimeDroplet.tpl"
PAL_Sprite_SlimeDropletEnd:
PAL_Sprite_StoneWeapon:
	db "PAL_Sprite_StoneWeapon.tpl"
PAL_Sprite_StoneWeaponEnd:
PAL_Sprite_Ruby:
	db "PAL_Sprite_Ruby.tpl"
PAL_Sprite_RubyEnd:
PAL_Sprite_TreasureChest:
	db "PAL_Sprite_TreasureChest.tpl"
PAL_Sprite_TreasureChestEnd:
PAL_Sprite_KickedTotemPole:
	db "PAL_Sprite_KickedTotemPole.tpl"
PAL_Sprite_KickedTotemPoleEnd:
PAL_Sprite_WoodenBarrierBrokenByRuby:
	db "PAL_Sprite_WoodenBarrierBrokenByRuby.tpl"
PAL_Sprite_WoodenBarrierBrokenByRubyEnd:
PAL_Sprite_Explosion:
	db "PAL_Sprite_Explosion.tpl"
PAL_Sprite_ExplosionEnd:
PAL_Sprite_BurialGroundsFloor:
	db "PAL_Sprite_BurialGroundsFloor.tpl"
PAL_Sprite_BurialGroundsFloorEnd:
PAL_Sprite_GhostlyArm:
	db "PAL_Sprite_GhostlyArm.tpl"
PAL_Sprite_GhostlyArmEnd:
PAL_Sprite_FogCloud:
	db "PAL_Sprite_FogCloud.tpl"
PAL_Sprite_FogCloudEnd:
PAL_Sprite_BurialGroundsSkull:
	db "PAL_Sprite_BurialGroundsSkull.tpl"
PAL_Sprite_BurialGroundsSkullEnd:
PAL_Sprite_BurialGroundsSpirit:
	db "PAL_Sprite_BurialGroundsSpirit.tpl"
PAL_Sprite_BurialGroundsSpiritEnd:
PAL_Sprite_IslandNative:
	db "PAL_Sprite_IslandNative.tpl"
PAL_Sprite_IslandNativeEnd:
PAL_Sprite_ThrownJavelin:
	db "PAL_Sprite_ThrownJavelin.tpl"
PAL_Sprite_ThrownJavelinEnd:
PAL_Sprite_HectorsThrone:
	db "PAL_Sprite_HectorsThrone.tpl"
PAL_Sprite_HectorsThroneEnd:
PAL_Sprite_Tikka:
	db "PAL_Sprite_Tikka.tpl"
PAL_Sprite_TikkaEnd:
PAL_Sprite_Unknown3:
	db "PAL_Sprite_Unknown3.tpl"
PAL_Sprite_Unknown3End:
PAL_Sprite_TotemPoleEyes:
	db "PAL_Sprite_TotemPoleEyes.tpl"
PAL_Sprite_TotemPoleEyesEnd:
PAL_Sprite_PoisonDart:
	db "PAL_Sprite_PoisonDart.tpl"
PAL_Sprite_PoisonDartEnd:
PAL_Sprite_CollapsingRoof:
	db "PAL_Sprite_CollapsingRoof.tpl"
PAL_Sprite_CollapsingRoofEnd:
PAL_Sprite_FallingStalactite:
	db "PAL_Sprite_FallingStalactite.tpl"
PAL_Sprite_FallingStalactiteEnd:
PAL_Sprite_LargeWeight:
	db "PAL_Sprite_LargeWeight.tpl"
PAL_Sprite_LargeWeightEnd:
PAL_Sprite_Pulley:
	db "PAL_Sprite_Pulley.tpl"
PAL_Sprite_PulleyEnd:
PAL_Sprite_Candle:
	db "PAL_Sprite_Candle.tpl"
PAL_Sprite_CandleEnd:
PAL_Sprite_TreehouseCrate:
	db "PAL_Sprite_TreehouseCrate.tpl"
PAL_Sprite_TreehouseCrateEnd:
PAL_Sprite_BreakableTreehouseFloor:
	db "PAL_Sprite_BreakableTreehouseFloor.tpl"
PAL_Sprite_BreakableTreehouseFloorEnd:
PAL_Sprite_Snake:
	db "PAL_Sprite_Snake.tpl"
PAL_Sprite_SnakeEnd:
PAL_Sprite_SwingableVine:
	db "PAL_Sprite_SwingableVine.tpl"
PAL_Sprite_SwingableVineEnd:
PAL_Sprite_Raft:
	db "PAL_Sprite_Raft.tpl"
PAL_Sprite_RaftEnd:
PAL_Sprite_RiverFish:
	db "PAL_Sprite_RiverFish.tpl"
PAL_Sprite_RiverFishEnd:
PAL_Sprite_Boomerang:
	db "PAL_Sprite_Boomerang.tpl"
PAL_Sprite_BoomerangEnd:
PAL_Sprite_CageDoorKey:
	db "PAL_Sprite_CageDoorKey.tpl"
PAL_Sprite_CageDoorKeyEnd:
PAL_Sprite_CageDoor:
	db "PAL_Sprite_CageDoor.tpl"
PAL_Sprite_CageDoorEnd:
PAL_Sprite_Ape:
	db "PAL_Sprite_Ape.tpl"
PAL_Sprite_ApeEnd:
PAL_Sprite_CaveMouthBoulder:
	db "PAL_Sprite_CaveMouthBoulder.tpl"
PAL_Sprite_CaveMouthBoulderEnd:
PAL_Sprite_FallingLeaves:
	db "PAL_Sprite_FallingLeaves.tpl"
PAL_Sprite_FallingLeavesEnd:
PAL_Sprite_EmeraldCrystalPedestal:
	db "PAL_Sprite_EmeraldCrystalPedestal.tpl"
PAL_Sprite_EmeraldCrystalPedestalEnd:
PAL_Sprite_EmeraldCrystal:
	db "PAL_Sprite_EmeraldCrystal.tpl"
PAL_Sprite_EmeraldCrystalEnd:
PAL_Sprite_BlueWallTorch:
	db "PAL_Sprite_BlueWallTorch.tpl"
PAL_Sprite_BlueWallTorchEnd:
PAL_Sprite_RedWallTorch:
	db "PAL_Sprite_RedWallTorch.tpl"
PAL_Sprite_RedWallTorchEnd:
PAL_Sprite_YellowWallTorch:
	db "PAL_Sprite_YellowWallTorch.tpl"
PAL_Sprite_YellowWallTorchEnd:
PAL_Sprite_CavernSwitchDoor:
	db "PAL_Sprite_CavernSwitchDoor.tpl"
PAL_Sprite_CavernSwitchDoorEnd:
PAL_Sprite_SinkingMossyPillar:
	db "PAL_Sprite_SinkingMossyPillar.tpl"
PAL_Sprite_SinkingMossyPillarEnd:
PAL_Sprite_LargeBoulder:
	db "PAL_Sprite_LargeBoulder.tpl"
PAL_Sprite_LargeBoulderEnd:
PAL_Sprite_Pylon:
	db "PAL_Sprite_Pylon.tpl"
PAL_Sprite_PylonEnd:
PAL_Sprite_RollingBarrel:
	db "PAL_Sprite_RollingBarrel.tpl"
PAL_Sprite_RollingBarrelEnd:
PAL_Sprite_Pirate:
	db "PAL_Sprite_Pirate.tpl"
PAL_Sprite_PirateEnd:
PAL_Sprite_Cannon:
	db "PAL_Sprite_Cannon.tpl"
PAL_Sprite_CannonEnd:
PAL_Sprite_Unknown4:
	db "PAL_Sprite_Unknown4.tpl"
PAL_Sprite_Unknown4End:
PAL_Sprite_Jaguar:
	db "PAL_Sprite_Jaguar.tpl"
PAL_Sprite_JaguarEnd:
PAL_Sprite_Canteen:
	db "PAL_Sprite_Canteen.tpl"
PAL_Sprite_CanteenEnd:
PAL_Sprite_Turtle:
	db "PAL_Sprite_Turtle.tpl"
PAL_Sprite_TurtleEnd:
PAL_Sprite_Spider:
	db "PAL_Sprite_Spider.tpl"
PAL_Sprite_SpiderEnd:
PAL_Sprite_GiantSpider:
	db "PAL_Sprite_GiantSpider.tpl"
PAL_Sprite_GiantSpiderEnd:
PAL_Sprite_LavaBubble:
	db "PAL_Sprite_LavaBubble.tpl"
PAL_Sprite_LavaBubbleEnd:
PAL_Sprite_PushStartText:
	db "PAL_Sprite_PushStartText.tpl"
PAL_Sprite_PushStartTextEnd:
PAL_Sprite_CorpseFlowerStink:
	db "PAL_Sprite_CorpseFlowerStink.tpl"
PAL_Sprite_CorpseFlowerStinkEnd:
PAL_Sprite_ApeDefeatedParticle:
	db "PAL_Sprite_ApeDefeatedParticle.tpl"
PAL_Sprite_ApeDefeatedParticleEnd:
PAL_Sprite_BurningPulley:
	db "PAL_Sprite_BurningPulley.tpl"
PAL_Sprite_BurningPulleyEnd:
PAL_Sprite_IntroCargoLift:
	db "PAL_Sprite_IntroCargoLift.tpl"
PAL_Sprite_IntroCargoLiftEnd:
PAL_Sprite_IntroLester_Swim:
	db "PAL_Sprite_IntroLester_Swim.tpl"
PAL_Sprite_IntroLester_SwimEnd:
PAL_Sprite_IntroLester_Surfboard:
	db "PAL_Sprite_IntroLester_Surfboard.tpl"
PAL_Sprite_IntroLester_SurfboardEnd:
PAL_Sprite_Unknown5:
	db "PAL_Sprite_Unknown5.tpl"
PAL_Sprite_Unknown5End:
PAL_Sprite_Hector:
	db "PAL_Sprite_Hector.tpl"
PAL_Sprite_HectorEnd:
PAL_Sprite_Spoon:
	db "PAL_Sprite_Spoon.tpl"
PAL_Sprite_SpoonEnd:
PAL_Sprite_PirateShipDoor:
	db "PAL_Sprite_PirateShipDoor.tpl"
PAL_Sprite_PirateShipDoorEnd:
PAL_Sprite_PirateShipTorch:
	db "PAL_Sprite_PirateShipTorch.tpl"
PAL_Sprite_PirateShipTorchEnd:
PAL_Sprite_TNTCrate:
	db "PAL_Sprite_TNTCrate.tpl"
PAL_Sprite_TNTCrateEnd:
PAL_Sprite_PouredWater:
	db "PAL_Sprite_PouredWater.tpl"
PAL_Sprite_PouredWaterEnd:
PAL_Sprite_CrumblingDockFloor:
	db "PAL_Sprite_CrumblingDockFloor.tpl"
PAL_Sprite_CrumblingDockFloorEnd:
PAL_Sprite_CollapsingSandFloor:
	db "PAL_Sprite_CollapsingSandFloor.tpl"
PAL_Sprite_CollapsingSandFloorEnd:
PAL_Sprite_VolcanoLadder:
	db "PAL_Sprite_VolcanoLadder.tpl"
PAL_Sprite_VolcanoLadderEnd:
PAL_Sprite_Unknown6:
	db "PAL_Sprite_Unknown6.tpl"
PAL_Sprite_Unknown6End:
PAL_Sprite_ContinueScreenCursor:
	db "PAL_Sprite_ContinueScreenCursor.tpl"
PAL_Sprite_ContinueScreenCursorEnd:
PAL_Sprite_BarrelWater:
	db "PAL_Sprite_BarrelWater.tpl"
PAL_Sprite_BarrelWaterEnd:
PAL_Layer1_EndingCutsceneScene4:
	db "PAL_Layer1_EndingCutsceneScene4.tpl"
PAL_Layer1_EndingCutsceneScene4End:
PAL_BeachTileset_Layer1_Sand:
	db "PAL_BeachTileset_Layer1_Sand.tpl"
PAL_BeachTileset_Layer1_SandEnd:
PAL_BeachTileset_Layer1_Starfish:
	db "PAL_BeachTileset_Layer1_Starfish.tpl"
PAL_BeachTileset_Layer1_StarfishEnd:
PAL_BeachTileset_Layer1_Plants:
	db "PAL_BeachTileset_Layer1_Plants.tpl"
PAL_BeachTileset_Layer1_PlantsEnd:
PAL_BeachTileset_Layer1_Rockwalls:
	db "PAL_BeachTileset_Layer1_Rockwalls.tpl"
PAL_BeachTileset_Layer1_RockwallsEnd:
PAL_CaveTileset_Layer1_StalactitesAndStalagmite:
	db "PAL_CaveTileset_Layer1_StalactitesAndStalagmite.tpl"
PAL_CaveTileset_Layer1_StalactitesAndStalagmiteEnd:
PAL_CaveTileset_Layer1_GroundAndWalls:
	db "PAL_CaveTileset_Layer1_GroundAndWalls.tpl"
PAL_CaveTileset_Layer1_GroundAndWallsEnd:
PAL_CaveTileset_Layer1_SlimeFloors:
	db "PAL_CaveTileset_Layer1_SlimeFloors.tpl"
PAL_CaveTileset_Layer1_SlimeFloorsEnd:
PAL_CaveTileset_Layer1_GemstonesAndLavaCracks:
	db "PAL_CaveTileset_Layer1_GemstonesAndLavaCracks.tpl"
PAL_CaveTileset_Layer1_GemstonesAndLavaCracksEnd:
PAL_CaveTileset_Layer1_Waterfalls:
	db "PAL_CaveTileset_Layer1_Waterfalls.tpl"
PAL_CaveTileset_Layer1_WaterfallsEnd:
PAL_CaveTileset_Layer1_LightPillar:
	db "PAL_CaveTileset_Layer1_LightPillar.tpl"
PAL_CaveTileset_Layer1_LightPillarEnd:
PAL_CaveTileset_Layer2_Unknown:
	db "PAL_CaveTileset_Layer2_Unknown.tpl"
PAL_CaveTileset_Layer2_UnknownEnd:
PAL_CaveTileset_Layer2_Background:
	db "PAL_CaveTileset_Layer2_Background.tpl"
PAL_CaveTileset_Layer2_BackgroundEnd:
PAL_BeachTileset_Layer2_MountainsAndClouds:
	db "PAL_BeachTileset_Layer2_MountainsAndClouds.tpl"
PAL_BeachTileset_Layer2_MountainsAndCloudsEnd:
PAL_BeachTileset_Layer2_Waterline:
	db "PAL_BeachTileset_Layer2_Waterline.tpl"
PAL_BeachTileset_Layer2_WaterlineEnd:
PAL_BurialGroundsTileset_Layer1_Ground:
	db "PAL_BurialGroundsTileset_Layer1_Ground.tpl"
PAL_BurialGroundsTileset_Layer1_GroundEnd:
PAL_BurialGroundsTileset_Layer1_Fire:
	db "PAL_BurialGroundsTileset_Layer1_Fire.tpl"
PAL_BurialGroundsTileset_Layer1_FireEnd:
PAL_BurialGroundsTileset_Layer1_Bones:
	db "PAL_BurialGroundsTileset_Layer1_Bones.tpl"
PAL_BurialGroundsTileset_Layer1_BonesEnd:
PAL_BurialGroundsTileset_Layer1_Ledges:
	db "PAL_BurialGroundsTileset_Layer1_Ledges.tpl"
PAL_BurialGroundsTileset_Layer1_LedgesEnd:
PAL_BurialGroundsTileset_Layer2_SkyAndHills:
	db "PAL_BurialGroundsTileset_Layer2_SkyAndHills.tpl"
PAL_BurialGroundsTileset_Layer2_SkyAndHillsEnd:
PAL_BurialGroundsTileset_Layer2_BackgroundFire:
	db "PAL_BurialGroundsTileset_Layer2_BackgroundFire.tpl"
PAL_BurialGroundsTileset_Layer2_BackgroundFireEnd:
PAL_VillageTileset_Layer1_TreeBranch:
	db "PAL_VillageTileset_Layer1_TreeBranch.tpl"
PAL_VillageTileset_Layer1_TreeBranchEnd:
PAL_VillageTileset_Layer1_WoodObjects:
	db "PAL_VillageTileset_Layer1_WoodObjects.tpl"
PAL_VillageTileset_Layer1_WoodObjectsEnd:
PAL_VillageTileset_Layer1_MeatAndChimney:
	db "PAL_VillageTileset_Layer1_MeatAndChimney.tpl"
PAL_VillageTileset_Layer1_MeatAndChimneyEnd:
PAL_VillageTileset_Layer1_GroundAndPlantObjects:
	db "PAL_VillageTileset_Layer1_GroundAndPlantObjects.tpl"
PAL_VillageTileset_Layer1_GroundAndPlantObjectsEnd:
PAL_HutInteriorTileset_Layer1_Main:
	db "PAL_HutInteriorTileset_Layer1_Main.tpl"
PAL_HutInteriorTileset_Layer1_MainEnd:
PAL_HutInteriorTileset_Layer1_GreenBowl:
	db "PAL_HutInteriorTileset_Layer1_GreenBowl.tpl"
PAL_HutInteriorTileset_Layer1_GreenBowlEnd:
PAL_HutInteriorTileset_Layer1_BrownJar:
	db "PAL_HutInteriorTileset_Layer1_BrownJar.tpl"
PAL_HutInteriorTileset_Layer1_BrownJarEnd:
PAL_HutInteriorTileset_Layer1_FireplaceLightsAndJars:
	db "PAL_HutInteriorTileset_Layer1_FireplaceLightsAndJars.tpl"
PAL_HutInteriorTileset_Layer1_FireplaceLightsAndJarsEnd:
PAL_HutInteriorTileset_Layer1_HectorBust:
	db "PAL_HutInteriorTileset_Layer1_HectorBust.tpl"
PAL_HutInteriorTileset_Layer1_HectorBustEnd:
PAL_VillageTileset_Layer1_Rocks:
	db "PAL_VillageTileset_Layer1_Rocks.tpl"
PAL_VillageTileset_Layer1_RocksEnd:
PAL_JungleTileset_Layer2_DistantBackground:
	db "PAL_JungleTileset_Layer2_DistantBackground.tpl"
PAL_JungleTileset_Layer2_DistantBackgroundEnd:
PAL_JungleTileset_Layer2_NearBackground:
	db "PAL_JungleTileset_Layer2_NearBackground.tpl"
PAL_JungleTileset_Layer2_NearBackgroundEnd:
PAL_JungleTileset_Layer1_Dirt:
	db "PAL_JungleTileset_Layer1_Dirt.tpl"
PAL_JungleTileset_Layer1_DirtEnd:
PAL_JungleTileset_Layer1_Grass:
	db "PAL_JungleTileset_Layer1_Grass.tpl"
PAL_JungleTileset_Layer1_GrassEnd:
PAL_JungleTileset_Layer1_WaterAndEdges:
	db "PAL_JungleTileset_Layer1_WaterAndEdges.tpl"
PAL_JungleTileset_Layer1_WaterAndEdgesEnd:
PAL_JungleTileset_Layer1_GrassCorner:
	db "PAL_JungleTileset_Layer1_GrassCorner.tpl"
PAL_JungleTileset_Layer1_GrassCornerEnd:
PAL_DockTileset_Layer1_FlatGround:
	db "PAL_DockTileset_Layer1_FlatGround.tpl"
PAL_DockTileset_Layer1_FlatGroundEnd:
PAL_DockTileset_Layer1_FishingNets:
	db "PAL_DockTileset_Layer1_FishingNets.tpl"
PAL_DockTileset_Layer1_FishingNetsEnd:
PAL_DockTileset_Layer1_SlopesCratesAndPosts:
	db "PAL_DockTileset_Layer1_SlopesCratesAndPosts.tpl"
PAL_DockTileset_Layer1_SlopesCratesAndPostsEnd:
PAL_DockTileset_Layer1_BirdsAndMetal:
	db "PAL_DockTileset_Layer1_BirdsAndMetal.tpl"
PAL_DockTileset_Layer1_BirdsAndMetalEnd:
PAL_ShipTileset_Layer1_Main:
	db "PAL_ShipTileset_Layer1_Main.tpl"
PAL_ShipTileset_Layer1_MainEnd:
PAL_ShipTileset_Layer1_Railing:
	db "PAL_ShipTileset_Layer1_Railing.tpl"
PAL_ShipTileset_Layer1_RailingEnd:
PAL_ShipTileset_Layer1_HorizontalPoles:
	db "PAL_ShipTileset_Layer1_HorizontalPoles.tpl"
PAL_ShipTileset_Layer1_HorizontalPolesEnd:
PAL_CaveTileset_Layer1_Lava:
	db "PAL_CaveTileset_Layer1_Lava.tpl"
PAL_CaveTileset_Layer1_LavaEnd:
PAL_CaveTileset_Layer2_Lava:
	db "PAL_CaveTileset_Layer2_Lava.tpl"
PAL_CaveTileset_Layer2_LavaEnd:
PAL_TitleScreen_Layer1_Vine:
	db "PAL_TitleScreen_Layer1_Vine.tpl"
PAL_TitleScreen_Layer1_VineEnd:
PAL_TitleScreen_Layer1_Lester:
	db "PAL_TitleScreen_Layer1_Lester.tpl"
PAL_TitleScreen_Layer1_LesterEnd:
PAL_ShipInteriorTileset_Layer1_Main:
	db "PAL_ShipInteriorTileset_Layer1_Main.tpl"
PAL_ShipInteriorTileset_Layer1_MainEnd:
PAL_ShipInteriorTileset_Layer1_DoorFrame:
	db "PAL_ShipInteriorTileset_Layer1_DoorFrame.tpl"
PAL_ShipInteriorTileset_Layer1_DoorFrameEnd:
PAL_ShipInteriorTileset_Layer1_Decorations:
	db "PAL_ShipInteriorTileset_Layer1_Decorations.tpl"
PAL_ShipInteriorTileset_Layer1_DecorationsEnd:
PAL_VillageTileset_Layer2_MainBackground:
	db "PAL_VillageTileset_Layer2_MainBackground.tpl"
PAL_VillageTileset_Layer2_MainBackgroundEnd:
PAL_VillageTileset_Layer2_BerryLeaves:
	db "PAL_VillageTileset_Layer2_BerryLeaves.tpl"
PAL_VillageTileset_Layer2_BerryLeavesEnd:
PAL_Layer3_HUDAndFont:
	db "PAL_Layer3_HUDAndFont.tpl"
PAL_Layer3_HUDAndFontEnd:
PAL_Layer1_VisualConceptsLogo:
	db "PAL_Layer1_VisualConceptsLogo.tpl"
PAL_Layer1_VisualConceptsLogoEnd:
PAL_Layer3_SplashScreen:
	db "PAL_Layer3_SplashScreen.tpl"
PAL_Layer3_SplashScreenEnd:
PAL_Layer1_IntroScene1:
	db "PAL_Layer1_IntroScene1.tpl"
PAL_Layer1_IntroScene1End:
PAL_Layer1_IntroScene2:
	db "PAL_Layer1_IntroScene2.tpl"
PAL_Layer1_IntroScene2End:
PAL_Layer1_IntroScene3:
	db "PAL_Layer1_IntroScene3.tpl"
PAL_Layer1_IntroScene3End:
PAL_Layer1_LavaRunCutscene:
	db "PAL_Layer1_LavaRunCutscene.tpl"
PAL_Layer1_LavaRunCutsceneEnd:
PAL_Layer3_TitleScreen:
	db "PAL_Layer3_TitleScreen.tpl"
PAL_Layer3_TitleScreenEnd:
PAL_Layer1_GameOverScreen:
	db "PAL_Layer1_GameOverScreen.tpl"
PAL_Layer1_GameOverScreenEnd:
PAL_Layer1_ContinueScreen:
	db "PAL_Layer1_ContinueScreen.tpl"
PAL_Layer1_ContinueScreenEnd:
PAL_Layer1_EndingCutsceneScene3:
	db "PAL_Layer1_EndingCutsceneScene3.tpl"
PAL_Layer1_EndingCutsceneScene3End:

;--------------------------------------------------------------------

Music_TitleScreen:
	db "Music_TitleScreen.bin"
Music_TitleScreenEnd:
Music_Beach:
	db "Music_Beach.bin"
Music_BeachEnd:
Music_IntroCutscene:
	db "Music_IntroCutscene.bin"
Music_IntroCutsceneEnd:
Music_BurialGrounds:
	db "Music_BurialGrounds.bin"
Music_BurialGroundsEnd:
Music_Ending:
	db "Music_Ending.bin"
Music_EndingEnd:
Music_Cave:
	db "Music_Cave.bin"
Music_CaveEnd:
Music_Ape:
	db "Music_Ape.bin"
Music_ApeEnd:
Music_PirateShips:
	db "Music_PirateShips.bin"
Music_PirateShipsEnd:
Music_TotemPoles:
	db "Music_TotemPoles.bin"
Music_TotemPolesEnd:
Music_River:
	db "Music_River.bin"
Music_RiverEnd:
Music_Village:
	db "Music_Village.bin"
Music_VillageEnd:

;--------------------------------------------------------------------

BRRFile00:
	db "00.brr"
BRRFile00End:
BRRFile01:
	db "01.brr"
BRRFile01End:
BRRFile02:
	db "02.brr"
BRRFile02End:
BRRFile03:
	db "03.brr"
BRRFile03End:
BRRFile04:
	db "04.brr"
BRRFile04End:
BRRFile05:
	db "05.brr"
BRRFile05End:
BRRFile06:
	db "06.brr"
BRRFile06End:
BRRFile07:
	db "07.brr"
BRRFile07End:
BRRFile08:
	db "08.brr"
BRRFile08End:
BRRFile09:
	db "09.brr"
BRRFile09End:
BRRFile0A:
	db "0A.brr"
BRRFile0AEnd:
BRRFile0B:
	db "0B.brr"
BRRFile0BEnd:
BRRFile0C:
	db "0C.brr"
BRRFile0CEnd:
BRR_JaguarRoar:
	db "JaguarRoar.brr"
BRR_JaguarRoarEnd:
BRR_Lester_NervousYell:
	db "Lester_NervousYell.brr"
BRR_Lester_NervousYellEnd:
BRR_BatFlutter:
	db "BatFlutter.brr"
BRR_BatFlutterEnd:
BRR_Lester_FallingYell:
	db "Lester_FallingYell.brr"
BRR_Lester_FallingYellEnd:
BRR_TNTFuse:
	db "TNTFuse.brr"
BRR_TNTFuseEnd:
BRR_EagleScreech:
	db "EagleScreech.brr"
BRR_EagleScreechEnd:
BRR_ObjectPushRumble:
	db "ObjectPushRumble.brr"
BRR_ObjectPushRumbleEnd:
BRR_Explosion:
	db "Explosion.brr"
BRR_ExplosionEnd:
BRR_Tikka_Help:
	db "Tikka_Help.brr"
BRR_Tikka_HelpEnd:
BRR_Lester_Oh:
	db "Lester_Oh.brr"
BRR_Lester_OhEnd:
BRR_Laser:
	db "Laser.brr"
BRR_LaserEnd:
BRR_SwordSwing:
	db "SwordSwing.brr"
BRR_SwordSwingEnd:
BRR_Lester_Gulp:
	db "Lester_Gulp.brr"
BRR_Lester_GulpEnd:
BRR_Thud:
	db "Thud.brr"
BRR_ThudEnd:
BRR_ApeHurt:
	db "ApeHurt.brr"
BRR_ApeHurtEnd:
BRR_Lester_No:
	db "Lester_No.brr"
BRR_Lester_NoEnd:
BRR_ThownRockBounce:
	db "ThownRockBounce.brr"
BRR_ThownRockBounceEnd:
BRR_PressFloorSwitch:
	db "PressFloorSwitch.brr"
BRR_PressFloorSwitchEnd:
BRR_Lester_Hmmmmm:
	db "Lester_Hmmmmm.brr"
BRR_Lester_HmmmmmEnd:
BRR_Lester_Wahh:
	db "Lester_Wahh.brr"
BRR_Lester_WahhEnd:
BRR_Kiss:
	db "Kiss.brr"
BRR_KissEnd:
BRR_Lester_Grunt:
	db "Lester_Grunt.brr"
BRR_Lester_GruntEnd:
BRR_KillCrab:
	db "KillCrab.brr"
BRR_KillCrabEnd:
BRR_WaterSplash:
	db "WaterSplash.brr"
BRR_WaterSplashEnd:

;--------------------------------------------------------------------
