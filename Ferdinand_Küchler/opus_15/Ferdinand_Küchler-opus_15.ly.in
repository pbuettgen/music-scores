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

allargando = \markup {\italic #"allargando"}
pMaEspressivo = \markup {\dynamic "p" \italic "ma espressivo"}
pocoRit = \markup {\italic #"poco rit."}
senzaAllargando = \markup {\italic #"senza allargando"}
simile = \markup {\italic #"simile"}

titleMovementI = #""

globalMovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4=96
  \key d \major
}

violinMovementI = \relative a' {
  \partial 8 a8--\f\upbow | \repeat unfold 5 d8-- cis16 b a8--\open g16 fis |
  e4-- a-- fis8-- e-- d a'-- |
  %% 3
  \repeat unfold 5 fis'-- e16 d e8-- d16 cis |
  b4-- e-- cis8-- b-- a-- e'-- | \repeat unfold 5 a8-- g16 fis b8 a |
  \repeat unfold 5 g8-- fis16 e a8-- g-- |
  %% 7
  fis16 a g fis e g fis e d fis e d cis e d cis |
  b d cis b a cis b gis a8-- a,-- r a'\f\upbow |
  a16 d cis d fis e d cis b8-. g-. r a^"M."\p\downbow |
  a16 d cis d fis e d cis b8-. g-. r b\f\upbow |
  %% 11
  b16 e d e g fis e d cis8-. a-. r b^"M."\p\downbow |
  b16 e d e g fis e d cis8-. a-. r a,\upbow |
  %% 13
  \repeat unfold 2 {a16 d cis d} \repeat unfold 2 {b e d e} |
  << \repeat unfold 2 {cis fis e fis} s\mf >> \repeat unfold 2 {d g fis g} |
  << \repeat unfold 2 {e a g a} s\< >> \repeat unfold 2 {fis b a b} |
  %% 16
  << \repeat unfold 2 {g cis b cis} s\f >> d8-. d,-. r a'--\upbow |
  %% 17
  b8-- a16 g a8---4 g16 fis e8-- a,-- r a'--^"M."\p\downbow |
  b8 a16 g a8-4 g16 fis e8-- a,-- r a'--\f\upbow |
  \repeat unfold 5 d8-- cis16 b a8-- g16 fis |
  e4-- a-- fis8-- e-- d-- a'-- |
  %% 21
  \repeat unfold 4 fis'-- fis e16 d e8 d16 cis |
  b4-- e-- cis8-- b-- a-- e'-- | \repeat unfold 4 a8-- a8 g16 fis b8-- a-- |
  \repeat unfold 4 g8-- g fis16 e a8 g |
  fis16 a g fis e g fis e d fis e d cis e d cis |
  b d cis b a cis b gis a8-. a,-. r a'\downbow |
  %% 27
  a'16 g fis e d cis b a b8-. g-. r b\upbow |
  b'16 a g fis e d cis b cis8-. a-. r cis\downbow |
  %% 29
  cis'16-3 b a g fis e d cis-2 d8-. b-. r d-1\upbow |
  d'16 cis b a g-4 fis e d cis-2 b a b cis d e fis |
  g fis e d cis b a g fis e d e fis g a b |
  %% 32
  cis b a g fis e d-4 cis d8-.\open d'-. r fis,--\downbow |
  %% 33
  fis8-- g16 a\open b8-- a16-4 g fis8-- g16 fis cis8-- fis-- |
  g-- a-- b-- cis-- fis-- d16 cis b8-- fis'--\p |
  fis-- g16 a b8-- a16 g fis8-- g16 fis cis8-- fis-- |
  g-- fis-- e-- d-- cis-- fis16 d b8-- fis'--\mf\downbow |
  b8 g16 fis e8 fis16 g a8 fis16\cresc e d8 e16 fis |
  g8 e16-4 d cis8 d16 e fis8 d16 cis b8 fis--\f |
  b8-- cis16 d e8 d16 cis b8 d16 cis b8 fis-- |
  g-- a-- b-- cis-- d-- d,-- r8 e--\upbow |
  %% 41
  a---4 \repeat unfold 4 a-- gis16 fis e8-- d16-4 cis |
  b4-- e-- cis8-- b-- a-- e'-- |
  %% 43
  \repeat unfold 4 cis'8-- cis b16 a b8 a16-4 gis |
  fis4 b gis8 fis e b' | \repeat unfold 4 e-- e d16 cis fis8-- e-- |
  \repeat unfold 4 d8-- d cis16 b e8-- b-- |
  a16 cis b a g b a g fis a g fis e g fis e |
  d fis e d cis e d cis b8-. b'-. r fis\f |
  \repeat unfold 3 {b16( fis d fis)} d'( b fis b) |
  \repeat unfold 3 {cis( g e g)} e'( cis g cis) |
  << \repeat unfold 3 {b( fis d fis)} s16\p >> d'( b fis b) |
  \repeat unfold 3 {cis( g e g)} e'( cis g cis) |
  \repeat unfold 3 {d b fis d} d' fis d b |
  << \repeat unfold 3 {e cis g e} s16\cresc >> e'\open g e cis |
  a fis' g fis b, fis' g fis cis fis g fis gis fis ais fis |
  b\f fis d b cis e d cis b8-. b,-. r a'--\upbow |
  \repeat unfold 5 d8-- cis16 b a8--\open g16 fis |
  e4-- a---4 fis8-- e-- d-- a'--\open |
  \repeat unfold 4 fis'8-- fis e16 d e8 d16 cis |
  b4 e cis8-- b-- a-- e'-- | \repeat unfold 5 a8-- g16 fis b8-- a-- |
  \repeat unfold 5 g8-- fis16 e a8-- g-- |
  fis16 a g fis e d cis b a b cis d e8-.
  \once \override TextSpanner.bound-details.left.text = \allargando
  \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \textSpannerDown
  a,-- \startTextSpan |
  \repeat unfold 5 d8-- a-- r fis--\downbow |
  g8-- fis16 e a8---4 a,-- d4.-2\fermata \stopTextSpan \bar "|."
}

pianoUpMovementI = \new Voice \relative d' {
  \partial 8 r8 | <fis d>4\f <g d> <a d,> r8 <a d,> |
  %% 2
  <b d,>4 <a cis,> <a fis d> r | <a fis> <ais e> <b d,> r8 <e ais, e> |
  <d b fis>4 <b gis e> <cis a e> r |
  %% 5
  r8 <cis a> <d a> <e a,> <fis a,>4 <fis b, fis> |
  r8 <e g,> <e a,> <e b> <e cis>4 <e a,> |
  <fis a,> <cis g> <d fis,> <ais e> |
  %% 8
  <b fis> <a cis,>8 <gis d> <a cis,>4 r |
  %% 9
  << \repeat unfold 2 {<d a d,>4 <a fis d> <b g d> r} {s\f s4*3 s4\p} >> |
  %% 11
  << \repeat unfold 2 {<e b e,> <b g e> <cis a e> r} {s4\f s4*3 s4\p} >> |
  %% 13
  <d a d,>2\p <e, b> | <fis cis>\mf <g d> | <a e>\< <b fis> |
  %% 16
  <cis g>\f <d fis,>4 r | <b g d>4\f <a d,> <a e cis> r8 <a d,>\p |
  <b g d>4 <a d,> << {<a e cis> r} {s8 s\<} >> |
  %% 19
  <fis d>4\f <g d> <a d,> r8 <a d,> | <b d,>4 <a cis,> <a fis d> r |
  <a fis>4 <ais e> <b d,> r8 <e ais, e> |
  <d b fis>4 <b gis e> <cis a e> r |
  %% 23
  r8 <cis a> <d a> <e a,> <fis a,>4 <fis b, fis> |
  %% 24
  r8 <e g,> <e a,> <e b> <e cis>4 <e a,> |
  <fis a,> <cis g> <d fis,> <ais e> |
  %% 26
  <b fis> <a cis,>8 <gis d> <a cis,>4 r | <a d,>2 <b g d> |
  <b e,> <cis a e> | <cis fis,> <d b fis> |
  %% 30
  << {\voiceOne d4( b) a2 | a4( g)}
     \new Voice {\voiceTwo <g d>2 <e cis>4 d | <e a,>2} >> \oneVoice <fis d a>2 |
  %% 32
  <e b>4 <g cis,> <fis d> r8 <fis e cis>8 |
  %% 33
  << {\voiceOne <fis d>4 <g e> <fis d> fis}
     \new Voice {\voiceTwo b,2~ b4 cis8 d} >> \oneVoice |
  %% 34
  <g e b~>2 <fis d b>4 << r {s8 s\p} >> |
  << {\voiceOne b2~ b4 cis8 d | e d cis b ais4 b | b\cresc cis}
     \new Voice {\voiceTwo <fis, d>4 <g e> <fis d> fis | g2 fis4 fis8 d | <g e>2} >>
  \oneVoice <d' fis,>4 <b g d> |
  %% 38
  << {\voiceOne e2} \new Voice {\voiceTwo <b g>4 <ais fis>} >> \oneVoice <d b fis>4~ <d b fis>8 <fis, e>\f |
  %% 39
  << {\voiceOne b2~ b4~ b8 b}
     \new Voice {\voiceTwo <fis d>4 <g e> <fis~ d> fis8 fis} >> \oneVoice |
  %% 40
  <g e b>4. <g e a,>8 <fis d a>4 r | <cis a> <d a> <e a,> r8 <e a,> |
  %% 42
  <fis a,>4 <e gis,> <e cis a> r | <e cis>4 <eis b> <fis a,> r8 <b eis, b> |
  <a fis cis>4 <fis dis b> <gis e b> r |
  %% 45
  r8 <gis e> <a e> <b e,> <cis e,>4 <cis fis, cis> |
  r8 <d, b> <e b> <fis b,> <gis b,>4 <e' e,~>^( |
  <cis e,>) <b g e>( <a cis,>) <g e a,~> |
  %% 48
  <fis d a> <e g cis> <d fis d'> <cis fis ais> |
  <d fis b>\f \repeat unfold 2 <fis b d > <b fis d> |
  <cis g e> \repeat unfold 2 <e cis g> <cis g e> |
  %% 51
  <d fis, d>4\p \repeat unfold 2 <d b fis> <b fis d> |
  <cis g e> \repeat unfold 2 <e cis g> <cis g e> |
  <d fis, d>8\p \repeat unfold 3 <fis, d> <fis d>2:8 |
  << \repeat unfold 2 <g e>2:8 s8\mf >> |
  %% 55
  <fis d>4:8\< <b fis>4:8 <b e,>:8 <ais e>:8\! |
  <b fis d>4 <ais fis cis> <b fis d> r |
  %% 57
  <fis d>\f <g d> <a d,> r8 <a d,> | <b d,>4 <a cis,> <a fis d> r |
  <a fis> <ais e> <b d,> r8 <e ais, e> |
  <d b fis>4 <b gis e> <cis a e> r |
  %% 61
  r8 <cis a> <d a> <e a,> <fis a,>4 <fis b, fis> |
  r8 <e g,> <e a,> <e b> <e cis>4 <e a,> |
  <fis a,> <d a d,> <cis a e> <cis a e>8
  \once \override TextSpanner.bound-details.left.text
  = \markup {
    \override #'(style . outline)
    \override #'(thickness . 3)
    \whiteout \allargando
  }
  \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \textSpannerDown
  r \startTextSpan |
  r <a d,>-- <b d,>-- <g d>-- <a d,>-- <fis d>-- r fis-- |
  g8 fis16 e a8 a, d4.\fermata \stopTextSpan \bar "|."
}

