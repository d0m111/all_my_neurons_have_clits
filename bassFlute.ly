\version "2.24.0"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"


  
bassFlute = \new StaffGroup = "Emiliano Gavito" \with{
    instrumentName = "Emiliano (B.Fl)"
    shortInstrumentName = "B.Fl."
    
    \override Clef.space-alist = #'(
      (cue-clef extra-space . 2.0)
      (staff-bar extra-space . 0.7)
      (ambitus extra-space . 1.15)
      (key-cancellation minimum-space . 3.5)
      (key-signature minimum-space . 3.5)
      (time-signature minimum-space . 4.2)
      (first-note minimum-fixed-space . 0) ; <= à tester
      (next-note extra-space . 1.0)
      (right-edge extra-space . 0.5))
}
<<
  \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
  \new Staff = "mouthpiece" \with{
  \hide Clef
  \remove "Time_signature_engraver"
  \magnifyStaff #3/4
   }
  \relative c'{
  \stopStaff
   
    }

    \new Staff = "Bass Flute" \with{
      %\hide Clef
    \remove "Time_signature_engraver"
    }
    \relative c'{
     \hide Staff.Clef
      \override Score.BarNumber.break-visibility = ##(#t #t #t)
       \set Score.barNumberVisibility = #all-bar-numbers-visible
       \set Score.currentBarNumber = #0
   \stopStaff s1 
    \undo \hide Staff.Clef
    \set Staff.forceClef = ##t \clef treble

    
    r4 \startStaff \tuplet 6/4{\uN d16\p\downbow--(_\markup{"[F]" 
                                                            \rotate #15
                                                             \with-dimensions-from \null
                                                             \concat {
                                                                       \draw-line #'(11 . 0)
                                                                       \arrow-head #X #RIGHT ##t}}
                                                e fs gs as c_\markup{"[s]"})}
    \stopStaff r4 r4
    %2,3
    s1*2
    %4
    \startStaff
    \diamondH 
    \tuplet 3/2{d,8[(\ppp_\markup{"[æ ɹ h z..."}^\markup{\teeny{"D" \sharp}}\startTrillSpan
                e fs]} 
    \tuplet 3/2{gs as c)\stopTrillSpan} \uN \lineDashed c,8.:32--[\-_\markup{"[R]"}\upbow\mf r16] \stopStaff r4
    
    
    
}>>
    
    

%>>





\layout {

      indent = 3.0 \cm 
      short-indent = 1.5 \cm

\context{
    \Voice
    \consists "Duration_line_engraver"

    \override NoteHead.duration-log = 2
  }


}

\paper  {   
        
       #(define fonts
         (set-global-fonts
          #:music "emmentaler"
          #:brace "emmentaler"
          #:roman "Helvetica, light"   
          ; unnecessary if the staff size is default
         ; #:factor (/ staff-height pt 20)
         ))
}