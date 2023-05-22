\version "2.24.0"

\score {
  \new Staff {
    \relative c'' {
      \hide NoteHead
      #include "pitch-generator.scm"
      #(generate-lilypond-code '("c" "d" "e"))
    }
  }
}
