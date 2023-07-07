; This will dump the data for an asar patch that will be applied to the USA LTU ROM. Said patch will dump the many dynamic sprite pointer tables in bank C0 when applied to the ROM.
; The reason I'm generating a patch and not the tables directly is because of asar limitations. I don't think it's possible for asar to resolve commands through a define while in a print statement.
; Also, it may take a second before asar starts displaying anything on the command line. In addition, you'll need to replace the ' with " in the output patch, otherwise asar won't assemble the patch.
; Lastly, you'll have to extract the last block manually, as there is no pointer after its pointer, and that will cause asar to hang.

!StartOffset = $C0B831
!EndOffset =	$C0B851

hirom

macro HandleVariableDefine(ID)
	!Output<ID> #= !Input9
endmacro

macro ClearDefines()
	!Output0 = ""
	!Output1 = ""
	!Output2 = ""
	!Output3 = ""
	!Output4 = ""
	!Output5 = ""
	!Output6 = ""
	!Output7 = ""
	!Output8 = ""
	!Output9 = ""
	!Output10 = ""
	!Output11 = ""
	!Output12 = ""
	!Output13 = ""
	!Output14 = ""
	!Output15 = ""
endmacro

macro HandleLineOfData(ID)
	if <ID> == 0
		!PrintData += "	db $',hex(!Output<ID>, 2)"
	else
		!PrintData += ",',$',hex(!Output<ID>, 2)"
	endif
endmacro

macro PrintVariableData(Data)
	print "print '	<Data>"
endmacro

!SkipBytes = 0
!LoopCounter = 0
print "hirom"

while !StartOffset+!LoopCounter < !EndOffset
	!Input1 #= read1(!StartOffset+!LoopCounter+$00)
	!Input2 #= read1(!StartOffset+!LoopCounter+$01)
	!Input3 #= read2(!StartOffset+!LoopCounter+$02)
	!Input4 #= read3(!StartOffset+!LoopCounter+$05)
	!Input5 #= read3(!StartOffset+!LoopCounter+$08)
	!Input6 #= read3(!StartOffset+!LoopCounter+$0B)
	%ClearDefines()
	!ByteCount = 0
	!RowByteCount = 0
	!PrintData = ""
	print "print 'DATA_',hex(!StartOffset+!LoopCounter),':'"
		if !Input5-!Input4 < $00
			print "print '	db $',hex(!Input1, 2),',$',hex(!Input2, 2),' : dl DATA_C0',hex(!Input3, 4),'&$00FFFF,DATA_',hex(!Input4, 6)"
			!LoopCounter #= !LoopCounter+$08
		elseif !Input5-!Input4 > $FFFF
			print "print '	db $',hex(!Input1, 2),',$',hex(!Input2, 2),' : dl DATA_C0',hex(!Input3, 4),'&$00FFFF,DATA_',hex(!Input4, 6)"
			!LoopCounter #= !LoopCounter+$08
		elseif !Input6-!Input4 < $00
			print "print '	db $',hex(!Input1, 2),',$',hex(!Input2, 2),' : dl DATA_C0',hex(!Input3, 4),'&$00FFFF,DATA_',hex(!Input4, 6),',DATA_',hex(!Input4, 6),'+$',hex(!Input5-!Input4, 4)"
			!LoopCounter #= !LoopCounter+$0B
		elseif !Input6-!Input4 > $FFFF
			print "print '	db $',hex(!Input1, 2),',$',hex(!Input2, 2),' : dl DATA_C0',hex(!Input3, 4),'&$00FFFF,DATA_',hex(!Input4, 6),',DATA_',hex(!Input4, 6),'+$',hex(!Input5-!Input4, 4)"
			!LoopCounter #= !LoopCounter+$0B
		else
			print "print '	db $',hex(!Input1, 2),',$',hex(!Input2, 2),' : dl DATA_C0',hex(!Input3, 4),'&$00FFFF,DATA_',hex(!Input4, 6),',DATA_',hex(!Input4, 6),'+$',hex(!Input5-!Input4, 4),',DATA_',hex(!Input4, 6),'+$',hex(!Input6-!Input4, 4)"
			!LoopCounter #= !LoopCounter+$0E
		endif
		print "print ''"
endif
		print "print ''"
!LoopCounter #= 0
while !StartOffset+!LoopCounter < !EndOffset
	!Input3 #= read2(!StartOffset+!LoopCounter+$02)
	!Input4 #= read3(!StartOffset+!LoopCounter+$05)
	!Input5 #= read3(!StartOffset+!LoopCounter+$08)
	!Input6 #= read3(!StartOffset+!LoopCounter+$0B)
	print "print 'DATA_C0',hex(!Input3, 4),':'"
		if !Input5-!Input4 < $00
			!LoopCounter #= !LoopCounter+$08
		elseif !Input5-!Input4 > $FFFF
			!LoopCounter #= !LoopCounter+$08
		elseif !Input6-!Input4 < $00
			!LoopCounter #= !LoopCounter+$0B
		elseif !Input6-!Input4 > $FFFF
			!LoopCounter #= !LoopCounter+$0B
		else
			!LoopCounter #= !LoopCounter+$0E
		endif
endif
		print "print ''"
		print "print ''"
!LoopCounter #= 0
while !StartOffset+!LoopCounter < !EndOffset
	!Input4 #= read3(!StartOffset+!LoopCounter+$05)
	!Input5 #= read3(!StartOffset+!LoopCounter+$08)
	!Input6 #= read3(!StartOffset+!LoopCounter+$0B)
	print "print 'DATA_',hex(!Input4, 6),':'"
		if !Input5-!Input4 < $00
			!LoopCounter #= !LoopCounter+$08
		elseif !Input5-!Input4 > $FFFF
			!LoopCounter #= !LoopCounter+$08
		elseif !Input6-!Input4 < $00
			!LoopCounter #= !LoopCounter+$0B
		elseif !Input6-!Input4 > $FFFF
			!LoopCounter #= !LoopCounter+$0B
		else
			!LoopCounter #= !LoopCounter+$0E
		endif
endif
