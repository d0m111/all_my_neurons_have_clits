\version "2.24.0"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"

violin = \new StaffGroup = "Emily Yabe" \with{
    instrumentName = "Emily (Vl.)"
    shortInstrumentName = "Vl."
    
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
  \new Staff = "Teeth on reed" \with{
  \hide Clef
  \remove "Time_signature_engraver"
  \magnifyStaff #3/4
   }
  \relative c'{
  \stopStaff s1
  %1
  \hide Stem
  s4 \startStaff ftqs''16\flageolet \stopStaff s8. s2
   
    }

    \new Staff = "Left hand" \with{
      %\hide Clef
    \remove "Time_signature_engraver"
    }
    \relative c'{
     \hide Staff.Clef
      \override Score.BarNumber.break-visibility = ##(#t #t #t)
    \stopStaff  s1 %\startStaff
    \undo \hide Staff.Clef
    \set Staff.forceClef = ##t \clef treble
%1    
r4 \startStaff \diamondH fs16-.->\mp[^\markup{"m.s.p"} r8.] \stopStaff r4 r4
%2
R1
%3
r2 r4 \iClef \startStaff
\override TextScript.extra-offset = #'(-7 . -12) 
\noLedgers
r8.[^\markup{\epsfile #Y #14 "i_clef.eps"} 
\override TextScript.extra-offset = #'(0 . 0) 
\override Glissando.style = #'dashed-line
    \override Staff.Glissando.thickness = #'5
\uN a16\mf^\markup{"IVc."}^\markup{\box{\column{
\line \lower #3 {"pinch the hair of the bow,"}
\line \lower #1 {\bold {"slowly"} "bowing perpendicular to the string"}
\line \lower #-1 {"producing an opaque regular grain"}}}}]\glissando \glissSkipOn
b,8. \glissandoSkipOff f16 \stopStaff r4 r2


%4
   

    
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