pianoDownMovementI = \new Voice \relative d {
  \partial 8 r8 | d4 e fis r8 fis | g8 fis16 g a8 a, d4 r |
  %% 3
  d4 cis b r8 cis8 | d8 cis16 d e8 e, a4 r | r8 a'8 b cis d4 dis |
  %% 6
  r8 e,8 fis g a4 cis | d ais b cis, | d e a,8 e' a r |
  %% 9
  \repeat percent 2 {fis4 d g r} | \repeat percent 2 {g e a r} |
  %% 13
  fis fis, g' g, | a' a, b' b, | cis' cis, d' d, | e a, d r |
  %% 17
  g4 fis a r8 fis | g4 fis a8 g fis e | d4 e fis r8 fis8 |
  %% 20
  g8 fis16 g a8 a, d4 r | d4 cis b r8 cis8 | d8 cis16 d e8 e, a4 r |
  r8 a' b cis d4 dis | r8 e, fis g a4 cis | d ais b cis, |
  %% 26
  d e a,8 e' a r | fis,4 fis' g, g' | g, g' a, a' | a, a' b, b' |
  %% 30
  b, g g' fis | cis cis, d d' | g, a d r8 ais | b2~ b4 ais8 b |
  e,4 g b d8 cis | b2~ b4 ais8 b | e2 fis4 d8 b | e,4 a d, g |
  cis fis, b d8 cis | b2~ b4 d8 dis | e4. a,8 d4 r | a4 b cis r8 cis |
  d cis16 d e8 e, a4 r | a' gis fis r8 gis, | a8 gis16 a b8 b, e4 r |
  r8 e' fis gis  a4 ais | r8 b, cis d e4 gis( | a) e( fis) cis( |
  d) ais b e | d b~ b8 b, b' b, | \repeat percent 3 {b'2~ b8 b, b' b,} |
  b'8 b' b b b2:8 | b2:8 b2:8 | b4:8 d,:8 fis:8 fis,:8 |
  b8 d fis fis, b4 r | d e fis r8 fis | g8 fis16 g a8 a, d4 r |
  d cis b r8 cis | d cis16 d e8 e, a4 r | r8 a' b cis d4 dis |
  r8 e, fis g a4 cis | d fis, a g8 r |
  r fis-- g-- e-- fis-- d-- r fis,-- | g fis16 e a8 a <d d,>4._\fermata \bar "|."
}

