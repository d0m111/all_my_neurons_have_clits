\version "2.24.0"
\language "english"

\include "accidentals.ly"
\include "headNotes.ly"
\include "miscelaneas.ly"
\include "dinamics.ly"


eGtr = \new StaffGroup = "Christian Lozano Sedano" \with{
    instrumentName = "Christian (E. Gtr)"
    shortInstrumentName = "E.Gtr"
    
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
   r4 \startStaff
   \octavaUp a'''4\-^\markup{"XVII"} \stopStaff %\hide Rest
   r4 \stopOctava r4  %\undo \hide Rest
   %\hide Staff.Clef
   %2
   %s1
  R1
  %3
   r2 r4
   %s2. 
   \startStaff 
    %\undo \hide Staff.Clef
    %\set Staff.forceClef = ##t \clef treble   
   <<\relative c'''{\hide NoteHead
     \stemDown b,8.[ \stemDown b'16^\markup{"XII"}]
     8.[ g,16]
     }
     \\
     \relative c'''{\hide Stem
   b,8\rest s16 b'16\- s8 s16 b,16\rest
   }>>
   \override TextScript.extra-offset = #'(12 . -10) 
   r4^\markup { 
    {\epsfile #Y #14 #"eGtr.eps" }}  \stopStaff
   \twoLinesStaff \startStaff 
   \override Glissando.style = #'dashed-line
    \override Staff.Glissando.thickness = #'3
    \override TextScript.extra-offset = #'(0 . 0) 

   \xH e,,8([\glissando^\markup{\teeny \box \bold {"plectrum"}} f'16) r16] \stopStaff
   %s4
   r4
   %5
   %s2 
   r2 \fiveLinesStaff \startStaff 
   <<\relative c'{\hide NoteHead \stemDown
     e16 b''8.^\markup{"XII"}
     16 e,,8 s16
     }
   \\
   \relative c'{\hide Stem 
   b'16\rest b'8.\-
   s16 b,8.\rest
   }>> \stopStaff %\hide Staff.Clef
   %6
   %s1
   R1
   %7
   %s2 
   r2 \startStaff %\undo \hide Staff.Clef
    %\set Staff.forceClef = ##t \clef treble   
    <<\relative c'{\hide NoteHead
                    \diamondH  e'8[ s16  <gs,, cs fs>16]
                    8.[ e''16]}
                    \\
                    \relative c'{\hide Stem b'8.\rest \diamondH \stemDown
                     \arpeggioArrowUp <gs, cs fs>16\-\arpeggio s8. b'16\rest}>>
    %8 
    \override TextScript.extra-offset = #'(12 . -12) 
    \diamondN  \arpeggioArrowUp <e b'>4\arpeggio\-^\markup { 
    {\epsfile #Y #14 #"eGtr.eps" }} 
    \stopStaff \twoLinesStaff \startStaff 
    \override TextScript.extra-offset = #'(0 . 0) 
    \override Glissando.style = #'line
    r16\xH \noLedgers  
    <e, a>16^\markup{\teeny \column
                                  {\line{\circle {"5"}}
                                   \line{\circle {"6"}}}}->(\glissando 
    \magnifyMusic 0.75 {<b' e>16)} \yesLedgers r16 \stopStaff %s4 
    r4
    \fiveLinesStaff
    \startStaff
    <<\relative c''{\hide NoteHead 
     \stemDown e,8[ b''8^\markup{"XII"}]
      %9
      8[ s16 e,,16]
      }
      \\
      \relative c''{\hide Stem 
    b8\rest b'8\-
    s8. b,16\rest
    }>>
    <<\relative c''{\hide NoteHead
                   \diamondH a4:32
                   a16:64}
      \\
      \relative c''{\hide Stem 
    \lineDashed \diamondH a4\-^\markup{"VII"} s16}>> r8. \stopStaff r4
    %10
    \startStaff
    \noireNH \octavaUp a''4\-^\markup{"XVII"} \stopStaff  r4 \stopOctava r2  
    %11
    \startStaff
    <<\relative c'{\hide NoteHead 
      \diamondH gs4:32
      gs16:64 }
      \\
      \relative c'{\hide Stem 
    \diamondH \lineDashed gs4\-
    s16}>> r8. \stopStaff r2
    %12
    \startStaff
     \override Glissando.style = #'line
     \xH e,,16.^\markup{\circle{"6"}"XII"}-.->[\glissando \glissSkipOn d8  \magnifyMusic 0.75 {\hide NoteHead \glissandoSkipOff  g,32]}
    r4
    <<\relative c''{\hide NoteHead 
                    d8 \diamondH d,8:32^\markup{\circle{"5"}"V"}
                    d8.:32 d'16}
      \\
      \relative c''{\hide Stem 
    b8\rest \diamondH \lineDashed d,8\-
    s8. b'16\rest}>>
    \stopStaff
    %13
    r2 r4 \startStaff \undo \hide NoteHead
   <<\relative c''{\hide NoteHead
      b32[^\markup{\teeny \box{"dry attack"}} \diamondH <e, a d fs>16_._> s32 8]^\markup{  \box \column{
      \line{\lower #3 \teeny{\bold{"be extra carefull"} "with stomp C,"}}
      \line{\lower #1 \teeny{"the slightliest action will accumulate"}}
      \line{\lower #-1 \teeny {"into the delay buffer"}}}}  
     <e a d f>4 8[ b'8]
     }
     \\
     \relative c''{\hide Stem \stemUp
     b32\rest \diamondH \arpeggioArrowUp <e, a d fs>16.\-\arpeggio
      s8
     s4 
     s8 b'8\rest}>>
    %14
    \stopStaff r2
    %15
    %\hide Staff.Clef
    r2
    \startStaff
   %\undo \hide Staff.Clef
    %\set Staff.forceClef = ##t \clef treble 
    \diamondH gs8.\-[ r16]
    <<\relative c''{\hide NoteHead
                    \tuplet 3/2{e8 gs,,8 8}
                    g16[ e''8] s16
                     }
                     \\
                     \relative c''{\hide Stem
                      \omit TupletBracket \omit TupletNumber \tuplet 3/2{b8\rest \diamondH gs,8\- s8}
                      s16 b'8.\rest
                      }>>
                      \stopStaff r4 \startStaff 
                <<\relative c''{\hide NoteHead
                    \stemDown e,8 b'8^\markup{\circle{"4"}"VII"} \stemNeutral
                    4
                    }
                  \\
                  \relative c''{\hide Stem
                  b8\rest b8\-
                  s4
                  }>>
                  %17
                  \stopStaff r2 r4
                  \startStaff r8[ \noireNH \octavaUp fs'''^\markup{\circle{"1"}"XIV"}]\- 
                  %\hide Staff.Clef
                  
                  %18
                  \stopStaff %\hide Rest 
                  \stopOctava r2   %\undo \hide Rest 
                  r4
                  \startStaff %\undo \hide Staff.Clef 
                  %\set Staff.forceClef = ##t \clef treble 
                  
                  <<\relative c''{\hide NoteHead 
                    \stemDown g8 b'8^\markup{\circle {"2"} XII}
                    8[ g,8]
                    }
                  \\
                  \relative c''{\hide Stem 
                  b8\rest b'8\- 
                  s8 b,8\rest}>>
                  r8[ \diamondH e,8\-^\markup{\circle{"3"}"IX"}]
                  <<\relative c''{\hide NoteHead
                                 b8 \diamondH <gs, cs fs>8
                                 16 b'8 s16}
                    \\
                    \relative c''{\hide Stem
                  b8\rest \diamondH \arpeggioArrowUp <gs, cs fs>8\arpeggio\-
                  s16 b'8.\rest
                  }>>
                  %20
                  R1^\markup{"ver como le hice aca"}
                  %\hide Staff.Clef
                  %21
                  \stopStaff r4 \startStaff
                  %\undo \hide Staff.Clef
                  %\set Staff.forceClef = ##t \clef treble
                  <<\relative c''{\hide NoteHead
                    \diamondH \tuplet 3/2{b8 b g,8}
                    8[ b'8]}
                    \\
                    \relative c''{\hide Stem
                     \diamondH \omit TupletBracket \omit TupletNumber \tuplet 3/2{b8\rest b8\rest g,8\-}
                    s8 b'8\rest} >>
                  \stopStaff r4
                  %22
                  r2 \startStaff \arpeggioArrowUp \diamondH <gs,, cs>8\arpeggio\-[ r8] \stopStaff s4
                  %23
                  r4 \startStaff <<\relative c''{\hide NoteHead 
                                   b8 \diamondH <e, a d>8^\markup{"VII"}
                                   4
                                   16 b'8 s16
                                   }
                                   \\
                                   \relative c''{\hide Stem 
                                  b8\rest \diamondH \arpeggioArrowUp <e, a d>8\arpeggio\-
                                  s4
                                  s16 b'8.\rest
                                  }>>
                                  \stopStaff
                 %24
                 R1
                %25
                r4 \startStaff <<\relative c''{\hide NoteHead \stemDown
                                                   b16 \noireNH b'8^\markup{"XII"} s16
                                                   b4
                                                   b8 b,8}
                                                   \\
                                                   \relative c''{\hide Stem
                                                                 b16\rest b'8.\-
                                                                 s4. b,8\rest}>>
                 %26 
                 \stopStaff r2 \startStaff
                 <<\relative c''{\hide NoteHead \stemDown
                                    b16 \noireNH b'8^\markup{"XII"} s16
                                    b8 b,8}
                                   \\
                                    \relative c''{\hide Stem
                                    b16\rest b'8.\-
                                   s8 b,8\rest}>> \stopStaff
                 %27
                 r2 r4 \startStaff <<\relative c''{\hide NoteHead \stemUp
                                                   b8[ s16 \diamondH gs,16] 
                                                   %28
                                                   g8[ b'8]}
                                                   \\
                                                   \relative c''{\hide Stem
                                                                 b8.\rest \diamondH gs,16\-
                                                                 %28
                                                                 s8 b'8\rest}>> \stopStaff
                 r4 r4 \startStaff \octavaUp \noireNH a'''4\-^\markup{"XVII"}
                 %29
                 \stopStaff %\hide Rest  
                 \stopOctava R1  %\undo \hide Rest 
                 %r2 r4
                 R1 %30
                 R1 %31
                 %32
                 r2 \startStaff \diamondN bqs,4\-^\markup{"VII"} \stopStaff %\hide Rest 
                 r4 %\undo \hide Rest 
                 \stopStaff r4
                 %33
                 r4 \startStaff \diamondH \arpeggioArrowUp <gs,, cs fs>8\arpeggio\- r8
                 \xH \arpeggioArrowUp <g c f>16\arpeggio-. r8. 
                 %34
                 \diamondN \arpeggioArrowUp <gqf cqf fqf>4\arpeggio\- \stopStaff %\hide Rest 
                 r2 %\undo \hide Rest 
                 \startStaff \arpeggioArrowUp <g c>4\arpeggio\- \stopStaff
                 %35
                 %\hide Rest 
                 r4 \undo \hide Rest \startStaff <<\relative c''{\hide NoteHead \stemNeutral
                                                   b8[ s16 \diamondH e16^\markup{\circle{"2"}"V"}] 
                                                   \override TextScript.extra-offset = #'(12 . -12) 
                                                   4^\markup {{\epsfile #Y #14 #"eGtr.eps" }} }
                                                   \\
                                                   \relative c''{\hide Stem
                                                                 b8.\rest \diamondH e16\-
                                                                 s4}>> \stopStaff \twoLinesStaff \startStaff
                 \override DurationLine.thickness = 1
                 r16^\markup{\teeny \box{\column{
                 \line \lower #3 {\bold{"scrub"} "string with the"}
                 \line \lower #1 {"side of the plectrum"}}}}  \noLedgers \xH \lineZig <e' a>8\-^\markup{\column{
                 \line{\circle{"5"}}
                 \line{\circle{"6"}"XII"}}} r16 \hide Staff.Clef
                 %36
                 \override TextScript.extra-offset = #'(-4.5 . -8)
                 r16^\markup {{\epsfile #Y #14 #"eGtr.eps" }} \override TextScript.extra-offset = #'(0 . -13)
                f->-.^\markup{\circle{"6"}"V"}\glissando \hide NoteHead a16 \undo \hide NoteHead r16 
                 \noLedgers 
                 \override TextScript.extra-offset = #'(0 . 0)
                 r32^\markup{\teeny \box{"blocked all strings"}}
                 \lineDashed  
                 \override DurationLine.thickness = 4
                 g'8..\-^\markup{\circle{"1"}} \stopStaff \fiveLinesStaff \startStaff
                 \diamondH \lineDashed \yesLedgers 
                 \undo \hide Staff.Clef
                \set Staff.forceClef = ##t \clef treble  
                 c,8.:32\-^\markup{\circle{"3"}"V"}[ r16]
                 \stopStaff r4
                 %37
                 \startStaff
                 <<\relative c''{\stemDown c8\-^\markup{\circle{"4"}"X"}[ b8\rest]}
                   \\
                   \relative c''{\dalniente s16\< \dalniente s16\> s8\!}>>
                 \stopStaff r4 r2
                 %38
                \undo \hide Stem
                 \twoLinesStaff \startStaff \override TextScript.extra-offset = #'(-6 . -10)
                                              \slap \noLedgers c,16[-.->^\markup {{\epsfile #Y #14 #"eGtr.eps" }}^\markup{\teeny \box{\column{
                                               \line \lower #3 {"slap (dry, fast)" \bold {"all strings"} "with the palm"}
                                               \line \lower #1 {"of your hand in between pickups"}}}} \parenthesize r8.]
                                              \stopStaff r4 r2
                 %39
                 r4 \fiveLinesStaff \startStaff r8 
                 \override TextScript.extra-offset = #'(0 . 0)
                 \diamondH fs'16-.\-^\markup{\circle{"2"}"VII"} fs16-.\- \stopStaff %\hide Rest 
                 r4 %\undo \hide Rest
                 \startStaff 
                 <<\relative c''{\hide NoteHead
                   b8 \diamondH d,8^\markup{\circle{"5"}"V"}
                   8[ b'8]}
                   \\
                   \relative c''{\hide Stem b8\rest \diamondH d,8\-
                 s8 b'8\rest}>> r16 \diamondH \arpeggioArrowUp \yesLedgers <gs,, cs fs b>8\-^\markup{"IV"} \arpeggio r16
                 r16 \arpeggioArrowUp <b e a cs>8\arpeggio\-^\markup{"II"} 
                 \override TextScript.extra-offset = #'(-0.5 . -10)
                 r16^\markup {{\epsfile #Y #14 #"eGtr.eps" }} \stopStaff \twoLinesStaff
                 \startStaff 
                 r16 \xH 
                 \override TextScript.extra-offset = #'(0 . 0)
                 \noLedgers  <e a>16-.->\glissando(^\markup{\teeny \box{\column{
                 \line \lower #3 { \bold {"scrub"}"strings with the"}
                 \line{"side of the plectrum"}}}} <b' e>16-.->\glissando)( \hide NoteHead <e, a>16) \undo \hide NoteHead
                 r32 <e a>16\glissando-.->( \hide NoteHead <b' e>16) r16.
                 <<\relative c''{\hide NoteHead \stemDown
                                 \noLedgers
                   b16 \xH g'8^\markup{\circle{"1"}} s16
                   g4 
                   16 b,8 s16}
                   \\
                   \relative c''{\hide Stem 
                                 \noLedgers
                 b16\rest \xH \lineDashed g'8.\-
                 s4
                 s16 b,8.\rest
                 }>> \stopStaff
      %43
      r2 r4 \fiveLinesStaff \startStaff
      \tuplet 3/2{r8[ r8 \undo \hide NoteHead \diamondH \yesLedgers f,8]-.\laissezVibrer}
      \stopStaff \twoLinesStaff \startStaff 
      \override TextScript.extra-offset = #'(-5.5 . -10)
      \parenthesize r8^\markup {{\epsfile #Y #14 #"eGtr.eps" }}[  
      \xH \noLedgers \override TextScript.extra-offset = #'(0 . 0) \dalNienteExpo e'8\<](\glissando^\markup{\circle{"6"}}
      b'16-.[\!) r8 e,16-.->] \stopStaff r2
      %44
      R1
      %45
      r2 \fiveLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \stemNeutral
                                                   b8[  \noireNH b'8^\markup{"XII"}] 
                                                   16 b,8 s16}
                                                   \\
                                                   \relative c''{\hide Stem
                                                                 b8\rest \noireNH b'8\-
                                                                 s16 b,8.\rest}>> 
      %46
      \octavaUp \noireNH \yesLedgers a''4\-^\markup{"XVII"} \stopStaff %\hide Rest 
      r4 \stopOctava %\undo \hide Rest 
      r2
      %47
       r2 r4 \twoLinesStaff \startStaff 
       \override TextScript.extra-offset = #'(-5 . -10)
       \tuplet 3/2{r8[^\markup {{\epsfile #Y #14 #"eGtr.eps" }} r8 \xH \noLedgers 
                   \override TextScript.extra-offset = #'(0 . 0)
                   \slurDown
                   e,,8\glissando-.->](} \hide Staff.Clef
       \override TextScript.extra-offset = #'(-5 . -10) \stemUp
       \hide NoteHead b'16)[^\markup {{\epsfile #Y #14 #"eGtr.eps" }} r8.]
       \stopStaff r4 r2
       %49
       r4 \fiveLinesStaff \startStaff
       \undo \hide NoteHead
       \override TextScript.extra-offset = #'(0 . 0)
       r16[ \xH <e, a>8->(\glissando^\markup{\column{
       \line{\circle{"5"}}
       \line{\circle{"6"}"XII"}}} \hide NoteHead <a, d>16)] \stopStaff r2
       %50
       R1
       %51
       r4 r2 \twoLinesStaff \startStaff 
      \override TextScript.extra-offset = #'(-5 . -10)
      r16^\markup {{\epsfile #Y #14 #"eGtr.eps" }}
     \undo \hide NoteHead \xH \noLedgers 
      \override TextScript.extra-offset = #'(0 . -13) 
      e'16-.->(\glissando^\markup{\box {\column {
                                  \line \lower #2 {\bold{"scrub"}" with the side"}
                                   \line{"of the plectrum"}}}}^\markup{\circle{"6"}}
                                  \hide NoteHead b'16) r16 \stopStaff
      %52
      r4 \fiveLinesStaff \startStaff \undo \hide NoteHead \stemNeutral
      \override TextScript.extra-offset = #'(0 . 0) 
       \undo \hide Staff.Clef
       \set Staff.forceClef = ##t \clef treble  
      <<\relative c''{\hide NoteHead \stemDown
        b8[ s16 \diamondH <b e gs>16]^\markup{"IX"} 
        4 16 b8.}
        \\
        \relative c''{\hide Stem b8.\rest
      \diamondH \arpeggioArrowUp <b e gs>16\arpeggio\-
      s4 s16 b8.\rest
      }>> \stopStaff 
      %53-54
      R1 \hide Staff.Clef
      R1
      %55 
      \twoLinesStaff \startStaff
      \override TextScript.extra-offset = #'(-6 . -10)
      r8^\markup {{\epsfile #Y #14 #"eGtr.eps" }}
      \override TextScript.extra-offset = #'(0 . 0) 
      e,16-.->(\glissando^\markup{\box {\column {
                                  \line \lower #2 {\bold{"scrub"}" with the side"}
                                   \line{"of the plectrum"}}}}^\markup{\circle{"6"}}
      \hide NoteHead b'16)  \stopStaff r4 r2
      %56
      R1
      %57
       \undo \hide Staff.Clef
        %\set Staff.forceClef = ##t \clef treble  
      \fiveLinesStaff
      \startStaff
      <<\relative c''{\hide NoteHead 
        b8[  \diamondH <gs, cs fs b>8^\markup{"IV"}]
        8 b'8}
        \\
        \relative c''{\hide Stem b8\rest
      \diamondH \arpeggioArrowUp <gs, cs fs b>8\arpeggio\-
      s8 b'8\rest
      }>> \stopStaff s2
      %58
      s4 \twoLinesStaff \startStaff
      \override TextScript.extra-offset = #'(-6 . -10)
      r8^\markup {{\epsfile #Y #14 #"eGtr.eps" }}
      \override TextScript.extra-offset = #'(0 . 2) 
      \undo \hide NoteHead
      e,16-.->(\glissando^\markup{\box {\column {
                                  \line \lower #2 {\bold{"scrub"}" with the side"}
                                   \line{"of the plectrum"}}}}
      \hide NoteHead
      \override TextScript.extra-offset = #'(-6.5 . 0)
       %\undo \hide Staff.Clef
       
      b'16)^\markup{\circle{"6"}} \stopStaff \fiveLinesStaff \startStaff
        \set Staff.forceClef = ##t \clef treble  
      <<\relative c''{\hide NoteHead 
        b8[ s16 \diamondH fs16]^\markup{\circle{"2"}"VII"} 
        8. \stopStaff \twoLinesStaff \startStaff \xH
         \override TextScript.extra-offset = #'(0 . 3) 
        \noLedgers
        b''16^\markup{\column{\line{\circle{"5"}
        \circle{"6"}}}}
        %59
        g,,4
        \noLedgers
        f16[ b8] s16}
        \\
        \relative c''{\hide Stem b8.\rest
      \diamondH fs16\-
      s8. \stopStaff \twoLinesStaff \startStaff \xH 
      \override TextScript.extra-offset = #'(-5.5 . -15)
      \override Glissando.style = #'dashed-line
      
      <f'' b>16^\markup {{\epsfile #Y #14 #"eGtr.eps" }}\glissando \glissSkipOn 
      \override TextScript.extra-offset = #'(0 . 0)
      <a,, d>4^\markup{ \box {\column{
      \line \lower #3 {"the plectrum should grab both strings" }
      \line \lower #1 {"glidding slowly, with a bit of pression, "}
      \line \lower #-1 {"producing a granular sound."}}}} \glissandoSkipOff
      \noLedgers
      <c, f>16 b'8.\rest \hide Staff.Clef
      }>> \stopStaff s2
      %60
      r2
      \fiveLinesStaff \startStaff
      \undo \hide Staff.Clef
      \set Staff.forceClef = ##t \clef treble  
      <<\relative c''{\hide NoteHead \stemDown
        b8[ \diamondH <fs b e gs>8]^\markup{"IX"} 
        4 
        %61
        <f b e g>16 b8 s16}
        \\
        \relative c''{\hide Stem b8\rest
      \diamondH \arpeggioArrowUp <fs b e gs>8\arpeggio\-
      s4 
      %61
      s16 b8.\rest
      }>> \stopStaff r4
      \startStaff 
      <<\relative c''{\hide NoteHead \stemDown
        b8[ \diamondH <a d fs>8]^\markup{"VII"} 
        4 
       }
        \\
        \relative c''{\hide Stem b8\rest
      \diamondH \arpeggioArrowUp <a d fs>8\arpeggio\-
      s4 
      }>> \stopStaff
      %62
      R1
      %63
      r2
      \startStaff
      <<\relative c''{\hide NoteHead \stemDown
        b8[ \diamondH <fs b e gs>8]^\markup{"IX"} 
        4 
        %64
        <f b e g>16 b8 s16}
        \\
        \relative c''{\hide Stem b8\rest
      \diamondH \arpeggioArrowUp <fs b e gs>8\arpeggio\-
      s4 
      %64
      s16 b8.\rest
      }>> 
      <<\relative c''{\hide NoteHead \stemDown
        b8[ s16 \xH <cs, fs b e>16]^\markup{"IX"} 
        16[ b'8] s16}
        \\
        \relative c''{\hide Stem b8.\rest
      \arpeggioArrowUp \xH <cs, fs b e>16\arpeggio\-
      s16 b'8.\rest
      }>> \stopStaff r4
      %65
      \startStaff
      <<\relative c''{\hide NoteHead 
        b8[ \diamondH <gs, cs>8]^\markup{"IV"} 
        8. \xH \slurDown <e' a>16-.->(^\markup{\column{\line{\circle{"5"}}\line{\circle{"6"}"XII"}}}
        <a, d>16[) b'8] s16}
        \\
        \relative c''{\hide Stem b8\rest
      \diamondH \arpeggioArrowUp <gs, cs>8\arpeggio\-
      s8. \xH <e' a>16\glissando
      \hide NoteHead \noLedgers  <a, d>16[ b'8.\rest]
      }>> \stopStaff r4
      %66
      r2 \startStaff 
      <<\relative c''{\hide NoteHead 
        b8[ \diamondH <b, e>8]^\markup{"VII"} 
        8[ b'8]
        }
        \\
        \relative c''{\hide Stem b8\rest
      \diamondH \arpeggioArrowUp <b, e>8\arpeggio\-
      s8 b'8\rest
      }>> \stopStaff 
      %67
      R1
      %68
      \twoLinesStaff  \startStaff 
       \override TextScript.extra-offset = #'(-5 . -10)
       \undo \hide NoteHead
      r16^\markup {{\epsfile #Y #14 #"eGtr.eps" }}  \xH 
      \override TextScript.extra-offset = #'(0 . -10)
       \noLedgers  <e, a>16-.->\glissando(^\markup{\teeny \box{\column{
       \line \lower #3 { \bold {"scrub"}"strings with the"}
       \line{"side of the plectrum"}}}} <b' e>16-.->\glissando)( \hide NoteHead <e, a>16) \undo \hide NoteHead
       \stopStaff r4 r4 \fiveLinesStaff \startStaff
       <<\relative c''{\hide NoteHead 
        b16[ \diamondH <b, e>8]^\markup{"VII"} s16
        <b e>8[ b'8]
        }
        \\
        \relative c''{\hide Stem b16\rest \stemUp
      \diamondH \arpeggioArrowUp <b, e>8.\arpeggio\-
      s8 b'8\rest
      }>> \stopStaff r4 \startStaff
       <<\relative c''{\hide NoteHead 
        b8[ s16 \diamondH fs,16]
        4 
        %70
        f16[ b'8] s16
        }
        \\
        \relative c''{\hide Stem b8.\rest
      \diamondH  fs,16\-
      s4 
      %70
      s16 b'8.\rest
      }>>\stopStaff r4 r2
      %71
      r2
      \startStaff
      s2
      %72-73_74_75_76
      s1*5
      %77
      \stopStaff s2 \twoLinesStaff
      \startStaff
      <<\relative c''{\hide NoteHead \stemDown
                                 \noLedgers
                                 \override TextScript.extra-offset = #'(-5 . -10)          
                   b8^\markup {{\epsfile #Y #14 #"eGtr.eps" }} 
                   \override TextScript.extra-offset = #'(0 . 0)  
                   \xH g'8^\markup{\circle{"1"}}
                   g4 
                   \override TextScript.extra-offset = #'(-5.2 . -10)          
                   8^\markup {{\epsfile #Y #14 #"eGtr.eps" }}
                    16 b,16}
                   \\
                   \relative c''{\hide Stem 
                                 \noLedgers
                 b8\rest \xH \lineDashed g'8\-
                 s4
                 \hide Staff.Clef
                 s8. b,16\rest
                 }>> \stopStaff \fiveLinesStaff \startStaff
                 <<\relative c'{\hide NoteHead
                                \override TextScript.extra-offset = #'(0 . 0) 
                                 \tuplet 3/2{b'8 8 \xH <e, a>8_>^\markup{"XII"}}
                                 <a, d>16_.[ \diamondH <b e a cs>8] s16 }
                   \\
                   \relative c'{\hide Stem \omit TupletBracket \omit TupletNumber \yesLedgers
                    \undo \hide Staff.Clef
                    \set Staff.forceClef = ##t \clef treble
                 \tuplet 3/2{b'8\rest b8\rest \xH <e, a>8\glissando(}
                 \hide NoteHead \noLedgers <a, d>16) 
                 \undo \hide NoteHead 
                 \diamondH \yesLedgers \stemUp
                 \arpeggioArrowUp <b e a cs>8.\arpeggio\-}>>
     \stopStaff \twoLinesStaff s4
     %79 
     s4 \startStaff 
     <<\relative c''{\hide NoteHead \stemDown
                                 \noLedgers
                                 \override TextScript.extra-offset = #'(-5 . -8)          
                   b8^\markup {{\epsfile #Y #14 #"eGtr.eps" }}[ s16
                   \override TextScript.extra-offset = #'(0 . 0)  
                   \xH g'16^\markup{\circle{"2"}}]
                   g4 \stemUp
                   16 \stopStaff \fiveLinesStaff \startStaff 
                   \override TextScript.extra-offset = #'(0 . 1.5)  
                   \diamondH c,,8^\markup{\circle{"5"}"III"} s16  
                   }
                   \\
                   \relative c''{\hide Stem 
                                 \noLedgers
                 b8.\rest \xH \lineDashed g'16\-
                 s4 \stemUp
                 s16 \stopStaff \fiveLinesStaff \startStaff \yesLedgers
                 \diamondH c,,8.\-
                 }>> \stopStaff \twoLinesStaff \startStaff
   <<\relative c''{ \hide NoteHead
                     \override TextScript.extra-offset = #'(-5 . -10)      
     b8[^\markup {{\epsfile #Y #14 #"eGtr.eps" }} \noLedgers \xH s16
     \override TextScript.extra-offset = #'(-8 . 0)    
     \override DurationLine.thickness = 1
     <e, a>16]^\markup{ \box{\column{
                 \line \lower #3 {\bold{"scrub"} "strings with the"}
                 \line \lower #1 {"side of the plectrum"}}}} 
     \override TextScript.extra-offset = #'(-5 . 0)  
     16[^\markup{\column{
                 \line{\circle{"5"}}
                 \line{\circle{"6"}"XII"}}} b'8 
     <e, a>16]
     16[  b'8 <e, a>16]
     8[ b'16  <e, a>16]
     %81
     4
     \tuplet 3/2{b'8 b8 <e, a>8}
     b'8[  <e, a>8] 
      16[ b'8] s16 
      %82
       b16[ <e, a>8  b'16]
       b16[   <e, a>8]  s16
     <e a>16[ b'8] s16
     }
     \\
     \relative c''{\hide Stem \stemUp
     b8.\rest[ 
     \override DurationLine.thickness = 1
     \lineZig \noLedgers
     \xH 
     <e, a>16]\-
     s16 b'8\rest 
     \lineZig
     <e, a>16\-
     s16 b'8\rest 
     \lineZig
     <e, a>16\-
     s8 b'16\rest
     \lineZig
     <e, a>16\-
     %81
     s4 \omit TupletBracket \omit TupletNumber 
     \tuplet 3/2{b'8\rest b8\rest \lineZig <e, a>8\-}
     b'8\rest[ \lineZig  <e, a>8\-] 
      s16 b'8.\rest
      %82
      b16\rest[ \lineZig  <e, a>8\-]  b'16 \rest
     b16\rest[ \lineZig  <e, a>8.\-]  
     s16 b'8.\rest
   }>> \stopStaff r4
   %83
   r2 \fiveLinesStaff \startStaff
   <<\relative c''{\hide NoteHead \stemDown
        b8[ s16 \diamondH <fs' cs a>16]
        4 
       <f c a>8 16 b,16}
        \\
        \relative c''{\hide Stem b8.\rest
      \diamondH \arpeggioArrowDown <fs' cs a>16\arpeggio\-
      s4 
      %64
      s8. b,16\rest
      }>> \stopStaff r4 r2
      %85
      r4 \startStaff
      <<\relative c''{\hide NoteHead \stemDown
        b16[  \diamondH <cs a e b>8] s16
        4 
       16[ b8] s16}
        \\
        \relative c''{\hide Stem 
                      b16\rest \diamondH \arpeggioArrowDown <cs a e b>8.\arpeggio\-
      s4 
      s16 b8.\rest
      }>> \stopStaff
      %86
      r2 \twoLinesStaff \startStaff 
      <<\relative c''{\hide NoteHead \stemDown
                                 \noLedgers
                                 \override TextScript.extra-offset = #'(-5 . -10)          
                   b16^\markup {{\epsfile #Y #14 #"eGtr.eps" }}[ 
                   \override TextScript.extra-offset = #'(0 . -13)  
                   \xH g'8^\markup{\circle{"3"}}] s16
                   g4 
                   \override TextScript.extra-offset = #'(-5 . -10)  
                   16^\markup {{\epsfile #Y #14 #"eGtr.eps" }} [ \stopStaff \fiveLinesStaff \startStaff 
                   \override TextScript.extra-offset = #'(0 . 1.5)  
                   \diamondH <e, a cs>8^\markup{"II"}] s16  
                   8[ b'8]
                   }
                   \\
                   \relative c''{\hide Stem 
                                 \noLedgers
                 b16\rest \xH \lineDashed g'8.\-
                 s4 
                 \hide Staff.Clef
                 s16 \stopStaff \fiveLinesStaff \startStaff \yesLedgers
                 \undo \hide Staff.Clef
                 \set Staff.forceClef = ##t \clef treble
                 \diamondH \arpeggioArrowUp <e, a cs>8.\-\arpeggio 
                 s8 b'8\rest
                 }>> \stopStaff r2
     %88
     \fiveLinesStaff \startStaff
    <<\relative c''{ \hide NoteHead
                     %\noLedgers    
     b8[ \xH s16
     \override DurationLine.thickness = 1
     <e, a>16:64]
     \override TextScript.extra-offset = #'(-4 . 0)   
     16_._>[^\markup{\column{\line{\circle{"5"}}
     \line{\circle{"6"}}}} b'8] s16
      }
     \\
     \relative c''{\hide Stem \stemUp
      \noLedgers b8.\rest[ 
     \xH 
     <e, a>16]
     16 b'8.\rest }>> \stopStaff r4
    \override TextScript.extra-offset = #'(-5 . -10)  
    \twoLinesStaff
    \startStaff r32^\markup {{\epsfile #Y #14 #"eGtr.eps" }}  
     \override TextScript.extra-offset = #'(0 . -13)    
    e16.\glissando(^\markup{ \box{\column{
                 \line \lower #3 {\bold{"scrub"} "strings with the"}
                 \line \lower #1 {"side of the plectrum"}}}}  \hide NoteHead b'16) r16
    %89
    \stopStaff r4 \fiveLinesStaff \startStaff 
    <<\relative c''{\hide NoteHead \stemDown \tupletDown
                    \tuplet 3/2{b8 b8 b'8^\markup{\circle{"2"}"XII"}}
                    4
                    4
                    %90
                    4
                    8[ 
                     \override TextScript.extra-offset = #'(-6 . 0)  
                    16^\markup{\box \column{\line \lower #3 {"do not reattack"}
                    \line \lower #1 {"the note"}}}( s32 e,32)]}
      \\
      \relative c''{\hide Stem
                   \omit TupletBracket \omit TupletNumber 
                   \tuplet 3/2{b8\rest b8\rest b'8\-}
                   s2
                   %90
                   s4
                   s8 \parenthesize b16.\glissando \hide NoteHead e,32
    }>>
    <<\relative c''{\hide NoteHead 
                    \override TextScript.extra-offset = #'(0 . -4)  
        \diamondH <fs, b e gs>4^\markup{"VII"}
        4 
       <f b e g>16[ b8] s16}
        \\
        \relative c''{\hide Stem \undo \hide NoteHead
      \diamondH \arpeggioArrowUp <fs, b e gs>4\arpeggio\-
      s4 
      s16 b8.\rest
      }>> 
      <<\relative c''{\hide NoteHead 
                      \override TextScript.extra-offset = #'(0 . 0)  
        \diamondH cs,4:32^\markup{\circle{"5"}"IV"}
        cs16:32[ \stopStaff \twoLinesStaff \startStaff \stemDown
        \xH g''8^\markup{\circle{"2"}} s16] 
        g4
        %92
        g4 
        g4
        8 \diamondH <b,, e a cs>8
        4
        %93
       <b e a c>4
        }
        \\
        \relative c''{ \hide Stem \stemUp
      \diamondH \lineDashed cs,4:32\-
      s16 \lineDashed \xH \stemDown \noLedgers g''8.\-] 
        s4
        %92
        s4 
        s4
        s8 \stopStaff \fiveLinesStaff \startStaff \yesLedgers
        \diamondH \arpeggioArrowUp <b,, e a cs>8\-\arpeggio
        s4
        %93
        s4}>> \stopStaff \twoLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \stemDown \noLedgers
                      \override TextScript.extra-offset = #'(-5 . -12) 
        \xH g'4^\markup {{\epsfile #Y #14 #"eGtr.eps" }} 4 4
        %94
        4 4 
        16 b,8 \stopStaff \fiveLinesStaff \startStaff \diamondH <b, e a cs>16
        4 \stemNeutral
        <b e a c>16[ <gs cs fs as>8] s16
        8 b'8}
        \\
        \relative c''{\hide Stem 
                      \override TextScript.extra-offset = #'(0 . 0) 
      \lineDashed \xH g'4\-^\markup{\circle{"1"}} s2
      %94
      s2 
      s16 b,8\rest \stopStaff \fiveLinesStaff \startStaff 
      \set Staff.forceClef = ##t \clef treble
      \diamondH \arpeggioArrowUp <b, e a cs>16\-\arpeggio
      s4 \stemUp
      s16 \arpeggioArrowUp <gs cs fs as>8.\-\arpeggio
      s8 b'8\rest
      }>> \stopStaff r4 \startStaff
      <<\relative c''{\hide NoteHead 
        \tuplet 3/2{b8 \diamondH <e, a cs fs>8 8}
        %96
        <e a c f>4 4}
      \\
      \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{b8\rest \diamondH \arpeggioArrowUp <e, a cs fs>4\-\arpeggio}
      s2}>> \stopStaff r2
      %97
      r4 \twoLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \stemDown \tupletDown \noLedgers
                      \override TextScript.extra-offset = #'(-5 . -10)      
                    \tuplet 3/2{b8^\markup {{\epsfile #Y #14 #"eGtr.eps"}}  
                                 \override TextScript.extra-offset = #'(0 . 0)  
                                \xH g'8^\markup{\circle{"1"}} 8}
                    4}
      \\
      \relative c''{\hide Stem
                   \omit TupletBracket \omit TupletNumber 
                   \tuplet 3/2{b8\rest \xH \lineDashed g'4\-}
                   s4
    }>> \stopStaff r4
    %98
    r2 r4 \fiveLinesStaff \startStaff
    <<\relative c''{\hide NoteHead \stemDown
        b8[ \diamondN <e, a cs fs>8]^\markup{"VII"} 
        <e a c f>4 \stemNeutral
        fs4:32^\markup{\circle{"4"}"IV"}}
        \\
        \relative c''{\hide Stem \set Staff.forceClef = ##t \clef treble 
                      b8\rest
      \diamondN \arpeggioArrowUp <e, a cs fs>8\arpeggio\-
      s4 
      \lineDashed fs4\- 
      }>> \stopStaff r4 \startStaff \undo \hide NoteHead
      \tuplet 3/2{r8[ r8 \xH <a, d>8-.->\-]}
      %100
      \stopStaff %\hide Rest
      r2 %\undo \hide Rest 
      r4 \neckGtr \startStaff 
      \override TextScript.extra-offset = #'(-3 . -19.5)    
      r32^\markup {{\epsfile #Y #20 #"neck-gtr.eps"}}   
      \override TextScript.extra-offset = #'(0 . -20)  
      \dalNienteExpo <a d>32\<\glissando(^\markup{ \box{\column{
                 \line \lower #3 {"with the palm"}
                 \line \lower #1 {"of the"\bold{"left"} "hand"}}}} \dalNienteExpo <c f>16->\glissando\> \glissSkipOn <g d>8
      \hide NoteHead \glissandoSkipOff \noLedgers  
      %101
      <e, a>16)[ r8.\!] \stopStaff r4 r4 \fiveLinesStaff \startStaff \undo \hide NoteHead \yesLedgers
      \set Staff.forceClef = ##t \clef treble 
      r8[ \diamondH \arpeggioArrowUp <fs' b>8\arpeggio-.->\-] \stopStaff %\hide Rest 
      %102
      r4 %\undo \hide Rest 
      r4 \startStaff
      <<\relative c''{\hide NoteHead
        b8[  \diamondN <fs, b e>8]^\markup{"II"}_>_. 
        8[ s16 b'16]}
        \\
        \relative c''{\hide Stem b8\rest
      \diamondN \arpeggioArrowUp <fs, b e>8\arpeggio\-
      s8. b'16\rest
      }>> \stopStaff
      %103
      R1
      %104 
      \neckGtr \startStaff 
      \override TextScript.extra-offset = #'(-5 . -19.5)    
      r8^\markup {{\epsfile #Y #20 #"neck-gtr.eps"}}   
      \override TextScript.extra-offset = #'(0 . 0)  
      \noLedgers \xH
      \dalNienteExpo <a d>32\<\glissando(^\markup{ \box{\column{
                 \line \lower #3 {"with the palm of the"}
                 \line \lower #1 {\bold{"left"} "hand"}}}} 
      \dalNienteExpo <c f>16.->\glissando\> 
      \hide NoteHead <e, a>16)[ r8.\!] \stopStaff r4
      \fiveLinesStaff \startStaff <<\relative c''{\hide NoteHead
                                    b8[ s16. \diamondH fs32]
                                    %105
                                    f4 4}
                                    \\
                                    \relative c''{\hide Stem
                                                  \set Staff.forceClef = ##t \clef treble 
                                    b8..\rest \diamondH fs32\-
                                    s2
                                    }>> \stopStaff r4 r4
       %106
       \undo \hide NoteHead \startStaff
       r32[ \arpeggioArrowUp \diamondH <e a d>8.\-\arpeggio^\markup{"VII"} r32]
       \stopStaff r4 r2
       %107
       \yesLedgers
       \startStaff  r16[ \diamondH \lineDashed cs'8.:32\-]^\markup{\circle{"5"}"IV"} \stopStaff %\hide Rest 
       r4 r4
       \startStaff \lineDashed fs4:32\-^\markup{\circle{"4"}"IV"} \stopStaff 
       %108
       r4 %\undo \hide Rest 
       \startStaff 
       \arpeggioArrowUp <fs, b e>8\arpeggio\- \lineDashed <fs b e>8:32\- <fs b e>16-.->[ r8.] \stopStaff r4
       %109
       r2 \startStaff \arpeggioArrowUp <fs b>4\arpeggio\- \stopStaff %\hide Rest 
       r4
       \stopStaff
       %110
       r4 \startStaff \tuplet 3/2{\undo \hide Rest r8[ \lineDashed <fs b e>4:32\-]} \stopStaff %\hide Rest 
       r2 %\undo \hide Rest
       %111
       \twoLinesStaff \startStaff
       \override TextScript.extra-offset = #'(-5 . -10)    
      r16^\markup {{\epsfile #Y #14 #"eGtr.eps"}}[   \noLedgers
        \xH <e a>16\glissando( <b' e>16\glissando \hide NoteHead <e, a>16-.)] \yesLedgers \stopStaff
        \fiveLinesStaff \startStaff
        <<\relative c''{\hide NoteHead \stemDown
        b8[ s16  \diamondH <e, a d>16]^\markup{"VII"} 
        4 
       8[ b'8] }
        \\
        \relative c''{\hide Stem 
                      b8.\rest \diamondH \arpeggioArrowUp <e, a d>16\arpeggio\-
      s4 
      s8 b'8\rest
      }>> \stopStaff
      %112,113
      R1*2
      %114
      \time 3/4
      r4 r4 \startStaff \undo \hide NoteHead
      \override TextScript.extra-offset = #'(0 . 1.5)  
      r16[ \diamondH \arpeggioArrowUp <fs b e a>8\arpeggio\-^\markup{"IX"} \stopStaff \twoLinesStaff \startStaff
      \override TextScript.extra-offset = #'(-6.5 . -3) 
      \parenthesize r16^\markup{\box \column{
                        \line \lower #3 {"stomp C should catch" \bold {"just"}}
                        \line \lower #1 {"the resonance of the chord"}}}]
      %115
      \time 4/4
      \parenthesize r4 \stopStaff \neckGtr \startStaff
       \override TextScript.extra-offset = #'(-3 . -24.5)  
      \parenthesize r8^\markup{{\epsfile #Y #20 #"neck-gtr.eps"}}
      <<\relative c'{ \noLedgers \hide NoteHead
        \xH \dalNienteExpo \slurDown
        <g d a>8\glissando(\<^\markup{\box{\column{
                                      \line \lower #3 {"with the palm of your hands"}
                                      \line \lower #1 {"on strings" \circle{"6"} \circle{"5"}", and" \circle{"4"}}
                                      \line \lower #-1 {\bold{"alternate hands"}}}}} 
         <c' g d>16\pp)_._>\laissezVibrer 
        \parenthesize r8.
        s4
        \parenthesize r8 \slurUp <a, e b>8(\glissando \glissSkipOn
        <d' a e>8[ \glissandoSkipOff \noLedgers <a' e b>16-.->)\laissezVibrer
        \parenthesize r16]
        \parenthesize r16[ 
      <a' e b>8.](\glissando <a' e b>16-.->)}
        \\
        \relative c'{s8 s4  \hide NoteHead
      \parenthesize r16[ \noLedgers
      \xH \dalNienteExpo <e, b f>8\glissando(\< \hide NoteHead <b'' f c>16\mp-.->\laissezVibrer)]
      s4 \parenthesize r16[ 
      <a, e b>8.](\glissando \glissSkipOn
        <c' g d>8 \glissandoSkipOff \noLedgers <a' e b>16-.->)\laissezVibrer
      }>> \stopStaff r8. \fiveLinesStaff
      \startStaff
      %117
       <<\relative c''{\hide NoteHead \stemDown
        b16[  \diamondH <cs, fs b ds>8]^\markup{"IV"} s16
        <cs fs b ds>16[
       b'8] s16 }
        \\
        \relative c''{\hide Stem 
                      b16\rest \diamondH \arpeggioArrowUp <cs, fs b ds>8.\arpeggio\-
      s16 
      b'8.\rest
      }>> \stopStaff r4 \startStaff
      r8[ 
      \override TextScript.extra-offset = #'(0 . 0)  
      \xH <a d>8-.->\-^\markup{"V"}] 
      %118
      \stopStaff r4 \startStaff
      r32[ <e' a>16.-.->\-^\markup{"XII"} 
      \override TextScript.extra-offset = #'(-0.3 . -10)  
      r16^\markup {{\epsfile #Y #14 #"eGtr.eps"}} \stopStaff \twoLinesStaff \startStaff
      \override TextScript.extra-offset = #'(0 . -13)  
      e16^\markup{\circle{"6"}}]\glissando 
      \glissSkipOn b'16[ \glissandoSkipOff \noLedgers c16-. r8] \stopStaff \fiveLinesStaff \startStaff
      \undo \hide NoteHead
      \override TextScript.extra-offset = #'(0 . 0) \yesLedgers 
      \tuplet 3/2{r8[ r8 \xH <a, d>8-.->\-^\markup{"V"}]}
      r16[ \diamondH \arpeggioArrowUp <fs b e>8.\arpeggio\-^\markup{"IX, msp"}]
      \tuplet 3/2{r8[ r8 \xH <e' a>8]^\markup{"XII"}-.->\-} \stopStaff r4 r4
      %120
      R1
      %121
      r2 
      \override TextScript.extra-offset = #'(11 . -8)     
      r4^\markup {{\epsfile #Y #14 #"eGtr.eps" }} \twoLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \stemDown
                                 \noLedgers
                   \override TextScript.extra-offset = #'(0 . 0)  
                   \xH g'4^\markup{\circle{"1"}}
                   16[ \xH \undo \hide NoteHead e,8.\glissando] \glissSkipOn   
                   \stemNeutral g4 \glissandoSkipOff \noLedgers b16-.
                   }
                   \\
                   \relative c''{\hide Stem 
                                 \noLedgers
                 \xH \lineDashed g'4\-
                 s16 
                 }>> \stopStaff \fiveLinesStaff r8. \startStaff
       <<\relative c''{\hide NoteHead 
        \diamondN <b, e a>4^\markup{"II"} 
        <b e a>8[ s16 b'16] 
        \diamondH fs,4:32 
        4:32 
        16:64[ fs8_>] s16
        f4
         }
        \\
        \relative c''{\hide Stem 
                       \set Staff.forceClef = ##t \clef treble 
                      \diamondN \arpeggioArrowUp <b, e a>4\arpeggio\-
      s8. b'16\rest
      \diamondH \lineDashed fs,4\-
      s4 
      s16 \stemUp fs8.\-
      s4
      }>>  \stopStaff r4 r2
      %125
      r2 r4 \startStaff
      <<\relative c''{\hide NoteHead 
        \tuplet 3/2{b8[ b8 \diamondH 
                    \override TextScript.extra-offset = #'(-3 . 2) 
                    <gs, cs>8_>^\markup{\box{\column{
                    \line \lower #3 {"slap with thumb"}
                    \line \lower #1 {"near to pickups"}}}}] }
        <g c>8[ s16 <gqf cqf>16_>]
        4}
      \\
      \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{b8\rest b8\rest \diamondH <gs, cs>8\-}
      s8. \override TextScript.extra-offset = #'(0 . 0)  
      \diamondH <gqf cqf>16\-^\markup{\box{"slap like before"}} 
      s4
      }>> 
      \diamondH
      \override TextScript.extra-offset = #'(0 . 0)  
      r16[ fs,8.->\-^\markup{\box{"slap"}}]
      <g c>4->\-^\markup{\box{"slap"}}
      %127
      <<\relative c'{\hide NoteHead 
        \tuplet 3/2{b8[ \diamondH <a d>8_>^\markup{\box{"slap"}} 8]}
        \tuplet 3/2{8[ 8 \stopStaff \twoLinesStaff \startStaff \xH 
                    \override TextScript.extra-offset = #'(0 . 2)  
                    g''8]^\markup{\circle{"2"}} }
        \tuplet 3/2{8[ 8 \stopStaff \fiveLinesStaff \startStaff <fs cs a>8^\markup{"msp"}]}
        4
        <f c a>16[ b,8] s16}
      \\
      \relative c'{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{b8\rest[ \diamondH <a d>4\-}
       \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{s8 s8 \stopStaff \twoLinesStaff \startStaff \xH \lineDashed g''8\- }
         \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{s8 s8 \stopStaff \fiveLinesStaff \startStaff \diamondH \arpeggioArrowDown <fs cs a>8\arpeggio\-}
        s4
        s16[ b,8.\rest]
      }>>
      <<\relative c'{\hide NoteHead 
        \tuplet 3/2{b'8[ 8 \diamondH <gs, cs>8] }
       16[ b'8 <a, d>16^\markup{\box {"slap"}}]
        4
        16 b'16 \xH a,16_._>^\markup{\box {"slap"}} b'16}
      \\
      \relative c'{\hide Stem 
       \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{b'8\rest b8\rest \diamondH \arpeggioArrowUp <gs, cs>8\arpeggio\- }
         s16 b'8\rest <a, d>16\-
         s4
         s16 b'16\rest \xH a,16 b'16\rest
      }>> r16[ \xH a16-.->\-^\markup{\box{"slap"}} r8]
      \tuplet 3/2{r8[ a8-.->\-^\markup{\box{"slap"}} s16 r16]}
      \stopStaff r4
      %130
      \startStaff r32[ \diamondH <a d>8.-.->\-^\markup{\box{"slap"}} r32]
      \tuplet 3/2{r8[ r8 \xH a8-.->\-^\markup{\box{"slap"}}]}
      r32[  a16.-.->\-^\markup{\box{"slap"}} r8]
     <<\relative c''{\hide NoteHead
       \xH a,16_._>^\markup{\box{"slap"}} b'8 \diamondH <g, c f>16^\markup{"III"}
       8[ b'8]}
       \\
       \relative c''{\hide Stem \stemUp
     \xH a,16\- b'8\rest \diamondH \arpeggioArrowUp <g, c f>16\arpeggio\-
     %131
     s8 b'8\rest}>>
      \stopStaff r4 \startStaff
      <<\relative c''{\hide NoteHead \stemDown
        b16[ \diamondH gs'8^\markup{\circle{"2"}"IX"}] s16
        4
        g16[ b,8] s16}
        \\
        \relative c''{\hide Stem
      b16\rest \diamondH gs'8.\-
      s4
      s16 b,8.\rest}>> \stopStaff r4 r4 \startStaff
      <<\relative c''{\hide NoteHead
       b8[ s16 \diamondH \octavaUp <c f bf d>16^\markup{"XV"}]
       <c f b d>4 
       16[ \stopOctava cs,8:32^\markup{"IV"}]
        4:32}
       \\
       \relative c''{\hide Stem \stemUp
      b8.\rest \diamondH \octavaUp \arpeggioArrowUp <c f bf d>16\arpeggio\-
       s4 
       s16 \stopOctava \lineDashed cs,8.\-
        s4}>> \stopStaff r4
      %134
      \override TextScript.extra-offset = #'(13 . -8)     
      r4^\markup {{\epsfile #Y #14 #"eGtr.eps" }} 
       \twoLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \stemDown \noLedgers
       \xH g'4^\markup{\circle{"1"}}
       16[ b,8] s16}
       \\
       \relative c''{\hide Stem \noLedgers
      \xH \lineDashed g'4\-
       s16 b,8.\rest}>> \stopStaff r4
      %135
      r4 \fiveLinesStaff \startStaff
       <<\relative c''{\hide NoteHead 
       \diamondH fs,4^\markup{"IV"}
       16[ b8] s16}
       \\
       \relative c''{\hide Stem 
      \diamondH fs,4\-
       s16 b8.\rest}>> \stopStaff r4
       %136
       \startStaff
        <<\relative c''{\hide NoteHead 
       b8 \diamondH cs,8:32
       4:32
       \tuplet 3/2{8:32[ b'8 b8]}}
       \\
       \relative c''{\hide Stem 
        b8\rest \diamondH \lineDashed cs,8\-
       s4
       \omit TupletBracket \omit TupletNumber
       \tuplet 3/2{s8 b'8\rest b8\rest}}>>
        <<\relative c''{\hide NoteHead
       b8[ s16 \diamondH <c f bf d>16^\markup{"XV"}]
       <c f b d>8[ s16  b'16]}
       \\
       \relative c''{\hide Stem 
      b8.\rest \diamondH \octavaUp \arpeggioArrowUp <c f bf d>16\arpeggio\-
       s8. b'16\rest \stopOctava }>> \stopStaff r4 r4
        r8 
        \override TextScript.extra-offset = #'(-5 . 0)   
        \startStaff \tuplet 3/2{ r16[ \xH f16-.^\markup{\box{"muted string"}"msp"} 16-.]}  
        \tuplet 3/2{ f16-.[  16-. 16-.]} \stopStaff r8 r4 r2
        %139
        R1
        %140
        r4 \startStaff <<\relative c''{\hide NoteHead
                         b16[ b8]^\markup{\circle{"4"}"IX"} s16
                         4}
                         \\
                         \relative c''{\hide Stem \stemUp
                          b16\rest b8.\- s4}
                          \\
                          \relative c''{
                            \override TextScript.extra-offset = #'(-8 . 2.3)  
                            s16_\markup{ \box{\column{
                 \line  {\bold{"VOL."} "pedal"}}}}  \dalniente s8.\< \dalniente s8..\> s32\!}>>
        \stopStaff r4
        %141
        r4 r4 \startStaff<<\relative c''{\hide NoteHead 
       b16 \diamondH gs,8.:32
       8:32[ s16 b'16] }
       \\
       \relative c''{\hide Stem 
        b16\rest \diamondH \lineDashed gs,8.\-
       s8. b'16\rest}>> \stopStaff
        %142
        r4 \override TextScript.extra-offset = #'(13 . -8)     
        r4^\markup {{\epsfile #Y #14 #"eGtr.eps" }}  \twoLinesStaff \startStaff r8[ \xH \noLedgers 
        \override TextScript.extra-offset = #'(0 . 0)    
        \override Glissando.style = #'dashed-line
        e8]^\markup{\circle{"6"}}\glissando \glissSkipOn
        g8.. \glissandoSkipOff \noLedgers b'32-.
        <<\relative c''{\hide NoteHead \noLedgers \stemDown
          \xH c4^\markup{\circle{"1"}} 4 4}
          \\
          \relative c''{\hide Stem \noLedgers \stemDown
        \lineDashed \xH c4\- s2}>> \stopStaff r4
        %144
        r2 r4 \fiveLinesStaff \startStaff 
        <<\relative c''{\hide NoteHead 
        \diamondH c,4:32^\markup{"III"}
       \tuplet 3/2{8:32[ b'8 b8] }}
       \\
       \relative c''{\hide Stem 
        \diamondH \lineDashed c,4\-
        \omit TupletBracket \omit TupletNumber
       \tuplet 3/2{s8 b'8\rest b8\rest }}>> \stopStaff r4 r4
        \startStaff 
        r8.[ \noireNH \undo \hide NoteHead \slurUp
        \override Glissando.style = #'line
        \yesLedgers a'16(^\markup{\circle{"6"}"XVII"}]\glissando \glissSkipOn
        c,4 \glissandoSkipOff \noLedgers a,8)[ \yesLedgers r8] \stopStaff r4 r4
        %147
        r4 \startStaff \undo \hide NoteHead
        r32[ \diamondH <fs b>8..->-.\-]
        <<\relative c''{\hide NoteHead \stemDown
          b8[ s16 \noireNH a'16^\markup{\circle{"6"}"XVII"}]
          c,4 
          \stemUp a,16[ \diamondH <g  c>8]_>_. s16
          16[ b'8] s16}
          \\
          \relative c''{\hide Stem b8.\rest \noireNH  \slurUp
        \yesLedgers a'16(\glissando \glissSkipOn
        c,4 \glissandoSkipOff \noLedgers a,16) \undo \hide NoteHead \stemUp
        \diamondH <g c>8.\- s16 b'8.\rest}>> \stopStaff r4 \startStaff
         <<\relative c''{\hide NoteHead
       \diamondH <e, a cs fs>4^\markup{"II"}]
       <e a c f>8[ 
       \override TextScript.extra-offset = #'(4 . -10)
       b'8^\markup {{\epsfile #Y #14 #"eGtr.eps" }}]}
       \\
       \relative c''{\hide Stem 
      \diamondH \arpeggioArrowUp <e, a cs fs>4\arpeggio\-
       s8 b'8\rest  }>> \stopStaff \twoLinesStaff \startStaff
      <<\relative c'{\hide NoteHead \stemDown \tupletDown \noLedgers
        \tuplet 3/2{b'8[ 8  \xH 
                    \override TextScript.extra-offset = #'(0 . 0)  
                    g'8]^\markup{\circle{"1"}} }
        4
        8.[ b,16]
        }
      \\
      \relative c'{\hide Stem 
       \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{\noLedgers b'8\rest b8\rest \xH \lineDashed g'8\- }
        s4
        s8.[ b,16\rest]
      }>> 
      %150
      \stopStaff r4 \fiveLinesStaff \startStaff
      <<\relative c''{\hide NoteHead 
        b8[ \diamondH b8]^\markup{\circle{"3"}"IV"}
       4 4
        %151
        16[ b8] s16}
       \\
       \relative c''{\hide Stem b8\rest
        \diamondH b8\-       
        s4 s4
        s16 b8.\rest}>> \stopStaff r4
      \startStaff <<\relative c''{\hide NoteHead \stemDown
                                  \override TextScript.extra-offset = #'(-8.5 . 0)  
        b16[ \diamondH <g c f a>8 s16]^\markup{"X"}
       8.[ b16]}
       \\
       \relative c''{\hide Stem b16\rest
        \diamondH \arpeggioArrowUp <g c f a>8.\arpeggio\-       
        s8. b16\rest}>>
      %152
      <<\relative c''{\hide NoteHead 
        b8[ s16 \diamondH f,16_._>]
       8[ b'8]}
       \\
       \relative c''{\hide Stem b8.\rest
        \diamondH  f,16\-       
        s8 b'8\rest}>> \stopStaff r4 r4 \hide Staff.Clef \twoLinesStaff \startStaff
      %153
      \override TextScript.extra-offset = #'(-4.5 . -11) \slurDown
        \xH c'16^\markup {{\epsfile #Y #14 #"eGtr.eps"}}\glissando[( 
        \override TextScript.extra-offset = #'(-3 . -15)
        \hide NoteHead g'16-.)^\markup{\circle{"6"}} r8] \stopStaff r4 r2
        %154
        \startStaff <<\relative c''{\hide NoteHead \stemDown  \noLedgers
        b32[ \xH
                    \override TextScript.extra-offset = #'(0 . 0)  
                    g'8]^\markup{\circle{"1"}} 
        s16.]
        32[ b,8] s16.
        }
      \\
      \relative c''{\hide Stem 
        b32\rest  \xH \lineDashed g'8..\- 
        s32[ b,8..\rest]
      }>> \stopStaff \fiveLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \stemDown
                      \undo \hide Staff.Clef
                       \set Staff.forceClef = ##t \clef treble 
        \noireNH b8[  a''8]^\markup{"XVII"}
       8[  b,8]}
       \\
       \relative c''{\hide Stem b8\rest
         \noireNH \octavaUp a''8\-       
        s8  b,8\rest \stopOctava}>> \stopStaff r2 r4 \startStaff
      <<\relative c''{\hide NoteHead 
        b8[ s16. \diamondH  g,32^\markup{"III"}]
        4 4 
        }
      \\
      \relative c''{\hide Stem 
        b8..\rest  \diamondH g,32\- 
        s2
      }>> \stopStaff r4 \startStaff
      <<\relative c''{\hide NoteHead \stemDown
        \noireNH b8[  a''8]^\markup{"XVII"}
       8[  b,8]}
       \\
       \relative c''{\hide Stem b8\rest
         \noireNH \octavaUp a''8\-       
        s8  
        \override TextScript.extra-offset = #'(4 . -11)
        b,8\rest^\markup {{\epsfile #Y #14 #"eGtr.eps"}}
        \stopOctava}>> \stopStaff \twoLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \stemDown  \noLedgers
       \xH g'4^\markup{\circle{"1"}} 
        4
        }
      \\
      \relative c''{\hide Stem 
        \xH \lineDashed g'4\- 
        s4
      }>> \noLedgers \undo \hide NoteHead
      \override TextScript.extra-offset = #'(0 . 0)
      \xH c,4^\markup{\circle{"6"}}\glissando( \glissSkipOn f8. \glissandoSkipOff \hide NoteHead a16-.)
      r16 \undo \hide NoteHead \noLedgers <e a>8\glissando(^\markup{\column{
      \line{\circle{"5"}}
      \line{\circle{"6"}}}} \hide NoteHead 
      \override TextScript.extra-offset = #'(-4 . 0)
      <b' e>16-.^\markup{\box{\column{
      \line \lower #3 {"gliss. with plectrum"}
      \line \lower #1 {\bold{"in between"} "strings"}}}}) \stopStaff r4 r4
      %159
      R1
      %160
      \fiveLinesStaff \startStaff
      <<\relative c''{\hide NoteHead 
        \tuplet 3/2{b8[ b8 \diamondH <fs cs' a e'>8^\markup{"msp"}]}
        4 4 s4 s4}
      \\
      \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber \stemUp
      \tuplet 3/2{b8\rest b8\rest \diamondH \arpeggioArrowDown <fs cs' a e'>8\arpeggio\-}
       s2 \stopStaff b4\rest
       \override TextScript.extra-offset = #'(12 . -10)
        b4\rest^\markup {{\epsfile #Y #14 #"eGtr.eps"}}
      }
      \\
      \relative c''{\omit TupletBracket \omit TupletNumber
      \tuplet 3/2{\override TextScript.extra-offset = #'(-4 . 2.3)  
                            s8_\markup{ \box{\column{
                 \line  {\bold{"VOL."} "pedal"}}}} 
        
        s8 \dalniente s8\>}
      s8\! \dalniente s8\<
      s16\> s16\< s16\> s16\< s4\!}
      >> \stopStaff \twoLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \stemDown  \noLedgers
       b16[ \xH g'8^\markup{\circle{"3"}}] s16 
        8.[ b,16]
        }
      \\
      \relative c''{\hide Stem 
        b16\rest \xH \lineDashed g'8.\- 
        s8. b,16\rest
      }>> \stopStaff r4\fiveLinesStaff
      %162
      \startStaff
      %\set Staff.forceClef =##t \clef treble
       <<\relative c''{\hide NoteHead 
        b8[ \diamondH  cs,8^\markup{\circle{"5"}}]
        4 4 
        }
      \\
      \relative c''{\hide Stem 
        b8\rest  \diamondH cs,8\- 
        s2
      }>> \stopStaff r4
      %163
      r4 \startStaff
      <<\relative c''{\hide NoteHead \tupletDown \stemDown
        \tuplet 3/2{b8[ b8 \diamondH e8^\markup{\circle{"2"}"V"}]}
        16[ 8] s16 
        4
        4 4 
        \override TextScript.extra-offset = #'(12 . -10)
        4^\markup {{\epsfile #Y #14 #"eGtr.eps"}}}
      \\
      \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber 
      \tuplet 3/2{b8\rest b8\rest \diamondH e8\-}
       s16 
       \override Glissando.thickness = #3
       <e e>8.\glissando^\markup {\box{\column{
       \line \lower #3 {"detune, creating a beating"}
       \line \lower #1 {"tone with the resonance "}
       \line \lower #-1 {"of the previous harmonic"}}}} \glissSkipOn <e f>4 \glissandoSkipOff <e fqs>8\-
       s4. s4
      }>> \stopStaff \twoLinesStaff \startStaff 
      \override TextScript.extra-offset = #'(0 . 0)
     \undo \hide NoteHead \xH <e, a>8\glissando([^\markup{\column{
     \line{\circle{"5"}}
     \line{\circle{"6"}}}} <b' e>16-.) r16] \stopStaff \hide Staff.Clef
     %165
     \override TextScript.extra-offset = #'(-5.3 . -8.5)
     r4^\markup {{\epsfile #Y #14 #"eGtr.eps"}} \startStaff <<\relative c'{\hide NoteHead \stemDown \tupletDown \noLedgers
        \tuplet 3/2{b'8[ 8  \xH 
                    g'8]^\markup{\circle{"1"}} }
        4^\markup{\box{\column{
                                   \line \lower #3 {"with little pression"}
                                    \line \lower#1 {"on the string"}}}}}
      \\
      \relative c'{\hide Stem 
       \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{\noLedgers b'8\rest b8\rest \xH \lineDashed g'8\- }
        s4 }>> \stopStaff \fiveLinesStaff \startStaff \diamondN \yesLedgers
     \undo \hide Staff.Clef
     \set Staff.forceClef = ##t \clef treble
     <fs, cs'>4-.->\-
     %166
     <<\relative c''{\hide NoteHead \stemDown
       b16[ a''8^\markup{"XVII"} s16]
       4 
       16[ b,8] s16}
       \\
       \relative c''{\hide Stem 
     b16\rest \octavaUp a''8.\-
     s4
     s16 b,8.\rest \stopOctava }>>
     <<\relative c''{\hide NoteHead 
        b16[ \diamondH  cs,8^\markup{\circle{"5"}"III"} s16]
        %167
        \override TextScript.extra-offset = #'(4.5 . -8.5)
        c8^\markup {{\epsfile #Y #14 #"eGtr.eps"}} 
        \stopStaff \twoLinesStaff \startStaff \noLedgers b'16
        \override TextScript.extra-offset = #'(0 . 2)
        \xH g'16^\markup{\column{\line {\circle{"3"}}
        \line{\box{"half pression"}}}} \stemDown
        4 
        16[ b,8] s16
        }
      \\
      \relative c''{\hide Stem \stemUp
        b16\rest  \diamondH cs,8.\- 
        s8 \noLedgers  b'16\rest \xH \lineDashed g'16\-
        s4
        s16 b,8.\rest
      }>> \stopStaff r4 \hide Staff.Clef
      %168
      \override TextScript.extra-offset = #'(-4.5 . -10)
      r4^\markup {{\epsfile #Y #14 #"eGtr.eps"}} 
      \twoLinesStaff \startStaff
      r16[ \xH \noLedgers e16\glissando( \hide NoteHead b'16-.) r16]
      \stopStaff r4 \fiveLinesStaff 
      
       <<\relative c''{\hide NoteHead 
                       \undo \hide Staff.Clef
      \set Staff.forceClef = ##t \clef treble  \startStaff
        \diamondN  <fs, as ds gs>4^\markup{"IV"}
        <f a d g>16[ b8] s16 }
      \\
      \relative c''{\hide Stem 
        \diamondN  \arpeggioArrowUp <fs, as ds gs>4\arpeggio\- 
        %169
        s16  b8.\rest 
      }>> \stopStaff 
      \override TextScript.extra-offset = #'(10 . -10)
      r4^\markup {{\epsfile #Y #14 #"eGtr.eps"}} 
      \twoLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \noLedgers \slurDown
        b16[ 
        \override TextScript.extra-offset = #'(0 . 2)
        \xH c,8](^\markup{\circle{"6"}} s16
        g'16_.) b16 \stopStaff \fiveLinesStaff \startStaff 
        \diamondH a,8]
        %170
        4
        }
        \\
        \relative c''{\hide Stem \stemUp
      b16\rest \xH \noLedgers  c,8.\glissando 
      \hide NoteHead g'16 b16\rest
      \diamondH \undo \hide NoteHead \yesLedgers 
      \set Staff.forceClef = ##t \clef treble
      a,8\-
      %170
      s4}>> \stopStaff \twoLinesStaff \startStaff
      <<\relative c'{\hide NoteHead \stemDown \tupletDown \noLedgers
                      \override TextScript.extra-offset = #'(-5 . -10)
        \tuplet 3/2{b'8[^\markup {{\epsfile #Y #14 #"eGtr.eps"}}  8  
                    \override TextScript.extra-offset = #'(0 . 0)
                    \xH g'8]^\markup{\circle{"2"}} }
        4 
        32[ \stemUp c,,8^\markup{\circle{"6"}}] s16.  \hide Staff.Clef
        \override TextScript.extra-offset = #'(-4.5 . -11.5)
        c'8[^\markup {{\epsfile #Y #14 #"eGtr.eps"}} 
        \stemDown \override TextScript.extra-offset = #'(0 . 0)
        g'8]^\markup{\circle{"2"}}
        8[ \stemUp  c,,8]^\markup{\circle{"6"}}
        4
        c'8[ 
        \undo \hide Staff.Clef
      \set Staff.forceClef = ##t \clef treble
        \diamondH \stopStaff \fiveLinesStaff \startStaff <fs,, b e>8]
        %172
        <f b e>8.[ b'16]}
      \\
      \relative c'{\hide Stem 
       \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{\noLedgers b'8\rest b8\rest \xH \lineDashed g'8\- }
        s4 
      s32 \noLedgers   \stemUp c,,8..\glissando \glissSkipOn f16 \glissandoSkipOff \noLedgers b16
      \lineDashed \undo \hide NoteHead \stemDown g'8\-
      s8 c,,8\glissando \glissSkipOn \stemUp e4 f16 \glissandoSkipOff \noLedgers b16 
      \undo \hide NoteHead 
      \diamondH \arpeggioArrowUp \yesLedgers <fs, b e>8\arpeggio\-
      %172
      s8. b'16\rest}>> \stopStaff r4 r2
      %173
      r2 
      \twoLinesStaff \startStaff
       <<\relative c''{\hide NoteHead \stemDown  \noLedgers
                       \override TextScript.extra-offset = #'(-5.3 . -10)
       b16[^\markup {{\epsfile #Y #14 #"eGtr.eps"}}
        \override TextScript.extra-offset = #'(0 . -14)
       \xH g'8^\markup{\circle{"1"}}] s16 
        4 \hide Staff.Clef
        %174
        \override TextScript.extra-offset = #'(-5.3 . -10)
        4^\markup {{\epsfile #Y #14 #"eGtr.eps"}}
        4
        16[ b,8] s16
        }
      \\
      \relative c''{\hide Stem \noLedgers
        b16\rest \xH \lineDashed g'8.\- 
        s4
        %174
        s2
        s16 b,8.\rest
      }>> \stopStaff \fiveLinesStaff \startStaff
       <<\relative c''{\hide NoteHead 
                       \undo \hide Staff.Clef
                       \set Staff.forceClef = ##t \clef treble
        b16[ \diamondH  
         \override TextScript.extra-offset = #'(0 . 0)
        b,8^\markup{\circle{"6"}"VII"}] s16
        8.[ b'16] 
        }
      \\
      \relative c''{\hide Stem 
        b16\rest \stemUp  \diamondH \yesLedgers b,8.\- 
        s8. b'16\rest
      }>> \stopStaff r4 \startStaff 
      <<\relative c''{\hide NoteHead 
        b8[ s16. \diamondH  
         \override TextScript.extra-offset = #'(0 . 0)
        e,32^\markup{\circle{"5"}"VII"}] 
        4
        4 \stemDown
        32[ \stopStaff \twoLinesStaff \startStaff \xH \noLedgers g'8^\markup{\circle{"1"}}] s16.
        4 
        4 \hide Staff.Clef
        \override TextScript.extra-offset = #'(-5.3 . -10)
        32[^\markup {{\epsfile #Y #14 #"eGtr.eps"}} b,16 s32 <e, a>8] 
        \stemUp 16[
        b'8] s16
        }
      \\
      \relative c''{\hide Stem 
        b8..\rest \diamondH  
        e,32\-
        s2
        s32 \noLedgers \lineDashed \xH g'8..\-
        s4 
        s4
        s32 \parenthesize b,16.\rest \slurUp <e, a>8\glissando(
        \hide NoteHead <b f'>16) b'8.\rest
      }>> \stopStaff r2
      %178
      r2 r4 \startStaff <<\relative c''{\hide NoteHead \stemDown \noLedgers
        b8[ s16 \xH g'16^\markup{\circle{"1"}}]
        4
        16[ b,8] s16
        }
      \\
      \relative c''{\hide Stem \noLedgers
        b8.\rest \xH \lineDashed g'16\-
      s4
      s16 b,8.\rest}>> \stopStaff r4 \fiveLinesStaff \startStaff
      <<\relative c''{\hide NoteHead 
        b32[ \diamondH e,8^\markup{\circle{"5"}"VII"}] s16.
        4
        4 \stemDown 
        32[ \stopStaff \twoLinesStaff \startStaff \xH \noLedgers g'8]^\markup{\circle{"1"}} s16.
        4
        %181
        4
        }
      \\
      \relative c''{\hide Stem \stemUp
         b32\rest \diamondH e,8..\-] \undo \hide Staff.Clef
        s4
        s4 \stemDown
        s32 \stopStaff \twoLinesStaff \startStaff  \xH \lineDashed \noLedgers g'8..\-]
        s4
        %181
        s4}>> \stopStaff \fiveLinesStaff \startStaff
      <<\relative c''{\hide NoteHead 
        b16[ \diamondH  
        <fs b e>8^\markup{"IX"}] s16
        4
        }
      \\
      \relative c''{\hide Stem 
        b16\rest \stemUp  \diamondH <fs b e>8.\- 
        s4
      }
      \\
      \relative c''{\override TextScript.extra-offset = #'(-8.5 . 2)  
                            s16_\markup{ \box{\column{
                 \line  {\bold{"VOL."} "pedal"}}}}  \dalniente s8.\< \dalniente s8...\> s64\!}>>
     <<\relative c'{\hide NoteHead \stemDown \tupletDown 
        \tuplet 3/2{b'8[ 8  \diamondH e8]^\markup{\circle{"3"}"IX"}}
        4 4 4 \stemUp \diamondN
        a,4^\markup{\circle{"4"}"VII"}
        16[ \diamondH <gs, cs fs>8] s16}
      \\
      \relative c'{\hide Stem 
       \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{b'8\rest b8\rest \diamondH e8\-}
        s2. \stemUp \diamondN
        a,4\-
       s16 \diamondH \arpeggioArrowUp \yesLedgers <gs, cs fs>8.\arpeggio\-}>> \stopStaff r4 r2
     %184
     r2 r4 \startStaff <<\relative c''{\hide NoteHead 
        b8[ s16 \diamondH  
        <gs, cs fs>16]
        <g c f>4 4
        fs'4^\markup{\circle{"4"}} 16[ b8] s16
        }
      \\
      \relative c''{\hide Stem 
        b8.\rest \stemUp  \diamondH \arpeggioArrowUp <gs, cs fs>16\arpeggio\- 
        s2
        fs'4\- s16 b8.\rest
      }>> \stopStaff
      %186
      r2 r4 \startStaff <<\relative c''{\hide NoteHead 
        b8[ s16 \diamondH  
        cs,16^\markup{\circle{"5"}}]
        %187
        c16[ b'8] s16 
        }
      \\
      \relative c''{\hide Stem 
        b8.\rest \stemUp  \diamondH cs,16\- 
        %187
        s16 b'8.\rest
      }>> <<\relative c''{\hide NoteHead 
        b16[  \diamondH  
        <fs, b>8_._>] s16
        8[ b'8] 
        }
      \\
      \relative c''{\hide Stem 
        b16\rest \stemUp  \diamondH <fs, b>8.\- 
        s8 b'8\rest
      }>> \stopStaff r4
      %188
      \override TextScript.extra-offset = #'(13 . -10)  
      r4^\markup {{\epsfile #Y #14 #"eGtr.eps"}}
      \undo \hide NoteHead
      \twoLinesStaff \startStaff
      \override TextScript.extra-offset = #'(0 . 0) 
      r8.[  \xH b'16--\glissando(]^\markup{\circle{"6"}}
      e,16\glissando)([ b'16-.->) r8] \stopStaff r4
      %189
      r4 \fiveLinesStaff \startStaff
      %\set Staff.forceClef = ##t \clef treble
      r16[ \diamondH \arpeggioArrowUp <d, g c e>8.\-\arpeggio]^\markup{"V"}
      \stopStaff r4 \twoLinesStaff
      \override TextScript.extra-offset = #'(-5.5 . -10) 
      \startStaff r8.[^\markup {{\epsfile #Y #14 #"eGtr.eps"}} \xH 
      \override TextScript.extra-offset = #'(0 . 0) 
      e32\glissando^\markup{\circle{"6"}}(
      \hide NoteHead g32-.)] \undo \hide NoteHead
      %190
      \stopStaff r4 \fiveLinesStaff \startStaff
      \set Staff.forceClef = ##t \clef treble \yesLedgers
      \tuplet 3/2{b8\rest[ \diamondH c,8^\markup{\box{"scrub"}}\-  r16 \xH \arpeggioArrowUp <fs b e>16\arpeggio->-.^\markup{\column{
                  \line {\box{"muted"}}
                  \line {"IX"}}}]}
      \stopStaff \twoLinesStaff \startStaff
      b16\rest[ \dalNienteExpo \noLedgers e,8\glissando(^\markup{\circle{"6"}}\< \hide NoteHead b'16-.\!)] 
      \yesLedgers \stopStaff r4
      %191
      r4 \fiveLinesStaff \startStaff
      r32[ \xH \undo \hide NoteHead \arpeggioArrowDown <c, fs b e>16.\arpeggio(^\markup{"VIII msp"} r8]
      \tuplet 3/2{b8\rest[ b8\rest \xH c8-.\-]^\markup{\box{"scrub"}}} \stopStaff r4
      %192
      r4 \startStaff <<\relative c''{\hide NoteHead 
        b8[ s16  \diamondH  
        <fs, b e>16_._>^\markup{"III"}] 
        4 4
        %193
        <f b e>16[ \stopStaff \twoLinesStaff \startStaff \noLedgers \xH <e' a d>8]^\markup{\column{
                                                      \line {\circle{"4"}}
                                                      \line{\circle{"5"}}
                                                      \line{\circle{"6"}}}} s16
        \stemDown  8[ g'8^\markup{\circle{"2"}}]
        4 4
        %194
        8[ b,8]
        }
      \\
      \relative c''{\hide Stem 
        b8.\rest[   \diamondH  
        \arpeggioArrowUp <fs, b e>16\arpeggio\-] 
        s2
        %193
        s16 \noLedgers \xH  \arpeggioArrowUp \stemUp <e' a d>8.\arpeggio\-
        \stemDown s8 \lineDashed  g'8\-
        s2
        %194
        8 b,8\rest
      }>> \stopStaff \fiveLinesStaff \startStaff
      <<\relative c''{\hide NoteHead \stemDown
                      \set Staff.forceClef = ##t \clef treble
                      \override TextScript.extra-offset = #'(-15 . 0) 
        b16[^\markup{\box{\column{
                          \line \lower #3 {"next sequences of harmonics"}
        \line \lower #1 {"should sound bit dumped"}}}} 
        \override TextScript.extra-offset = #'(-0 . 0) 
        \diamondH fs''8]^\markup{"XIV"} s16
        8.[ b,16]}
        \\
        \relative c''{\hide Stem
      b16\rest \diamondH \octavaUp fs''8.\-
      s8. b,16\rest \stopOctava }>> \stopStaff r4
      %195
      \startStaff <<\relative c''{\hide NoteHead \stemDown
        b16[ \diamondH a''8]^\markup{"XVII"} s16
        16[ b,8] s16}
        \\
        \relative c''{\hide Stem
      b16\rest \diamondH \octavaUp a''8.\-
       s16 b,8.\rest \stopOctava }>> <<\relative c''{\hide NoteHead \stemDown
        b8[ s16 \diamondH a''16]^\markup{"XVII"} 
        4}
        \\
        \relative c''{\hide Stem
      b8.\rest \diamondH \octavaUp a''16\-
       s4  }>> \stopStaff 
      %196
      r4 \stopOctava \startStaff <<\relative c''{\hide NoteHead \stemDown
        b8[  \diamondH a''8]^\markup{"XVII"} 
        16[ cs,8]^\markup{\circle{"1"}"IX"}  s16
         8.[ b,16]}
        \\
        \relative c''{\hide Stem
      b8\rest \diamondH \octavaUp a''8\-
       s16 \stopOctava cs,8.\-
      s8. b,16\rest}>> \stopStaff
      %197
      r4 \startStaff <<\relative c''{\hide NoteHead \stemDown
        b8[  \diamondH a''8]^\markup{"XVII"} 
         8[ b,8]}
        \\
        \relative c''{\hide Stem
      b8\rest \diamondH \octavaUp a''8\-
      s8 b,8\rest \stopOctava }>> <<\relative c''{\hide NoteHead \stemDown
        b16[ \diamondH cs'8]^\markup{\circle{"1"}"IX"} s16
        c8[ a'8^\markup{"XVII"}]
                                    8.[ b,16]}
        \\
        \relative c''{\hide Stem
      b16\rest \diamondH  cs'8.\-
       s8 \octavaUp a'8\-
      s8. b,16\rest \stopOctava }>>
      <<\relative c''{\hide NoteHead \stemDown
        b16[ \diamondH cs'8]^\markup{\circle{"1"}"IX"} s16
        16 [ b,8] s16}
        \\
        \relative c''{\hide Stem
      b16\rest \diamondH  cs'8.\-
       s16 b,8.\rest}>>
      %199
      <<\relative c''{\hide NoteHead \stemDown
        b8[  \diamondH a''8]^\markup{"XVII"} 
        8[ b,16 cs16]^\markup{\circle{"1"}"IX"}  
        8.[ b,16]}
        \\
        \relative c''{\hide Stem
      b8\rest \diamondH \octavaUp a''8\-
       s8 b,16\rest \stopOctava  cs16\-
      s8. b,16\rest}>> \stopStaff r4
      %200
      r2 \startStaff <<\relative c''{\hide NoteHead \stemDown
        b16[ \diamondH a''8]^\markup{"XVII"} s16
        16[ b,16 cs8^\markup{\circle{"1"}"IX"}] 
        %201
         c8[ b,8]}
        \\
        \relative c''{\hide Stem
      b16\rest \diamondH \octavaUp a''8.\-
       s16 b,16\rest \stopOctava cs8\-
       %201
       s8 b,8\rest}>> <<\relative c''{\hide NoteHead \stemDown \tupletDown
        \tuplet 3/2{b8[ \diamondH a''8^\markup{"XVII"} 8]}
        16[ b,8] s16}
        \\
        \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{b8\rest \diamondH \octavaUp a''4\-}
       s16 b,8.\rest \stopOctava}>> \stopStaff r4
      %202
      \startStaff
      <<\relative c''{\hide NoteHead \stemDown
        b16[ \diamondH cs'8]^\markup{\circle{"1"}"IX"} s16
        16[ b,8] s16}
        \\
        \relative c''{\hide Stem
      b16\rest \diamondH cs'8.\-
       s16 b,8.\rest}>> \stopStaff r4 \startStaff
      <<\relative c''{\hide NoteHead \stemDown \tupletDown
        \tuplet 3/2{b8[ b8 \diamondH a''8^\markup{"XVII"}]}
        8[ b,8]}
        \\
        \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{b8\rest b8\rest \diamondH \octavaUp a''8\-}
       s8 b,8\rest \stopOctava}>> \stopStaff r4 r4 \startStaff
      <<\relative c''{\hide NoteHead \stemDown \tupletDown
        \tuplet 3/2{b8[ b8 \diamondH cs'8^\markup{\circle{"1"}"IX"}]}
        c8.[ b,16]}
        \\
        \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{b8\rest b8\rest \diamondH cs'8\-}
       s8. b,16\rest}>> \stopStaff r4 r2
      %205
      \startStaff
      \diamondH \octavaUp a'''8..\-[^\markup{"XVII"} r32 \stopOctava]
      <<\relative c''{\hide NoteHead \stemDown
        b16[ \diamondH cs'8]^\markup{\circle{"1"}"IX"} s16
        8[ b,8] }
        \\
        \relative c''{\hide Stem
      b16\rest \diamondH cs'8.\-
       s8 b,8\rest}>> \stopStaff r4
      %206
      \startStaff \diamondH \octavaUp a8..\-[^\markup{"XVII"} r32] \stopOctava]
      \stopStaff b,,4\rest \startStaff
      <<\relative c''{\hide NoteHead \stemDown
        b16[ \diamondH cs'8]^\markup{\circle{"1"}"IX"} s16
        8[ b,8] }
        \\
        \relative c''{\hide Stem
      b16\rest \diamondH cs'8.\-
       s8 b,8\rest}>> \stopStaff
      %208
      \hide Staff.Clef
      \override TextScript.extra-offset = #'(15 . -5) 
      s1^\markup{ \box \column{
      \line{ \translate #'(0 . -2) 
             {\bold{"FREEZE"} "all your mouvements"}}
      \line{ \translate #'(0 . -1)  
             {"until the short sequence of put"}}
      \line{ \translate #'(0 . 0)  
             {"white noise ends, then put"}}
      \line{\translate #'(0 . 1)  
            {"your instrumnet aside, and"}}
      \line{\translate #'(0 . 2)  
            {"take off the stage camly"}}}} 

      
      
      
      
      
      
      
      
        
      
      
      
      
      
     
      
      
        
      
        
        
        
      
      
      
      
       
    
      
    
                    

      
      
      
      
      
      
      
      
                 
                                  
                  
                                 
                     
    
    }

 \new Staff = "pedals" \with{
  \hide Clef
  \remove "Time_signature_engraver"
   }
  \relative c''{
    
   
    
 \oneLineStaff \stemUp
   \stopStaff s1 
   r4
   \startStaff %1
   %\hide NoteHead
   \uN \stompB c4\-
   \uNw c16-.[ r8.] \stopStaff 
   s4
   %2
   s1
   %3
   s2. \startStaff <<\relative c''{\hide NoteHead 
                                   
                     c8. c16
                     8.[ \uNw 16]}
                     \\
                     \relative c''{\hide Stem 
                                 
                     c8\rest s16 \stompB c16\-
                     s8. \uNw \stemUp c16-.
                     }>>
    \stopStaff s2.
    %5
    s2 \startStaff <<\relative c''{\hide NoteHead
                     c16 8.
                     16 \uNw c16_. c8}
                     \\
                     \relative c''{\hide Stem 
                     c16\rest \stompB c8.\-
                      s16 \uNw c16 c8\rest}>>
    \stopStaff 
    %6
    s1
    %7
    s2. \startStaff
    \stompB c8.\- \uNw c16-.
    %8
    \stopStaff s4
    \startStaff r8[ \stompB c8\-] \uNw c16-.[ r8.] 
    <<\relative c''{\hide NoteHead
      c8 c8
      c8.[ \uNw c16_.]}
      \\
      \relative c''{\hide Stem 
    c8\rest \stompB c8\-
    s8. \uNw c16}>> \stopStaff s2.
    \startStaff \stompB c4\- \uNw c16-.[ r8.] \stopStaff s2 
    %11
    s1
    %12
    \startStaff r32[ \stompB c8..\-]
    \uNw c16-.[ r8.]
    <<\relative c''{\hide NoteHead 
      c8[ c8]
      c8.[ c16_.]}
    \\
    \relative c''{\hide Stem
    c8\rest \stompB c8\-
    s8. \uNw c16}>>
    %13
    \stopStaff s2. \startStaff
    <<\relative c''{\hide NoteHead 
      c16 c8.
      c4 c8[ \uNw c16_. c16]}
      \\
      \relative c''{\hide Stem c16\rest \stompC c8.\-
    s4 s8 \uNw c16 c16\rest}>>   \stopStaff s2
    %15
    s2 \startStaff
    \stompB c8.\-[ \uNw c16-.]
    <<\relative c''{\hide NoteHead 
      \tuplet 3/2{c8 c8 c8}
      c16 \uNw c16_. c8}
      \\
      \relative c''{\hide Stem
    \omit TupletBracket \omit TupletNumber \tuplet 3/2{c8\rest \stompB c8\- s8}
    s16 \uNw c16 c8\rest
    }>> \stopStaff s2.
    %17
    s1
    %18
    s2. \startStaff <<\relative c''{\hide NoteHead 
                                   c8 c8
                                   8[ \uNw 16_. 16]}
                      \\
                      \relative c''{\hide Stem
                                   c8\rest \stompB c8\-
                                   s8 \uNw c16 c16\rest}>>
    r4
    <<\relative c''{\hide NoteHead
      c8 8
      16[ \uNw 16_. 8]}
      \\
      \relative c''{\hide Stem
    c8\rest \stompB c8\-
    s16 \uNw16 b8\rest}>>
    %20
    r32 \stompB c8\- \uNw c32_. r16
    r4
    r16[ \stompB c8\- \uNw c16-.]
    \stopStaff s4
    %21
    s4
    \startStaff 
    <<\relative c''{\hide NoteHead
      \tuplet 3/2{c8 8 \stompB 8} 8 \uNw c16_. c16
      }
    \\
    \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber \stemUp
                  \tuplet 3/2{c8\rest c8\rest \stompB b8\-} s8 \uNw c16-. c16\rest}>> 
    \stopStaff s4
    %22
    s2 \startStaff \stompB c8\-[ \uNw c16-. c16\rest]
   \stopStaff s4
   %23
   s4 \startStaff <<\relative c''{\hide NoteHead
                    c8 c32 \stompC c16.
                    8 \uNw c16_. 16}
                    \\
                    \relative c''{\hide Stem 
                                 c8\rest c32\rest \stompC c16.\-
                                s8 \uNw c16 c16\rest }>> \stopStaff s4
   %24
   s1
   %25
   s4 \startStaff <<\relative c''{\hide NoteHead
                    c16 \stompB c8 s16
                    c4
                    c8 \uNw c16_. c16}
                    \\
                    \relative c''{\hide Stem \stemUp
                   c16\rest \stompB c8.\-
                   s4. \uNw c16 c16\rest}>> \stopStaff
   %26
   s2 \startStaff <<\relative c''{\hide NoteHead
                    c16 \stompB c8 s16
                    c8 \uNw c16_. c16}
                    \\
                    \relative c''{\hide Stem \stemUp
                   c16\rest \stompB c8.\-
                   s8 \uNw c16 c16\rest}>> \stopStaff
   %27
   s2. \startStaff <<\relative c''{\hide NoteHead \stemUp
                                                   c8[ s16 \stompB c16] 
                                                   8[ \uNw c16_. 16]}
                                                   \\
                                                   \relative c''{\hide Stem
                                                                 b8.\rest \stompB c16\-
                                                                 s8 \uNw c16 c16\rest}>> \stopStaff
   s2.
   %29,30,31
   s1*3
   %32
   s2 \startStaff \stompB c8..\- \uNw c32-. \stopStaff s4
   %33
   s1
   %34
   \startStaff \stompB c4\- \uNw c16-.[ r8.] \stopStaff s4 \startStaff 
   \stompB c4\- 
   %35 
   \uNw c16-.[ r8.] 
   <<\relative c''{\hide NoteHead 
                           c8[ s16 \stompB c16] 
                           c8.. \uNw c32_.}
                          \\
                          \relative c''{\hide Stem
                                            c8.\rest \stompB c16\-
                                            s8.. \uNw c32 }>> \stopStaff s4
   %36
   s4 \startStaff 
   r32[ \stompC c8..\-] 
   \stompB c8.\- \uNw c16-. \stopStaff s4
   %37
   s1
   %38 
   \startStaff
   \stompC c4\- \uNw c16-.[ r8.] \stopStaff s2
   %39
   s2. \startStaff 
   <<\relative c''{\hide NoteHead
                   c8 \stompB c8
                   8 \uNw c16_. 16}
                   \\
                   \relative c''{\hide Stem c8\rest \stompB c8\-
                 s8 \uNw c16 c16\rest}>> \stopStaff s4
   \startStaff c16\rest[ \stompA c8\- \uNw c16-.] \stopStaff s4
   %41
   s4 \startStaff 
   <<\relative c''{\hide NoteHead
                   c16 \stompC c8 16
                   4 
                   16 \uNw c16_. 8}
                   \\
                   \relative c''{\hide Stem \stemUp
                 c16\rest \stompC c8.\-
                 s4
                 s16 \uNw c16 c8\rest
                 }>> \stopStaff
    %42-43-44
    s1*3
   %45
   s2 \startStaff 
   <<\relative c''{\hide NoteHead 
                                                   c8  \stompB c8
                                                   16 \uNw c16-. 8}
                                                   \\
                                                   \relative c''{\hide Stem
                                                                 c8\rest \stompB c8\-
                                                                 s16 \uNw c16 c8\rest}>> 
   %46
   <<\relative c''{\hide NoteHead 
                            \stompB c4
                           \uNw c16-.[ 8] s16}
                           \\
                            \relative c''{\hide Stem
                            \stompB c4\-
                            \uNw c16 c8.\rest}>> \stopStaff s2
   %47
   s2. \startStaff 
    <<\relative c''{\hide NoteHead
      \tuplet 3/2{c8 8 \stompB 8} \uNw c16_.[ c8] s16
      }
    \\
    \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber \stemUp
                  \tuplet 3/2{c8\rest c8\rest \stompB b8\-}  \uNw c16-. c8.\rest}>> \stopStaff
    s2.
    %49
    s4 \startStaff <<\relative c''{\hide NoteHead
      c16 \stompB c8. 
      c16[ \uNw c16_. c8]
      }
    \\
    \relative c''{\hide Stem
                  c16\rest \stompB c8.\-  s16 \uNw c16 c8\rest}>> \stopStaff s4
    %50-51
    s1*2
    %52
    s2 \startStaff 
    <<\relative c''{\hide NoteHead
      \stompC c4
      c16 \uNw c16_. c8}
      \\
      \relative c''{\hide Stem
    \stompC c4\-
    s16 \uNw c16 c8\rest}>> \stopStaff
    %53-56
    s1*4
    %57
    \startStaff
    <<\relative c''{\hide NoteHead 
        c8  \stompB c8
        8[ \uNw c16_. c16]}
        \\
        \relative c''{\hide Stem
                      c8\rest  \stompB c8\-
        s8 \uNw c16 c16\rest
      }>> \stopStaff s2
      %58
      s2 \startStaff 
      <<\relative c''{\hide NoteHead 
        c8[ s16  \stompB c16]
        8[ s16 \uNw c16_.]}
        \\
        \relative c''{\hide Stem
                      c8.\rest  \stompB c16\-
        s8. \uNw c16 
      }>> \stopStaff 
      %59
      s1
      %60
      s2 \startStaff 
      <<\relative c''{\hide NoteHead 
        c8[ s16  \stompC c16]
        4  
        %61
        16[ \uNw c16_. c8] }
        \\
        \relative c''{\hide Stem
                      c8.\rest  \stompC c16\-
        s4 
        %61
        s16 \uNw c16 c8\rest
      }>> \stopStaff s4
      \startStaff 
      <<\relative c''{\hide NoteHead 
        c8[ s16  \stompC c16]
        4  
        %62
        \uNw c16_.[ c8] s16 }
        \\
        \relative c''{\hide Stem
                      c8.\rest  \stompC c16\-
        s4 
        %62
        \uNw c16 c8.\rest
      }>> \stopStaff s2.
      %63
      s2 \startStaff
      <<\relative c''{\hide NoteHead 
        c8[ s16  \stompC c16]
        4  
        %64
        16[ \uNw c16_. c8] }
        \\
        \relative c''{\hide Stem
                      c8.\rest  \stompC c16\-
        s4 
        %64
        s16 \uNw c16 c8\rest
      }>> 
      <<\relative c''{\hide NoteHead 
        c8[ s16  \stompA c16]
        16[ \uNw c16_. c8] }
        \\
        \relative c''{\hide Stem
                      c8.\rest  \stompA c16\-
        s16 \uNw c16 c8\rest
      }>> \stopStaff
     s4
     %65
     \startStaff
     <<\relative c''{\hide NoteHead 
        c8[ s16  \stompB c16]
        8 \uNw 16-. 16 }
        \\
        \relative c''{\hide Stem  c8.\rest[ \stompB c16\-]
        s8 \uNw c16-. c16\rest 
      }>> \stopStaff s2
      %66
      s2 \startStaff
      <<\relative c''{\hide NoteHead 
        c8[ \stompB c8]
        8[ \uNw c16_. 16]
        }
        \\
        \relative c''{\hide Stem c8\rest
      \stompB c8\-
      s8 \uNw c16 c16\rest
      }>> \stopStaff
      %67
      s1
      %68
      s2.
      \startStaff <<\relative c''{\hide NoteHead 
        c16[ \stompB c8 s16]
        8[ \uNw c16_. 16]
        }
        \\
        \relative c''{\hide Stem c16\rest \stemUp
      \stompB c8.\-
      s8 \uNw c16 c16\rest
      }>> \stopStaff s4 \startStaff
      <<\relative c''{\hide NoteHead 
        c8[ s16 \stompC c16]
        4 
        %70
        16[ \uNw c16_. c8]
        }
        \\
        \relative c''{\hide Stem c8.\rest
      \stompC  c16\-
      s4 
      %70
      s16 \uNw c16 c8\rest
      }>> \stopStaff s2.
      %71
      s2
      \startStaff
      <<\relative c''{\hide NoteHead
        \stompA c4 4
        4 4 4 4
        4 4 4 4
        4 4 4 4
        4 4 4 4
        4 4 4 4
        \uNw 16_.[ 8] s16}
        \\
        \relative c''{ \hide Stem
      \stompA c4\- s4
      s1*5
      \uNw c16 c8.\rest
      }>> \stopStaff s4 \startStaff 
      <<\relative c''{\hide NoteHead       
                   c8 \stompC c8
                   c4 
                   8 16 \uNw c16_.}
                   \\
                   \relative c''{\hide Stem 
                 c8\rest \stompC c8\-
                 s4
                 s8. \uNw c16
                 }>> \stopStaff s4
                 \startStaff r16[ \stompA c8.]\- \uNw c16-.[ r8.] \stopStaff
     %79
     s4 \startStaff 
     <<\relative c''{\hide NoteHead       
                   c8[ s16
                   \stompC c16]
                   c4 
                   16  \stompB  c8 s16
                   \uNw c16_.[ c8] s16
                   }
                   \\
                   \relative c''{\hide Stem 
                 b8.\rest \stompC c16\-
                 s4 \stemUp
                 s16\stompB c8.\-
                 \uNw c16 c8.\rest
                 }>> 
       <<\relative c''{\hide NoteHead       
                   c8[ s16
                   \stompB c16] 
                   16[  \uNw 16_. 8] }
                   \\
                   \relative c''{\hide Stem 
                 c8.\rest \stompB c16\-
                 s16  \uNw c16 c8\rest }>> 
       <<\relative c''{\hide NoteHead       
                   c8[ s16
                   \stompB c16] 
                   4
                    \uNw 16_.[ 8] s16 
                    c8[ \stompB c8]
                 16[ \uNw c16_. c8]   
                 %82
                 \stopStaff s4 \startStaff
                 c16[ \stompB c8] s16
                 c16 \uNw c16_. c8
                     }
                   \\
                   \relative c''{\hide Stem 
                 c8.\rest \stompB c16\-
                 s4  \uNw c16 c8.\rest 
                 c8\rest \stompB c8\-
                 s16 \uNw c16 c8\rest
                 \stopStaff s4 \startStaff \stemUp
                 c16\rest \stompB c8.\-
                 s16 \uNw c16 c8\rest
       }>> \stopStaff s4
       %83
       s2 \startStaff
       <<\relative c''{\hide NoteHead       
                   c8[ s16 \stompB c16]
                   c4 
                   8 16 \uNw c16_.}
                   \\
                   \relative c''{\hide Stem 
                 c8.\rest \stompB c16\-
                 s4
                 s8. \uNw c16
                 }>> \stopStaff s2.
       %85
       s4 \startStaff 
       <<\relative c''{\hide NoteHead       
                   c16[ \stompB c8] s16
                   c4 
                   16 \uNw c16_. 8}
                   \\
                   \relative c''{\hide Stem \stemUp
                 c16\rest \stompB c8.\-
                 s4
                 s16 \uNw c16 c8\rest
                 }>> \stopStaff
        %86
        s2 \startStaff
       <<\relative c''{\hide NoteHead       
                   c16[ \stompC c8] s16
                   c4 
                   16[ \stompB c8] s16 c8 \uNw c16_. 16}
                   \\
                   \relative c''{\hide Stem \stemUp
                 c16\rest \stompC c8.\-
                 s4
                 %87
                 s16 \stompB c8.\- s8 \uNw c16 c16\rest
                 }>> \stopStaff s2
        %88
        s1
        %89
        s4 \startStaff
        <<\relative c''{\hide NoteHead 
                    \tuplet 3/2{c8 c8 \stompA c8}
                    4
                    4
                    %90
                    4
                    4}
      \\
      \relative c''{\hide Stem
                   \omit TupletBracket \omit TupletNumber 
                   \tuplet 3/2{c8\rest c8\rest \stompA c8\-}
                   s2
                   %90
                   s4
                   s4
    }>>
    <<\relative c''{\hide NoteHead
      \stompB c4  4
      16 \uNw c16_. c8}
      \\
      \relative c''{\hide Stem
    \stompB c4\- s4
    s16 \uNw c16 c8\rest
    }>> 
    <<\relative c''{\hide NoteHead \noLedgers
      \stompB c4 
      16[ \stompC e8] s16
      4 4 4
      8 \stompB c8
      4 4}
       \\
      \relative c''{\hide Stem \noLedgers
    \stompB c4\- 
    s16 \stopStaff \twoLinesStaff \startStaff \stemUp \stompC e8.\-
    s2.
    s8 \stompB \stopStaff \oneLineStaff \startStaff c8\-
    s2 }
    \\
       \relative c''{s4 \noLedgers \stemDown
    s4 f,16\rest[ 
     \override TextScript.extra-offset = #'(-17 . 3)  
    \uN f16-._\markup{\box{"tap tempo"}} f8\rest]
    f16-.[ f8.\rest]}>>
    \stopStaff \twoLinesStaff \startStaff
     <<\relative c''{\hide NoteHead \noLedgers
      \stompC e4 
      4 4
      %94
      4 4
       16 \stopStaff \oneLineStaff \startStaff \uNw c16_. c16 \stompA c16
       4
       %95
       4 
       8[ \uNw c16_. c16]}
       \\
      \relative c''{\hide Stem \noLedgers
    \stompC e4\- 
      s2
      %94
      s2
       s16 \stopStaff \oneLineStaff \startStaff \uNw c16 c16\rest \stompA c16\-
       s4
       %95
       s4 
       s8 \uNw c16 c16\rest}
    \\
       \relative c''{s2 \noLedgers \stemDown
     f,8\rest[ 
     \override TextScript.extra-offset = #'(-20 . 3)  
    \uN f16-._\markup{\box{"tap tempo"}} f16\rest]
     f16\rest[ f16-. f8\rest]}>> \stopStaff s4 \startStaff
     <<\relative c''{\hide NoteHead
                     \tuplet 3/2{c8 \stompB c8 8}
                     4 4 \uNw c16_.[ c8] s16
       }
       \\
       \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
     \tuplet 3/2{c8\rest \stompB c4\- }
     s2 \uNw c16 c8.\rest}>> \stopStaff s4
     %97
     s4 \startStaff
     <<\relative c''{\hide NoteHead  \noLedgers     
                    \tuplet 3/2{c8 \stompC c8 8}
                    4 \uN c16_.[ c8] s16}
      \\
      \relative c''{\hide Stem
                   \omit TupletBracket \omit TupletNumber 
                   \tuplet 3/2{c8\rest \stompC c4\-}
                   s4 \uNw c16 c8.\rest
    }>>\stopStaff 
    %98
    s2. \startStaff 
    <<\relative c''{\hide NoteHead 
                    c8 \stompA c8
        4 \stompB
        c4 \uNw c16_.[ c8] s16}
        \\
        \relative c''{\hide Stem c8\rest \stompA c8\-
        s4 \stompB
        c4\- \uNw c16 c8.\rest 
      }>> \stopStaff s4
      %100-101
      s1*2
      %102
      s2 \startStaff 
      <<\relative c''{\hide NoteHead 
                    c8 \stompA c8
        8[ s16 \uNw c16_.] }
        \\
        \relative c''{\hide Stem c8\rest \stompA c8\-
        s8. \uNw c16 
      }>> \stopStaff 
      %103,104,105
      s1*3
      %106
      \startStaff
      r16[ \stompC c8\- s32 \uNw c32-.] \stopStaff s2.
      %107
      \startStaff
      r16[ \stompB c8.\-] \uNw 16-.[ r8.] \stopStaff s4
      \startStaff \stompB c4\- 
      %108
      \uNw c16-.[ r8.] 
     <<\relative c''{\hide NoteHead
       \stompA c4
       c16[ \uNw c16_. c8]}
       \\
       \relative c''{\hide Stem 
     \stompA c4\- 
       s16[ \uNw c16 c8\rest]}>> \stopStaff s4
      %109
      s2 \startStaff \stompA c4\- \uNw c16-.[ r8.]
      \stopStaff
      %110
      s4 \startStaff \tuplet 3/2{r8 \stompA c4\-}
      \uNw c16-.[ r8.] \stopStaff s4
      %111
      s4 \startStaff <<\relative c''{\hide NoteHead 
        c8[ s16  \stompC c16]
        4 
       8[ \uNw c16_. 16] }
        \\
        \relative c''{\hide Stem 
                      c8.\rest \stompC c16\-
      s4 
      s8 \uNw c16 c16\rest
      }>>\stopStaff
      %112,113
      s1*2
      %114
      \time 3/4
      s2 \startStaff <<\relative c''{\hide NoteHead
                       c16 \stompA c8
                       \stompC c16
                       4 4 4 4
                       4 4 4 \uNw 16_.[ c8] s16}
                       \\
                       \relative c''{\hide Stem 
                                     c16\rest \stompA c8\- \stompC c16\-
                                      s1
                                      s2. \uNw c16 c8.\rest}>>
     %117
     <<\relative c''{\hide NoteHead 
        c16[  \stompB c8]s16
        c16[
       \uNw c16_.  c8]}
        \\
        \relative c''{\hide Stem 
                      c16\rest \stompB \stemUp c8.\-
      s16 
      \uNw c16 c8\rest
      }>> \stopStaff s2
      %118-120
      s1*3
      %121
      s2. \startStaff <<\relative c''{\hide NoteHead
                        \stompC c4
                        c16 \uNw c16_. c8}
                        \\
                        \relative c''{\hide Stem \stompC c4\-
                        s16 \uNw c16 c8\rest}>> \stopStaff s2
      \startStaff
      <<\relative c''{\hide NoteHead
                        \stompB c4
                        c8[ s16 \uNw c16_.]}
                        \\
                        \relative c''{\hide Stem \stompB c4\-
                        s8. \uNw c16}>> \stopStaff s2
      \startStaff
      <<\relative c''{\hide NoteHead
        c16[ \stompA c8] s16
        c4
        \uNw c16_.[ c8] s16}
        \\
        \relative c''{\hide Stem \stemUp
      c16\rest \stompA c8.\-
      s4
      \uNw c16 c8.\rest}>> \stopStaff s2
      %125
      s2. \startStaff <<\relative c''{\hide NoteHead 
        \tuplet 3/2{c8[ c8 \stompA  c8]}
        c8[ s16 c16]
        4 \uNw c16_.[ c8] s16}
      \\
      \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{b8\rest b8\rest \stompA c8\-}
      s2
     \uNw c16 c8.\rest
      }>> \stompA c4\-
      %127
      <<\relative c''{\hide NoteHead 
        \tuplet 3/2{\uNw c16_.[ c16 \stompB c8 8]}
        \tuplet 3/2{8[ 8 \stompC c8] }
        \tuplet 3/2{8[ 8 \stompB c8]}
        4
        16[ \uNw c16_. c8]}
      \\
      \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
       \tuplet 3/2{\uNw c16 c16\rest \stompB c8\- s8}
       \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{s4 \stompC c8\- }
       \omit TupletBracket \omit TupletNumber
       \tuplet 3/2{s4 \stompB c8\-}
        s4
        s16 \uNw c16 c8\rest
      }>>
      <<\relative c''{\hide NoteHead 
        \tuplet 3/2{c8[ c8 \stompB c8]}
       16 \uNw c16_. c16 \stompB c16
        4
        16[ \uNw c16_. c8]}
      \\
      \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
       \tuplet 3/2{c8\rest c8\rest \stompB c8\-}
       s16 \uNw c16 c16\rest \stompB c16\-
        s4
        s16 \uNw c16 c8\rest
      }>> \stopStaff s2.
      %130
      \startStaff r32[ \stompB c8.\- \uNw c32-.] \stopStaff s2 \startStaff
      <<\relative c''{\hide NoteHead
      b8[ s16 \stompA c16]
       8[ b8]}
       \\
       \relative c''{\hide Stem  b8.\rest \stompA c16\-
       s8 b8\rest}>> \stopStaff s2.
      %132
      s2. \startStaff <<\relative c''{\hide NoteHead
        c8[ s16 \stompA c16]
        c4
        c16[ \stompB 8] s16
         4 \uNw c16_.[ c8] s16}
        \\
        \relative c''{\hide Stem \stemUp
      c8.\rest \stompA c16\-
      s4
      s16 \stompB c8.\-
      s4 \uNw c16 c8.\rest}>> \stopStaff
      %134
      s4 \startStaff <<\relative c''{\hide NoteHead
        \stompC c4
        16[ \uNw c16_. c8]
        }
        \\
        \relative c''{\hide Stem 
       \stompC c4\-
      s16 \uNw c16 c8\rest }>> \stopStaff s4
      %135
      s4 \startStaff 
      <<\relative c''{\hide NoteHead
        \stompC c4
        16[ \uNw c16_. c8]
        }
        \\
        \relative c''{\hide Stem 
       \stompC c4\-
      s16 \uNw c16 c8\rest }>> \stopStaff s4
      %136
      \startStaff
      <<\relative c''{\hide NoteHead 
       c8 \stompB c8
       4
       \tuplet 3/2{8[ \uNw c16_. c16 c8]}}
       \\
       \relative c''{\hide Stem 
        b8\rest \stompB c8\-
       s4
       \omit TupletBracket \omit TupletNumber
       \tuplet 3/2{s8 \uNw c16 c16\rest b8\rest}}>>
      <<\relative c''{\hide NoteHead
       b8[ s16 \stompA c16]
       8[ s16  \uNw c16_.]}
       \\
       \relative c''{\hide Stem 
      b8.\rest \stompA c16\-
       s8. \uNw c16 }>> \stopStaff s2.
      %138,139,140
      s1*3
      %141
      s2 \startStaff
      <<\relative c''{\hide NoteHead 
       b16[ \stompB c8] s16
       8[ s16 \uNw c16_.] }
       \\
       \relative c''{\hide Stem \stemUp
        c16\rest \stompB c8.\-
       s8. \uNw c16}>> \stopStaff
      %142
      s1
      %143
      \startStaff
      <<\relative c''{\hide NoteHead \noLedgers 
          \stompC c4 4 4 \uNw c16_.[ c8] s16}
          \\
          \relative c''{\hide Stem \noLedgers 
        \stompC c4\- s2 \uNw c16 c8.\rest}>>
      \stopStaff 
      %144
      s2. \startStaff
      <<\relative c''{\hide NoteHead 
        \stompB c4
       \tuplet 3/2{8[ \uNw c16_. c16 c8] }}
       \\
       \relative c''{\hide Stem 
        \stompB c4\-
        \omit TupletBracket \omit TupletNumber
       \tuplet 3/2{s8 \uNw c16 c16\rest c8\rest }}>> \stopStaff s2.
      %146
      s1
      %147
      s4 \startStaff 
      r32[ \stompA c8..\-] 
      \uNw c16-.[ r8.]
      \stopStaff s4
      %148
      \startStaff  <<\relative c''{\hide NoteHead 
          c16[ \stompA c8] s16
          c16[ \uNw c16_. c8] }
          \\
          \relative c''{\hide Stem \stemUp
                        b16\rest \stompA c8.\-
      s16 \uNw c16 c8\rest}>> \stopStaff s4 \startStaff
      <<\relative c''{\hide NoteHead
       \stompB c4
       8[ \uNw c16_. c16]}
       \\
       \relative c''{\hide Stem 
      \stompB c4\-
      s8 \uNw c16 c16\rest}>> 
      <<\relative c''{\hide NoteHead  
          \tuplet 3/2{c8[ 8  \stompC c8]}
        4
        8.[ \uNw c16_.]
        }
      \\
      \relative c''{\hide Stem 
       \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{c8\rest c8\rest  \stompC c8\-}
        s4
        s8. \uNw c16
      }>> \stopStaff 
      %150
      s4 \startStaff 
      <<\relative c''{\hide NoteHead 
        c8[ \stompB c8]
        4 4
        16[ \uNw c16_. c8]}
       \\
       \relative c''{\hide Stem 
        c8\rest \stompB c8\-       
        s2
        s16 \uNw c16 c8\rest}>> \stopStaff s4 \startStaff
      <<\relative c''{\hide NoteHead 
        c16[ \stompB c8 s16]
       8.[ \uNw c16_.]}
       \\
       \relative c''{\hide Stem  \stemUp
      c16\rest \stompB c8.\-
      s8. \uNw c16}>> 
      %152,153
      \stopStaff s1*2
      %154
      \startStaff <<\relative c''{\hide NoteHead 
        c32[ \stompC c8] s16.]
        32[ \uNw c16._.  8]  }
      \\
      \relative c''{\hide Stem \stemUp
         c32\rest \stompC c8..\-]
        s32[ \uNw c16.  c8\rest] 
      }>> <<\relative c''{\hide NoteHead 
        c8[ \stompA  c8]
       8[  \uNw c16_. c16]}
       \\
       \relative c''{\hide Stem 
      c8\rest \stompA  c8\-
       s8 \uNw c16 c16\rest}>>
      %155
      \stopStaff s2. \startStaff
      <<\relative c''{\hide NoteHead 
        c8[ s16. \stompB c32]]
        4 4 \uNw c16_.[ c8] s16
        }
      \\
      \relative c''{\hide Stem 
        c8..\rest \stompB c32\-
        s2 \uNw c16 c8.\rest
      }>> <<\relative c''{\hide NoteHead 
        c8[  \stompA c8]
       8[  \uNw c16_. c16]}
       \\
       \relative c''{\hide Stem c8\rest
         \stompA c8\-
      s8 \uNw c16 c16\rest}>>
      <<\relative c''{\hide NoteHead 
       \stompC c4
        4 \uNw c16_.[ c8] s16
        }
      \\
      \relative c''{\hide Stem 
        \stompC c4\- 
        s4 \uNw c16 c8.\rest
      }>> \stopStaff
      %158,159
      s1*2 \startStaff
      %160
      <<\relative c''{\hide NoteHead 
        \tuplet 3/2{c8[ c8 \stompB c8]}
        4 4 \uNw c16_.[ c8] s16}
      \\
      \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber 
      \tuplet 3/2{c8\rest c8\rest \stompB c8\-}
       s2 \uNw c16 c8.\rest
      } >> \stopStaff 
      %161
      s4 \startStaff
      <<\relative c''{\hide NoteHead 
       c16[ \stompC c8] s16 
        8.[ \uNw c16_.]
        }
      \\
      \relative c''{\hide Stem \stemUp
        c16\rest \stompC c8.\-
        s8. \uNw c16
      }>> \stopStaff s4
      %162
      \startStaff <<\relative c''{\hide NoteHead 
        c8[ \stompB c8]
        4 4 \uNw c16_.[ c8] s16 
        }
      \\
      \relative c''{\hide Stem 
        c8\rest  \stompB c8\- 
        s2 \uNw c16 c8.\rest
      }>> \stopStaff 
      %163
      s1 \startStaff 
      %164
      <<\relative c''{\hide NoteHead
        c8[ s16 \stompC c16]
       4 4 
        \uNw c16_.[ c8] s16}
        \\
        \relative c''{\hide Stem
      c8.\rest \stompC c16\-
      s2
      \uNw c16 c8.\rest}>> \stopStaff
      %165
      s4 \startStaff <<\relative c''{\hide NoteHead
        \tuplet 3/2{c8[ 8  \stompC c8]}
        4 \stompB c4
        \uNw c16_.[ c8] s16}
      \\
      \relative c''{\hide Stem 
       \omit TupletBracket \omit TupletNumber
        \tuplet 3/2{c8\rest c8\rest \stompC c8\- }
        s4 \stompB c4\-
      \uNw c16 c8.\rest}>> \stopStaff s2 \startStaff
      <<\relative c''{\hide NoteHead 
        c16[ \stompB  c8] s16
        %167
        c8 \uNw c16
        \stompC c16
        4 
        16[ \uNw c16_. c8]
        }
      \\
      \relative c''{\hide Stem  \stemUp
        c16\rest \stompB  c8.\-
        %167
        s8 \uNw c16
        \stompC c16\-
        s4 
        s16 \uNw c16 c8\rest
      }>> \stopStaff s4
      %169
      s2. \startStaff  <<\relative c''{\hide NoteHead 
        \stompB  c4
        16[ \uNw c16_. c8] }
      \\
      \relative c''{\hide Stem 
        \stompB c4\- 
        %169
        s16 \uNw  c16 c8\rest 
      }>> \stopStaff s2.
      %170
      s4 \startStaff 
      <<\relative c''{\hide NoteHead 
        \tuplet 3/2{c8  8 
                    \stompC c8]}
        4 
        32[ \uNw  c16._. c8] }
      \\
      \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber 
        \tuplet 3/2{ c8\rest c8\rest \stompC c8\- }
        s4 
      s32 \uNw c16. c8\rest }>>
      %171
      <<\relative c''{\hide NoteHead
        c8[ \stompC c8]
        8[ \uNw c16_. c16]}
        \\
        \relative c''{\hide Stem 
      c8\rest \stompC c8\-
      s8 \uNw c16 c16\rest}>> \stopStaff s4 \startStaff
      <<\relative c''{\hide NoteHead
                      c8[ \stompA c8]
                      8.[ \uNw c16_.]
        }
        \\
        \relative c''{\hide Stem
        c8\rest \stompA c8\-
        s8. \uNw c16}>> \stopStaff s2.
      %173
      s2 \startStaff  <<\relative c''{\hide NoteHead
       c16[  \stompC c8] s16 
        4 
        %174
        4
        4
        16[ \uNw c16_. c8]
        }
      \\
      \relative c''{\hide Stem \stemUp
        c16\rest \stompC c8.\- 
        s4
        %174
        s2
        s16 \uNw c16 c8\rest
      }>> <<\relative c''{\hide NoteHead 
        b16[ \stompA  c8] s16
        8.[ \uNw c16_.] 
        }
      \\
      \relative c''{\hide Stem \stemUp
        c16\rest \stompA c8.\- 
        s8. \uNw c16
      }>> \stopStaff s4
      \startStaff  <<\relative c''{\hide NoteHead 
        c8[ s16. \stompA c32] 
        4
        4 
        32[ \stompC c8] s16.
        4 
        4 
        32[ \uNw c16_. s32 c8] 
        }
      \\
      \relative c''{\hide Stem \stemUp
        c8..\rest \stompA
       c32\-
        s2
        s32 \stompC c8..\-
        s4 
        s4
        s32 \uNw c16. c8\rest 
      }>> \stopStaff s2.
      %178
      s2. \startStaff <<\relative c''{\hide NoteHead 
        c8[ s16 \stompC c16]
        4
        16[ \uNw c16_. c8]
        }
      \\
      \relative c''{\hide Stem 
        c8.\rest \stompC c16\-
      s4
      s16 \uNw c16 c8\rest}>> \stopStaff s2
      %180
      s4 \startStaff <<\relative c''{\hide NoteHead \stompA c4
           32[ \stompC c8] s16.
           4 4 \stompB c4 4
           \tuplet 3/2{\uNw c16_.[ c8 s16 \stompB c8]}
           4 4 4 \stompA c4
           16[ \uNw c16_. c8]
           }
           \\
           \relative c''{\hide Stem \stemUp
                         \stompA c4\- s32 \stompC c8..\-
                         s2 \stompB c2\- \omit TupletBracket \omit TupletNumber
                         \tuplet 3/2{\uNw c16 c8.\rest \stompB c8\-}
                         s2. \stompA c4\-
                         s16 \uNw c16 c8\rest}>> \stopStaff s2.
      %184
      s2. \startStaff <<\relative c''{\hide NoteHead 
        c8[ s16 \stompB c16]
        4 8. \uNw c16_. \stompB
        c4 
        16[ \uNw c16_. c8]
        }
      \\
      \relative c''{\hide Stem 
        c8.\rest \stompB c16\-
        s4 s8. \uNw c16 \stompB
        c4\- 
        s16 \uNw c16 c8\rest
      }>> \stopStaff
      %186
      s2. \startStaff <<\relative c''{\hide NoteHead 
        c8[ s16 \stompB 
        c16]
        %187
        16[ \uNw c8] s16 
        }
      \\
      \relative c''{\hide Stem 
        c8.\rest \stompB c16\- 
        %187
        s16 \uNw c16 c8\rest
      }>> <<\relative c''{\hide NoteHead 
        c16[  \stompA c8] s16
        8[ \uNw c16_. c16] 
        }
      \\
      \relative c''{\hide Stem \stemUp
        c16\rest \stompA c8.\- 
        s8 \uNw c16 c16\rest
      }>> \stopStaff s4
      %188,189,190
      s1*3
      %191
      s2. \startStaff <<\relative c''{\hide NoteHead
                          \stompA c4
                          %192
                          4 4 \stompC c4^\markup{\box{\column{
                          \line \lower #3 {"catch only"}
                          \line \lower #1 {"the resonance"}}}} 4
                          16[ \stompB c8] s16
                          8 \stompC c8
                          4 4 8[ \uNw c16_. c16]}
            \\
            \relative c''{\hide Stem \stemUp
                          \stompA c4\-
                          %192
                          s2 \stompC c4\- s4
                          s16 \stompB c8.\-
                          s8 \stompC c8\-
                          s2 s8 \uNw c16 c16\rest}>>
      <<\relative c''{\hide NoteHead 
        c16[ \stompA c8] s16
        8[ s16 \uNw c16_.]}
        \\
        \relative c''{\hide Stem \stemUp 
      c16\rest \stompA c8.\-
        s8. \uNw c16}>> \stopStaff s4 \startStaff
      %195
      <<\relative c''{\hide NoteHead 
        c16[ \stompA c8] s16
        16[ \uNw c16_. c8]}
        \\
        \relative c''{\hide Stem \stemUp
      c16\rest \stompA c8.\-
       s16 \uNw c16 c8\rest  }>> <<\relative c''{\hide NoteHead 
        c8[ s16 \stompA c16]
        4 \uNw c16_.[ c8] s16}
        \\
        \relative c''{\hide Stem
      c8.\rest \stompA c16\-
       s4 \uNw c16 c8.\rest  }>> <<\relative c''{\hide NoteHead 
        c8[  \stompA c8]
        \uNw c16_.[ \stompA c8] s16
         8.[ \uNw c16_.]}
        \\
        \relative c''{\hide Stem \stemUp
      c8\rest \stompA c8\-
       \uNw c16 \stompA c8.\-
      s8. \uNw c16}>> \stopStaff 
      %197
      s4 \startStaff <<\relative c''{\hide NoteHead 
        c8[  \stompA c8]
         8[ \uNw c16_. c16]}
        \\
        \relative c''{\hide Stem
      c8\rest \stompA c8\-
      s8 \uNw c16 c16\rest}>> <<\relative c''{\hide NoteHead 
        c16[ \stompA c8] s16
        c16[ \uNw c16_. \stompA c8]
                                    8.[ \uNw c16_.]}
        \\
        \relative c''{\hide Stem \stemUp
      c16\rest \stompA  c8.\-
       s16 \uNw c16 \stompA c8\-
      s8. \uNw c16 }>> <<\relative c''{\hide NoteHead 
        c16[ \stompA c8] s16
        16[ \uNw c16_. c8]}
        \\
        \relative c''{\hide Stem \stemUp
      c16\rest \stompA c8.\-
       s16 \uNw c16 c8\rest  }>> <<\relative c''{\hide NoteHead 
        c8[  \stompA c8]
         8[ \uNw c16_. \stompA c16]
                                   c8.[ \uNw c16_.]}
        \\
        \relative c''{\hide Stem
      c8\rest \stompA c8\-
      s8 \uNw c16 \stompA c16\-
      s8. \uNw c16}>> \stopStaff s4
      %200
      s2 \startStaff <<\relative c''{\hide NoteHead 
        c16[ \stompA c8] s16
        16[ \uNw c16_. \stompA c8]
                       8[ \uNw c16_. c16]}
        \\
        \relative c''{\hide Stem \stemUp
      c16\rest \stompA c8.\-
       s16 \uNw c16 \stompA c8\-
      s8 \uNw c16 c16\rest}>> <<\relative c''{\hide NoteHead 
        \tuplet 3/2{c8[ \stompA c8 8]}
        16[ \uNw c16_. c8]}
        \\
        \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{c8\rest \stompA c4\-}
       s16 \uNw c16 c8\rest }>> \stopStaff s4
      %202
      \startStaff <<\relative c''{\hide NoteHead 
        c16[ \stompA c8] s16
        16[ \uNw c16_. c8]}
        \\
        \relative c''{\hide Stem \stemUp
      c16\rest \stompA c8.\-
       s16 \uNw c16 c8\rest  }>> \stopStaff s4 \startStaff
      <<\relative c''{\hide NoteHead 
        \tuplet 3/2{c8[ c8 \stompA  c8]}
        8[ \uNw c16_. c16]}
        \\
        \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{c8\rest c8\rest \stompA c8\-}
       s8 \uNw c16 c16\rest }>> \stopStaff s2 \startStaff
      <<\relative c''{\hide NoteHead 
        \tuplet 3/2{c8[ c8 \stompA  c8]}
        8.[ \uNw c16_. ]}
        \\
        \relative c''{\hide Stem \omit TupletBracket \omit TupletNumber
      \tuplet 3/2{c8\rest c8\rest \stompA c8\-}
       s8. \uNw c16 }>> \stopStaff s2.
      %205
      \startStaff \stompA c8..\- \uNw c32_.
      <<\relative c''{\hide NoteHead 
        c16[ \stompA c8] s16
        8[ \uNw c16_. c16]}
        \\
        \relative c''{\hide Stem \stemUp
      c16\rest \stompA c8.\-
       s8 \uNw c16 c16\rest  }>> \stopStaff s4 \startStaff
      %206
      \stompA c8..\- \uNw c32_. \stopStaff s4 \startStaff
      <<\relative c''{\hide NoteHead 
        c16[ \stompA c8] s16
        8[ \uNw c16_. c16]}
        \\
        \relative c''{\hide Stem \stemUp
      c16\rest \stompA c8.\-
       s8 \uNw c16 c16\rest  }>>
      
      
      
      
      
      
      
   
      
     
   
      
      
      
    
   
    
    }



>>
    
    

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