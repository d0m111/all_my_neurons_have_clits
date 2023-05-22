\version "2.24.0"
\language "english"



% octavation
octavaUp = { 
  \ottava 1
  \set Staff.ottavation = "8va"
  \once \override Staff.OttavaBracket.direction = #UP }
doubleOctUp = { 
  \ottava 2
  \set Staff.ottavation = "15ma"
  \once \override Staff.OttavaBracket.direction = #UP }
octavaDown = { 
  \ottava -1
  \set Staff.ottavation = "8vb"
  \once \override Staff.OttavaBracket.direction = #DOWN }
stopOctava = \ottava 0 %\unset Staff.ottavation
  

% fonts
fuenteTimeSig = \override Staff.TimeSignature.font-name = "Helvetica"
sizeTimeSig =  \override Staff.TimeSignature.font-size = 2

%glissando
 glissandoSkipOn = {
       \override NoteColumn.glissando-skip = ##t
       \hide NoteHead
       \omit Stem
       \omit Flag
       \override NoteHead.no-ledgers = ##t
}

glissSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}


 glissandoSkipOff = {
   
       \override NoteColumn.glissando-skip = ##f
       %\hide NoteHead
       \override NoteHead.no-ledgers = ##f
}

undoS-NH = {
\undo \hide Stem 
\undo \hide NoteHead 
}

tinyFlageolet = \tweak font-size -3 \flageolet 

teenyFlageolet = \tweak font-size -5 \flageolet

%dashed line
lineDashed = \once \override DurationLine.style = #'dashed-line
lineZig = \once \override DurationLine.style = #'zigzag

lineDotted = \once \override DurationLine.style = #'dotted-line

lineTrill = \once \override DurationLine.style = #'trill

letraF = _\markup{\teeny{"[F]"}}
letraR = _\markup{\teeny{"[R]"}}
letraS = _\markup{\teeny{"[s]"}}
letraT = _\markup{\teeny{"[t]"}}
letraK = _\markup{\teeny{"[k]"}}

%tuplet OMIT
% omittingTuplet = \omit TupletBracket \omit TupletNumber

noLedgers = \override NoteHead.no-ledgers = ##t 

yesLedgers = \override NoteHead.no-ledgers = ##f

bridgeClefOffSet = \override TextScript.extra-offset = #'(7 . -6) 

UndoBridgeClefOffSet = \override TextScript.extra-offset = #'(0 . 0) 

oneLineStaff = \override Staff.StaffSymbol.line-positions = #'(1)

twoLinesStaff = \override Staff.StaffSymbol.line-positions = #'(-3 3)

neckGtr = \override Staff.StaffSymbol.line-positions = #'(-13 0 13)

fiveLinesStaff = \override Staff.StaffSymbol.line-positions = #'(-4 -2 0 2 4)

bridgeClef = \override Staff.StaffSymbol.line-positions = #'(-6 -2  2.5 8)

clefChevalier= \override Staff.StaffSymbol.line-positions = #'(-6 -2  2.5 8) 

iClef = \override Staff.StaffSymbol.line-positions = #'(-10 0 7)
