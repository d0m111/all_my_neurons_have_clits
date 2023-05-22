\version "2.24.0"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"

bassClarinet = \new StaffGroup = "Adam Starkie" \with{
    instrumentName = "Adam (B. Cl)"
    shortInstrumentName = "B. Cl."
    
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
  \stopStaff s1*4 \twoLinesStaff
  %4
  \override TextScript.extra-offset = #'(-5 . -3) 
 s8^\markup{\bold{"teeth on reed"}}
 \override TextScript.extra-offset = #'(0 . 0) 
  \startStaff \teethReed \lineDashed f'8:32\-\ppp^\markup{\box{"formant: [o]"}}_\markup{"[R]"} \stopStaff \hide Rest r4 \undo \hide Rest s2
   
    }

    \new Staff = "Clarinet(ADAM STARKIE)" \with{
      %\hide Clef
    \remove "Time_signature_engraver"
    }
    \relative c'{
     \hide Staff.Clef
      \override Score.BarNumber.break-visibility = ##(#t #t #t)
    \stopStaff s1
    %\startStaff
     \undo \hide Staff.Clef
     \set Staff.forceClef = ##t \clef treble
    %1
    r4 \startStaff ds,4--\-\ppp \stopStaff r4 r4
    %2,3
    R1*2
    %4
    r8[ \startStaff \diamondH fs8->\-\f] 
    <<\relative c''{\hide NoteHead 
      b8[ b16 \xH c,,16_>_.]
      8[ g''16_. b16]}
      \\
      \relative c''{\hide Stem 
    b8\rest b16\rest \xH c,,16^\markup{\box{"key noise"}}\-
    s8 g''16\- b16\rest}>> \stopStaff r4
    
    s1*5
    %10
    \startStaff \noireNH gs4--\-\ppp \stopStaff r4 r2
    %11
    s1
    \stopStaff
    %12
    \startStaff
    c,4--\-\ppp \stopStaff r4 r2% \startStaff  \tuplet 3/2{\uN c'16-._\markup{"t"} 16-._\markup{"k"} 16-._\markup{"t"}} r8
    %13
    r2 r4 \startStaff <<\relative c'{\hide NoteHead
      b32[ \noireNH e,16\ppp_- s32 8]
     <e a d f>4 8[ b'8]
     }
     \\
     \relative c'{\hide Stem \stemUp
     b32\rest \noireNH e,16.\-
      s8
     s4 
     s8 b'8\rest}>> \stopStaff r2
    
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