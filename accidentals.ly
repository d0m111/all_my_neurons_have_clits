\version "2.24.0"
\language "english"


flatUp = \once \override Accidental.alteration-glyph-name-alist = #' ((-1/2 . "accidentals.flat.arrowup"))
flatDown = \once \override Accidental.alteration-glyph-name-alist = #' ((-1/2 . "accidentals.flat.arrowdown"))
sharpUp =  \once \override Accidental.alteration-glyph-name-alist = #'((1/2 . "accidentals.sharp.arrowup"))
sharpDown = \once \override Accidental.alteration-glyph-name-alist = #'((1/2 . "accidentals.sharp.arrowdown"))
naturalDown = \once \override Accidental.alteration-glyph-name-alist = #'((0 . "accidentals.natural.arrowdown"))
naturalUp = \once \override Accidental.alteration-glyph-name-alist = #'((0 . "accidentals.natural.arrowup"))