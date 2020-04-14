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

pMaEspressivo = \markup {\dynamic "p" \italic "ma espressivo"}
pocoRit = \markup {\italic #"poco rit."}
sempreF = \markup {\italic #"sempre" \dynamic #"f"}
simile = \markup {\italic #"simile"}
tranquillo= \markup {\italic #"tranquillo"}

titleMovementI = #""

globalMovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4=111
  \key d \major
}

violinMovementI = \relative a' {
  \cueDuring #"pianoUpMovementI" #DOWN {\partial 2 r2 | R1}
  \cueDuring #"pianoUpMovementI" #UP   {R1*2}
  \cueDuring #"pianoUpMovementI" #DOWN {R1*3}
  \cueDuring #"pianoUpMovementI" #UP   {R1}
  \cueDuring #"pianoUpMovementI" #DOWN {r2 r4}
  a4\mf\upbow | d2 a | fis' d4( b') |
  %% 11
  b a fis( d) | d2( cis4) r | e2-2 a,\open | g'-4 e4( cis') | cis b a( e-2) |
  g2( fis4) r | e2-2\<\downbow fis4( gis\!) | a2-4\flageolet e |
  %% 19
  d4-3( cis) d4.\>( e8) | cis4 fis e( cis) | e2-2\mf fis4( gis) |
  a-1\< d cis b | e2\flageolet-4\f b4.( cis8) | a2. r4 |
  %% 25
  g2-2\downbow\mf e4 cis | a'2 fis | g e4 cis | b'( a) gis a |
  %% 29
  a2-1\< b4 cis | d\f a fis-3 d | b'2 g4.-4( e8) | d2 r |
  \cueDuring #"pianoUpMovementI" #DOWN R1
  \cueDuring #"pianoUpMovementI" #UP   R1*2
  \cueDuring #"pianoUpMovementI" #DOWN R1*6
  a,8-.\f^"o. H." cis-. e-. gis-. a-. cis-. b-. a-. |
  %% 43
  b^\simile d cis b cis fis e cis | a cis e gis a-1 cis b a |
  b d cis b a e\open cis-2 a | fis' gis a fis e cis a e |
  d' e fis d cis a fis cis | b' cis d cis b cis b a |
  %% 49
  gis a gis fis e fis gis e | a4^"g. B." e8.( cis'16-.) cis 4 b |
  a e8.( cis'16-.) cis2 | b4( d) cis^"u. H." b |
  %% 53
  a8^"g. B."( cis) e-._"Sp." fis-. e2^"g. B." |
  a,4 e8.( cis'16-.) cis4 b | a e8.( cis'16-.) cis2 |
  a4( fis') gis_"u. H." a | fis2^"g. B." r2 |
  %% 58
  a4\mf\downbow^"u. H." a16( b cis a) d8-! a-! fis-3-! d-! |
  %% 59
  e-! g-! fis-! e-! d4 a | a' a16( b cis a) d8-! a-! fis-! d-! |
  %% 61
  e8.( fis16) e8( cis') a4 r | e4-2\downbow e16( fis g e) d4 a\open |
  e'4-2 e16( fis g e) a4 d | a a16( b cis a) d8-! a-! fis-! d-! |
  fis4 e8.( fis16) d4 r | b4-1\f fis8.( d'16-.) d4 cis |
  b4 fis8.( d'16-.) d2 | cis4( e) d cis |
  %% 69
  b8( d) fis-.^"Sp." g-. fis2^"g. B." | b,4 fis8.( d'16-.) d4 cis |
  %% 71
  b fis8.( d'16-.) d2 | cis4( e) d cis | b2 r |
  \cueDuring #"pianoUpMovementI" #DOWN R1*2
  \cueDuring #"pianoUpMovementI" #UP   R1
  \cueDuring #"pianoUpMovementI" #DOWN {r2 r4}
  %% 77
  a4\upbow\mf | d2 a | fis' d4( b') | b a fis( d) | d2( cis4) r |
  e2-2 a,\open | g'-4 e4-2( cis') | cis b a( e) | g2( fis4) r |
  %% 86
  e2-2\< fis4( gis\!) | a2\flageolet-4 e2-2 | d4-3( cis) d4.\>( e8) |
  cis4 fis e-4( cis) | e2-2\mf fis4( gis) | a-1\< d cis b |
  e2\flageolet\f-4 b4.( cis8) | a2. r4 |
  %% 94
  g8-.^"o. H." e-. cis-. a-. b' a fis d | g e cis a fis d b a |
  g b e g b e g e | fis d cis d b4 r |
  %% 98
  d4-1\mf\downbow^"u. H." d16( e fis d) g8-! d-! b-!-3 g-! |
  %% 99
  a-! c-! b-! a-! g4 d | d' d16( e fis d) g8-! d-! b-! g-! |
  %% 101
  a8.( b16) a8( fis') d4 r | a4-2\downbow a16( b c a) g4 d\open |
  %% 103
  a' a16( b c a) d4 g | d d16\cresc( e fis d) g8-! d-! b-!-3 g-! |
  %% 105
  b4 a8.( b16) g4 r | d'-3^"g. B."\f a8.( fis'16-.) fis4 e |
  d  a8.( fis'16-.) fis2 | e4( g) fis^"u. H." e |
  d8_"g. B."( fis) a^"Sp." b a4 r | d, a8.( fis'16-.) fis4 e |
  d a8.( a'16-.) a2 | b4( a) fis gis | a g e cis |
  \tuplet 3/2 4 {
    a8-.^"M." b-. a-. d-. cis-. b-. a-. b-. a-. fis-. d-. b-. |
    \omit TupletNumber
    a cis e g fis e fis d b' a fis d |
    a'-- b-- a-- d-- cis-- b--
    a--^\markup{\italic "poco a poco rit."} b-- a-- fis-- d-- b-- |
    a b\< cis d e fis e-- fis-- g-- a-- b-- cis--
  } | d4\ff r <d, a' fis'>\downbow r | <d d'>2\downbow \bar "|."
}

pianoUpMovementI = \new Voice \relative a {
  \partial 2 r8 a8-.\f b-. cis-. | d2->~ d8 e-. fis-. g-. |
  %% 2
  a2->~ a8 d-. cis-. d-. | b4-- a-- g-- fis-- | e-- d-- cis-- d-- |
  %% 5
  << {\voiceOne e2( b'4-.)} \new Voice {\voiceTwo <d,~ b>2 d4} >> \oneVoice r4 |
  << {\voiceOne e2( <e d'>4-.)} \new Voice {\voiceTwo <d b>2} >> \oneVoice r4 |
  %% 7
  a4-. <a' g'>2( e'4 | d4) <cis g>\> <b g> <a g> | <a fis d>2.\mf r4 |
  <a fis d>2. <b g d>4 |
  %% 11
  << {\voiceOne <b g>4( d a)}
     \new Voice {\voiceTwo d,2.} >> \oneVoice <fis d>4 |
  %% 12
  << {\voiceOne <a fis>4 <gis f>}
     \new Voice {\voiceTwo d2} >> \oneVoice <cis e a>4 a8 gis |
  %% 13
  <a cis e>2. a8 gis | <a cis e>2. cis8 e | a4 <d, b> <e cis> <a cis,> |
  <cis a g>2( <d a fis>8) a fis d |
  %% 17
  r8\< \repeat unfold 3 <gis e b>8 <gis e b>2\! |
  r8 \repeat unfold 3 <a e a,>8 <a e a,>2 |
  %% 19
  r8 \repeat unfold 3 <a fis d>8 <gis e d>2\> |
  %% 20
  <a e cis>4 <a fis d> << {\voiceOne a4( cis)}
                          \new Voice {\voiceTwo e,2} >> \oneVoice |
  %% 21
  r8\mf \repeat unfold 3 <gis e b>8 <gis e b>2 |
  %% 22
  <a e>4\< <b fis d> <ais e> <b fis> | <a e cis>2\f <gis e d> |
  <a e cis>4 \repeat unfold 2 <cis, a> <d b> |
  %% 25
  <cis e>8\mf( \repeat unfold 3 {a <cis e>} a) |
  <d a'>8( a <d a'> a <d fis> a <d fis> a) |
  %% 27
  <cis e>8( \repeat unfold 3 {a <cis e>} a) |
  <d a'>8( \repeat unfold 3 {a <d a'>} a) |
  %% 29 / 30
  << {\voiceOne a'2 a | a2 ais}
     \new Voice {\voiceTwo <gis d>4 <g cis,> cis,2 | d4 a d ais }
     \new Voice {\voiceThree s2 fis'4 e} >> \oneVoice
  %% 31
  <d g b>2 <e g cis> | <d fis d'>4 d8( e fis4) fis8 g |
  %% 33
  a4 \repeat unfold 2 <a fis> <g a> | <a fis>4 b8 cis d cis d e |
  %% 35 / 36
  << {\voiceOne cis2( b8 a b cis) | a2~ a8 gis a b}
     \new Voice {\voiceTwo r4 e,4( eis2) | fis4( cis) dis2} >> \oneVoice
  %% 37 / 38
  <e gis>2 << {\voiceOne a8 gis a b | a gis}
              \new Voice {\voiceTwo dis 2 | e4} >> \oneVoice fis8 e fis4 fis' |
  %% 39
  d,4 d' b, b' | gis, gis' e e' | d, d' b, b' |
  %% 42
  <a e cis>2\f r4 <e a e'> | <e gis b>2 <e a cis>4 r |
  <e a cis>2 r4 <e a e'>4 | <e gis b>2 <e a cis>4 r |
  <fis a d> r <e a e'> r | <fis b d> r <fis a cis> r |
  %% 48 / 49
  << {\voiceOne <a b>1 | <gis b>}
     \new Voice {\voiceTwo fis2( f) | e( d) } >> \oneVoice |
  %% 50
  <cis e a>2\f r4 e8. e'16 | e4 cis a cis |
  %% 52
  <a fis>2 << {\voiceOne gis2}
              \new Voice {\voiceTwo e4 d} >> \oneVoice |
  %% 53
  <cis a'>2 <e b' d>4 r | <e a cis>2 r4 e8. e'16 |
  %% 55
  e4 a,8 b << {\voiceOne cis2~}
              \new Voice {\voiceTwo e,4 eis} >> \oneVoice |
  %% 56
  <fis a cis>2 <eis b' cis> |
  <fis a cis>4\> <cis fis a> <b d g> <cis e> |
  %% 58
  <fis a>4\mf( <e g> <d fis> <fis a>) |
  %% 59
  <e g a>2 << {\voiceOne a4 d}
              \new Voice {\voiceTwo <fis, d>2} >> \oneVoice |
  %% 60
  <e a cis>2 << {\voiceOne <a d>4 <fis a>}
                \new Voice {\voiceTwo d2} >> \oneVoice |
  %% 61
  <e gis d'>2 <e a cis>4 r |
  <e b' d>4:8 <e a cis>:8 <d a' d>:8 <d fis a>:8 |
  \repeat unfold 2 <a e' g>:8 <a d fis>:8 <a d a'>:8 |
  %% 64
  \repeat unfold 2 <a cis e>:8 <a d a'>:8 <ais d ais'>:8 |
  %% 65
  <d g b>4 <e g cis> <fis a d>\< << {\voiceOne cis'8. d16}
                                    \new Voice {\voiceTwo <ais e>4} >> \oneVoice |
  %% 66
  <b fis d>2->\f r8 \repeat unfold 3 <g e>8 |
  %% 67
  <d fis b>2 << {\voiceOne b'2->}
                \new Voice {\voiceTwo r8 d, e fis} >> \oneVoice |
  %% 68
  <g b>2 <ais fis> |
  %% 69
  << {\voiceOne b2 r8 cis, fis g}
     \new Voice {\voiceTwo fis4( d) ais2} >> \oneVoice |
  %% 70
  <b d fis>2 r8 \repeat unfold 3 <e g>8 |
  <d fis>2 r8 \repeat unfold 3 <d fis b>8 |
  <cis g' b>2 <e fis ais> |
  %% 73
  <d fis b> r8 << {\repeat unfold 3 <d fis b>} {s8\p\< s s\!} >> |
  %% 74
  <e g cis>2-> r8 << {\repeat unfold 3 <d fis b>} {s8\mf\< s s\!} >> |
  %% 75
  <dis fis c'>2-> r8 << {\repeat unfold 3 <dis fis b>8} {s8\< s s\!} >> |
  %% 76
  <e b' e>4 <g b g'>2\f( e'4 | <d fis,>4) <cis g>\> <b g> <a g> |
  <a fis d>2.\mf r4 | <a fis d>2. <b g d>4 |
  %% 80
  << {\voiceOne <b g>4( d a)}
     \new Voice {\voiceTwo d,2.} >> \oneVoice <d fis>4 |
  %% 81
  << {\voiceOne <fis a>4 <f gis>}
     \new Voice {\voiceTwo d2} >> \oneVoice <cis e a>4 a8 gis |
  %% 82
  <a cis e>2. a8 gis | <a cis e>2. cis8 e |
  a4 <d, b> <e cis> <a cis,> | <cis a g>2( <d a fis>8) a8 fis d |
  %% 86
  << {r8 \repeat unfold 3 <b e gis>8 <b e gis>2} {s4\< s s s\!} >> |
  r8 \repeat unfold 3 <a e' a>8 <a e' a>2 |
  r8 \repeat unfold 3 <d fis a>8 <d e gis>2 |
  %% 89
  <cis e a>4 <d fis a> << {\voiceOne a'4( cis)}
                          \new Voice {\voiceTwo e,2} >> \oneVoice |
  %% 90
  r8\mf \repeat unfold 3 <b e gis>8 <b e gis>2 |
  %% 91
  <e a>4\< <d fis b> <e ais> <fis b> | <cis e a>2\f <d e gis> |
  %% 93
  <cis e a>4 \repeat unfold 2 <cis a> <b d> | <a cis e> r <a d fis> r |
  %% 95
  <a e' a> r <a d fis> <b fis' b> | \repeat unfold 2 {<b e g> r} |
  <b d fis> <cis fis ais> <d fis b>8 b8\>[ c cis] |
  %% 98
  d8\mf( fis a fis b g d b) | c( d fis d g d b d) |
  %% 100
  c( fis a fis b g d b) | <e g>8 a, <cis g'> a <d fis>8 a d fis |
  <d fis a>4:8 <d fis a>4 <d g>2:8 |
  %% 103
  <d fis c'>4:8 <d fis c'>4 <d g b>2:8 |
  <fis b>8 d <fis c'>\cresc d <g b> d <g d'> d |
  %% 105
  <g b> d <fis c'> d <g b> a b cis | <fis, a d>2->\f r4 a8. a'16 |
  a4 fis d fis |
  %% 108
  <d g,>2 << {\voiceOne cis2} \new Voice {\voiceTwo a4 g} >> \oneVoice |
  %% 109
  <fis d'>2 <g e a,>2 | <fis d a> r4 a,8. a'16 | a2 r4 <fis dis b> |
  <b, e b'> <cis e a> <d fis> <d gis> |
  %% 113
  << {\voiceOne a'4 g2}
     \new Voice {\voiceTwo d2.} >> \oneVoice <cis g'>4 |
  %% 114
  \repeat unfold 2 { <fis d a>4 r4 } | <g cis, a>4 r <fis d a> r |
  <fis d a> <g d b> <fis d a> r |
  %% 117
  <e cis a>\cresc <d a> << {\voiceOne g2}
                           \new Voice {\voiceTwo <d b>4 <cis a>} >> \oneVoice |
  %% 118
  <fis d a>4\ff \tuplet 3/2 {a8-. b-. cis-.} <d a fis>4 \tuplet 3/2 {a,8-. b-. cis-.} |
  <d a fis>2 \bar "|."
}

\addQuote #"pianoUpMovementI" \pianoUpMovementI

pianoDownMovementI = \new Voice \relative a, {
  \partial 2 r8 a8-. b-. cis-. | d2->~ d8 e-. fis-. g-. |
  %% 2
  a2->~ a8 d-. cis-. d-. | b4-- a-- g-- fis-- | e-- d-- cis-- d-- |
  %% 5
  g,2\sustainOn( <g' b>4\sustainOff) r4 |
  gis,2\sustainOn( <gis' b>4-.\sustainOff) r4 |
  a,4-.\sustainOn <a' cis e>2 cis4\sustainOff |
  %% 8
  d4 <e a,> <e b> <e cis> | d,2~ d8 a b cis | d2. g4 | g fis d2 |
  %% 12
  \repeat percent 2 {a2. a8 gis} | a2. cis8 e | a2 a, |
  %% 16
  <d d,>2~ 4 r | d2. d4 | cis2. cis4 | b2 e,4( e') | a, d cis a |
  %% 21
  d,2. d'4 | cis b cis d | e e, e'2 | a,2 a, | a' g | fis d |
  %% 27
  a'2 g | fis fis' | f4 e a, g | fis2 fis' | g4 e a a, | d r r d8 e |
  %% 33
  fis4 fis8 g a4 b8 cis | d4 cis b gis | a4 a,8 b cis2 | fis4 fis, f2 |
  %% 37
  e4 e' f2 | <e b'>4 r fis r | d r b r | gis r e r | fis r gis r |
  %% 42
  a2 r4 cis | e2 a4 r | a,2 r4 cis4 | e2 a4 r | d, r cis r |
  %% 47
  b r fis r | d'2 d, | e e' | a, r4 <e' gis d'> | <a cis>1 | d,4 b e2 |
  %% 53
  fis2 gis8 e fis gis | a2 r4 <e gis d'> | <a cis>2 a4 gis |
  %% 56
  fis a, cis2 | fis, a | <d d,>1 | <cis cis,>2 d8 fis e d |
  %% 60
  a4 g fis d' | b e a,8 cis e a | gis4 g  fis d | cis2 d4 fis, |
  %% 64
  a4 g fis2 | e4 a d,8 e fis4 | b2-> r8 \repeat unfold 3 ais8 |
  %% 67
  b2 r8 b8 cis d | e4 cis fis fis, | d'4( b) fis2 |
  %% 70
  b2 r8 \repeat unfold 3 ais8 | b2 r8 b8 cis d | e2 fis |
  b,4 b, r8 b'' b b | ais2-> r8 b8 b b |
  %% 75
  a2 r8 \repeat unfold 3 <a b>8 | <b g>4 <b e,>2 r4 |
  %% 77
  r4 <a e'> <b e> <cis e> | d,2~ d8 a b cis | d2. g4 | g fis d2 |
  \repeat percent 2 {a2. a8 gis} | a2. cis8 e | a2 a, |
  %% 85
  <d d,>2~ 4 r | d2. d4 | cis2. cis4 | b2 e,4( e') |
  %% 89
  a, d cis a | d,2. d'4 | cis4 b cis d | e e, e'2 | a, a, |
  %% 94
  a'4 r d r | cis r d dis | e r cis r | fis fis, b8 b[ c cis] |
  %% 98
  d4 d, g d' | d, d' g, d' | d, d' g, b | cis a d2 | c'4:8 c4 b2:8 |
  %% 103
  a4:8 a4 g2:8 | b,4 a g b | d d, g8 a b cis | d2-> r4 <a' cis e> |
  %% 107
  <d fis>1 | g,4 e a2 | d,2 cis8 a b cis | d2 r4 <g cis, a> |
  <fis d>2 r4 a, | g a b <bes eis> |
  %% 113
  << {\voiceOne fis'4 b2}
     \new Voice {\voiceTwo a,2.} >> \oneVoice <a' a,>4 | d, r d, r |
  %% 115
  a' r d r | d2 d,4 r | g fis a2 |
  %% 118
  d4 \tuplet 3/2 {a'8-. b-. cis-.} d4 \tuplet 3/2 {a,8-. b-. cis-.} |
  d2 \bar "|."
}

%%% -------------------

titleMovementII = #""

globalMovementII = {
  \tempo "Andante cantabile." 4 = 84
  \key g \major
  \time 3/4
}

violinMovementII = \new Voice \relative b' {
  b8._\pMaEspressivo( c16) d8-1( g fis e) | d4-3( b) r |
  %% 3
  a8.-2\downbow( b16) a8( c b a) | b4( d-4\flageolet) r |
  d8.-3\downbow( e16) d8\<( b' a g\!) | fis4( a) d,-1 |
  %% 7
  e \once \override Hairpin.to-barline = ##f g\>( cis,-2) |
  d2\! r4 | c8.\downbow( d16) c8( b c a) | e'4( d) fis\< | g a-1 b |
  d\f a b | c8.( d16) c8( b c a) | b2 g4-4\> |
  %% 15
  fis8.( e16) fis8( d e fis) | g2\mf r4 |
  \cueDuringWithClef #"pianoUpMovementII" #UP "alto" R2.*4 |
  e,2\f b4 |
  g( b) c-1 | e fis( e) | dis2. | g,2 b4 | a c2 | b4( dis-2) fis |
  e2.\> | b'-1\mf | gis2 e4 | c'2. | e | b | g2 e4 |
  fis2. | b, | e2\f b4 | g( b) c-1 | e fis( e) | dis2. | e2 fis4 |
  g2.-4\flageolet | fis4-4( e) dis | e2. |
  \cueDuring #"pianoUpMovementII" #DOWN R2. |
  b'8.\p( c16) d8-1( g fis e) | d4-3( b) r4 |
  a8.-2\downbow( b16) a8( c b a) | b4( d-4\flageolet) r4 |
  d8.-3\downbow( e16) d8\<( b' a g\!) | fis4( a) d,-1 |
  e g\>( cis,-2\!) | d2 r4 | c8.\downbow( d16) c8( b c a) |
  e'4( d) fis\< | g a-1 b | d\f a b | c8.( d16) c8( b c a) |
  b2 g4-4\> | fis8.( e16) fis8( d e fis) | g2\mf r4 | d'2\p\downbow b4 |
  g-4 e2 | c4-4( a) b | g2.\> |
  d'^\markup{\musicglyph #"scripts.flageolet" \smaller "ad lib."}\pp |
  g \bar "|."
}

pianoUpMovementII = \new Voice \relative b {
  <b d>8\p g <b d> g <ais cis> g | <b d> g <b d> g <b d> g' |
  %% 3
  \repeat unfold 3 {<d fis> a} | <d g> b \repeat unfold 2 {<g' b> d} |
  <b d> g <b d> dis <b e~> <bes e g> | <d fis> a <d a'> a <d fis> b |
  <d b'> b <d g> b <cis g'> a | <d fis> cis d e fis g |
  %% 9
  \repeat unfold 3 {<fis a> d} | g d g b <fis c'>\< d |
  <g b> d <a' d> d, <g b> d |
  %% 12
  <eis gis>\f d <fis a> d <gis b> d | \repeat unfold 3 {<a' c> e} |
  %% 14
  <g b> d <g d'> d g\> d | c e b d <a c> d | <b g>\mf d <b g'> d g a |
  %% 17
  b2 fis4 | b a8( g fis e) | fis8. \repeat unfold 2 {g16( fis8.)} g16( |
  %% 20
  fis8) \change Staff = "down" \voiceOne b,8->~ b <a b> <g b> <fis a b> |
  \tuplet 3/2 4 {
    <b g e>8^\f \repeat unfold 2 <b g e> \repeat unfold 2 <b g e>4.:8 |
    \change Staff = "up" \oneVoice
    <e b g>4.:8 <e b>:8 <c e a>:8 |
    \omit TupletNumber
    %% 23
    <e a,>:8 <e ais,>:8 <fis e ais,>:8 |
    %% 24
    \repeat unfold 2 <fis dis b>:8 <dis fis b>:8 |
    \repeat unfold 2 <e g b>:8 <g e b>:8 |
    <e a c>:8 \repeat unfold 2 <a e c>:8 |
    %% 27
    \repeat unfold 2 <fis dis b>:8 <b dis, b>:8 |
    %% 28
    << {\repeat unfold 2 <g e b>:8} {s\>} >> } <g e b>4 |
  %% 29
  r8\mf <b e, b> <b e, b>4:8 <a dis, b>8 <g e b> |
  %% 30
  r8 <gis e b> <gis e b>4:8 <gis e c>8 <gis e d> |
  r8 <a e c> \repeat unfold 2 <a e c>4:8 |
  %% 32
  r8 <a e a,> <a e a,>4:8 <e ais,>4:8 |
  %% 33
  r8 \repeat unfold 2 <a fis b,> \repeat unfold 2 <g e b> <g f b,> |
  r8 <g e c> \repeat unfold 2 <g e c>4:8 |
  %% 35
  r8 <fis e cis> <fis e cis>4:8 <fis e b>8 <fis e ais,> |
  <fis dis b>8 \change Staff = "down" \voiceOne b,8->~ [ b <a b> <g b> <fis a b> ] |
  \tuplet 3/2 4 {
    \undo \omit TupletNumber
    <b g e>8^\f \repeat unfold 2 <b g e> \repeat unfold 2 <b g e>4.:8 |
    \change Staff = "up" \oneVoice
    \repeat unfold 2 <e b g>4.:8 <c e a>:8 |
    \omit TupletNumber
    <e a,>:8 <e ais,>:8 <fis e ais,>:8 |
    \repeat unfold 2 <fis dis b>:8 <dis fis b>:8 |
    \repeat unfold 2 <e c g>:8 <fis d a> |
    \repeat unfold 3 <g d g,>:8 |
    <fis dis b>:8 <e b g>:8 <dis b fis>:8 |
  }
  %% 44
  <e b g>8 fis <g e> <a fis>\> <b~ g>4 |
  %% 45
  << {\voiceOne b8 c} \new Voice {\voiceTwo g4} >> \oneVoice <fis c'>2 |
  <d b>8\p g, <b d> g <ais cis> g |
  %% 47
  \repeat unfold 2 {<b d> g} <b d> g' |
  %% 48
  \repeat unfold 3 {<d fis> a} | <d g> b \repeat unfold 2 {<g' b> d} |
  %% 50
  <d b> g, <b d> dis <e~ b> <g e bes> | <d fis> a <d a'> a <d fis> b |
  %% 52
  <d b'> b <d g> b <cis g'> a | <d fis> cis d e fis g |
  %% 54
  \repeat unfold 3 {<fis a> d} | g d g b <fis c'>\< d |
  <g b> d <a' d> d, <g b> d | <eis gis>\f d <fis a> d <gis b> d |
  \repeat unfold 3 {<a' c> e} | <g b> d <g d'> d g\> d |
  %% 60
  c e b d <c a> d | <b g>\mf\> d <b g'> d <b g'> d\! |
  \repeat unfold 3 {<d fis> b} | \repeat unfold 3 {<e g> b} |
  \repeat unfold 2 {<e a> c} <d fis> c |
  b\> d g d g b | g\pp b d g, b d | <b d g>2. \bar "|."
}

\addQuote #"pianoUpMovementII" \pianoUpMovementII

pianoDownMovementII = \new Voice \relative g, {
  g2. | g2 g8 b | d2 d,4 | g2 g'4 | g,2 g4 | a4 fis b | g e a |
  %% 8
  d,2 r4 | d'2 c4 | b2 a4 | g fis g | d d'8 c b4 | a4 g fis | g( b) b |
  %% 15
  d d, d' | g,2 r4 | r8 <a' b dis>8 \repeat unfold 2 <a b dis>4:8 |
  r8 <g b e>8 <g b e>4:8 <g b>4 |
  %% 19
  r8 <a c e>8 <a c e>4:8 <ais cis e>:8 |
  <b dis>8 \voiceTwo r8 r4 r4 |
  %% 21
  e,,2. \oneVoice | e4( g) a | c2. | b | e,2 g4 | a a' fis |
  %% 27
  b,2 b,4 | e2. | g2 fis8 e | b'4. d8 c b | a4. gis8 a b | c2 cis4 |
  %% 33
  dis e d | c2 c8 b | ais2 b8 cis | b \voiceTwo r8 r4 r | e,2. \oneVoice |
  %% 38
  e4( g) a | c2. | b | c | b | b4 b, b' | e, r \clef "violin" g''8 fis |
  %% 45
  e ees d c b a \clef "bass" | g,2. | g2 g8 b | d2 d,4 | g2 g'4 | g,2 g4 |
  %% 51
  a fis b | g e a | d,2 r4 | d'2 c4 | b2 a4 | g fis g | d d'8 c b4 |
  a g fis | g( b) b | d d, d' | g,2 r4 | b2. | e | a,2 d4 | g,2. | g |
  <g d'>2. \bar "|."
}

%%% -------------------

titleMovementIII = #"Rondo."
globalMovementIII = {
  \tempo "Allegretto." 4. = 77
  \key d \major
  \time 6/8
}

violinMovementIII = \relative a' {
  a4.\mf^"g. B." d8_"Sp."( cis) b-. | a4.^"g. B." fis | e g8( fis e) |
  d^"Sp."( e) fis-. e4.^"g. B." | a4. d8^"Sp."( cis) b-. |
  %% 6
  e4.^"g. B." cis | fis8( e fis) gis( fis gis) | a4.~ a8 r r |
  a4.-1\f\downbow d8( cis) b-. | a4. fis-3 | e g8( fis e) |
  d( e) fis-. e4. | a8( b a) d( cis b) | a4. fis |
  %% 15
  e8-!^"u. H." fis-! g-! a-! b-! cis-! | d4.~ d8 r r |
  %% 17
  b,16\mf\downbow( cis b cis b8-.) fis16( g fis g fis8-.) |
  b16( cis b cis b8-.) d8( cis b) |
  %% 19
  cis16( d cis d cis8-.) fis16( g fis g fis8-.) | d4. b4 r8 |
  b16( cis b cis b8-.) fis16( g fis g fis8-.) |
  b16( cis b cis b8-.) d8( cis b) |
  %% 23
  a16( b a b a8-.) cis16( d cis d cis8-.) | fis4.\>~ fis8 gis a |
  fis4.\p~ fis8 gis a | fis4. r4. | R2. | a,,4.\f cis | e a |
  %% 30
  fis a8-- gis-- fis-- | e4. cis | a cis | e a | b dis8-- cis-- b-- |
  e4. r | fis\downbow d | b  d8-- cis-- b-- | e4. cis |
  a cis8-- b-- a-- | d4. b | fis a8-- gis-- fis-- |
  e4 cis'8 e( d) cis-. | b4. r |
  %% 44
  fis'\downbow d\< | b d8 cis^\markup{\italic "un poco rit."} b |
  e4. cis | a'--\ff a,4^\aTempo( b8-.) | cis4. e | b e |
  a,8-!-"u. H." a'-! e-! d-! cis-! b-! | a4. r |
  a4.\mf\downbow d8( cis) b8-. | a4. fis | e g8( fis e) |
  d( e) fis-. e4. | a4. d8( cis) b-. | e4. cis |
  fis8( e fis) gis( fis gis) | a4.~ a8 r r |
  %% 60
  a4.-1\f d8( cis) b-. | a4. fis-3 | e g8( fis e) | d( e) fis-. e4. |
  %% 64
  a8( b a) d( cis b) | a4. fis-3 |
  %% 66
  e8-!-"u. H." fis-! g-! a-! b-! cis-! | d4. r |
  \cueDuring #"pianoUpMovementIII" #UP   R2.*2
  \cueDuring #"pianoUpMovementIII" #DOWN R2.*2
  e,,16\mf( fis e fis e8-.) b16( cis b cis b8-.) |
  e16( fis e fis e8-.) g8( fis e) |
  fis16( g fis g fis8-.) b16( c b c b8-.) | g4. e |
  e'16( fis e fis e8-.) b16( c b c b8-.) |
  e16( fis e fis e8-.) g8( fis e) |
  a16-1( b a b a8-.) cis16( d cis d cis8-.) | d4.~ d8 r r |
  \cueDuring #"pianoUpMovementIII" #UP   R2.*2
  \cueDuring #"pianoUpMovementIII" #DOWN R2.*2
  \bar "||" \key d \minor
  d,,4.\mf^\aTempo f4( e8) | d4. a8( bes a) | d4. f | e2. | e4. g |
  f e8( f e) | d( e d) f( g gis) | a4. r | d, f4( e8) |
  d4. d8( e d) | e4. g4( f8) | e4. e8( f e) | f8( d f) a-4( f a\open) |
  d4. d,8( e d) | e( f e) g( f e) | d4. r |
  a'\p\downbow^\tranquillo d8( c) bes-. | a4.-4( f8) r r |
  a'4.-1\pp d8^\rit( c) bes-. | a4.~ a8 r r \bar "||" \key d \major
  %% 104
  a,4.\mf^\aTempo d8( cis) b8-. | a4. fis | e g8( fis e) |
  d( e) fis-. e4. | a d8( cis) b-. | e4. cis |
  %% 110
  fis8( e fis) gis( fis gis) | a4.~ a8 r r | c4.-3\f~ c8 b-. a-. |
  fis4.-3 dis | c'4.\>~ c8 b a | fis4.-1 b-4\! | e,,4.\f gis | b e |
  cis e8-- dis-- cis-- | b4. gis | e gis | b e |
  %% 122
  fis ais8-- gis-- fis-- | b4. r | cis4.-3 a-1 | fis-1 a8-- gis-- fis-- |
  b4. gis | e gis8-- fis-- e-- | a4. fis | cis e8-- dis-- cis-- |
  %% 130
  b4 gis'8 b( a) gis-. | fis4. r | c'4.-3 a-1 | fis-1 a8-- g-- fis-- |
  b4. g | e g8-- fis-- e-- | a,4. cis | e g8-- fis-- e--\open |
  %% 138
  d8-1 d'-4 a fis e d | a'4.~ a8 r r | a,4.\mf d8( cis) b-. | a4. fis |
  %% 142
  e g8( fis e) | d( e) fis-. e4. | a d8( cis) b-. | e4. cis |
  fis8( e fis) gis( fis gis) | a4.~ a8 r r |
  %% 148
  a4.-1\downbow\f d8( cis) b-. | a4. fis-3 | e g8( fis e) |
  d( e) fis-. e4. | a8( b a) d( cis b) | a4. fis |
  e8-! fis-! g-! a-! b-! cis-! |
  d8-.^"o. H."_\sempreF a8-. fis-. d-. a-.\open fis-. |
  d fis a\open d-1 fis a | d b fis d-1 b-1 fis | d fis b d fis b |
  g e b g e b | g b e g b e\open | g e cis a g e | a, e' g a cis e |
  d4. r | <cis e>4\ff\downbow r8 r4. |
  \repeat percent 2 {<d, a' fis'>4\downbow r8 r4.} |
  <d d'>4.\downbow r \bar "|."
}

pianoUpMovementIII = \new Voice \relative f' {
  fis8\mf d a g' d b | fis' d a a' d, a | \repeat unfold 2 {e' cis a} |
  %% 4
  d a d << {\voiceOne e fis g} \new Voice {\voiceTwo cis,4.} >> \oneVoice |
  fis8 d a f' d gis, | e' a, e' a e a | d b fis b gis d |
  %% 8
  cis e a,\< cis e g | fis\f d a g' d b | fis' d a a' d, a |
  \repeat unfold 2 {e' cis a } |
  %% 12
  d a d << {\voiceOne e fis g} \new Voice {\voiceTwo cis,4.} >> \oneVoice |
  %% 13
  fis8 d a f' d gis, | fis' d a fis' dis a | g' e b g' cis, a |
  %% 16
  <d fis>8^\> \change Staff = "down" \voiceOne <d fis,>8[ <d fis,> ] <d fis,>4.:8 |
  %% 17
  \change Staff = "up" \oneVoice <d fis>4.\mf <e cis> |
  %% 18
  <d fis>4. <d fis b> | <cis fis ais> <cis fis cis'> |
  %% 20
  <d fis> <d fis b>4 r8 | \repeat unfold 2 <d fis>4. |
  %% 22
  \repeat unfold 2 <d fis b> | <cis fis a> <b eis gis> |
  %% 24
  <a cis fis^~>\> <b d fis> | <a cis fis^~>\p <b d fis> |
  <a cis fis>4. <b dis e> | <b d e>\< <e gis d'> |
  <e a cis>\f <cis e a> | <e cis a>2. |
  << {\voiceOne <d fis>4. <dis bis>} \new Voice {\voiceTwo a2.} >> \oneVoice |
  <cis~ e~>4. <cis e a> | <e a cis> <cis e a> | <e cis a> <cis e a> |
  \repeat unfold 2 <b dis a'> | <b e gis>2. |
  \repeat percent 2 <e gis d'> | <e a cis> | <cis e a> | <d fis b> |
  <d fis b>4. <dis fis bis> | <e a cis> <e fisis cis'> | <e gis b> e |
  << {<e gis d'>2.} {s4. s\<} >> | <e gis b>2. | <e a e'> |
  <a fis bis,>4.^>\!\arpeggio\tenuto r | <a e cis> r | <gis e d> r |
  <a e cis> <gis e b> | <a e cis> r | fis8\mf d a g' d b |
  fis' d a a' d, a | \repeat unfold 2 {e' cis a} |
  d a d << {\voiceOne e fis g} \new Voice {\voiceTwo cis,4.} >> \oneVoice |
  fis8 d a f' d gis, | e' a, e' a e a | d b fis b gis d |
  cis e a,\< cis e g | fis\f d a g' d b | fis' d a a' d, a |
  \repeat unfold 2 {e' cis a} |
  d a d << {\voiceOne e fis g} \new Voice {\voiceTwo cis,4.} >> \oneVoice |
  fis8 d a f' d gis, | fis' d a fis' dis a | g' e b g' cis, a |
  <d fis>4 d8 cis4 c8 |
  << {\voiceOne fis8 g fis b4 b8 | b4. e}
     \new Voice {\voiceTwo dis,2. e} >> |
  %% 70
  << {\voiceOne fis8\> g fis~ fis g fis | fis4. b}
     \new Voice {\voiceTwo <e,~ c>4. <e cis> | <dis b>2.} >> \oneVoice |
  %% 72
  <g e b>4.\mf <fis dis a> | <e b g> <g e b> | <fis dis b> <b fis b,> |
  <g e b>4.~ 8 r r | <g e b>4. <fis dis a> |
  %% 77
  \repeat unfold 2 <g e b> | <g e a,> <a g cis,> | <a fis d>4 d,8( d'4) d8 |
  d8( e d f e d | <cis a>4) a8( a'4.) |
  << {\voiceOne d,,8( e d f e d)}
     \new Voice {\voiceTwo gis,2.} >> \oneVoice |
  <a cis a'>4. a \bar "||" \key d \minor
  %% 84
  \change Staff = "down" \voiceOne
  <f a>4. <g bes> | <f a> <g cis> |
  \change Staff = "up" \oneVoice
  << {\voiceOne <f' a>4.( <d f>)}
     \new Voice {\voiceTwo a2.} >> \oneVoice |
  %% 87
  <a cis e>4. <gis d' e> |
  <a cis e> << {\voiceOne <e' g>4.}
               \new Voice {\voiceTwo a,8 bes a} >> \oneVoice |
  <a d f>4.( <a e' a>) |
  %% 90
  << {\voiceOne a'4.~( a4 gis8)}
     \new Voice {\voiceTwo <d a>4.~ <d a>} >> \oneVoice |
  %% 91
  <cis a'>4.~ 8 r r |
  %% 92
  \change Staff = "down" \voiceOne
  <a f>4. <g bes> |
  %% 93
  << \new Voice {\voiceOne <f~ a>4. f4.}
     {s4. \change Staff="up" f'8( e d)} >> \oneVoice |
  %% 94
  <cis a>4. <bes e g>4 <a d f>8 | <a cis e>4. <e' a cis> |
  %% 96
  <d a' d> <d f a> | <d g d'>4. r | <e d bes> <e cis a> | <d f,>\> r |
  %% 100
  <f a>\p <e g bes> | <f a>4.~ 8 r r | <a d f>4.\pp( <bes e> |
  <a cis>2.) \bar "||" \key d \major
  fis8\mf d a g' d b | fis' d a a' d, a | \repeat unfold 2 {e' cis a} |
  %%
  d a d << {\voiceOne e fis g} \new Voice {\voiceTwo cis,4.} >> \oneVoice |
  fis8 d a f' d gis, | e' a, e' a e a | d b fis b gis d |
  %% 111
  cis8( e a,\< cis e a) |
  r8\f \repeat unfold 2 <a fis e c>8 <a fis e c>4. |
  %% 113
  r8 \repeat unfold 2 <fis dis b>8 <b dis, b>4. |
  r8 << {\repeat unfold 2 <a fis e c>8} s8\> >> <a fis e c>4. |
  r8 \repeat unfold 2 <fis dis b>8 <fis dis b>4.\! |
  %% 116
  <gis b e>4.\f <b gis e> | <gis e b> <e gis b> |
  << {\voiceOne <a cis> <ais fisis> | b( e)}
     \new Voice {\voiceTwo e,2. | <e g>} >> \oneVoice |
  %% 120
  <gis b e>4. <b gis e> | <gis e b> <b gis e> |
  \repeat unfold 2 <ais fis e> | <b fis dis>2. | <a dis, b>~ |
  <a dis, b> | <gis e b>~ | <gis e b> | <fis cis a> | <fisis cis ais> |
  %% 130
  <gis e b>4. <gis cisis,> |
  << {\voiceOne fis4.( b)} \new Voice {\voiceTwo dis,2.} >> \oneVoice |
  \change Staff = "down" a,8( e' fis \change Staff = "up" c' e fis) |
  c'4. <fis, e c> |
  \change Staff = "down" g,,8( b e \change Staff = "up" b' e g |
  b4.) <g d b> | <a g cis,>2. | <a g cis,>4. <g cis, a> |
  <fis d a> <fis d b>-> | <cis e>8\> a b cis d e |
  %% 140
  fis8\mf d a g' d b | fis' d a a' d, a | \repeat unfold 2 {e' cis a} |
  %%
  d a d << {\voiceOne e fis g} \new Voice {\voiceTwo cis,4.} >> \oneVoice |
  fis8 d a f' d gis, | e' a, e' a e a | d b fis b gis d |
  cis\< e a, cis e g | fis\f d a g' d b | fis' d a a' d, a |
  \repeat unfold 2 {e' cis a} |
  d a d << {\voiceOne e fis g} \new Voice {\voiceTwo cis,4.} >> \oneVoice |
  fis8 d a f' d gis, | fis' d a fis' dis a | g' e b g' cis, a |
  <a d fis>4_\markup {
    \override #'(style . outline)
    \override #'(thickness . 3)
    \whiteout \sempreF
  } r8 r4. |
  \repeat unfold 2 {<d fis a>4 r8} | <d fis b>4.-> r |
  <d fis b>4 r8 <fis d b>4 r8 | <g e b>4.-> r |
  \repeat unfold 2 {<g e b>4 r8} | <a g e cis>4.-> r |
  \repeat unfold 2 {<a g e cis>4 r8} | <a fis d>4.-> r |
  <a e cis>4->\ff r8 r4. | <fis a d>4-> r8 r4. | <a d fis>4-> r8 r4. |
  <d a fis>4.-> r \bar "|."
}

\addQuote #"pianoUpMovementIII" \pianoUpMovementIII

pianoDownMovementIII = \new Voice \relative d {
  d2. | d,4. fis | a2. | fis4. a | d2. | cis | b4. e | a,2. | d |
  d,4. fis | a2. | fis4. a | d2. | d4. b | e a, |
  %% 16
  d,8 \voiceTwo r8 r r4. | \oneVoice b''4.~ b | b b, | fis' ais |
  %% 20
  b8-. b,-. d-. fis-. b-. cis-. | b4. <a b> | <gis b> gis, | cis cis |
  \repeat percent 2 {fis,8-. a-. cis-. fis4.->} | fis,4. g | gis e |
  %% 28
  a,2.~ | a | a'~ | a | a, | a' | fis4. b, | e4( e'8) e4.:8-. |
  %% 36
  \repeat unfold 2 { e,4. e'4.:8-. | e,4. e' } | e, e':8-. |
  %% 41
  \repeat unfold 3 <e e,> <e ais> | b'4 e,8-. e4.:8-. | e, e':8-. |
  %% 45
  d, d' | cis, cis' | <dis dis,>\arpeggio r |
  %% 48
  \repeat percent 2 { <e e,> r } | a, e' |
  %% 51
  a,8-. b-. a-. g-. fis-. e-. | d2. | d4. fis | a2. | fis4. a | d2. |
  %% 57
  cis2. | b4. e | a,2. | d | d,4. fis | a2. | fis4. a | d2. | d4. b |
  %% 66
  e a, | d,4 d'8 cis4 c8 | <b a'>2. | <e g> | a,4. ais | b2. | e | e, |
  b'4. dis | e8( e,) g-. b-. e-. fis-. | e4. e, | e' d | cis a |
  d~ d4 r8 | <bes' d>2. | <a e'> | <d, bes> |
  <cis a> \bar "||" \key d \minor \voiceTwo d,2. | d \oneVoice |
  %% 86
  d4.~ d8 f-. g-. | a4. bes |
  %% 88
  a cis | d c | bes2. | a4. g8( f e) | \voiceTwo d2.~ |
  d4. d' \oneVoice | a4. cis4 d8 |
  a4. g' | f d | bes r | g a | d,8( f a) d( f a) | d2. | d4.~ d8 r r |
  d4. g, | a( a,) \bar "||" \key d \major
  %% 104
  d2. | d,4. fis | a2. | fis4. a | d2. | cis | b4. e | a, a4 r8 |
  %% 112
  a2.-> | b-> | a'4. a, | b b, | e2. | e | e' | e | e, | e' |
  %% 122
  cis4. fis, | b,4 b'8 b4.:8 |
  \repeat unfold 3 { b,4. b':8-. | b,4. b' } | b4. <b eis> |
  <b fis'>2. |
  \change Staff = "up" r4. \change Staff = "down" r | r a |
  \change Staff = "up" r4. \change Staff = "down" r | r e |
  a( e' | a) a, | d gis, | a8 r r r4. |
  %% 140
  d2. | d,4. fis | a2. | fis4. a | d2. | cis | b4. e | a,2. | d |
  d,4. fis | a2. | fis4. a | d2. | d4. b | e a, | d4 r8 r4. |
  \repeat unfold 2 {<d d,>4 r8} | <b b,>4.-> r |
  \repeat unfold 2 {<b b,>4 r8} | <e e,>4.-> r |
  \repeat unfold 2 {<e e,>4 r8} | <a a,>4.-> r |
  \repeat unfold 2 {<a a,>4 r8} | <d, d,>4.-> r |
  <a' a,>4-> r8 r4. | \repeat percent 2 { <d d,>4-> r8 r4. } |
  <d, d,>4.-> r \bar "|."
}

%%% ------------

\include "composer.ily"

\header {
  arranger = ##f
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 12"
  source = "http://imslp.org/"
  title = "Concertino."
}

\include "paper.ily"

#(define fileBaseName "Ferdinand_Küchler-opus_12")

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
