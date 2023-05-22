\version "2.24.0"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"



cello = \new StaffGroup = "Lola Malique" \with{
    instrumentName = "Lola (Vc.)"
    shortInstrumentName = "Vc."
    
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
  %\hide Clef
  \remove "Time_signature_engraver"
  \magnifyStaff #3/4
   }
  \relative c'{
    %\undo \hide Clef
    %\set Staff.forceClef = ##t \clef bass
    \clef bass
    \hide Stem
  a,,,32^\markup{\box \teeny{"scordatura"}} fs'' d' a'  \stopStaff
   
    }

    \new Staff = "Left hand" \with{
      %\hide Clef
    \remove "Time_signature_engraver"
    }
    \relative c'{
     \hide Staff.Clef
     \clef bass
      \override Score.BarNumber.break-visibility = ##(#t #t #t)
    \stopStaff  
    \override TextScript.extra-offset = #'(56 . -8.5) 
    s1^\markup{\epsfile #Y #14 "i_clef.eps"} %\startStaff
    %\undo \hide Staff.Clef
    %\set Staff.forceClef = ##t \clef bass
    %1
    \iClef \startStaff 
    \override TextScript.extra-offset = #'(0 . 3) 
    \uN d,4\mf\-(^\markup{\box{\column{
    \line \lower #3 {"with wooden sourdine,"}
    \line \lower #1 {"fast bowing, very light"}}}} \stopStaff \fiveLinesStaff \startStaff
    \noireNH 
    %\undo \hide Clef
    %\set Staff.forceClef = ##t \clef bass
    \override TextScript.extra-offset = #'(-15.5 . 7)
    d'16\ppp\-\flageolet^\markup{"IIc."} \stopStaff \iClef \startStaff \uN d,8.\mf\-) \stopStaff r4 r4
    %2
   s1
   %3
   s1
   %4
  
   r4
   \clefChevalier 
   \startStaff
   \override TextScript.extra-offset = #'(-5 . -9)
   \override Glissando.style = #'dotted-line
   \override Glissando.thickness = 3.14
   \noLedgers
   r16^\markup{{\epsfile #Y #8.9 #"chevalier.eps" }}[ \xH 
   \override TextScript.extra-offset = #'(0 . -8)
   e8.(]\glissando^\markup{\box{\column{
   \line \lower #3 {"play with" \bold{"only"}}
   \line \lower #1 {"one crine"}}}} \glissSkipOn
   a,16[ \glissandoSkipOff \noLedgers g16) r8]

    %\repeat unfold 37{ s1*3\pageBreak}
    %\time 3/4 s2.
    %\time 4/4 s1*2 \pageBreak
    %\repeat unfold 30{s1*3 \pageBreak}
    %s1*3
    
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