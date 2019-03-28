%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2018 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\version "2.18.2"

\include "lily-snippets.ily"

brillante = \markup {\italic #"brillante"}
cadenzaAdLib = \markup {\italic #"Cadenza ad lib."}
espressione = \markup {\italic #"espressione"}
grazioso = \markup {\italic #"grazioso"}
leggiero = \markup {\italic #"leggiero"}
morendo = \markup {\italic #"morendo"}
piuMoto = \markup {\italic #"più moto"}
pocoDim = \markup {\italic #"poco dim."}
pocoRit = \markup {\italic #"poco rit."}
risoluto = \markup {\italic #"risoluto"}
sostenuto = \markup {\italic #"sostenuto" }
tenutoTxt = \markup { \italic #"tenuto" }
tranquillo = \markup {\italic #"tranquillo"}
pMarcato = #(make-dynamic-script
             (markup #:line (
               #:dynamic "p"
               #:normal-text
               #:italic " marcato"
               #:hspace -9.9)))


globalMovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4=112
  \key d \minor
}

violinMovementIpI = \relative d'' {
  <d d,>4.\f\downbow a8\upbow c bes a g | f e d4 r a'-4\upbow\pDolce |
  %% 3
  e e e f8( g) | f e d4 r a'\upbow | e e e f8( g) | f e d4 r d'\upbow |
  %% 7
  a a a bes8( c) | bes a g4 r bes'\upbow\cresc | e,8 d c4 r a'\upbow |
  %% 10
  d,8 c bes4 r g'\upbow | f->\f^\pocoRit e-> d-> c-> |
  %% 12
  bes-> a-> g-> d-> | f2\> e4.\fermata( d8) | d'\p^\aTempo( a d e) f( a, f' g) |
  %% 15
  e( a, e' f) g( a, g' a) | f( a, f' g) a( a, g' a) |
  %% 17
  bes a g f e d cis e | d4 r r r8 a\f\upbow | d\downbow a d e f c f g |
  %% 20
  a4 r r r8 c,\upbow | f\downbow c f g a e a b | c4-4-> b-4-> a-> g-> |
  %% 23
  f-> e-> d-> \once \override Hairpin.to-barline = ##f a'->\>( |
  %% 24
  b,--\!)
  \once \set decrescendoText = \pocoDim
  \once \set decrescendoSpanner = #'text
  b--\> b-- c8( d) | c b a4\! r f'\upbow |
  %% 26
  g,\downbow g g a8( bes) | d2\> des\! |
  %% 28
  c4
  \once \override BreathingSign.text = \markup {
    \center-column {
      { \musicglyph #"scripts.ufermata" }
      { \musicglyph #"scripts.caesura.curved" }
      %\translate #'(-12.75 . 10.6)
    }
  }
  \breathe
  c,\p^\rit e g | bes( b) d( c) | f2_\dolce^\aTempo a,4( f') |
  %% 31
  a,( f') a,( f'~ | f) f( e d) | cis\<( d\! e\> d\!) | d2 e,4( d') |
  %% 35
  e,( d') e,( d'~ | d) d( c bes) | gis\<( a\! bes\> a\!) |
  %% 38
  a'2\mf cis,4( a') | d,( a') g-- fis-- | g2 b,4( g') |
  %% 41
  c,( g') f-- e-- | f2\p a,4\<( d\!) | d2 d,4\<( bes'\!) | a2.( g4) |
  %% 45
  c2.\<( cis4\!) | d2 d,4( c') | bes2 bes,4( a'-4) |
  %% 48
  g8\< d fis g bes d a' g | f2.\>^\rit e4\! |
  %% 50
  f16_\grazioso^\aTempo( g a g) f8-.( e-.) d-. c-. d-. e-. |
  %% 51
  f16( g a g) f8-.( e-.) d-. c-. d-. e-. |
  %% 52
  f16( g a g) f8-.( e-.) d16( e f e) d8-.( c-.) |
  bes16( c d c) bes8-.( a-.) g4 c |
  %% 54
  f,16( g a-4 g) f8-.( e-.) d-. c-. d-. e-. |
  f16( g a g) f8-.( e-.) d-. c-. d-. e-. |
  f16( g a-4 g) f8-.( e-.) d16( e f e) d8-.( c-.) |
  bes16( c d c) bes8-.( a-.) g4 c | f16( g a g) f8-.( e-.) d c d e |
  f\< g a bes b c d e | f4.\f c8 e^\rit d c bes | a g f4 r2 |
}

violinMovementIpII = \relative a' {
  \cadenzaOn r4^\cadenzaAdLib a\downbow( bes a)
  d\<( cis f e\!) bes'2.( a4) \tuplet 3/2 {g\>( e cis\!)}
  a4_\markup{\italic {#"attacca"}}\fermata \cadenzaOff \bar "|."
}

violinMovementIViolin = \new Voice {
  \violinMovementIpI
  \cueDuring #"pianoUpMovementI" #UP {R1*8}
  \violinMovementIpII
}

violinMovementIPiano = \new Voice {
  \violinMovementIpI R1*8 \violinMovementIpII
}

pianoUpMovementI = \new Voice \relative d' {
  \clef "C" d4.\f a8 c bes a g | f e d4 r2 |
  %% 3
  g8\p( a cis a g a cis a) | f( a d a f a d a) |
  g( a cis a g a cis a) | f( a d a f a f' d) |
  %% 7
  %\clef "G"
  c( d fis d c d fis d) | bes( d g d bes d g d) |
  bes\cresc( c e c a c f c) | a( bes d bes g bes e bes) |
  %% 11
  <f' b, gis>4\f^\pocoRit <e cis a> <d a> <d c> |
  %% 12
  <d bes> <fis d c> <g d bes> r | r\> <f d a>-. r <g cis, a>-. |
  %% 14
  r\p^\aTempo <d f,>8( <e g,> <f a,>4) r | r <e g,>8( <f a,> <g bes,>4) r |
  r <f d>8\<( <g e> <a f>4) <g e>8( <a f> |
  %% 17
  <bes g>4\!) r r r8 a,-1\f | d-3 a d e f a, f' e | d4 r r r8 c8-1 |
  %% 20
  f-3 c f g a c, a' g | f4 r r r8 e8 |
  %% 22
  <e a c>4 <e gis b> <e a> <g a e'> | <f a d> <a c> <a b> r |
  %% 24
  << {d,1} {s4\p
            \once \set decrescendoText = \pocoDim
            \once \set decrescendoSpanner = #'text
            s\>} >> | << {c1} {s4 s\!} >> | <d bes>1 |
  %% 27
  r4\> <d g,> r <des g,>\! | <c g> r^\rit r2 | \clef "violin" R1 |
  %% 30
  r8\p^\aTempo <c' a f>4 <c a f>8 r <c a f>4 <c a f>8 |
  %% 31
  \repeat unfold 2 {r8 <c a>4 <c a>8} |
  %% 32
  \repeat unfold 2 {r8 <a f>4 <a f>8} |
  %% 33
  r8\< <a f>4 <bes f>\! <c f,>\> <bes f>8\! |
  %% 34 / 35
  \repeat percent 2 {\repeat unfold 2 {r8 <bes e,>4 <bes e,>8}} |
  %% 36
  r8 <bes e,>4 <bes e,> <a e> <g e>8 |
  %% 37
  << {r8 f4 f f f8} {s4\< s\! s\> s\!} >> |
  %% 38 / 39
  r8 << {\voiceOne c8( a' f)} \new Voice {\voiceTwo c4.} >> \oneVoice
  r8 << {\voiceOne cis8( a' f_~) | f\<( d fis d\! g\> d a' d,\!)}
        \new Voice { \voiceTwo cis4. | s1 } >> \oneVoice |
  %% 40 / 41
  r8 << {\voiceOne bes8( g' e)} \new Voice {\voiceTwo bes4.} >> \oneVoice
  r8 << {\voiceOne b8( g' e_~) | e\<( c e c\! f\> c g' c,\!)}
        \new Voice { \voiceTwo b4. | s1 } >> \oneVoice |
  %% 42
  r8\p a( f' c) r2 | r8 g( f' d) r2 | r8 f,( a c f c e c) |
  %% 45
  r8\< c( f a c a f ees) | r8\mf d( c' a) r2 | r8 bes,( g' d) r2 |
  %% 48
  r r4 << { <f d g,> } {s8\< s} >> |
  r8\>^\rit a,8( c a' g bes d c) |
  %% 50
  r8\p^\aTempo a( c a bes g c, bes') | r8 a( c a bes g c, bes' |
  %% 52
  a) r8 <c a>-. <bes g>-. <a f>-. r <a f>-. <g e>-. |
  %% 53
  <f d>-. r <f d>-. <e c>-. <d bes>4-. <e bes>-. |
  %% 54
  \clef "tenor" r8 f,( c' a bes g c, bes') | r8 f( c' a bes g c, bes' |
  a) r8 <c a>8-. <bes g>-. <a f>-. r <a f>-. <g e>-. |
  %% 57
  <f d>-. r <f d>-. <e c>-. <d bes>4-. <e bes>-. | <f a,>8 r r4 r2 |
  \clef "G" r8\< e'-2 f-1 g gis a-1 bes c | <f a,>4.\f c8 e d c bes |
  a8 g f4 r <c' c'> |
  %% 62 / 63
  <c g'>\f <c g'> <c g'>
  << {\voiceTwo c | c c }
     \new Voice {\voiceOne a'8 bes | a g f4} >> \oneVoice r4 <d d'> |
  %% 64 / 65
  \repeat unfold 3 { <d a'> }
  << {\voiceTwo d d d}
     \new Voice {\voiceOne bes'8 c | bes a g4} >> \oneVoice r4 <a, a'> |
  %% 66 / 67
  << {\voiceTwo a4 a}
     \new Voice {\voiceOne f'8 e d4} >> \oneVoice r4 <g, g'> |
  %% 68 / 69
  << {\voiceTwo g4 g}
     \new Voice {\voiceOne e'8 d c4} >> \oneVoice r4 <f, f'> |
  << {\voiceTwo f4 f}
     \new Voice {\voiceOne d'8 c bes4} >> \oneVoice r4 <e, e'> |
  <e cis'>2 <b' gis d> |
  \cadenzaOn <a cis,>4 s4*3 r4 s4*3 r1\fermata s2. \cadenzaOff \bar "|."
}

\addQuote "pianoUpMovementI" {\pianoUpMovementI}

pianoDownMovementI = \new Voice \relative d {
  d4. a8 c bes a g | f e d4 r2 | r r4 a'4( | d,--) d-- d-- r |
  %% 5
  r2 r4 a'( |  d,--) d-- d-- r |
  %% 7
  r2 r4 d'( |
  %% 8
  g,--) g-- g-- r | r c( f,) r | r bes( e,) r | d e f fis |
  g a bes r | r a-. r a,-. |
  %% 14
  \repeat percent 2 {r4 d'-. d,-. r} | r4 d'( d,) d'( |
  %% 17
  g,) r r r8 a8-5 | d a d e f-2 a, f'-1 e | d4 r r r8 c8 |
  f c f g a-2 c, a'-1 g | f4 r r r8 e8 | a4 b c cis | d e f r |
  <gis, e>1 | <a f> | <g f bes,> | r4 <f bes,> r <f b,> | <e c> r r2 | R1 |
  << {\voiceOne f'2 e | d e | c cis | d4 r r2}
     \new Voice {\voiceTwo f,1~ | f | f | bes2 a } >> \oneVoice |
  g2 fis | a g |
  << {\voiceOne r4 g a bes | b c d c }
     \new Voice {\voiceTwo c,1 | f } >> \oneVoice |
  f2 a | bes1 | e,2 g | a1 | d,2 r | bes2 r | c2.( bes4) | a2.( g4) |
  fis2 r | g r | r2 r4 bes8( b | c1) | \repeat percent 2 { f4 r c r } |
  f r r2 | r r4 c-. | \repeat percent 2 { f4 r c r } | f8 r r4 r2 |
  r r4 c | f,8 r r4 r2 | r r4 c''-> |
  <f f,>4. <c c,>8 <e e,> <d d,> <c c,> <bes bes,> |
  <a a,> <g g,> <f f,>4 r2 | c8 c' d, c' e, c' c, c' |
  f, c' g c a c r4 | d,8 d' e, d' fis, d' d, d' |
  g, d' a d bes d <e cis>4 | <f d> <f d> <f d> <d b> |
  <e c> <e c> <e c> <c a> | <d bes> <d bes> <d bes> <bes g> | a2 e |
  \cadenzaOn a,4 s4*3 r4 s4*3 r1\fermata s2. \cadenzaOff \bar "|."
}

%%% ---------------------------

globalMovementII = {
  \time 6/8
  \tempo "Andante." 8 = 104
  \key d \major
}

violinMovementII = \relative g {
  \partial 8 a8\p\upbow | fis'4. e | d~ d8 e( fis) | g4. fis |
  %% 4
  e~\< e8 fis( g\!) | a4. b4( a8) | a8-4\dim( g fis-.) e( d b\!) |
  %% 7
  a4\<( d8\!) fis4\>( e8\!) | d4.~ d8 r d'16\upbow\mf( e) |
  fis4_\espressione g16( fis) fis4 cis16( d) |
  %% 10
  e4 g16\>( fis) d4\! b16( cis) | d4\< fis16\!( e) cis4 ais16( b) |
  cis4 d16( e) fis4 b,16\<( cis) | d4\f g,16( fis) e4 a16( b) |
  %% 14
  cis4 fis,16( e) d4 g16( a) | b4.\dim bes | a8( b^\rit cis) d( e eis) |
  fis4.^\aTempo\p e | d~ d8 e( fis) | g4. fis | e~ e8\< fis( g\!) |
  a4. b4( fis8) | a8\dim( g fis) e( d b) | a4( d8) fis4( e8\!) |
  d2.~_\morendo | d4. d, | d'2.\pp\fermata \bar "|."
}

violinMovementIIViolin = \new Voice {\violinMovementII}
violinMovementIIPiano = \new Voice {\violinMovementII}

pianoUpMovementII = \new Voice \relative d' {
  \clef "alto" \partial 8 r8 | <d a fis>4.\p <cis a e> | <b fis d>2. |
  %% 3
  <e b g>4. <dis a fis> | <e g, e>2. | <a, e>4. <b a fis> | <b g> <b e,> |
  <a fis> <cis a g> |
  %% 8
  <d a fis>8 fis-_[ fis-_] fis-_ fis-_ fis~ |
  %% 9
  fis_\espressione fis fis fis4.:8 | fis4.:8 fis4.:8 | g4.:8 g8 g g~ |
  g fis fis fis fis r | <b g d>4.\mf( <a g cis,>) |
  <a fis cis>( <g fis b,>) |
  %% 15
  \once \override Hairpin.to-barline = ##f
  <g e b>\> <g d bes>( | <g cis, a>8\!) r_\rit r r4. |
  %% 17
  \clef "violin" r16_\aTempo fis'( b d b fis) r e( a cis a e) |
  \clef "alto" r16 fis,,( b d b fis fis' d b d b fis) |
  r16 b( e g e b) r a( dis fis dis a) |
  r g( c e c g g' e c e c g) | r a( e' a e a,) r b( fis' a fis b,) |
  r\dim b( e g e b) r d( e b' e, d) |
  r d( fis a fis d) r cis( g' a g cis) |
  \clef "violin" r\pMarcato a( d fis d a a' fis d fis d a) |
  \clef "alto" <bes, g>4. <g e> | <a fis>2.\fermata\pp \bar "|."
}

pianoDownMovementII = \new Voice \relative d {
  \partial 8 r8 | d4. a | b2. | e4. b | c2. | cis4. dis | e g, |
  %% 7
  a a, | d8 r r r4. | <d'' b>4.( <e cis>) | <cis ais>( <d b>) |
  %% 11
  <d b>( <cis e,>) | <ais e>( <b e,>4) r8 | e,4.( a) | d,( g) |
  %% 15
  cis, e( | <a a,>8) r r r4. | d,4. a | b2. | e4. b | c2. |
  cis4. dis | e  g, | a( <a a,>) | <a d,>2. | <d g,> |
  <a d,>\fermata \bar "|."
}

%%% ------------

globalMovementIII = {
  \time 2/4
  \tempo "Allegretto." 4=116
  \key d \minor
}

violinMovementIII = \relative a'' {
  \grace s8 a4->\p f-> | g8-. f-. e-. d-. | a'-. a-. f-. f-. |
  %% 4
  g-. f-. e-. d-. | \repeat unfold 2 { a4-> e'-> | d2-> } |
  %% 9
  a'4-> f-> | g8-. f-. e-. d-. | a'8-. a-. f-. f-. | g-. f-. e-. d-. |
  %% 13
  \repeat unfold 2 { c4-> g'-> | f2-> } | e4->\f bes'-> |
  %% 18
  a8-. g-. f-. e-. | g-. f-. e-. f-. | d-. e-. f-. d-. |
  %% 21
  e4->\downbow a,-> | R2 | f'4->\downbow a,-> | R2 | g'4\downbow gis |
  %% 26
  a8 g fis e \bar "||" \key d \major d4 r | R2 | d2~\p\downbow |
  %% 30
  d4 cis8( d) | b4 b | cis a | a'8-.\< a-. a-. a-. |
  %% 34
  b-.\> a-. g-. fis-.\! | e4( a) | fis2 | \repeat unfold 4 {fis8-.} |
  g8( fis e d) |
  %% 39
  \repeat unfold 4 {cis8-.} | fis8\>( e d cis\!) | b4( cis) | fis,4( ais-^) |
  %% 43
  b->-^\f cis-> | d-> e-> | \repeat unfold 4 {a8-.} | b8( a g fis) |
  \repeat unfold 4 {e8-.} |
  %% 48
  a8( g fis e) | d4 e | a, cis | d2~ | d4 r \bar "||"
  \key d \minor \grace s8 a'4->\p\downbow fis-> | g8-. f-. e-. d-. |
  a'-. a-. f-. f-. | g-. f-. e-. d-. |
  \repeat unfold 2 { a4-> e'-> | d2-> } | e4->\f bes'-> |
  a8-. g-. f-. e-. | g-. f-. e-. f-. | d-. e-. f-. d-. | e4-> a,-> |
  R2 | f'4-> a,-> | R2*3 |
  \override BreathingSign.text = \markup {
    \center-column {
      { \smaller \musicglyph #"scripts.ufermata" }
      { \musicglyph #"scripts.caesura.curved" }
    }
  }
  <a a'>4\f\downbow^\cadenzaAdLib <a f'> \breathe | a\p f \breathe |
  <a g'>\f <a e'> \breathe | g\p e \breathe | a'8\espressivo f, e d |
  %% 76
  bes''\espressivo g, f e | g'\espressivo e, d c |
  a''\espressivo f, e d | f'\espressivo^\pocoRit d, c bes |
  f''\espressivo d, bes a | f'' d, a-1 gis-1 | a2-1\fermata |
  a'8-.\p\downbow^\aTempo a'-. a,-. a'-. |
  \repeat percent 3 {\repeat unfold 2 {a,-. a'-.} } |
  \repeat unfold 2 { a,4->( e'->) | d2 } |
  \tempo "Maestoso." a'4-> f-> | g8-> f-> e-> d-> | a4-> cis-> |
  <d d,>2\fermata \bar "|."
}

violinMovementIIIViolin = \new Voice { \violinMovementIII }

violinMovementIIIPiano = \new Voice { \violinMovementIII }

pianoUpMovementIII = \new Voice \relative a' {
  \grace s8 \repeat percent 4 { r\p <a f> r <a f> } |
  %% 5
  \repeat unfold 2 {
    \repeat unfold 2 {r8 <a g>} | {r8 <a f>4 <a f>8}
  }
  %% 9
  \repeat percent 4 { \repeat unfold 2 {r <a f>} } |
  %% 13
  \repeat unfold 2 {
    \repeat unfold 2 { r8 <c bes> } | r8 <c a>4 <c a>8
  }
  %% 17
  \repeat percent 2 {r8\mf <a g> r <a g>} |
  %% 19
  \repeat percent 2 {\repeat unfold 2 {r <a f>} } | <a e>8 r r4 |
  %% 22
  e4->\f a,-> | R2 | f'4-> a,-> | <g' e c> <gis e d> |
  %% 26
  <a e cis>\> r\! \bar "||"
  \key d \major \clef "tenor"
  r8 << { \voiceOne <a,-4 fis-2> [ r8 <a fis> ] | r8 <a fis>4 <a fis>8 }
        \new Voice {\voiceTwo s8 e4-1-> | d2->-1 } >> \oneVoice |
  \repeat unfold 3 {
    r8 << { \voiceOne <a' fis> [ r8 <a fis> ] | r8 <a fis>4 <a fis>8 }
        \new Voice {\voiceTwo s8 e4-> | d2-> } >> \oneVoice |
  }
  r8 << {\voiceOne <a' g>8 [ r <a g> ] | r8 <a fis>4 <a fis>8 }
         \new Voice {\voiceTwo s8 cis,4 | d2} >> \oneVoice \clef "violin"
  r8 << {\voiceOne <a'' fis>8 [ r <a fis> ] | r <a fis>4 <a fis>8 }
        \new Voice {\voiceTwo s8 e4-> | d2->} >> \oneVoice |
  r8 << {\voiceOne <b'-4 g-2>8 [ r <b g> ] | r8 <b g>4 <b g>8}
        \new Voice {\voiceTwo s8 fis4-1-> | e2-1-> } >> \oneVoice
  %% 41
  r8 <fis b,> r <g cis, b> | r <fis d b> r <fis e cis> |
  <fis d b>4-> <a e cis>-> | <a fis d>-> <cis a e>-> |
  \repeat unfold 4 {fis8-.} | g fis e d | cis cis cis cis |
  fis e d cis | r <a d,> r <bes g d> | r <a fis d> r <a g e> |
  r <a fis d> r <b g d> | <a fis d>4 r \bar "||" \key d \minor
  \grace s8 \repeat percent 4 {\repeat unfold 2 {r8 <a f>}}
  %% 57
  \repeat unfold 2 {
    \repeat unfold 2 {r8 <a g>} | {r8 <a f>4 <a f>8}
  }
  \repeat percent 2 { r\mf <a g> r <a g> } |
  \repeat percent 2 {\repeat unfold 2 {r <a f>} } |
  <a e> r r4 | e4->\f a,-> | R2 | f'4-> a,-> | <g' e c> <gis e d> |
  <a f d>\fermata r | R2*11 | R2\fermata | a4\p f | g8-. f-. e-. d-. |
  a' a f f | g f e d |
  \repeat unfold 2 {
    \repeat unfold 2 {r <a' g>} | r8 <a f>4 <a f>8
  }
  <a f>4\f <a d,> | <bes g>8 <a f> <g e> <bes f d> | <a f d>4 <a e cis> |
  <a f d>2\fermata \bar "|."
}

pianoDownMovementIII = \new Voice \relative g {
  \repeat percent 4 { \repeat unfold 2 { \acciaccatura gis8 <a d,>4 } } |
  \repeat unfold 2 { a4 e' | d2 } |
  \repeat percent 4 { \repeat unfold 2 { \acciaccatura gis,8 <a d,>4 } } |
  \repeat unfold 2 { c4 g' | f2 } |
  \repeat percent 2 { cis8 r a r } | \repeat percent 2 {d r a r} |
  cis8 r r4 | e,4-> a,-> | R2 | f'4-> a,-> | c bes | a8 g fis e \bar "||"
  \key d \major \repeat unfold 5 {<a d,>2~ | <a d,>} |
  <a' d,>2~ | <a d,> | <b e,>~ | <b e,> | d,4 e | fis8 r fis, r |
  b4-> a-> | d-> a'-> | \repeat unfold 4 {d8-.} | d8 r r4 | a8 a a a |
  a r r4 | fis4 g | a a, | d g, | <d' d,> r \bar "||" \key d \minor
  \repeat percent 4 { \repeat unfold 2 { \acciaccatura gis8 <a d,>4 } } |
  \repeat unfold 2 { a4 e' | d2 } |
  \repeat percent 2 {cis8 r a r} | \repeat percent 2 {d r a r} |
  cis8 r r4 | e,4-> a,-> | R2 | f'4-> a,-> | <c c,> <bes bes,> |
  <a a,>\fermata r | R2*11 | R2\fermata |
  \repeat percent 4 { \repeat unfold 2 { d,8 a' } } |
  \repeat unfold 2 { a'4 e' | d2 } | <d, d,>4 <d d,> |
  <e e,>8 <f f,> <g g,> <gis gis,> | <a a,>4 <a, a,> |
  <d d,>2\fermata \bar "|."
}

%%% ------------

\header {
  arranger = ##f
  composer = "Leo Portnoff"
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 9"
  source = "http://imslp.org/"
  title = "Concertino in D Minor"
}

\include "paper.ily"

fileBaseName = "Leo_Portnoff-opus_9"

define(`PianoMovement', `\score {
    <<
      \new Staff \with {
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
      } { \globalMovement$1 \violinMovement$1Piano }
      \new PianoStaff <<
        \new Staff = "up" {
          \accidentalStyle modern-cautionary
          \globalMovement$1 \pianoUpMovement$1
        }
        \new Staff = "down" {
          \accidentalStyle modern-cautionary
          \globalMovement$1 \clef bass \pianoDownMovement$1
        }
      >>
    >>
    \layout {
      indent = #0
    }
  }')

\book {
  \bookOutputName #(string-append fileBaseName "-piano")

  PianoMovement(`I')
  PianoMovement(`II')
  PianoMovement(`III')
}

define(`ViolinMovement', `
  \score {
    \new Staff {
      \compressFullBarRests \globalMovement$1 \violinMovement$1Violin
    }
    \layout {
      indent = #0
    }
  }')

\book {
  \bookOutputName #(string-append fileBaseName "-violin")
  ViolinMovement(`I')
  ViolinMovement(`II')
  ViolinMovement(`III')
}

\include "articulate.ly"

\book {
  \bookOutputName \fileBaseName
  \score {
    \articulate \unfoldRepeats
    \new StaffGroup <<
      \new Staff \with {
        midiInstrument = #"violin"
      } { \globalMovementI   \violinMovementIPiano
          \globalMovementII  \violinMovementIIPiano
          \globalMovementIII \violinMovementIII
        }
      \new PianoStaff \with {
        midiInstrument = #"acoustic grand"
      } <<
        \new Staff = "up" {
          \globalMovementI \pianoUpMovementI
          \globalMovementII \pianoUpMovementII
          \globalMovementIII \pianoUpMovementIII
        }
        \new Staff = "down" {
          \globalMovementI \pianoDownMovementI
          \globalMovementII \pianoDownMovementII
          \globalMovementIII \pianoDownMovementIII
        }
      >>
    >>
    \midi{}
  }
}