%%%--------------------------------------------------

titleMovementII = #""

globalMovementII = {
  \tempo "Siciliano, Larghetto." 8 = 63
  \time 6/8
  \key d \major
}

violinMovementII = \relative a' {
  b8.-1_\pMaEspressivo( cis16 b8) b4( fis8-2) | cis'8.( d16 cis8) cis4. |
  fis8.-1( g16 fis8) e8.-4( d16 cis8) | d8\>( cis b\!) b4. |
  d8.-1\mf( e16 d8) d4( a8-2) | e'8.( fis16 e8) e4. |
  g8.( fis16 e8) d8.-3( cis16 b8) | a8-2\>( b cis) d4.-4\p\flageolet |
  fis8.-1\f( g16 fis8) d4( b8) | fis8.\p( g16 fis8) d4-4\<( b8) |
  c8.-1\f( d16 e8) c'\>( d e\!) | r b-3\p( ais) b4.\fermata \bar "||"
  \tempo "Adagio." 8 = 81 e4.-2\f\downbow a,4 b8 cis2.\upbow\fermata \bar "||"
  \tempo "Allegro assai." 8 = 144 \time 3/8 d8-.-3\f fis-. a-. |
  %% 16
  b16( a) g fis e d | cis8-. e-.\open a-. | e-.\open cis-. a-.\open | b-. d-. fis-. |
  %% 20
  g16( fis) e\open d cis b | a8-.\open cis-. fis-. | cis-. a-.\open fis-. |
  %% 23
  g-. b-. d-. | e16( d) cis b a g | fis e fis g a-4 fis | g fis g a\open b g |
  %% 27
  a b cis d e\open fis | g fis g a-1 b cis | d8-. a-. fis-. | d4 r8 |
  %% 31
  << \repeat unfold 2 {b16 cis d cis d b | cis8-. fis4}
     {s16\f s16*11 | s16\p} >> |
  %% 35
  d16\f e\open fis e\open fis d | e8-.\open a4 |
  d,16-1\p e fis e fis d | e8-. a4-4\flageolet  |
  %% 39
  b16-2 a g-4 fis e d | g-2\cresc fis e d cis b | a g fis g a b |
  %% 42
  cis b a b cis e | d8-.\f fis-. a-. | b16( a) g fis e d |
  %% 45
  cis8-. e-.\open a-. | e-.\open cis-. a-.\open | b8-. d-. fis-. |
  %% 48
  g16( fis) e\open d cis b | a8-. cis-. fis-. | cis-. a-. fis-. |
  %% 51
  g-. b-. d-. | e16( d) cis b a g | fis e fis g a-4 fis |
  %% 54
  g fis g a\open b a | a16\open b cis d e\open fis | g fis g a-1 b cis |
  %% 57
  d8-. a-. fis-. | d4 r8 | d,8-.\f fis-. a-.-4 | fis-. a-.\open d-. |
  %% 61
  a-. d-. fis-. | e8-.\open a,-.\open r | d,8-.^"Sp."\p\upbow fis-. a-. |
  %% 64
  fis-. a-. d-. | a-. d-. fis-. | e-. a,-. r |
  %% 67
  a'-.\downbow\f e-. cis-. | fis-. d-. b-. | cis-. d-. cis-. |
  %% 70
  a-. gis-. fis-. | cis-. fis-. a-. | cis-. a-. fis-. | gis-. b-. a-. |
  %% 74
  fis4 r8 | a8-.\open cis-. e-.\open | fis16( e) d cis b a\open |
  %% 77
  gis8-. b-. e-.-4 | b-. gis-. e-. | fis-. a-.\open cis-. |
  %% 80
  d16( cis) b a gis fis | e8-. gis-. cis-. | gis-. e-. cis-. |
  %% 83
  d-.\open fis-. a-.\open | b16( a) gis fis e d | cis b cis d e cis |
  %% 86
  d cis d e fis d | e fis gis a b cis | d cis d e fis gis |
  a8-. e-. cis-. | a4 r8 |
  %% 91
  d16\downbow( a\open) fis'^"Sp."\upbow a,\open e'\open a,\open | d a fis' a, d a |
  %% 93
  e'\open a, g' a, fis' a, | e'\open a, g' a, e'\open a, | fis' a, g' a, a' a, |
  %% 96
  b' a, g' a, e'\open a, | a' a, fis' a, a' a, | g' a, e'\open a, cis( a) |
  %% 99
  d8-. fis-. a-. | b16( a) g fis e d | cis8-. e-.\open a-. |
  %% 102
  e-.\open cis-. a-.\open | b-. d-. fis-. | g16( fis) e d cis b |
  %% 105
  a8-.\open cis-. fis-. | cis-. a-.\open fis-. | g-. b-. d-. |
  %% 108
  e16( d) cis b a g | fis e fis g a fis | g fis g a b g |
  %% 111
  \once \override TextSpanner.bound-details.left.text = \senzaAllargando
  \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \textSpannerDown
  a \startTextSpan b cis d e fis | g fis g a-1 b cis |
  d8-. a-. fis-. | d4 \stopTextSpan r8 \bar "|."
}

