#cs ----------------------------------------------------------------------------
 AutoIt Version:[3.3.14.5]
 Author:[DonnieDice]
 Title:[CraftingBotBaby][CrftBB]
 Script Function:[Crafting Bot for FFXIV.]
#ce ----------------------------------------------------------------------------


;================================================================
#include <MsgBoxConstants.au3>
;================================================================
#include <Misc.au3>
;================================================================
Global $Paused = False
;================================================================
HotKeySet("{PAUSE}", "TogglePause") ; KotKey set to Pause Key
HotKeySet("{END}", "EndScript") ; HotKey set to End Key
;================================================================
local $A = 0    ; clock
;================================================================
local $B = InputBox("**Attempts**", "How many times you tryna"& _
"craft?", "1", "", - 1, -1, 0, 0)
;================================================================
local $C = 0    ; step counter
;================================================================
local $D = 5000 ; delay between buttons
;================================================================
local $E = 0   ; proc clock
;================================================================
local $F = 0

;##-----------------------------------------------------------------------------

;##-----------------------------------------------------------------------------

;================================================================

Main()

;================================================================

;##-----------------------------------------------------------------------------

;##-----------------------------------------------------------------------------


Func Main()
;================================================================
   Do
;================================================================
	  WinActivate ( "FINAL FANTASY XIV" )
;================================================================
	  Sleep ( 3000 )
	  MouseMove( 692, 538)
	  Sleep ( 3000 )
	  MouseClick("left", 692, 538, 2)
	  Sleep ( 8000 )
;================================================================
	  Send("{SHIFTDOWN}")					   ;Inner Quiet    #1
	  Sleep ( 500 )
	  Send("`")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
APixelSearch()						   ;Tricks of the Trade    #1
;================================================================
	  Send("`")								 ;Great Strides    #3
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
BPixelSearch()						   ;Tricks of the Trade    #4
;================================================================
	  Send("{f1}")			    			   ;Steady Hand    #5
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
   If $F = 0 Then					   ;Tricks of the Trade    #6
APixelSearch()
   EndIf
;================================================================
	  Send("{SHIFTDOWN}")			 		;Standard Touch	   #7
	  Sleep ( 500 )
	  Send("2")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
APixelSearch()						   ;Tricks of the Trade    #8
;================================================================
	  Send("`")						   		 ;Great Strides	   #9
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
APixelSearch()						  ;Tricks of the Trade    #10
;================================================================
	  Send("{SHIFTDOWN}")				   ;Standard Touch    #11
	  Sleep ( 500 )
	  Send("2")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
   If $E < 3 then					  ;Tricks of the Trade    #12
APixelSearch()
   EndIf
;================================================================
   If $E = 0 Then
	  Send("{f4}")							  ;Hasty Touch    #13
	  Sleep ( $D )
	  $C = $C + 1
   ElseIf $E = 1 Then                     	  ;Basic Touch    #13
	  Send("{SHIFTDOWN}")
	  Sleep ( 500 )
	  Send("1")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
	  $C = $C + 1
   ElseIf $E = 2 Then                     	  ;Basic Touch    #13
	  Send("{SHIFTDOWN}")
	  Sleep ( 500 )
	  Send("2")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
	  $C = $C + 1
   ElseIf $E > 2 Then                     	   ;Steady Hand   #13
Steady()
   EndIf
;================================================================
APixelSearch()						  ;Tricks of the Trade    #14
;================================================================
	  Send("5")								;Master's Mend    #15
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
APixelSearch()						  ;Tricks of the Trade    #16
;================================================================
	  Send("{f1}")							  ;Steady Hand    #17
	  Sleep ( $D )
	  $C = $C + 1    ;if #13 then nope
;================================================================
APixelSearch()						  ;Tricks of the Trade    #18
;================================================================
	  Send("{f4}")							  ;Hasty Touch    #19
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
APixelSearch()						  ;Tricks of the Trade    #20
;================================================================
	  Send("{f4}")							  ;Hasty Touch    #21
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
   If $E = 0 Then
	  Send("{f4}")  						  ;Hasty Touch    #22
	  Sleep ( $D )
	  $C = $C + 1
   ElseIf $E = 1 Then                     	  ;Basic Touch    #22
	  Send("{SHIFTDOWN}")
	  Sleep ( 500 )
	  Send("1")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
	  $C = $C + 1
   ElseIf $E = 2 Then
	  Send("{SHIFTDOWN}")
	  Sleep ( 500 )
	  Send("1")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
	  $C = $C + 1
   ElseIf $E = 3 Then					   ;Standard Touch    #22
	  Send("{SHIFTDOWN}")
	  Sleep ( 500 )
	  Send("2")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
	  $C = $C + 1
   ElseIf $E >= 4 Then              		   ;Advanced Touch    #22
	  Send("{SHIFTDOWN}")
	  Sleep ( 500 )
	  Send("3")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
	  $C = $C + 1
   EndIf
;================================================================
	  Send("q")	;==== ending empty ====	   	   ;Rumination    #23
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
	  Send("{f1}")							  ;Steady Hand    #24
	  Sleep ( $D )
	  $C = $C + 1
;================================================================
	  Send("2")	;==== final craft ====  ;Standard Sythesis    #25
	  Sleep ( $D )
;================================================================

	  ;========
	  $A = $A+1   ;clock
	  $C = 0
	  $E = 0
	  $F = 0
	  ;========

;================================================================

;Add Msg for completed task.

;================================================================
   Until $A = $B  ;score
;================================================================
EndFunc
;##-----------------------------------------------------------------------------


Func TogglePause()
;================================================================
$Paused = NOT $Paused
;================================================================
While $Paused
;================================================================
sleep(100)
ToolTip('Script is "Paused"',0,0)
$MyBox = MsgBox(1, "**Paused**", "End Script")
;================================================================
   If $MyBox == 1 Then
	  Exit
   ElseIf $MyBox == 2 Then
	  $Paused = False
   EndIf
;================================================================
WEnd
;================================================================
ToolTip("")
;================================================================
EndFunc
;##-----------------------------------------------------------------------------


Func EndScript()
    Exit
EndFunc
;##-----------------------------------------------------------------------------


Func APixelSearch()
    If PixelGetColor(588, 713) = 0xFFFCDA Then
	  Send("{SHIFTDOWN}")
	  Sleep ( 500 )
	  Send("4")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
   $E = $E + 1
   $C = $C + 1
   EndIf
EndFunc
;##-----------------------------------------------------------------------------



Func BPixelSearch()
    If PixelGetColor(588, 713) = 0xFFFCDA Then
	  Send("{SHIFTDOWN}")
	  Sleep ( 500 )
	  Send("4")
	  Sleep ( 500 )
	  Send("{SHIFTUP}")
	  Sleep ( $D )
   $F = $F + 1
   $E = $E + 1
   $C = $C + 1
   EndIf
EndFunc


Func Steady()
;======
   Send("{f1}")			    			   ;Steady Hand    #5
   Sleep ( $D )
   $C = $C + 1
;=======
APixelSearch()
;=====
If $E >= 3 Then
   Send("{SHIFTDOWN}")
   Sleep ( 500 )
   Send("2")
   Sleep ( 500 )
   Send("{SHIFTUP}")
   Sleep ( $D )
   $C = $C + 1
ElseIf $E < 3 Then
   Send("{f4}")							  ;Hasty Touch    #21
   Sleep ( $D )
   $C = $C + 1
EndIf
;====
EndFunc

























