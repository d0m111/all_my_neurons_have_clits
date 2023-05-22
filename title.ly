\version "2.24.0"
\language "english"

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

%#(set-default-paper-size "a3" "landscape")

\header { 
  title = \markup {
 
    \line { \hspace #-87
      %\override #'(font-shape . )
      \override #'(font-size . 12)
      \override #'(font-name . "Helvetica Neue, ligth")
      "All my neurons have clits" } } 

%{subtitle = \markup {
     \line {\hspace #-65 
        \override #'(font-size . 3)
       \override #'(font-name . "Helvetica Neue, ligth") "All my neurons have clits"
       } %} 


subsubtitle = \markup { 
       \column {%\hspace #-80
         \line { \hspace #-85
         \override #'(font-size . 1)
         \override #'(font-name . "Helvetica Neue, ligth, italic") "for ensemble + samples w/synthetics sounds made and played by a human on a computer"}
         \line {\hspace #-50
           \override #'(font-size . -1)
         \override #'(font-name . "Helvetica Neue, ligth, italic") ""}}
 }
 
 composer =  \markup { \raise #3
         \line { %\hspace #-50
         \override #'(font-size . 0)
         \override #'(font-name . "Helvetica Neue, ligth") "Francisco Uberto (b. 1988)"}
         \vspace #1.5
         } tagline = ##f
 }