pianoUpMovementII = \new Voice \relative a' {
  <b fis d>4.\p << {\voiceOne fis8.( g16 fis8)}
                   \new Voice {\voiceTwo b,4.} >> \oneVoice |
  %% 2
  <cis fis cis'>4. << {\voiceOne ais'8.( b16 ais8)}
                      \new Voice {\voiceTwo <fis cis>4.} >> \oneVoice |
  %% 3
  <b fis b,>4. <cis fis, cis> |
  %% 4
  << {\voiceOne b4.~ b4}
     \new Voice {\voiceTwo <fis d>4 <g e>8 <fis d>4} >> \oneVoice r8 |
  %% 5
  <a fis d>4.\mf << {\voiceOne a8.( b16 a8)}
                    \new Voice {\voiceTwo d,4.} >> \oneVoice |
  %% 6
  <e a>4. << {\voiceOne cis'8.( d16 cis8)}
             \new Voice {\voiceTwo <a e>4.} >> \oneVoice |
  %% 7
  <e a e'>4 <e a cis>8 <d a' d>4 <d g b>8 | <cis e a>4.\> <d fis>\p |
  %% 9
  <cis fis cis'>4.\f <fis b d> | <cis fis cis'>\p <d fis b> |
  <c g' c>\f <c g'>\mf |
  %% 12
  <d fis b>4\p( <cis fis ais>8) <d fis b>4.\fermata \bar "||"
  <e a>4.:8\f << {\voiceOne a4.}
                 \new Voice {\voiceTwo <e g>8 <e g> <fis d>} >> \oneVoice |
  <a e cis>2.\arpeggio\fermata \bar "||"
  %% 15
  <a fis d>4.\f | <d a d,> | <a e cis> | <e a e'> | <fis b d> |
  %% 20
  <b fis b,> | <a fis cis> | <cis fis, cis> | <b g d> | <d g, d> |
  %% 25
  <a fis d>4. | <g d> | <a e> | <cis g e> | <d fis, d>4.~ |
  %% 30
  <d fis, d>4 r8 | <fis, d>4.\f | <a fis cis> | <fis d>\p |
  %% 34
  <a fis cis> | <a fis d>\f | <a e> | <a fis d>\p |
  %% 38
  << {\voiceOne a4.} \new Voice {\voiceTwo e4( fis8)} >> \oneVoice |
  %% 39
  <b g d>4. | <d g, d>\cresc | <a e> | <a e cis> | <a fis d>\f |
  %% 44
  <d a d,> | <a e cis> | <e a e'> | <fis b d> | <b fis b,> |
  %% 49
  <a fis cis> | <cis fis, cis> | <b g d> | <d g, d> | <a fis d> |
  %% 54
  <g d> | <a e> | <cis g e> | <d fis, d>~ | <d fis, d>4 r8 |
  %% 59
  <d a fis>4.\f | <a fis d> | <fis d a> | <e cis a>4 r8 | <fis a d>4.\p |
  %% 64
  <a fis d> | <fis d a> | << {<e cis a>4 r8} {s8 s16\<} >> | <e a>4.\f |
  %% 68
  <fis b> | <gis eis cis> | <a fis cis> | <cis fis, cis> | <a fis cis> |
  %% 73
  << {\voiceOne <gis eis>} \new Voice {\voiceTwo cis,4 b8} >> \oneVoice |
  %% 74
  <fis' cis a>4 r8 | <e cis>4. | <a e> | <b gis e> | <e b e,> |
  %% 79
  <cis a fis> | <cis fis, cis> | <cis gis e> | <e cis gis> | <d a d,> |
  %% 84
  <b e, b> | <a e cis> | <a d,> | <a e> |
  %% 88
  << {\voiceOne gis4.} \new Voice {\voiceTwo e4 d8} >> \oneVoice |
  <a' e cis>4.~ | <a e cis>4 r8 | <a fis d>4. |
  %% 92
  << {\voiceOne a4.} \new Voice {\voiceTwo d,8 fis d} >> \oneVoice |
  <e a>4. |
  %% 94
  << {\voiceOne a4. | a | b}
     \new Voice {\voiceTwo cis,8 e cis | d e fis | g e b} >> \oneVoice |
  %% 97
  <e cis>4 <fis d>8 | <g e>4 <a g e>8 | <a fis d>4.\f | <d a d,> |
  %% 101
  <a e cis> | <e a e'> | <fis b d> | <b fis b,> | <a fis cis> |
  %% 106
  <cis fis, cis> | <b g d> | <d g, d> | <a fis d> | <g d> |
  \once \override TextSpanner.bound-details.left.text
  = \markup {
    \override #'(style . outline)
    \override #'(thickness . 3)
    \whiteout \senzaAllargando
  }
  \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \textSpannerDown
  <a e> \startTextSpan |
  %% 112
  <cis g e> | <d fis, d> | <d a fis>4 \stopTextSpan r8 \bar "|."
}

