
macro LTU_GameSpecificAssemblySettings()
	!ROM_LTU_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_LTU_J = $0002							;/

	%SetROMToAssembleForHack(LTU_U, !ROMID)
endmacro

macro LTU_LoadGameSpecificMainSNESFiles()
	incsrc ../SPC700/ARAMPtrs_LTU.asm
	incsrc ../Misc_Defines_LTU.asm
	incsrc ../RAM_Map_LTU.asm
	incsrc ../Routine_Macros_LTU.asm
	incsrc ../SNES_Macros_LTU.asm
	%LoadExtraRAMFile("SRAM_Map_LTU.asm", !GameID, LTU)
endmacro

macro LTU_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_LTU.asm
	incsrc ../Misc_Defines_LTU.asm
	incsrc ../SPC700/SPC700_Routine_Macros_LTU.asm
	incsrc ../SPC700/SPC700_Macros_LTU.asm
endmacro

macro LTU_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro LTU_LoadGameSpecificMSU1Files()
endmacro

macro LTU_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_ApplyDefaultPatches = !TRUE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $00
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 3
	!Define_Global_ROMFrameworkSubSubVer = 1
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "DTMC"
	!Define_Global_DeveloperName = "Visual Concepts"
	!Define_Global_ReleaseDate = "January 1994"
	!Define_Global_BaseROMMD5Hash = "bb8e9e7429145404f0e4186ad0161fc8"

	!Define_Global_MakerCode = "00"
	!Define_Global_GameCode = "xxxx"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "LESTER THE UNLIKELY  "
	!Define_Global_ROMLayout = !ROMLayout_HiROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize1 = !ROMSize_1MB
	!Define_Global_ROMSize2 = !ROMSize_0KB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $35
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $7375
	!UnusedNativeModeVector1 = $0000
	!UnusedNativeModeVector2 = $0000
	!NativeModeCOPVector = CODE_C0F78E
	!NativeModeBRKVector = CODE_C0F791
	!NativeModeAbortVector = CODE_C0F78E
	!NativeModeNMIVector = CODE_C0F78E
	!NativeModeResetVector = CODE_C0F773
	!NativeModeIRQVector = CODE_C0F78E
	!UnusedEmulationModeVector1 = $0000
	!UnusedEmulationModeVector2 = $0000
	!EmulationModeCOPVector = CODE_C0F78E
	!EmulationModeBRKVector = CODE_C0F791
	!EmulationModeAbortVector = CODE_C0F78E
	!EmulationModeNMIVector = CODE_C0F78E
	!EmulationModeResetVector = CODE_C0F773
	!EmulationModeIRQVector = CODE_C0F78E
endmacro

macro LTU_LoadROMMap()
	%LTUBankC0Macros(!BANK_00, !BANK_00)
	%LTUBankC1Macros(!BANK_01, !BANK_06)
	%LTUBankC7Macros(!BANK_07, !BANK_07)
	%LTUBankC8Macros(!BANK_08, !BANK_08)
	%LTUBankC9Macros(!BANK_09, !BANK_09)
	%LTUBankCAMacros(!BANK_0A, !BANK_0C)
	%LTUBankCDMacros(!BANK_0D, !BANK_0D)
	%LTUBankCEMacros(!BANK_0E, !BANK_0E)
	%LTUBankCFMacros(!BANK_0F, !BANK_0F)
endmacro

;#############################################################################################################
;#############################################################################################################

macro LTU_LoadSPC700ROMMap()
%SPC700RoutinePointer(LTU_SPC700_Engine_Init, LTU_SPC700Block0Start, LTU_SPC700Block0End)
%SPC700RoutinePointer(LTU_SPC700_Engine_Main, LTU_SPC700Block1Start, LTU_SPC700Block1End)
%SPC700RoutinePointer(LTU_SPC700_Engine_CODE_0120, LTU_SPC700Block2Start, LTU_SPC700Block2End)
;%SPC700RoutinePointer(LTU_GlobalSampleBank_Ptrs, LTU_SPC700Block1Start, LTU_SPC700Block1End)

LTU_SPC700Block0Start:
	%SPC700_RT00_LTU_SPC700_Engine($0020)
LTU_SPC700Block0End:
LTU_SPC700Block1Start:
	%SPC700_RT01_LTU_SPC700_Engine($1000)
LTU_SPC700Block1End:
LTU_SPC700Block2Start:
	%SPC700_RT02_LTU_SPC700_Engine($0120)
LTU_SPC700Block2End:
;LTU_SPC700Block1Start:
;	%SPC700_LTU_GlobalSampleBank($0400)
;LTU_SPC700Block1End:
endmacro

;#############################################################################################################
;#############################################################################################################

macro LTU_LoadSuperFXROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################

macro LTU_LoadMSU1ROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################
