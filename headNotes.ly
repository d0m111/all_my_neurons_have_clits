\version "2.24.0"
\language "english"

uN = #(define-music-function
          (note)
          (ly:music?)
          #{
            \override  NoteHead.stencil = #ly:text-interface::print
            \override  NoteHead.text =
            \markup \musicglyph "noteheads.s2laFunk"
            % noteheads.s1laFunk
            #note
          #} )

noireNH = #(define-music-function
          (note)
          (ly:music?)
          #{
            \override  NoteHead.stencil = #ly:text-interface::print
            \override  NoteHead.text =
            \markup \musicglyph "noteheads.s2"
            % noteheads.s1laFunk
            #note
          #} )

blancheNH = #(define-music-function
          (note)
          (ly:music?)
          #{
            \override  NoteHead.stencil = #ly:text-interface::print
            \override  NoteHead.text =
            \markup \musicglyph "noteheads.s1"
            % noteheads.s1laFunk
            #note
          #} )

uNw = #(define-music-function
          (note)
          (ly:music?)
          #{
            \override NoteHead.stencil = #ly:text-interface::print
            \override NoteHead.text =
            \markup \musicglyph "noteheads.s1laFunk"
            %
            #note
          #} )

nail = #(define-music-function
          (note)
          (ly:music?)
          #{
            \override NoteHead.stencil = #ly:text-interface::print
            \override NoteHead.text =
            \markup \musicglyph "noteheads.u1doFunk"
            %
            #note
          #} )

teethReed = #(define-music-function
               (note)
               (ly:music?)
            #{
              \override NoteHead.stencil = #ly:text-interface::print
              \override NoteHead.text =
              \markup \musicglyph "noteheads.s2do"
              #note
            #})

ghost = #(define-music-function
               (note)
               (ly:music?)
            #{
              \override NoteHead.stencil = #ly:text-interface::print
              \override NoteHead.text =
              \markup \musicglyph "noteheads.d0miFunk"
              #note
            #})

slap = #(define-music-function
      (note)
      (ly:music?)
    #{
      \override NoteHead.stencil = #ly:text-interface::print
      \override NoteHead.text =
         \markup \musicglyph "noteheads.d2tiWalker"
         %"noteheads.d2tiWalker"
     % \tweak NoteHead.direction #DOWN
      #note
    #})

xH = #(define-music-function
         (note)
         (ly:music?)
         #{
           \override NoteHead.stencil = #ly:text-interface::print
           \override NoteHead.text = \markup \musicglyph "noteheads.s2cross"
           % 
           #note
         #} )

diamondN = #(define-music-function
         (note)
         (ly:music?)
         #{
           \override NoteHead.stencil = #ly:text-interface::print
           \override NoteHead.text = \markup \musicglyph "noteheads.s2harmonic"
           % 
           #note
         #} ) %}

diamondH = #(define-music-function
         (note)
         (ly:music?)
         #{
           \override NoteHead.stencil = #ly:text-interface::print
           \override NoteHead.text = \markup \musicglyph "noteheads.s0harmonic"
           % 
           #note
         #} ) 

punta = #(define-music-function
         (note)
         (ly:music?)
         #{
           \override NoteHead.stencil = #ly:text-interface::print
           \override NoteHead.text = \markup \musicglyph "noteheads.s2tiThin"
           % 
           #note
         #} ) 

stompA = {\override NoteHead.stencil = #ly:text-interface::print 
     \override NoteHead.text = \markup \box \bold \lower #0.95 "A"}

stompB = {\override NoteHead.stencil = #ly:text-interface::print 
     \override NoteHead.text = \markup \box \bold \lower #0.95 "B"}

stompC = {\override NoteHead.stencil = #ly:text-interface::print 
     \override NoteHead.text = \markup \box \bold \lower #0.95 "C"}