pianoDownMovementII = \new Voice \relative c {
  b4 b8 d4 d8 | ais4 ais8 fis4 fis8 | d'4 d8 ais4 ais8 |
  b4 e8 b'8( fis e) | d4 d8 fis4 fis8 | cis4 cis8 a4 a8 |
  cis4 g'8 fis4 g8 | a4 a,8 d4. | ais'4. b | ais, b | e, e' |
  fis4 fis,8 b4._\fermata \bar "||"
  cis4.:8 cis8 cis d | <a e' a>2.\arpeggio_\fermata \bar "||"
  %% 15
  d,4. | fis | a | cis, | b | d | fis | a | g | b | d | b | cis | a |
  %% 29
  d, | d'8 fis a | b4.:8 | fis:8 | b:8 | fis:8 | d:8 | cis:8 | d:8 |
  %% 38
  cis8 cis d | g,4.:8 | b:8 | cis:8 | a8 cis a | d,4. | fis | a |
  %% 46
  cis, | b | d | fis | a | g | b | d | b | cis | a | d,8 fis a |
  %% 58
  d fis a | d,4.~ | d | d, | a'8 cis a | d4.~ | d | d, |
  a'8 a16( gis a b) | cis4. | d | cis | fis | a | fis | cis |
  fis8 cis fis, | a4.:8 | cis:8 | e:8 | gis,:8 | fis:8 | a:8 | cis:8 |
  cis,:8 | fis:8 | gis:8 | a:8 | b:8 | cis:8 | e8 e e, | a4. |
  a'8 a16( g fis e) | d4. | fis8 d fis | cis4. | a8 cis a | d,4. | g |
  a | a, | d | fis | a | cis, | b | d | fis | a | g | b | d | b | cis |
  a | d,8-. fis-. a-. | d4 r8 \bar "|."
}

%%%-------------------------------------------------

\include "composer.ily"

\header {
  arranger = ##f
  enteredby = "Philipp Büttgenbach"
  opus = #"Opus 15"
  source = "http://imslp.org/"
  title = #"Concertino."
  subtitle = #"In the style of Antonio Vivaldi."
}

\include "paper.ily"

#(define fileBaseName "Ferdinand_Küchler-opus_15")

define(`Movements', `(I, II)')
include(`concertino.ily')

\include "articulate.ly"

\book {
  \bookOutputName \fileBaseName
  \score {
    \articulate \unfoldRepeats
    \new StaffGroup <<
      \new Staff \with {
        midiInstrument = #"violin"
      } { \globalMovementI   \violinMovementI
          \globalMovementII  \violinMovementII
        }
      \new PianoStaff \with {
        midiInstrument = #"harpsichord"
      } <<
        \new Staff = "up" {
          \globalMovementI \pianoUpMovementI
          \globalMovementII \pianoUpMovementII
        }
        \new Staff = "down" {
          \globalMovementI \pianoDownMovementI
          \globalMovementII \pianoDownMovementII
        }
      >>
    >>
    \midi{}
  }
}
