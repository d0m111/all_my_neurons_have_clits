\version "2.24.0"
\language "english"


\include "bassFlute.ly"
\include "bassClarinet.ly"
\include "eGtr.ly"
\include "violin.ly"
\include "cello.ly"
\include "measureBreak.ly"
\include "accidentals.ly"
\include "headNotes.ly"
\include "title.ly"
\include "miscelaneas.ly"


#(set-default-paper-size "a3landscape")
%#(set-default-paper-size "a3portrait")
%#(ly:set-option 'point-and-click #f)
#(set-global-staff-size 19.5)

\score{
  
    <<
       
    \new StaffGroup = "Collectif lovemusic" \with {
    systemStartDelimiter = #'SystemStartSquare
    }<< 

    \measureBreak    
    
    \override Score.BarNumber.stencil
    = #(make-stencil-circler 0.1 0.25 ly:text-interface::print)
    \override Score.BarNumber.self-alignment-X = #CENTER
    
    \override Score.BarNumber.break-visibility = ##(#t #t #t)
    %\override Score.SpacingSpanner.strict-note-spacing = ##t
    
  \bassFlute
   \bassClarinet
    \eGtr
    \violin
    \cello
    
    \measureBreak   
     
    >>
 
    
    >>
}


\layout {	   

  indent = 3.0 \cm 
  short-indent = 1.5 \cm
  
  \context
  
  {
    
    \Score
    
    \override NonMusicalPaperColumn.line-break-permission = ##f
    \override NonMusicalPaperColumn.page-break-permission = ##f
       \override StaffSymbol.thickness = #0.65
    
    proportionalNotationDuration = #(ly:make-moment 1/32)
    \override SpacingSpanner.uniform-stretching = ##t
    
    %\StaffGroup
         \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #20

  }
  
}
  

\paper  {   
        %system-separator-markup = \slashSeparators
       #(define fonts
         (set-global-fonts
          #:music "emmentaler"
          #:brace "emmentaler"
          #:roman "Helvetica, light"   
          ; unnecessary if the staff size is default
         ; #:factor (/ staff-height pt 20)
         ))
}