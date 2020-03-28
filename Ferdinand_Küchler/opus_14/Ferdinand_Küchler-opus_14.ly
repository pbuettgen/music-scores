%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2019-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\version "2.20"

\include "lily-snippets.ily"

allargando = \markup {\italic "allargando"}
pMaEspressivo = \markup {\dynamic "p" \italic "ma espressivo"}
pocoRit = \markup {\italic #"poco rit."}
simile = \markup {\italic #"simile"}
tenutoTxt = \markup {\italic "tenuto"}

titleMovementI = #""

globalMovementI = {
  \time 4/4
  \tempo "Allegro maestoso." 4=118
  \key d \major
}

violinMovementI = \relative d' {
  d2\f d' | a fis | e4 g fis e | d( fis) a r | e2 e' | b g |
  fis4 a fis d | fis2 e4 r | a2 a' | fis d | e4 fis g a | fis2 d |
  cis4 e cis ais | b d b gis | a e e' cis | b2 a | b e, | e'2. d8 cis |
  b2 e, | e' r | d b | fis' d4.--( cis8-.) | b4 cis8( d) cis4 b |
  a2 r |
  \cueDuring "pianoUpMovementI" #UP {R1*3 | r2}
  r4 fis\mf\upbow |
  \repeat percent 2 {b2~ b8 d( cis d)} | b4 g' fis d | cis2 fis\< |
  g2~\f g8 fis( g fis) | b4 fis4~ fis8 d-. d( b) |
  \repeat unfold 2 { cis4 cis8.-.( d16-.) } | cis2 r4 fis,\mf |
  b2~ b8 d( cis d) | b2~ b8 d d( fis) | b4( a) g fis | b2. e,,4\p |
  g g g g | c2. b4\< | b ais ais ais | b2 fis'\f | e d | cis d |
  cis b | a r | r a,\p\upbow | a1~ | a2 r | r4 a'4\upbow g'2~ |
  g4 a, g'2~\mf | g4 g g e\< | cis a g e | d2\f d' | a fis |
  e4 g fis e | d( fis) a r | e2 e' | b g | fis4 a fis d | fis2 e4 r |
  a2 a' | fis d | e4 fis g a | fis2 d | b b' | g e | b cis4 dis |
  e fis g b | g( fis) fis e | \repeat percent 2 { b2. c4 } |
  b b fis fis | b2 r4 b,\mf | \repeat percent 2 {e2~ e8 g( fis g)} |
  e4 c' b g | fis2 b | c2~ c8 b( c b) | b4 e~ e8 b-. b( g) |
  \repeat unfold 2 {fis4 fis8.-.( g16-.)} | fis2 r4 b,4\upbow |
  e2~ e8 g( fis g) | e2~ e8 g-. g( b) | e4( d) c b | e2. a,,4 |
  c c c c | f2. e4 | dis fis b b | e,2~ e8 e'( fis g) |
  g2~ g8 e( fis g) | a4:8 fis:8 e:8 d:8 | cis4:8 d:8 cis:8 b:8 |
  a2. b4->^\allargando | a2. d4-> | a2^\tenutoTxt r4 a,8\downbow^\aTempo a |
  b4:8 cis:8 d:8 e:8 | fis:8\cresc e:8 fis:8 g:8 | a:8 b:8 cis:8 d:8 |
  e:8 fis:8 g:8 b:8 | g2\f fis | e a | d,,\ff d' | a fis |
  e4 g fis e | d2 d' | fis g | a r4 d, | fis2 e | d1 \bar "|."
}

pianoUpMovementI = \new Voice \relative d' {
  <d a fis>1\f | <a' d, a> |
  <g d b>2 << {\voiceOne fis4 e}
              \new Voice {\voiceTwo <cis a>2} >> \oneVoice |
  %% 4
  <fis^~ d a>2 << {\voiceOne fis8 a g fis}
                 \new Voice {\voiceTwo <dis a>2} >> \oneVoice |
  <e b g>1 | << {\voiceOne b'2 g}
                \new Voice {\voiceTwo <e b>1} >> \oneVoice |
  %% 7
  <fis d b>4 <fis d a> <fis d gis,>2 |
  %% 8
  <fis d>8 <a fis> <g e> <fis d> <e cis>2 | <g e>2:8 <a g e>:8 |
  %% 10
  <a fis>:8 << {\voiceOne d2 | b}
               \new Voice {\voiceTwo <a d,>2:8 | <e d>:8} >> \oneVoice <a e cis>8 <cis, a> <d b> <e cis> |
  %% 12
  <fis d>8 \repeat unfold 3 <a fis d>8 <a fis> \repeat unfold 2 <d gis, d> <d gis, e> | <cis a e>2:8 <cis ais e>2 | <b fis d>2:8 <b f d>4 <gis e b> |
  %% 15
  \repeat unfold 3 <a e a,>4 <a eis a,> |
  %% 16
  << {\voiceOne b2} \new Voice {\voiceTwo <a fis>4 <gis e>} >> \oneVoice <a e cis>2 |
  r8 \repeat unfold 3 <a fis b,>8 <gis e b>2 |
  r8 \repeat unfold 2 <a e>8 <b e,>
  << {\voiceOne cis4 e} \new Voice {\voiceTwo <a, e>2} >> \oneVoice |
  r8 \repeat unfold 3 <b a f> <b gis e>2 |
  r8 \repeat unfold 2 <ais e> <b e,> <cis ais e>2 |
  r8 \repeat unfold 3 <fis, d b> <fis d b>2:8 |
  r8 \repeat unfold 3 <b fis d>8 \repeat unfold 3 <fis d> <fis e> |
  <b fis b,>2 <gis e d> |
  r2 r8 \change Staff = "down" r8 r4 \change Staff = "up" |
  cis4\mf <cis ais fis> <fis cis fis,> <e cis fis,> |
  << {\voiceOne d4 d8 e fis4 d}
     \new Voice {\voiceTwo \repeat unfold 2 <b fis>2} >> \oneVoice |
  \repeat unfold 2 <cis b g>4 \repeat unfold 2 <cis b gis>4 |
  <cis ais fis>8-. fis,( eis fis) fis,4 r |
  \repeat percent 2 {r8\mf <d' b>8 <e cis> <fis d> <g e>2} |
  <fis d b>4 <g e b> <b fis b,> <b fis d> |
  r8 \repeat unfold 2 <cis ais>8 <b gis> <ais fis>4\< <b a dis,> |
  <g e>8\f <b g> <a fis> <g e> <g e>4 <fis cis ais> | <fis b,>2 <b fis b,> |
  %% 35
  r4 <b g cis,> r <b gis cis,> | r <ais fis cis> r2\> |
  r8\mf <d, b>8 <e cis> <fis d> <g e>2 |
  r8 \repeat unfold 2 <d b>8 <e cis> <fis d>4 <b fis d> |
  \repeat unfold 2 <b fis dis> \repeat unfold 2 <b a dis,> |
  r8 \repeat unfold 2 <b g>8 <a fis> <g e>4 r |
  r4 <g f b,>\p <g e b> <g d b> |
  <c^~ g c,>2 << {\voiceOne c4 b\<}
                \new Voice {\voiceTwo <gis d>2} >> \oneVoice |
  r4 <ais fis cis> r <ais fis e> | <b fis d>2 r4\f <b fis b,> |
  r4 <ais fis e> r <b fis d> | r <ais fis cis>
  << {\voiceOne d2( | cis b | a)
      \once \override Hairpin.to-barline = ##f
      b\>( | a fis | g\!) b( | a) d}
     \new Voice {\voiceTwo r4 <fis, d> | r4 <fis d> r <g d> |
                 r <d a> r <d b> | r <d a> r <c a> |
                 r <cis a> r <e cis> | r d r <f b> } >> \oneVoice |
  <e a cis>2. <d g b>4 | <cis g' a>2. <d g b>4\mf | <cis g' a>1~ |
  <cis g' a>2 r | <d a fis>1\f | <a' d, a> |
  <g d b>2 << {\voiceOne fis4 e} \new Voice {\voiceTwo <cis a>2} >> \oneVoice |
  <fis^~ d a>2 << {\voiceOne fis8 a g fis}
                 \new Voice {\voiceTwo <dis a>2} >> \oneVoice |
  <e b g>1 | << {\voiceOne b'2 g} \new Voice {\voiceTwo <e b>1} >> \oneVoice |
  <fis d b>4 <fis d a> <fis d gis,>2 |
  <fis d>8 <a fis> <g e> <fis d> <e cis>2 | <e g>2:8 <e g a>:8 |
  <a fis>:8 << {\voiceOne d2 | b}
               \new Voice {\voiceTwo <a d,>2:8 <e d>:8} >> \oneVoice
  <a e cis>8 <cis, a> <d b> <e cis> |
  <fis d>2:8 <fis d a>4:8 <fis e ais,>:8 |
  <fis dis b>2:8 <a dis, b>4:8 <a fis b,>:8 |
  %% 69
  <g e b>8 \repeat unfold 3 <g e> <b g e>2 |
  <fis dis>4 <a fis> <b g> <a fis> | <b g> <a fis> <g e> <b e, b> |
  \repeat unfold 2 <fis e c> \repeat unfold 2 <fis e cis> |
  <fis dis b>2. <g e>4 | <fis dis>2. <e g c>4 |
  \repeat unfold 2 <dis fis b> \repeat unfold 2 <e fis ais> |
  <dis fis b>8-. b'( ais b) b,4 r | \clef "alto"
  \repeat percent 2 {r8\mf <g e> <a fis> <b g> <c a>2} |
  <g e>4 <c e,> <b e,> <e b g> | \clef "violin"
  r8 \repeat unfold 2 <fis dis> <e cis> <dis b>4 <gis e d> |
  <a e c>8 <e c> <d b> <c a> <c a>4 <dis b fis> | <e b>2 <g e b> |
  %% 83
  r4 <fis e c> r <fis e cis> | r <fis dis b> <b fis dis> r |
  r8 <e, g,> <fis a,> <g b,> <e c>2 |
  %% 86
  r8 \repeat unfold 2 <e g,> <fis a,> <g b,>4 <e g,> |
  <e gis,> \repeat unfold 3 <e d gis,> |
  %% 88
  r8 \repeat unfold 2 <e c> <d b> <c a>4 r |
  r <bes' e, c> <a e c> <g e c> | <c f, c>2 <cis, g> |
  %% 91
  <b fis>4 <fis' dis b> <g dis b> <a dis, b> |
  r8 <g e> <a fis> <b g> <b g>2 | r8 <g e> <a fis> <b g> <b g e>2 |
  <a g e>4 <a fis d> <cis a g> <d a d,> |
  <ais e> <a d,> <e d> <eis d> |
  r8 <fis d> <g e> <a fis> <a fis>4 <eis d>_\markup{\whiteout \pad-around #.5 \allargando} |
  r8 <fis d> <g e> <a fis> <a fis>4 <b eis, d> |
  <a fis d>2_\tenutoTxt r2 | << R1 s8_\aTempo >> | r4 cis,\cresc( d e |
  fis) <a fis>( <g e> <fis d> | <e cis>) <d b> <cis a> <d b> |
  <e cis>\f <g e a,> r <fis d a> | r <e d bes> r <e cis g> |
  <d a fis>1-> | <a' d, a> |
  <g d b>2 << {\voiceOne fis4 e}
              \new Voice {\voiceTwo <cis a>2} >> \oneVoice |
  <d b fis>2 <fis d gis,> <fis d a> <g d b> | <a d, a> <gis e d> |
  <a fis d> <g cis, a> | <fis d a>1 \bar "|."
}

\addQuote "pianoUpMovementI" \pianoUpMovementI

pianoDownMovementI = \new Voice \relative d, {
  d2. d8-. e-. | fis2~ fis8 d-. e-. fis-. | g2 a | d4 c b2 |
  e,2. e8-. fis-. | g2~ g8 e-. fis-. g-. | gis4 a b2 | a2. a'4 |
  r2 r4 cis | d d,8 e fis4 e8 fis | g2 a4 a, | d2. b4 |
  a4 g' fis fis, | b4 b8 cis d2 | cis cis, | d4 e a b8 cis |
  dis2 e4( d) | cis2 a4 b8 cis | d2 e4( d) | cis2 fis,8( e' d cis) |
  b2. fis'4 | b2 b,4. cis8 | d2 e |
  a,8-5( e'-2 a-1 b-3 cis-2 \change Staff = "up" e-1[ a-2 b]) \change Staff = "down" |
  r4 fis,8( gis ais4) gis8( ais | b2) d, | e4 e, eis eis' |
  fis8-. fis( eis fis) fis,4 r | b1 | b,2 e | b'4 e d b |
  fis'2 fis,4 b | e,2 e' | d d, | e2 eis | fis2( fis'8) e d cis | b1 |
  \repeat percent 2 {b,2 b'} | e2 e,4 r | r d' e f | e2 eis |
  fis fis, | b d | cis b | fis b( | a g | fis) g( | fis dis' |
  e) g | fis gis | a1 | a, | a,~ | a2 r | d2. d8-. e-. |
  fis2~ fis8 d-. e-. fis-. | g2 a | d4 c b2 | e,2. e8-. fis-. |
  g2~ g8 e-. fis-. g-. | gis4 a b2 | a2. a'4 | r2 r4 cis |
  d d,8 e fis4 e8 fis | g2 a4 a, | d2 d4 c | b2 r4 dis |
  e e8 fis g fis g a | b2 b, | e2. g,4 | a2 ais |
  \repeat percent 2 { b4 b, b' ais } | b b c c |
  b8-. b'( ais b) b,4 r | \repeat percent 2 {e,1} | e4 a g e |
  b'2 b,4 e | a2 a,4 a' | g2 e | a ais | b~ b8 a( g fis) | e2 a |
  e e' | e,1 | a2 a,4 r | r g' a bes | a2 ais | b4 a' g fis | e1 |
  d2 d, | cis4 d e fis | fis2 g4 gis | \repeat percent 2 { a2. gis4->} |
  a2 r | R1*4 | r4 <cis cis,> r <d d,> | r <g, g,> r <a a,> |
  d,2. d8-.( e-.) | fis2~ fis8 d-.( e-. fis-.) | g2 a | b b | a g |
  fis <b e,> | a a,4 a' | d,1 \bar "|."
}

%%% ------------

titleMovementII = #""

globalMovementII = {
  \tempo "Andante moderato." 8 = 102
  \time 6/8
  \key g \major
}

violinMovementII = \relative a' {
  b4._\pMaEspressivo d8( c a) | g4. d | e fis | g8( a b) a4. |
  c e8( c a) | fis4. d | g a8( b d) | a4. r | b d8( c a) |
  g4. d | c8( d e) fis( e fis) | a4.-4 g | e\< a4\open( c8) |
  e4\f( d8) c4. | b\> a8( c b) | g4.\p r |
  \cueDuring "pianoUpMovementII" #UP { R2.*4 }
  \bar "||"
  \key c \major \tempo \markup { \italic "poco più mosso." }
  c4.\f e4--( f8-.) | g4. e | a g8( e c) | e4.-4 d |
  f8( g a) g( e c) | a4. c4( b8) | a( b a) c( b a) | g4. g' |
  f4. a8( f d) | b4. g' | f a8( f d) | g4. e | g8( a g) b( a g) |
  f( g f) a( g f) | e( f^\rit e) g-- f-- d--  c4.~ c8 r^\aTempo r |
  \cueDuring "pianoUpMovementII" #UP { R2.*3 }
  \cueDuring "pianoUpMovementII" #DOWN R2.
  \bar "||" \key g \major \tempo "Tempo 1°" b4._\pMaEspressivo d8( c a) | g4. d |
  e fis | g8( a b) a4. | c4. e8( c a) | fis4. d | g a8( b d) |
  a4. r | b d8( c a) | g4. d | c8( d e) fis( e fis) | a4.-4 g |
  e\< a4\open( c8) | e4\f( d8) c4. | b4.\> a8( c b\!) |
  g4 r8 r b\p\upbow( c) | d4. r8 e( fis) | g4. r8 b,,\f( c) |
  d4 a'8 d( c a) | g2.\> | b4.\p b | g4.~ g8 r d'\pp | g2.~ | g \bar "|."
}

pianoUpMovementII = \new Voice \relative b {
  b8\p d g c, d fis | \repeat percent 2 { b, d g } | g, c e c d fis |
  b, d g fis d fis | c e a a, e' a | \repeat percent 2 {a, d fis } |
  d g b c b g | fis a fis d4. | b8 d g c, d fis |
  \repeat percent 2 {b, d g} | e c g a b dis | fis dis b e b g |
  e'\< c g c a e' | b\f e b' c, e a |
  << {\voiceOne g4.\> fis8 d fis}
     \new Voice {\voiceTwo cis8 d e c4.} >> \oneVoice | b8\p d g b a g |
  f4.~ f8 f'( d) | c4 b8~ b f'( d) | a'4( f8 d4 b8 |
  g4) d8\<( g4 f8) \bar "||" \key c \major <e c g>4.:8\f <e c g>:8 |
  \repeat unfold 2 <d g,>8 <d b g> <e c g>4.:8 |
  \repeat unfold 2 <f c a>8 <d b> <g c, g>4.:8 |
  <g e c>8 \repeat unfold 2 <e c g> <d b> g <g d b> |
  \repeat unfold 2 <a f c> <b g d> <c g c,>4. |
  <a f c>8 <f c> <a f c> \repeat unfold 2 <g c,> <gis d> |
  <a e c>4.:8 <fis d c>:8 |
  <g d b>:8 \repeat unfold 2 <g c, g>8 <g cis, g>8 |
  <f d a>4.:8 <a d, a>:8 |
  <d, b>8 \repeat unfold 2 <g d b> << {\voiceOne g8 f <e c g>}
                                     \new Voice {\voiceTwo d4} >> \oneVoice |
  \repeat unfold 2 <f c a>8 <f cis a> <f d a>4.:8 |
  <f d g,>4.:8 <e c g>:8 | g,8 c g' <g cis, g>4.:8 |
  a,8 d f <f d g,>4. | g,8 c^\rit e <g cis,> <f d> <f b,> |
  %% 36
  <e c> g, <g' e> <g e> e'^\aTempo\p d |
  << {\voiceOne s4. g8 a g} \new Voice {\voiceTwo c,4.~ c} >> \oneVoice |
  fis4( a8 d,4.) |
  c,4. << {\voiceOne g'8 a g} \new Voice {\voiceTwo c,4 cis8} >> \oneVoice |
  fis8 d4~ d8 c4 \bar "||" \key g \major b8\p d g c, d fis |
  %% 42
  \repeat percent 2 {b, d g} | g, c e c d fis | b, d g fis d fis |
  c e a a, e' a | \repeat percent 2 {a, d fis} | d g b c b g |
  %% 48
  fis a fis d4. | b8 d g c, d fis | \repeat percent 2 {b,8 d g} |
  %% 51
  e c g a b dis | fis dis b e b g | e'\< c g c a e' | b\f e b' c, e a |
  << {\voiceOne g4.\> fis8 d fis\!}
     \new Voice {\voiceTwo cis8 d e c4.} >> \oneVoice |
  b8( d b') g8 r r | r <a fis>\p <a fis> <a fis>4 r8 |
  r8 \repeat unfold 2 <g d'> <g d'>4 r8 <fis d c>2.\f |
  b,8\>( d g) b( g b) | <e g,>8\p( <d b> <e g,> <d b> <e g,> <d b>) |
  << {\voiceOne e8( d e d e d)}
     \new Voice {\voiceTwo <b g>4.~ <b g>} >> \oneVoice |
  <g' b, g>4\pp r8 <g b, g>4 r8 | <g b, g>2. \bar "|."
}

\addQuote "pianoUpMovementII" \pianoUpMovementII

pianoDownMovementII = \new Voice \relative g, {
  g2. | g | c4. a | g d | a' c, | d c' | b fis8 g b | d4. c8 b a |
  g2. | g | c4. b | e, e' | c a | gis a | e'8 d cis d4. | g,2. |
  \clef "tenor"
  r8 \repeat unfold 2 <b' g> <c aes>4. |
  r8 \repeat unfold 2 <f d g,> <f c aes>4. |
  <f b, g>4.~ <f b, g>8 r r | R2. \clef "bass" \bar "||" \key c \major
  %% 21
  c,4. c, | b'4 g8 c4. | f,4 f'8 e4. | g, g' | f e | f8 a f e4. |
  %% 27
  a,4. d, | g4 f8 e4. | d4 e8 f4. | g4. b4 c8 | f4 e8 d4 c8 | b4. c |
  e,4. e' | d b | c a8 d g, | c4.~ c8 r r \clef "violin" |
  r8 \repeat unfold 2 <e' g> <ees g>4.:8 |
  r8 \repeat unfold 2 <d a'> r8 \repeat unfold 2 <d fis> \clef "bass" |
  r8 \repeat unfold 2 <g, ees>8 <g ees>4. |
  <a d,>4 <fis d>8 << {\voiceOne <g e>4 <fis a>8}
                      \new Voice {\voiceTwo d4.} >> \oneVoice \bar "||"
  \key g \major g2. | g, | c4. a | g d | a' c, | d c' | b fis8 g b |
  d4. c8 b a | g2. | g | c4. b | e, e' | c a | gis a | e'8 d cis d4. |
  g,4.~ g8 r r | r \repeat unfold 2 <c' d>8 <c d>4 r8 |
  r8 \repeat unfold 2 <b d>8 <b d>4 r8 | d,,2. | <d' g,> |
  e8( g e g e g) | e'( d b d cis d) | <d g,>4 r8 <d g,>4 r8 |
  <d g,>2. \bar "|."
}

%%% ------------

titleMovementIII = #""

globalMovementIII = {
  \tempo "Allegro moderato, alla marcia." 4 = 112
  \time 4/4
  \key d \major
}

violinMovementIII = \relative a' {
  \partial 4 r4 | R1
  \cueDuring "pianoUpMovementIII" #DOWN {R1*2 | r2 r4}
  a4\f\upbow |
  fis'4 a8.-.( a16-.) a4 fis | d a fis a8.-.\open( a16-.) |
  b4 d8.-.( d16-.) cis4 b | a2 fis | e4 g8.-.( g16-.) fis4 e |
  fis a d a8.-.( b16-.) | cis4 e b d8.-.( cis16-.) | a2 r4 a |
  fis' a8.-.( a16-.) a4 fis | d a fis a8.-.\open( a16-.) |
  b4 d8.-.( d16-.) cis4 b | a2 fis | a4 d8.-.( fis16-.) fis4 d |
  b e8.-.( fis16-.) g4 b | a fis8.-.( a16-.) g4 e | d2. r4 |
  \cueDuring "pianoUpMovementIII" #UP R1*3 |
  r2 r4 e,8\mf\downbow^"o. H." e | cis'4:8 e:8 d:8 b:8 |
  a:8 e:8 cis':8 a:8 | b:8 d:8 cis:8 b:8 | a:8 cis:8 e:8 e,:8 |
  cis':8 e:8 d:8 b:8 | a:8 e:8 cis':8 a:8 | b:8 cis:8 dis:8 b:8 |
  e:8 b:8 e,:8 e':8\f | d:8 b:8 gis:8 fis':8 | e:8 cis:8 a:8 e':8-4\p |
  d:8 b:8 gis:8 fis':8 | e:8 cis:8 a':8 e:8\mf | fis:8 a:8 gis:8 fis:8 |
  b:8\< a:8 e:8 fis:8 | gis:8 b:8 a:8 fis:8\! | e2 r4 b8.-.\f( b16-.) |
  e2. b4\p | e2 r4 c8.-.\f( c16-.) | f2. c4\p | f2 r4 f4\mf |
  \repeat unfold 2 {f d8.-.( d16-.)} | f4 f e d | a a8.-.( a16-.) a2~ |
  a4 a,8.-.( a16-.) a2~ | a4 a'8.-.-4( a16-.) a4 a,8.-.( a16-.) |
  a4 r r a'\f | fis' a8.-.( a16-.) a4 fis | d a fis a8.-.( a16-.) |
  b4 d8.-.( d16-.) cis4 b | a2 fis | e4 g8.-.( g16-.) fis4 e |
  fis4 a d a8.-.( b16-.) | cis4 e b d8.-.( cis16-.) | a2 r4 a4 |
  fis'4 a8.-.( a16-.) a4 fis | d a fis a8.-.( a16-.) |
  b4 d8.-.( d16-.) cis4 b | a2 fis | a4 d8.-.( fis16-.) fis4 d |
  b4 e8.-.( fis16-.) g4 b | a fis8.-.( a16-.) g4 e | d2 r |
  \cueDuring "pianoUpMovementIII" #UP R1*3 |
  r2 r4 d,8\mf^"o. H." d | b'4:8 d:8 c:8 a:8 | g:8 d:8 b':8 g:8 |
  a:8 c:8 b:8 a:8 | g:8 b:8 d:8 d,:8 | b':8 d:8 c:8 a:8 |
  g:8 d:8 b':8 g:8 | a:8 b:8 cis:8 a:8 | d:8 a:8 d,:8 d':8\f |
  c:8 a:8 fis:8 e':8-4 | d:8 b:8 g:8 d':8\p | c:8 a:8 fis:8 e':8 |
  d:8 b:8 g':8 d:8\mf | e:8 g:8 fis:8 e:8 | a:8\< g:8 b:8 g:8 |
  fis:8 a:8 g:8 e:8\! | d2 r4 a8.-.\f( a16-.) | d2. a4\p |
  d2 r4 b8.-.\f( b16-.) | e2. b4\p | e2 r4 e8\downbow^"M." fis |
  g4:8 e:8 fis:8 d:8 | e:8\< cis:8 d:8 b:8\! | a2. a'4 | a2 r4 a, |
  fis'4\f a8.-.( a16-.) a4 fis | d a fis a8.-.( a16-.) |
  b4 d8.-.( d16-.) cis4 b | ais4 g' fis e | d fis, d' b | a2 r4 a, |
  fis' a8.-.-4( a16-.) a4 fis | d fis a d | fis2 a | d,2.\fermata \bar "|."
}

pianoUpMovementIII = \new Voice \relative d {
  \partial 4 \change Staff = "down" \voiceOne d8.^\f( e16 |
  fis2.) fis8.( g16 | a2.) \change Staff = "up" \oneVoice d8.( e16 |
  fis8) g-. a-. fis-. e-. d-. cis-. b-. |
  a4 <a' a,> <a gis b,> <a g cis,> |
  %% 5
  \repeat unfold 7 <a fis d> <a d, a> |
  %% 7
  <g d b> <b g d> <a d,> <g d> |
  <fis d> \repeat unfold 2 <fis d a> <fis d ais> |
  <e d b> <d b> \repeat unfold 2 <cis a> |
  %% 10
  <d a> \repeat unfold 2 <fis d a> <f d a> |
  <e cis a> <a e cis> <a fis d> <gis e d> |
  <a e cis>4 <a a,>8. <a a,>16 <a a,>4 <a g> |
  <a fis> \repeat unfold 7 <a fis d> |
  \repeat unfold 2 <b fis d> <cis ais e> <b f d> |
  <a e cis> <a e a,> \repeat unfold 2 <fis d a> |
  \repeat unfold 2 <d a> \repeat unfold 2 <fis d ais> |
  \repeat unfold 3 <e d b> <d g b> |
  <d fis a> <fis d a> <g d b> <g cis, a> | <fis d a>2. fis'4\p |
  << {\voiceOne g4 fis8. fis16 b4 fis | fis e8. e16 a4 a, | a cis8. cis16 d4 a}
     \new Voice {\voiceTwo cis2( b4) r | b2( a4) e | fis2~ fis4 fis} >> \oneVoice |
  <gis e'>4 d-.\< cis-. b-. |
  <cis a>\mf <e cis> \repeat unfold 2 <e d> |
  \repeat unfold 2 <e cis> \repeat unfold 2 <a e cis> |
  \repeat unfold 2 <gis e b> \repeat unfold 2 <g e d> |
  \repeat unfold 2 <a e cis>4 e8-.( d-. cis-. b-.) |
  <cis a>4 e <fis e> <gis e d> |
  \repeat unfold 2 <a e cis> \repeat unfold 2 <e cis> |
  \repeat unfold 4 <a dis, b> |
  <gis e b> << {\repeat unfold 3 <gis e>} {s2 s4\f} >>
  \repeat unfold 2 <gis e b> <gis e d>2 | <a e cis>4 <e cis> <e cis>2 |
  << {\repeat unfold 2 <gis e b>4} s4\p >> <gis e d>2 |
  <a e cis>4 <e cis> <a e cis>2 | r4\mf <a fis> <a eis> <a fis> |
  << {\repeat unfold 4 <a e>} s4\< >> |
  \repeat unfold 2 <gis e> << {\repeat unfold 2 <a dis,>} {s4 s\!} >> |
  %% 40
  \repeat unfold 3 <gis e> <a fis>\f | <gis e> <b gis> <b gis> <a fis>\p |
  <gis e> <a fis> <b gis> <bes e,>\f |
  <a f> \repeat unfold 2 <a c> <bes g>\p |
  <a f>4 <bes g> <c a> <a ees>\mf | <gis d>1~ |
  \repeat unfold 4 <gis d>4 | <a cis,>2 r4 <g e>8.( <f d>16 |
  <e cis>4) r r <g' e>8.( <f d>16 | <e cis>4) r4 r2 |
  %% 50
  r4 <a, a,>\< <a gis b,> <a g cis,>\! |
  \repeat unfold 7 <a fis d> <a d, a> | <g d b> <b g d> <a d,> <g d> |
  <fis d> \repeat unfold 2 <fis d a> <fis d ais> |
  <e d b> <d b> \repeat unfold 2 <cis a> |
  <d a> \repeat unfold 2 <fis d a> <f d a> |
  <e cis a> <a e cis> <a fis d> <gis e d> |
  <a e cis> <a a,>8. <a a,>16 <a a,>4 <a g> |
  <a fis>  \repeat unfold 7 <a fis d> |
  \repeat unfold 2 <b fis d> <cis ais e> <b f d> |
  <a e cis> <a e a,> \repeat unfold 2 <fis d a> |
  \repeat unfold 2 <d a> \repeat unfold 2 <fis d ais> |
  \repeat unfold 3 <e d b> <d g b> |
  <d fis a> <fis d a> <g d b> <g cis, a> | <fis d a>2 r4 d'4\p |
  << {\voiceOne e4 d8. d16 g4 d8.( e16 | c4-.) c8.( d16 b4-.) g4 |
      g b8. b16 a4 g}
     \new Voice {\voiceTwo fis2 g | fis2( g4) d8. dis16 | e2~ e4 e} >> \oneVoice |
  <fis d'>4\< c4-. b-. a-. | <b g>\mf <d b> \repeat unfold 2 <d c> |
  \repeat unfold 2 <d b> \repeat unfold 2 <g d b> |
  \repeat unfold 2 <fis d a> \repeat unfold 2 <fis d c> |
  \repeat unfold 2 <g d b> d8-.( c-. b-. a-.) |
  %% 75
  <b g>4 d <e d> <fis d c> |
  \repeat unfold 2 <g d b> \repeat unfold 2 <d b> |
  %% 77
  \repeat unfold 4 <g cis, a>4 | <fis d a> \repeat unfold 3 <fis d> |
  <fis d a> <fis d b> <fis d c>2 | <g d b>4 <d b> <d b>2 |
  <fis d a>4 <fis d b> <fis d c>2 | <g d b>4 <d b> <g d b>2 |
  \repeat unfold 2 <e d bes>4 \repeat unfold 2 <e cis a> |
  <fis d a>4\< <g d b> <b g d> <e, d> |
  <fis d> <a fis d> << {\repeat unfold 2 <a g b,>} {s4 s\!} >> |
  <a fis d> \repeat unfold 2 <fis d> <g e>\f( |
  <fis d> <a fis>) <a fis> <g e>\p( |
  <fis d> <g e>) <a fis> <a dis,>\f( |
  <gis e> <gis b>) <b gis> <a fis>\p( |
  <gis e> <a fis> <gis b>) r | <e cis> <g cis,> <fis d> <a fis> |
  <g e>\< <g b> <a fis> <gis f d>\! |
  <a e d> \repeat unfold 3 <e d a> |
  << {\voiceOne a2~ a4}
     \new Voice {\voiceTwo <cis, a>4( <d b> <e cis>)} >> \oneVoice r4 |
  << {\repeat unfold 7 <a fis d>4} s4\f >> <a d, a> |
  \repeat unfold 2 <e d b> \repeat unfold 2 <eis cis b> |
  <fis cis ais> <ais e> <ais d,> <ais cis,> |
  <b d,> \repeat unfold 2 <fis d> <b fis d> |
  <a cis,> <g b,> <fis a,> <e cis g> | <d a fis>1 |
  <a d a'>2. <gis d' fis>4 | <a d fis>2 <a cis g'> |
  <a d fis>2.\fermata \bar "|."
}

\addQuote "pianoUpMovementIII" \pianoUpMovementIII

pianoDownMovementIII = \new Voice \relative d, {
  \partial 4 \voiceTwo d8.( e16 | fis2.) fis8.( g16 |
  a2.) \oneVoice d8.( e16 | fis8) g-. a-. fis-. e-. d-. cis-. b-. |
  a4 r a,2 | d2. fis8. a16 | d2. fis,4 | g2. b4 | d2 d,4 fis |
  g2 a | d d, | e e' | a, r4 cis' | d2 r4
  \textSpannerDown
  \once \override TextSpanner.bound-details.left.text = \markup {\italic "marcato" }
  a,4 \startTextSpan | fis'4 a8. a16 a4 fis8. \stopTextSpan d16 |
  b2 fis4 gis | a cis d2 | fis fis, | g e | a a | d,4 a' d r |
  <ais' e'>2 <b d>4 r |
  <d gis,>2 <cis a>4
  << {\voiceOne a4 | a2( b4) c }
     \new Voice {\voiceTwo cis,8. cis16 | d4 dis dis dis} >> \oneVoice |
  %% 24
  <e b'>4 d,8-. d'-. cis,-. cis'-. b,-. b'-. |
  <a a,>4 r r8 e'-.( fis-. gis-.) | a2 a, | e r8 e'-.( dis-. e-.) |
  a,4 r e'8-.( d-. cis-. b-.) | a4 r e r | a2 r8 a'8-.( gis-. a-.) |
  fis2 b, | e e, | e'1 | a, | e | a | <d a'> | cis2 c | b b |
  e,2~ e4 r | R1*3 | r2 r4 f' | <f bes,~>1 | \repeat unfold 4 bes,4 |
  <e a,>2 r4 cis8.( d16 | a4) r r cis'8.( d16 | a4) r4 r2 |
  %% 50
  r2 r4 a, | d,2. fis8. a16 | d2. fis,4 | g2. b4 | d2 d,4 fis | g2 a |
  d d, | e e' | a, r4 cis'4 | d2 r4 a, | fis'4 a8. a16 a4 fis8. d16 |
  b2 fis4 gis | a4 cis d2 | fis fis, | g e | a a | d,4 a' d r |
  <d'~ c>2 <d b> | <d~ a>2 <d g,>4 <g, b,>4 |
  << {\voiceOne g2( a4) bes}
     \new Voice {\voiceTwo c,4 \repeat unfold 3 cis} >> \oneVoice |
  <d a'>4 c,8-. c'-. b,-. b'-. a,-. a'-. | <g g,>4 r r8 d'8-.( e-. fis-.) |
  g2 g, | d r8 d'-.( cis-. d-.) | g,4 r d'8-.( c-. b-. a-.) | g4 r d r |
  g2 r8 g'8 fis g | e2 a, | d d, | d'1 | g, | d2 d' | g,1 | g2 a |
  %% 84
  d,4 b' g2 | a2 a | d,4 a' d r | d1 | d2. b4 | e,1 | e'2. r4 | a,1 |
  a, | a' | a2~ a4 r | d,2. fis8. a16 | d2. fis,4 | g2 g |
  fis fis'4 fis, | b2. gis4 | a1 | d, | fis2. b4 | a2 a, |
  d2.\fermata \bar "|."
}

%%% ------------

\include "../composer.ily"

\header {
  arranger = ##f
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 14"
  source = "http://imslp.org/"
  title = "Concertino in D Major."
}

\include "paper.ily"

#(define fileBaseName "Ferdinand_Küchler-opus_14")

define(`Movements', `(I, II, III)')
include(`concertino.ily')

\include "articulate.ly"

\book {
  \bookOutputName \fileBaseName
  \score {
    \articulate \unfoldRepeats
    \new StaffGroup <<
      \new Staff \with {
        midiInstrument = #"violin"
      } { \globalMovementI   \killCues\violinMovementI
          \globalMovementII  \killCues\violinMovementII
          \globalMovementIII \killCues\violinMovementIII
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
