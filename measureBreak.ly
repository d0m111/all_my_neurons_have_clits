\version "2.22.2"
\language "english"




measureBreak = \new Staff = "order" \with {
         \remove "Time_signature_engraver"
         \hide Clef
         \magnifyStaff #2/3
       } {
    %\override Score.BarNumber.break-visibility = ##(#t #t #t)
    
    % \override \clef.color = #'white
    % \hide Staff.TimeSignature
    % \override Score.SpacingSpanner.strict-note-spacing = ##t
    % \set Score.proportionalNotationDuration = #(ly:make-moment 1/64)
    % \RemoveAllEmptyStaves
    % \stopStaff
    \override Staff.StaffSymbol.color = white
    \new Devnull 
    %A4 set up
    \repeat unfold 38{ s1*3\pageBreak}
    \time 3/4 s2.
    \time 4/4 s1*2 \pageBreak
    \repeat unfold 30{s1*3 \pageBreak}
    s1*3

    %A3 set up
    %\repeat unfold 6{ \repeat unfold 2{s1*3\break} \pageBreak}
     %\repeat unfold 4{s1*3\break}
     %s1 \bar "!." s1 s1
}