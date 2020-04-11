%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2018-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\version "2.20"

\include "lily-snippets.ily"

brillante = \markup {\italic "brillante"}
grazioso = \markup {\italic "grazioso"}
leggiero = \markup {\italic "leggiero"}
piuMoto = \markup {\italic "più moto"}
risoluto = \markup {\italic "risoluto"}
sostenuto = \markup {\italic "sostenuto" }
tenutoTxt = \markup { \italic "tenuto" }
tranquillo = \markup {\italic "tranquillo"}

titleMovementI = ##f

globalMovementI = {
  \time 4/4
  \tempo "Allegro non troppo." 4=115
  \key g \major
}

violinMovementI = \relative f'' {
  \cueDuring #"pianoUpMovementI" #DOWN R1*3 |
  \cueDuring #"pianoUpMovementI" #UP   R1*4 |
  \cueDuring #"pianoUpMovementI" #DOWN R1*3 |
  g2->\f d4.->( d8-.) | b2~ b8 d,-.\> g-. b-. |
  %% 13
  d4\mf d8.\upbow d16\downbow e4.-4\upbow( b8) |
  %% 14
  d8-.\< cis-. c2->\! r4 | a'2->\f d,4.->( d8-.) |
  a2~ a8 d,-.\> fis-. a-. |
  %% 17
  d4\mf d8.\upbow d16\downbow e4.-4\upbow( a,8) |
  d8-.\> c-. b2-> b4\p | a4( e2) fis4 |
  %% 20
  g8.( a16\< b8. c16) d4( e-4) | d\mf( a4.) b8( c d) | b2.\> b4\p |
  a4( e2) fis4 | g8.\<( a16 b8. c16) d4-.\cresc( g,-.\!) |
  e'2-4 e4.( e8-.) | d8( b') a-- g-- d-- b-- g-- b-- |
  %% 27
  d8\ff d,_(\( d'4) d8\) d,_(\(
    d'4) |
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \mark \markup\normalsize\cadenzaAdLib
    \cadenzaOn d8\) r d,4->~\fermata
  \magnifyMusic #.63 {
    \override Score.SpacingSpanner.spacing-increment = #(* 1.2 0.63)
    d16[\> fis( a) c]\! e8.[->\fermata( d16]) \bar ""
    a16([-\markup{\dynamic "p" \italic "veloce."}
        c d fis
        \repeat unfold 2 {a g fis e} a g fis e]) \bar ""
    a[( g fis e a g fis e d c b a g fis e])
    d4 d8.[\upbow( b'16]) b8--\>\downbow^\markup{\italic "rit."}([ b-- b-- b--])
    b8.\upbow\fermata([ a16)]\!
  }
  \cadenzaOff \bar "|"
  %% 28
  g4.--^\aTempo_\markup{\dynamic "p" \italic "con grazioso."} d8( d'4.--) d,8( |
  %% 29
  b'4.--) d,8( d' b) g-- b-- | a4.-- d,8( d'4.--) d,8( |
  c'4.--) d,8( d' c) a-- c-- | b4.-- d,8( d'4.--) d,8( |
  %% 33
  b'4.--)\< d8\!( b' g) \once \override Hairpin.to-barline = ##f d-.\> b-. |
  c4.--\! d,8( d'4.--) d,8( | a'4.--)\< a8( a'\! fis) d-. c-. |
  %% 36
  b4. b8-.\upbow b16\mf\downbow( c) c( b) b( fis') fis( b,) |
  b'( a) g-. fis-. e-. d-. c-. b-. b8-. b16( b') b8.( a16) |
  %% 38
  g16\<( a) g-. fis-. e4-- a,16\mf( bes) bes( a) a( e'\open) e( a,) |
  %% 39
  a'( g) fis-. e-. d-. cis-. b-. a-. a8-. a16( a') a8.( g16) |
  %% 40
  fis16\<( g) fis-. e-. d4-- d,16^>\f( f) f( b) b4-> |
  f16->( b) b\cresc( d) d4-> b16( d) d( f) f( gis) gis( b) |
  b8-> gis f d b-> gis d b |
  %% 43
  a-.\ff \acciaccatura <a e'> <a' e'>-. <a e'>-. <e a,> <d a'>-. \acciaccatura d <a' fis'>-. <a e'>4-> |
  %% 44
  b'16->\mf( a gis fis e d cis b) b->\<( a gis fis\!) e->( d cis b) |
  %% 45
  a8-. \acciaccatura <a e'> <a' e'>-. <a e'>-. <e a,> <d a'>-. \acciaccatura d <a' fis'>-. <a e'>4-> |
  %% 46
  e16\mf( fis gis a b cis d cis) b( cis\cresc d e) fis( e fis gis) |
  %% 47
  a8.\ff( gis16) gis( g) g( e) e8.->^\molto( cis16) cis\cresc( b) b( a) |
  %% 48
  a8.->-4( gis16) gis( g) g( e) e8.->( cis16) cis( b) b( a) |
  %% 49
  a4.\ff( b8) cis( d\dim e fis) | g4.( fis8) e( fis g a\open) |
  %% 51
  cis4.( b8) a-4\>( gis) a( gis) | a4.\p^\rit( gis8\dim) a4.( g8\!) |
  %% 53
  \tempo "Meno mosso." fis4_\markup{\dynamic "p" \italic "tranquillo"}( g) a4.( fis'8) |
  %% 54
  fis8( e b cis) d4(\( a8) a-.\) | b4\<( d8 b) a4.( a8-.) |
  b8\>( a) fis-. d-. e4.\!( eis8) | fis4\p( g) a4.( fis'8) |
  fis8\cresc( g fis e) e4(\( d8) fis-.\) |
  %% 59
  e8\f^\tenutoTxt( d) cis-. b-. cis( e) a-. fis-. |
  e8\>( d) cis-. b-. a4.\!( a8-.) |
  %% 61
  b4_\markup{\dynamic "p" \italic "dolce"}( e8-4 d-.) cis4.( cis8-.) |
  d8\<( e16-4 d cis8 d\!) << {e4.-4( a,8-.)} {s4 s\>} >> |
  %% 63
  b4\<( g'8 fis-.\!) e4.\>( cis8\!) | d( a) fis-.^\rit d-. e4.( eis8) |
  %% 65
  fis4\p^\aTempo( g) a4.( fis'8) | fis\cresc( g fis e) e4-4(\( d8) d-.\) |
  e8-4\f( d) cis-.\cresc b-. e-4( d) cis-. b-. |
  %% 68
  b8--\ff^\tenutoTxt a-- b'-- a-- \tuplet 3/2 4 {fis-.^\rit d-. b-. a-. fis-. d-.} |
  %% 69
  a4 a8.( fis'16) fis4\fermata\> e | \tempo "Tempo 1°"
  %% 70
  \repeat unfold 2 {
    d8->\f d16( e) e( fis) fis( a) a8-> a16\open( b) b( cis) cis( d) |
    d-. a-. d-. fis-. a-. g-. fis-. e-. d-. cis-. b-. a-. g-. fis-. e-. d-. |
    cis8-> dis16( e) e( fis) fis( g) g8-> g16( a) a( b) b( cis) |
  }
  \alternative {
    { cis16-. a-. cis-. e-. b'-. a-. g-. fis-. e-. d-. cis-. b-. a-. g-. fis-. e-. | }
    { cis'16-. a-. cis-. e-. b'-. a-. g-. fis-. e-. d-. cis-. b-.\> a-. g-. fis-. e-.\! | }
  }
  \tuplet 3/2 4 {d8-._\markup{\dynamic "mf" \italic "grazioso"} fis-. a-. \tupletDown b4->^\trillSharp( a8) \tupletNeutral a'8-. fis-. d-. \tupletDown b4->^\trillSharp( a8) } |
  \tuplet 3/2 4 { \tupletNeutral e8-. g-. a-. \tupletDown b4^\trillSharp( a8) \tupletNeutral g'-. e-. cis-. \tupletDown b4^\trillSharp( a8) } |
  \tuplet 3/2 4 {\tupletNeutral d,8-.\p fis-. a-. \tupletDown  b4->^\trillSharp( a8) \tupletNeutral  a'8-. fis-. d-. \tupletDown b4->^\trillSharp( a8) } |
  \tuplet 3/2 4 { \tupletNeutral  e8-. g-. a-. \tupletDown b4^\trillSharp( a8) \tupletNeutral g'-. e-. cis-. \tupletDown b4^\trillSharp( a8) \tupletNeutral } |

  \tuplet 3/2 4 { <a d,>8\f( <a fis'>) <a fis'>-. <c d,>( <c a'>) <c a'>-. <b a'>\<( <b g'>) <b g'>-. <b a'>( <b g'>) <b g'>\!} |
  \tuplet 3/2 4 { <a e'>\f( <cis e>) <cis e>-. <a e'>( <a g'>) <a g'>-. <a g'>\>( <a fis'>) <a fis'>-. <a g'>( <a fis'>) <a fis'>-.} |
  \tuplet 3/2 4 { <a d,>8\mf( <a fis'>) <a fis'>-. <c d,>( <c a'>\<) <c a'>-. <b a'>( <b g'>) <b g'>-. <b a'>( <b g'>) <b g'>\!} |
  \tuplet 3/2 4 { <a e'>\mf( <cis e>) <cis e>-. <a e'>\>( <a g'>) <a g'>-. <a g'>( <a fis'>) <a fis'>-. <a g'>( <a fis'>) <a fis'>-.\!} |
  \tuplet 3/2 4 { <bes d,>\f( <bes f'>) <bes f'>-. <bes d,>( <bes bes'>) <bes bes'>-. <bes d,>( <bes f'>) <bes f'>-. <bes d,>( <d d,>) <d d,>-.} |
  \tuplet 3/2 4 {<d d,>8->( <d e_\open>) <d e>-.\cresc <d e>4.:8-. <d d,>8->( <d f>) <d f>-. <d f>4.:8-. } |
  %%
  \tuplet 3/2 {<a d,>8-.->\f <a fis>-. <a d,>-.} <a fis'>4->
  \tuplet 3/2 {<a d,>8-.-> <a fis>-. <a d,>-.\cresc } <a fis'>4-> |
  %%
  \repeat percent 2 {
    \tuplet 3/2 {<a d,>8 <a fis'>-. <a d,>-.} <a a'>4->
  }
  %%
  b'8:16-.->\ff a8:16-. g8:16-. fis8:16-. e8:16-. d8:16-. cis8:16-. b8:16-. |
  a8:16-. gis8:16-. g8:16-. fis8:16-. e8:16-. d8:16-. cis8:16-. b8:16-. |
  a4\ff^\tenutoTxt <a e' a>->\downbow a\upbow <a e' a e'>\downbow |
  a\upbow <a e' cis' a'>\downbow r8 a->\downbow b->\downbow cis->\downbow |
  d4 
  \cueDuring #"pianoUpMovementI" #DOWN {r4 r2} |
  \cueDuring #"pianoUpMovementI" #UP   {R1*7}  |
  \cueDuring #"pianoUpMovementI" #DOWN {R1*3}  |
  \cueDuring #"pianoUpMovementI" #UP   {R1*4}  |
  \cueDuring #"pianoUpMovementI" #DOWN {R1*6}
  \bar "|."
}

pianoUpMovementI = \relative b' {
  R1 | r4\p <b g> <a d,>4.-- <g b,>8-. | <g b,>4 r r2 |
  %% 4
  r4\mf <b d>-. <c a>4.-- <b g>8-. | <b g>4 r r2 |
  %% 6
  r4\ff <g' d b>->-. <fis c a>->-. <e b g>->-. |
  %% 7
  << {\voiceOne d4 e( d)}
     \new Voice {\voiceTwo <a fis>2.} >> \oneVoice <c a d,>4->-. |
  %% 8
  <b g d>-> <d g, f>\dim <d g, e> <a e c>8( <a ees c>) |
  <g d b>4.\mf d8( cis\< d e d) | <d' a fis d>1\arpeggio\f\< |
  r4\ff <g, d b>-. r <g d b>-. | r <g d b>-. <g d b>-. r |
  <g d b>-.\mf r <g d b>-. r |
  %% 14
  <fis d c>8-.\< r r d-. e-. d-. fis-. d-. |
  r4\ff <d fis a>-. r <d fis a>-. | r <d fis a>-. <d fis a>-. r |
  <d fis a>-.\mf r <fis d c>-. r | <g d b>8-. r r d-. <g b,>4-> r |
  r\p <a e c> r <fis d c> | r <g d b>\< r <e bes> |
  %% 21
  r \> <d a> r <fis d c> | r <g d b>\! <g d b>\< r |
  r\p <a e c> r <fis d c> | r <g d b>\cresc r <g d> |
  r\ff <g e c>-> r <g e ais,>-> | <g d b>1\ff |
  <fis d>4.\ff <g e>8-. <gis eis>-. <a fis>-. <bes g>-. <b gis>-. |
  \cadenzaOn <c a>8-. r8 r4\fermata
  s16*4 \bar "" s4*6 s16*11 s4*2 s8 s8*3
  <fis, d c>4\p\fermata \cadenzaOff \bar "|"
  %% 28
  r8\p^\aTempo d8-. <g b,>4-- r8 d-. <g b,>4-- |
  r8 d-. <g b,>4-- r4 <g d b>-. |
  r8-. d-. <fis c>4-- r8 d-. <fis c>4-- |
  r8 d8-. <fis c>4-- r <fis d c>-. |
  %% 32 / 33
  \repeat unfold 3 { r8 d8-. <g b,>4-- } r4 <g d b>-. |
  %% 34 / 35
  \repeat unfold 3 { r8 d-. <fis c>4-- } r4 <fis d c>-. |
  %% 36
  r8 d-. <g d b>4 << {\voiceOne fis4( a) }
                     \new Voice { \voiceTwo <dis, b>2->\mf } >> \oneVoice |
  %% 37
  <g e b>4 r <b dis, b>8-. r
  \once \override Hairpin.to-barline = ##f <a fis b,>-.\< r8 |
  %% 38
  <g e b>2\! << {\voiceOne e4\mf( g)}
              \new Voice {\voiceTwo <cis, a>2->} >> \oneVoice |
  %% 39
  <fis d a>4 r <a cis, a>8-.\< r <g e a,>-.\! r |
  %% 40
  <fis d a>2 <f d b>2->~\cresc | <f d b>2.-> <f d b>4->~ |
  <f d b>4-. <b f d>2-> <b f d>4-> |
  %% 43
  <a e cis>->\f <cis e,>\p( <d fis,> <cis e,>) |
  %% 44
  << {\voiceOne b4( e,) fis( gis) }
     \new Voice {\voiceTwo d1} >> \oneVoice |
  %% 45
  <a' cis,>4 <cis e,>( <d fis,> <cis e,>) |
  %% 46
  << {\voiceOne b( a) gis2} \new Voice {\voiceTwo d1} >> \oneVoice |
  %% 47
  <a' cis,>1~\cresc | <a cis,>2 <cis a e>4-. <e cis a>-. |
  <a e c a>-.\f r r2 | R1*2 |
  %%52
  r8\p <cis,, a>8-.^\rit <d b>4~ <d b>8 <dis bis>( <e cis>4) |
  %% 53
  \tempo "Meno mosso." r8\p fis-. d-. a-. r fis'-. d-. a-. |
  r\p g'-. cis,-. a-. r fis'-. d-. a-. |
  %% 55
  r\< <g' d>-. <g b>-. <g d>-.\! r <a fis> <<
    {\voiceOne fis a | b( a) fis-. d-. e4.^\rit( eis8) }
    \new Voice {\voiceTwo d4~ | d4. d8 cis2} >> \oneVoice |
  %% 57
  r8^\aTempo\p fis-. d-. a-. r fis'-. d-. a-. |
  r8 e'-.\cresc cis-. ais-. r ais-. b d |
  %% 59
  << { \voiceOne e2\f^\tenutoTxt e4( a) }
     \new Voice {\voiceTwo b,4( d) cis2} >> \oneVoice |
  %% 60
  <a' fis b,>4 <gis e d>\> <a e cis>2 |
  r8\pDolce <b g>-. <b g>( <a fis>) <g e>2 |
  <fis d>4 <g e>8\<( <fis d>) <e cis>2\! |
  r8 <b' g>-. <b g>( <a fis>) <g e>2 |
  %% 64
  << {<fis d>2} {s8\> s s^\rit s8\!} >>
  << {\voiceOne e4.\!( eis8)}
     \new Voice {\voiceTwo cis2} >> \oneVoice |
  %% 65
  r8\p^\aTempo fis-. d-. a-. r8\< fis'-. d-. a-. |
  r8\mf ais cis g' r <g e>( <fis d>4) |
  %% 67
  <e d b>2.->\cresc <e dis b>4-> | << {<fis d>1->\ff} {s2 s^\rit} >> |
  %% 69
  r4 \change Staff = "down" \voiceOne
  << {<cis a g>2\fermata <cis a g>4}
     {s4 s^\> s\!} >> |
  %% 70
  \tempo "Tempo 1°" <d a fis>4-.^\f r <d a fis>-. r |
  <d a fis>-. r \repeat unfold 2 {<d a fis>8-. r} |
  <cis a g>4-. r <cis a e>4-. r |
  %% 73
  <cis a g>-. r <cis a e>8-. r <cis a g> r |
  %% 74
  <d a fis>4-.\f r \change Staff = "up" \oneVoice <fis' d a>-. r |
  <d a fis>-. r \repeat unfold 2 { <fis, d a>8-. r } |
  <g e a,>4-. r <g' cis, a> r |
  %% 77
  <e cis a> r <g, cis, a>8-.\> r <g cis, a>-.\! r |
  r\p a,-. <fis' d>4-- r8 a,8-. <fis' d>4-- |
  \repeat unfold 2 {r8 a,-. <g' cis,>4--} |
  r8\pp <a fis>8-. <fis d>4-- r8 a,-. <fis' d>4-- |
  r8 <g e>-. <e cis>4-- r8 a, <g' cis,>4-- |
  %% 82
  <fis d>8-.\< r <a d, c>-. r <a d, b>-. r <g d b>-.\! r |
  <e cis a>-. r <g e a,>-.\> r <g d a>-. r <fis d a>-.\! r |
  <fis d>-.\< r <a d, c>-. r <a d, b>-. r <g d b>-.\! r |
  %% 85
  <e cis a>-.\> r <g e a,>-. r <g d a>-. r <fis d a>-.\! r |
  <f d bes>1->\ff | <g e d>2->\mf <gis f d>-> |
  <a fis d>-> <a fis d>-> | <a fis d>-> fis4->\< d-> |
  <a' e cis>\ff r r2 | <a e cis>4 r r2 |
  r4\ff <a e cis>->^\tenutoTxt r <e' cis a>-> |
  r <a e cis> r8 a,,8->^\rit b-> cis-> |
  %% 94
  d4\ff \tempo "Tempo 1°" <fis d>8. <fis d>16 <a fis>4-. <d a fis>-. |
  <fis d a>2.-> e8-. fis-. | g8->( fis) e-. d-. e->( d) cis-. b-. |
  a4.( fis'8) d4 e8.( d16) | cis4.( a'8) a4 fis8.( e16) |
  d4.( a'8) a4 fis8.( d16) |
  %% 100
  cis8( d16 cis) b8-. cis-. e( d) cis-. b-. | a2. a8.\mf a16 |
  <b g>4 <b g>8. <b g>16 <b g>8 <cis a>-. <d b>-. <b g>-. |
  <a fis>-. <g e>-. <fis d>-. <g e>-. <a fis>4 <a fis>8. <a fis>16 |
  %% 104
  <b g>4 <b g>8.\cresc <b g>16 <b g>8 <cis ais> <d b> <e b> |
  %% 105
  <fis ais,>8->\ff cis16 cis cis8-. cis-. cis4-. <ais' cis, b>8-> <gis cis, b>-> |
  %% 106
  <fis cis ais>-> cis16-. cis-. cis8-. cis-. cis4-. <ais' cis, b>8-> <gis cis, b>-> |
  %% 107
  <fis cis ais>4 cis8.-. cis16-. <fis cis ais>4-> cis8.-. cis16-. |
  <fis cis ais>4-> << {r r2} {s4\> s s\!} >> | <cis fis, e>2.\f <bis fis dis>4 | <cis fis, e> <b fis d> <ais e cis> <gis d b> | \repeat percent 2 { <fis cis ais>2. <g d b>4-> } | <fis cis ais>1~ | <fis cis ais> \bar "|."
}

\addQuote #"pianoUpMovementI" \pianoUpMovementI

pianoDownMovementI = \relative g, {
  \repeat tremolo 8 { g32\p g' } \repeat tremolo 8 {g, g'} |
  g,4 r r2 |
  %% 3
  \repeat tremolo 8 { g32\mf g' } \repeat tremolo 8 {g, g'} |
  g,4 r r2 |
  %% 5
  \repeat tremolo 8 { g32\ff g' } \repeat tremolo 8 {g, g'} |
  g,4 r r2 | r2 r4 fis' | g b c c, | d1 | d,4.( d'8 cis d e d) |
  %% 11
  \repeat unfold 2 {r4 <g g,>-.} | r <g g,>-. <g g,>-. r |
  %% 13
  g-. r g,-. r | d'8-. r r d-. e-. d-. fis-. d-. |
  %% 15
  \repeat unfold 2 {r4 <d d,>-.} | r <d d,> <d d,> r | d-. r d,-. r |
  %% 18
  g8 r r d'-. g,4 r | c2( d) | g, g' | fis4 r d r | g2~ g8 g,( a b) |
  c4 r d r | g, r b r | c2-> cis-> | d1 | <d d,>1~ |
  \cadenzaOn <d d,>8 r r4\fermata
  s16*4 \bar ""  s4*6 s16*11 s4*2 s8 s8*3
  <d d,>4_\fermata \cadenzaOff \bar "|"
  g,2-- g-- | g-- g4-. r | d'2-- d-- | d-- d4-. r | g,2-- g-- |
  g-- g4-. r | d'2-- d-- | d-- d,4-. r | g-. r b2-> |
  e4 r b8-. r dis-. r | e2 a, | d4 r a8-. r cis-. r | d2 gis4-> f-> |
  d-> b-> gis2-> | <gis gis,>2.-> <gis gis,>4-> | <a a,>4-> r r2 |
  %% 44
  <e' e,>1( | <a a,>4) r r2 | e2. e,4 | a2 cis4( e) | a1( | a,4) r r2 |
  R1*2 | a1 | d2 d | a d | g d4.( fis8) | g8( fis) d-. b-. a( bes a4) |
  d2 d | cis4( fis,) b2 | gis2 a |
  d4-. e-. \repeat unfold 8 {
    << {\voiceOne r8 a8 a a} \new Voice {\voiceTwo a,2} >> }
  << {\voiceOne r8 a'8 a4} \new Voice {\voiceTwo a,2} >> \oneVoice |
  %% 65
  d2 d | cis4( ais) b4.( b'8) | g2 <gis gis,> | <a a,>1 |
  %% 69
  \voiceTwo <a, a,>2.\fermata <a a,>4 | <d d,>-. r <d d,>-. r |
  <d d,>-. r \repeat unfold 2 {<d d,>8-. r} |
  %% 72 / 73
  \repeat unfold 3 { <a a,>4 r } \repeat unfold 2 {<a a,>8-. r} |
  <d d,>4 r \oneVoice <d d,>-. r |
  %% 75
  <d d,>-. r \repeat unfold 2 {<d d,>8-. r} |
  %% 76 / 77
  \repeat unfold 3 {<a a,>4-. r} \repeat unfold 2 {<a a,>8-. r} |
  %% 78
  <d d,>4-- r d-- r | a-- r a-- r | d-- r d-- r | a-- r a-- r |
  d8-. r fis-. r g-. r g,-. r | a-. r cis-. r d-. r d-. r |
  %% 84
  d-. r fis-. r g-. r g, r | fis-. r cis'-. r d-. r d-. r |
  <bes bes,>1-> | <bes' bes,>2-> <bes bes,>-> | <a a,>-> <a a,>-> |
  <a a,>-> <fis fis,>4-> <d d,>-> |
  %% 90
  \repeat tremolo 8 {a,32\> a'} \repeat tremolo 8 {a,\mf a'} |
  \repeat tremolo 8 {a, a'} \repeat tremolo 8 {a, a'} |
  <a a,>4->^\tenutoTxt r <a a,> r |
  <a a,>-> r r8 <a a,>-> <b b,>-> <cis cis,>-> | <b d,>4 r r2 |
  <d d,>4-> <a' fis d>-. <a fis d>2-> |
  %% 96
  <d, d,>4-> <d g b>-. <d g b>2-> |
  <d d,>4-> <d fis a>-. <d fis a>2-> |
  <a' a,>4-> <cis a e>-. <cis a e>2-> |
  <d, d,>4-> <d' a fis>-. <d a fis>2-> |
  %% 100
  <e, e,>4 <cis' a e>-. <d gis, e>2-> |
  <a a,>4 <cis a e>8. <cis a e>16 <cis a e>4 r |
  %% 102
  <g d g,>4-. <b g d>-. <b g d>2 | <d, d,>4-. <d fis a>-. <d fis a>2 |
  <g d g,>4-. <g g,>2-> <g g,>4 |
  \repeat percent 2 {<fis fis,>8 cis16 cis cis8-. cis-. cis4-. <cis cis,>4-> } |
  <fis fis,> cis8. cis16 <fis fis,>4 cis8. cis16 |
  <fis fis,>4 \repeat tremolo 12 {fis,32 fis'} |
  \repeat percent 4 { \repeat unfold 2 { \repeat tremolo 8 {fis, fis'}}} |
  << {\voiceOne r4\p fis\dim fis fis\! r\mf fis fis fis}
     \new Voice {\voiceTwo fis,1 fis} >> \oneVoice \bar "|."
}

%%% ---------------------------

titleMovementII = ##f

globalMovementII = {
  \time 6/8
  \tempo "Adagio." 8 = 66
  \key d \major
}

violinMovementII = \relative f' {
  \cueDuring #"pianoUpMovementII" #DOWN {R2. | r4.}
  r4 fis8\p^\sostenuto |
  d'4( b8) fis4--( fis8-.) | g16-- a-- b8-- a16-- g-- fis4--( fis8--) |
  e8.\< g16( fis e) d4--\! d16(\< d')\! |
  d8\>( cis b) ais4 fis8\p\upbow | d'4( b8) fis4--( fis8--) |
  g16-- a-- b8-- a16-- g-- fis4--( fis8--) |
  b8.--\<( cis16-.) d8-- fis8.\f d16( a fis) |
  a8( g) e16( eis) fis4 fis8 |
  b8.\<( cis16-.) d8\upbow g8.--\f\downbow e16( b g) |
  g8(\> fis cis16 d\!) b4 b16.->\<\upbow^\markup{\italic "agitato."}( a32) |
  a8.--\f\downbow cis16_\markup{\italic "poco stringendo."}( e g) fis8( a) b16( a) |
  a8.-- cis16(\< e g) fis8( a)\! ais8-> |
  b8->\f( fis) d16( cis) b8( fis) fis |
  \repeat unfold 2 { g8\>( fis4\!) } |
  fis4.~^\rit fis8 fis-.\>( fis-.\!) |
  d'8.\pp^\aTempo( cis16 d cis) b8(\( fis) fis\) |
  g16-- a-- b8-- a16-- g-- fis4--( fis8--) |
  e8.\< g16( fis e) d4\! d16\<( d') | d8\mf( cis b) ais4\>( fis8\!) |
  d'8.\pp( b32 cis d e d cis) b8(\( fis) fis\) |
  g16-- a-- b8-- a16-- g-- fis4--( fis8--) |
  b8.\< cis16( d e) fis16.\f( d32 a8) d16( fis,) |
  a8( g) e16\>( eis\!) fis4\< fis8 |
  b8.--\ff cis16\cresc( d fis) b8( fis) d-.\! |
  cis16-- d-- e8-- d16
  \prall
  (\> cis) b4-- g8->\f |
  fis16( e d8) g-> fis16\>( e d8) g8->\ff^\tenutoTxt |
  fis8->^\rit e-> d-> d-4-> d16( cis) cis8-- |
  \once \override Hairpin.to-barline = ##f
  b2.~\mf\>^\aTempo | b\!\fermata \bar "|."
}

pianoUpMovementII = \relative f' {
  <fis d b>8-.\p^\sostenuto <fis d b>4--
  \repeat unfold 5 {<fis d b>8-. <fis d b>4--} |
  %% 4
  <g e b>8-. <g e b>4-- <fis d b>8-. <fis d b>4-- |
  <cis ais>8-. <cis ais>4-- <d b>8-.\< <fis d>4--\! |
  %% 6
  <d' fis,>8^( << {\voiceOne cis16 g b gis)}
                  \new Voice {\voiceTwo e8 d} >> \oneVoice <ais' fis a,>4. |
  %% 7
  <b fis d>8-.\p <fis d>4-- \repeat unfold 4 {
    <b fis d>8-. <fis d>4--} <a fis d>8-.\f <fis d>4-- |
  %% 10
  << {\voiceOne fis8( e)}
     \new Voice {\voiceTwo cis4} >> \oneVoice
  e16( eis) <fis d>8(\> <a fis>) <ais fis e>\! |
  %% 11
  <b fis d>8-.\f <fis d>4-- <b g e>8-. <g e>4-- |
  %% 12
  <g e>8( <fis d>\> <cis ais>16 <d b>) <d b>4\! r8 |
  %% 13
  <e a,>8-.^\markup{\italic "agitato poco stringendo."} <e cis a>4-- <fis d a>8-. <fis d a>4-- |
  %% 14
  <a g e>8 <a g e>4 <a fis d>8\< <a fis d> <ais fis e> |
  %% 15
  <b fis d>8-.\ff^\tenutoTxt <b fis d>4-- <fis d>8-. <fis d>4-- |
  %% 16
  r8 <e cis ais>4--^\rit\dim r8 <e cis ais>4-- |
  %% 17
  r8\p <cis' fis, e>-.\> <bis fis dis>-. <cis fis, e>( <b fis d> <ais fis cis>) |
  %% 18
  r8\pp^\aTempo <b fis d>4-- r8 <b fis d>4-- |
  %% 19
  r8 <b g e>4-- r8 <b fis d>4-- | r8 <cis fis, e>4--\< r8 <b fis d>4-- |
  %% 21
  <d fis,>8\mf <cis e,>16( g <b d,> gis) <ais fis cis>4. |
  %% 22
  <b fis d>8-.\p <fis d b>4-- <fis d b>8-. <fis d b>4-- |
  %% 23
  <g e b>8-. <g e b>4-- <fis d b>8-. <fis d b>4-- |
  %% 24 / 25
  << {\voiceOne fis8\mf fis( g) fis8 a( fis) | fis8\f( e\>) e16( eis) }
     \new Voice {\voiceTwo d8 d8.( cis16) d4.| cis4 a8 } >> \oneVoice
  <fis' d a>8-. <fis d a>--\! <fis e ais,>-.
  %% 26
  <fis d b>8-.\f <fis d b>4-- <b fis d>8-. <b fis d>4-- |
  %% 27
  <e, cis>16( <fis d> <g e>8\> <fis d>16 <e cis>) <d b>8--\! <d b>-- <g e b>->\f |
  %% 28
  <fis d b>4--\> <g e b>8-> <fis d b>4--\! g8->^\tenutoTxt\f |
  %% 29
  fis8->^\rit e-> d-> <<
    {\voiceOne <d b>8 <d b>16( cis) <cis b>( <cis ais>)}
    \new Voice {\voiceTwo gis8 fis fis} >> \oneVoice |
  %% 30
  <dis' b fis>8-.\mf\>^\aTempo <dis b fis>4-- <dis b fis>8-. <dis b fis>4--\! |
  %% 31
  <dis b fis>2.\fermata \bar "|."
}

\addQuote #"pianoUpMovementII" \pianoUpMovementII

pianoDownMovementII = \relative f {
  \repeat unfold 4 {<fis b,>8-. <fis b,>4--} |
  %% 3
  <fis b,>8-.^\p <fis b,>4-- <fis b,>8-. <fis b,>4-- |
  <e b>8-. <e b>4-- \repeat unfold 3 {<fis b,>8-. <fis b,>4--} |
  %% 6
  b,16(\( d) e8 eis8\) fis fis,4 |
  %% 7
  \repeat unfold 2 {<fis' b,>8-. <fis b,>4--} |
  %% 8 / 9
  <e b>8-. <e b>4--
  \repeat unfold 2 { <fis b,>8-. <fis b,>4-- } <a a,>8-. <a a,>4-- |
  %% 10
  <a a,>8-. << {\voiceOne a4--}
               \new Voice {\voiceTwo a,8( cis)} >> \oneVoice
  <a' d,>8( <d d,>) <cis cis,> |
  %% 11
  <b b,>8 <b b,>4 <e, e,>8-. <e e,>4-- |
  %% 12
  <fis fis,>8-. <fis fis,>4-- <fis b,>8-. <fis b,>-- r |
  %% 13
  cis8-. a4-- d8-. d4-- | cis'8-. a4-- r <fis fis,>8-. |
  %% 15
  <b, b,>8-. <b b,>4-- <b b'>8-. <b b'>4-- |
  %% 16
  \repeat unfold 2 { r4 fis'8-. } | fis2. |
  %% 18
  \repeat unfold 2 { b,16( fis' b4) } |
  \stemDown b,16( e16 \stemNeutral b'4) b,16( fis' b4) |
  %% 20
  b,16( fis' ais4) b,16( fis' b4) | b,16( d) e8( eis) fis8-. fis,4-- |
  %% 22
  \repeat unfold 2 {<fis' b,>8-. <fis b,>4--} |
  %% 23
  <e b>8-. <e b>4-- <fis b,>8-. <fis b,>4-- |
  <b b,>8-- <b b,>( <bes bes,>) <a a,>16-- d,( fis8 d) |
  %% 25
  a8( a') cis, d-. d-- <fis fis,> |
  <b, b,>8-. <b b,>4-- b16( cis d fis b fis) |
  <fis fis,>8 <fis fis,>4-- <fis b,> e,16->( g) |
  %% 28
  b4-- e,16->( g) b4-- <g' g,>8-> |
  <fis fis,>8-> <e e,>-> <d d,>-> eis,8-. fis4-- |
  \repeat unfold 2 { <b b,>8-. <b b,>4-- } | <b b,>2.\fermata \bar "|."
}

%%% ------------

titleMovementIII = ##f

globalMovementIII = {
  \time 6/8
  \tempo "Allegretto moderato." 8=135
  \key g \major
}

violinMovementIII = \relative d'' {
  \partial 8 r8 |
  \cueDuring #"pianoUpMovementIII" #DOWN {R2.*3}
  \cueDuring #"pianoUpMovementIII" #UP   {R2.*4 | r4.}
  r4\fermata \once \override Hairpin.to-barline = ##f d8\upbow\p\<( |
  %% 9
  g8\!)^\grazioso r8 b,\upbow d4--\downbow d8\upbow( |
  c) r \acciaccatura d8 e-.\upbow a,4\downbow( g8) |
  %% 11
  fis8\upbow\<( a) c-.\downbow\! e\>( d c\!) | b4.~ b4 d8\upbow\p( |
  g8-.)\> r\! b,-.\upbow d4--\downbow \once \override Hairpin.to-barline = ##f d8\upbow\<( |
  c-.\!) r \acciaccatura c8 e\upbow a,4( g8) |
  %% 15
  fis(\< a) c-.\! e(\> d fis,-.)\! | g4.~ g8 b-.\<( b-.\!) |
  a4\ff( a'8) a(\( g) e-.\) | fis4.~ fis8 d-.( b-.) |
  %% 19
  a8-.-> <e' a,>( <fis a,>) <g a,>-> <fis a,>-.( <e a,>-.) |
  %% 20
  <fis a, d,>-> <a, d,>-. <a e>-. <a fis>-. <a e>-. <a d,>-. |
  %% 21
  a4( a'8) a(\( g) e-.\) | fis4.~ fis8 e-.( d-.) |
  %% 23
  cis4( b8) a g( e) | d4.~\> d8\! r8
  \cueDuring #"pianoUpMovementIII" #DOWN {r8 | R2.}
  \cueDuring #"pianoUpMovementIII" #UP   {r4. r8}
  r8 d'8-.\f\upbow |
  %% 27
  d,8-.\downbow r d'-.\upbow d,-.\downbow r \once \override Hairpin.to-barline = ##f d'-.\>\upbow |
  %% 28
  d,-.\downbow\! r r r4 \once \override Hairpin.to-barline = ##f d'8\p\upbow\<( |
  %% 29
  g-.)\! r b,-.\upbow d4-- d8-.\upbow( |
  c-.) r \acciaccatura c8 e8-.\upbow a,4( g8) | fis( a) c-. e( d c) |
  b4.~ b4 d8\upbow( | g-.) r b,8-.\upbow d4-- e8( |
  %% 34
  a-.) r e-.\upbow\< a4( g8)\! | fis( e) d-. c-. b-. a-. |
  %% 36
  g4.~ g8 r 
  \cueDuring #"pianoUpMovementIII" #DOWN {r8 | R2.}
  \cueDuring #"pianoUpMovementIII" #UP   {R2.*3}
  \cueDuring #"pianoUpMovementIII" #DOWN {R2.}
  \cueDuring #"pianoUpMovementIII" #UP   {R2.*3}
  \cueDuring #"pianoUpMovementIII" #DOWN {R2.*3 | r4.}
  %% 48
  r8 b8\downbow\mf^\markup{\italic "espressione e tranquillo."} b\upbow |
  %% 49
  b4-- e8---4~( e d c) | b4( g8) e4( g8) | fis4\<( g8) a-4( g fis) |
  %% 52
  g4.\>( e8) b'-.\p( b-.) | b\<( c d\!) e-4( d c) | b4( g8\>) e4( g8\!) |
  fis4( dis'8) dis4( cis8) | b4.~ b8\mf b8-.( b-.) |
  %% 57
  b4-- e8---4~( e d c) | b4( g8) e4( g8) | fis4( g8) a-4( g fis) |
  g4.( e8) b'-.( b-.) | b( c d) e-4( d c) | b4( g8) e4( g8) |
  %% 63
  fis8(\cresc a c) e( d c) | b4. b4( b8-.) | a8( c e) g( fis e) |
  d8--\ff^\tenutoTxt b'-- a-- g-- d-- b-- |
  a8( e'-4) d-.^\rit c( e,)\> fis-. |
  %% 68 / 69
  \repeat percent 2 {
    g8\p^\aTempo( d16-\grazioso fis g b) << {e4-4( d8)} {s8.\< s16\> s8\!} >>
  } |
  %% 70
  b'16( a g e d8--) e16-4( d b g d8--) |
  d16\<( fis g b e-4 d\!) d4\>( a8\!) |
  %% 72 / 73
  \repeat percent 2 {
    fis8\p( d16 eis fis a) << {e'4-4( d8)} {s8.\< s16\> s8\!} >>} |
  %% 74
  a'16( g fis e d8--) e16-4( d c b a8--) |
  %% 75
  d,16\<( fis a c e-4 d\!) ais4\>( b8\!) |
  %% 76 / 77
  \repeat percent 2 {
    g8\p( d16 fis g b) << {e4-4( d8)} {s8.\< s16\> s8\!} >> } |
  %% 78
  b'16( a g e d8--) e16-4( d b g d8--) |
  %% 79
  d16\<( fis g b e-4 d\!) d4\>( a8\!) |
  %% 80 / 81
  \repeat percent 2 {
    fis8\p( d16 eis fis a) << {e'4-4( d8)} {s8.\< s16\> s8\!} >>} |
  %% 82
  a'16( g fis e d8--) e16-4( d c b a8--) |
  %% 83
  d,16\<( fis a c e-4 d\!) ais4\>( b8\!) |
  %% 84
  g8:16-.\p^\brillante b8:16-. d8:16-. f8:16-. e8:16-. d8:16-. |
  %% 85
  c:-.\cresc a':-. g:-. e:-. d:-. c:-. |
  a:-.\mf cis:-. e:-.\cresc g:-. fis:-. e:-. |
  d:-. b':-. a:-. fis:-. e:-. d:-. |
  %% 88
  c':-.\ff a:-. fis:-. d:-. c:-. a:-. |
  e':-. d:-. b:-. g:-. e:-. d:-. | d:-. fis:-. a:-. e':-. d:-. c:-. |
  b:-. b':-. a:-. g:-. e:-. d:-. |
  %% 92
  c':-. a:-. fis:-. d:-. c:-. a:-. | a':-. fis:-. d:-. b:-. g:-. e:-. |
  %% 94
  d8-.\ff^\risoluto <d d'>-.->\upbow r d-.\upbow <d a' fis'>->\downbow r |
  %% 95
  d-.\upbow <d a' a'>->\downbow r r4 d'8\p\upbow^\grazioso( |
  g8-.) r b,-.\upbow d4\downbow d8( |
  %% 97
  c8-.) r \acciaccatura c8 e8\upbow a,4( g8) | fis( a) c-. e( d c) |
  b4.~ b4 d8( | g-.) r b,-.\upbow d4-- e8\cresc( |
  %% 101
  a-.) r e8-.\upbow a4( g8) | fis8^\tenutoTxt( e) d-- c-- b-- a-- |
  %% 103
  g8:16-.\ff^\piuMoto b8:16-. e8:16-. d8:16-. c8:16-. a8:16-. |
  g:-. b:-. e:-. d:-. c:-. a:-. | g:-. b:-. d:-. b':-. a:-. g:-. |
  d:-. b:-. g:-. e:-. d:-. b:-. | g4 r8 <d' b' g'>4-> r8 |
  g,4-. r8 <d' b' b'>4-> r8 | g,2.~\ff | g8 r r r4 \bar "|."
}

pianoUpMovementIII = \relative b {
  \partial 8 r8\f | r4\f b8-. fis'4.~ |
  %% 2 / 3
  fis \repeat unfold 3 {fis8-. b,-. b'-.} |
  %% 4
  \afterGrace fis'2._(\trill {eis16 fis)} |
  %% 5
  <c' g e>8->\ff <b fis d>-. <a e c>-. <g d b>-.-> <fis c a>-. <e b g>-. |
  \repeat unfold 2 {<d a fis>4-> <ees a, g>8-.} | <d a fis>4. r |
  %% 8
  <d fis a d>4.\fz r4\fermata r8 |
  %% 9
  <g, d b>8-.\p^\grazioso r <g d b>-. <g d b>4.-- |
  <a e c>8-. r <a e c>-. <a e c>4. |
  \repeat unfold 2 { <fis d c>8-. r r } | <g d b>8-. r d-.\< g4.->\! |
  <g d b>8-. r <g d b>-. <g d b>4.-- |
  <a e c>8-. r <a e c>-. <a e c>4. |
  \repeat unfold 2 { <fis d c>8-. r r } | <g d b>4.~\< <g d b>8\! r r |
  r\f <g e>-. <fis d>-. <e cis>4.-> |
  r8 <fis d>-. <e a,>-. <d fis,>4.-> |
  \repeat unfold 2 { <cis a g>4.-> } |
  \repeat unfold 2 { <d a fis>4.-> } |
  r8 <g e>-. <fis d>-. <e cis>4.-> |
  r8 <fis d>-. <e a,>-. <d fis,>4.-> |
  r8 <e b g>-.\> <e b g>-. r <cis a g> <cis a g>\! |
  %% 24
  r8 \repeat unfold 3 {<d a fis>-.} r d-.\p |
  <c' a>4-\leggiero( <b g>8-.) <a fis>-. r r\< |
  <e' c>4\mf( <d b>8) <c a>-. r r |
  %% 27
  <a' e>4\f\>( <g d>8) <fis c>4( <e b>8) | <d a>8\p r r r4. |
  <g, d b>8-.\p r-\grazioso <g d b>8-. <g d b>4. |
  <a e c>8-. r <a e c> <a e c>4. |
  %% 31
  \repeat unfold 2 { <fis d c>8-. r r } | <g d b>8-. r d-. g4.-> |
  <g d b>8 r <g d b> <g d b>4 r8 | <a e c>8-.\< r <a e c>-. <a e c>4. |
  <fis d c>8-.\f r r <fis d c>-. r r |
  %% 36
  <g d b>4.~\< <g d b>8\! r d( | g8-.) fis e d4-- <g b>8-.\p |
  <b e>4( <b g>8) <b d>4-- <d b>8-. |
  %% 39
  <fis d>8-.\< <e c>-. <c a>-. r <a fis>-. <c a>-.\! |
  <e c>-. <d b>-. <b g>-. <d b>4-- d,8\f( |
  %% 41
  g8-.) fis-. e-. d4-. <g b>8-. | <b e>4( <b g>8) <b d>4-- <d b>8-. |
  <fis d>-.\< <e c>-. <c a>-. r e,-. fis-. | g-.\f b-. d-. g-. r d,( |
  %% 45
  g-.-\risoluto[) r d-.]( g-.)[ r fis]( |
  b-.)[ r fis-.]( b-.)[ r b,-.]( |
  %% 47
  e-.) <g e b>8-.\f <g e b>-.-\tranquillo <g e b>4.:8-. |
  r8 <g e b>8-. <g e b>-. <g e b>4.:8-. |
  r8\mf <g e b>-. <g e b>-. <g e b>4.:8-. |
  r8 <g e b> <g e b> <g e b>4.:8 |
  %% 51
  r8 << {\voiceOne<fis dis>\<( <g e>\! <a fis> <g e>\> <fis dis>\!) }
        \new Voice {\voiceTwo b,4~ b4. } >> \oneVoice |
  %% 52
  r8 <g' e b> <g e b> <g e b>4.:8 | r8\p <g e b> <g e b> <g e b>4.:8 |
  r8 <g e b>\< <g e b> <g e b>4.:8 |
  %% 55
  r8\f <fis dis b> <fis dis b> r8 <fis cis ais>-. <fis cis ais>-. |
  %% 56
  r8 <fis dis b>-.\> <eis d b>-. <fis dis b>4--\! r8 |
  r8\p <g e b>-. <g e b>-. <g e b>4.:8-. |
  r8 <g e b>-. <g e b>-. <g e b>4.:8-. |
  %% 59
  r8 << {\voiceOne<fis dis>\<( <g e>\! <a fis> <g e>\> <fis d>\!) }
        \new Voice {\voiceTwo b,4~ b4. } >> \oneVoice |
  %% 60 / 61
  \repeat percent 2 { r8 <g' e b>-. <g e b>-. <g e b>4.:8-. } |
  %% 62
  r8 <g e b> <g e b> <g e b>4.:8 |
  r8\mf <fis d c> <fis d c> r <fis d c> <fis d c> |
  r8 <g e b> <g e b> <g e b>4.:8 |
  %% 65
  r8\cresc <a e c> <a e c> r <a e c> <a e c> |
  %% 66
  r8\ff  <g e b>^\tenutoTxt <g e b> <g e b>4.:8 |
  %% 67
  <fis d c>4--^\rit\> r8 <a d, c>4 r8\! |
  %% 68
  <g d b>4.^\aTempo_\grazioso b,8( d g) | r4. b,8( d g) |
  %% 70 / 71
  r8_\leggiero 
  \repeat unfold 3 { <g d b>-. <g d b>-. r } <fis d a>-. <fis d a>-. |
  %% 72
  r4.-\grazioso a,8( d fis) | r4. a,8( d fis) |
  %% 74 / 75
  r8-\leggiero 
  \repeat unfold 3 {<fis d c>-. <fis d c>-. r} <g d b>-. <g d b>-. |
  %% 76 / 77
  \repeat percent 2 {r4. b,8( d g)} |
  %% 78 / 79
  \repeat unfold 3 {r8 <g d b>-. <g d b>-.} r8 <fis d a>-. <fis d a>-. |
  %% 80 / 81
  \repeat percent 2 {r4.\p a,8( d fis)} |
  %% 82 / 83
  \repeat unfold 3 {r8 <fis d c>-. <fis d c>-.} r8 <g d b>-. <g d b>-. |
  %% 84
  <f d b>2.\p | <e c g>\cresc | <g e a,>\mf | <fis d a>\cresc |
  r8\f d8-. <c a'>-. r d-. <fis c>-. |
  %% 89
  \repeat unfold 2 {r d-. <g b,>-.} |
  %% 90
  \repeat unfold 2 {r d-. <fis c>-.} |
  \repeat unfold 2 {r8 d-. <g b,>} | r d-. <c a'>-. r d-. <fis c>-. |
  r d-. <g b,>-. r4 e8-.\f |
  %% 94
  d-.-\risoluto <fis a d>-. r r <a d fis>-.\f r |
  r <d fis a>-.\f r r4. |
  %% 96
  <g, d b>8-.\p r <g d b>-. <g d b>4. |
  <a e c>8-. r <a e c>-. <a e c>4.-. |
  %% 98
  \repeat unfold 2 { <fis d c>8-. r r } | <g d b>8-. r d-. g4.-> |
  <g d b>8-.\cresc r <g d b>-. <g d b>4-. r8 |
  %% 101
  <a e c>8-.\mf r <a e c>-. <a e c>4. |
  << {\repeat unfold 2 { <fis d c>8-. r r }} {s8 s\cresc} >> |
  <g d b>4\ff^\piuMoto r8 <fis d c>4 r8 | <g d b>4 r8 <fis d c>4-. r8 |
  \repeat unfold 2 {<g d b>4-. r8} | <b g d>4-. r8 <d b g>4-. r8 |
  <g d b>4-> r8 r4. | g,,4-> r8 r4. |
  \repeat tremolo 12 {<g' d>32\ff b,} | <g' d b>8 r r r4 \bar "|."
}

\addQuote #"pianoUpMovementIII" \pianoUpMovementIII

pianoDownMovementIII = \relative b, {
  \partial 8 b8-. | fis'4.~ fis4 b,8-. | fis'8-. b,-. b'-. r4. |
  %% 3 - 7
  R2.*2 | \repeat percent 3 {\repeat tremolo 12 {d,,32 d'}} |
  %% 8
  <d d,>4. r4\fermata r8 | g8-. r g-. g4. | c,8-. r c-. c4. |
  %% 11
  d8-. r r d-. r r | g-. r d-. g4.-> | g8-. r g-. g4. |
  %% 14
  c,8-. r c-. c4. | d8-. r r d-. r r | g8-. d-. b-. g r r | a2.-> |
  %% 18
  d-> | a4.-> a-> | d-> d-> | a2.-> | d-> | g,4. a | d4.~ d8 r r |
  %% 25
  r4. r8 d8-. d'-. | r4. \clef "G" r8 d-. d'-. | c4( b8) a4( g8) |
  %% 28
  fis8-. r d \clef "F" d, r r | g-. r g-. g4. | c,8-. r c-. c4. |
  %% 31
  d8-. r r d-. r r | g8-. r d-. g4.-> | g8-. r g-. g4 r8 |
  %% 34
  c,8 r c c4.-- | \repeat unfold 2 {d8-. r r} | g, b d g r d( |
  <g g,>) <fis fis,> <e e,> <d d,>4.-- |
  %% 38
  \repeat unfold 2 { g,8( d' g) } |
  %% 39
  \repeat unfold 2 {d8-. <fis a>-. <fis a>-.} |
  g,( d' g) g,( d') d( |
  %% 41
  <g g,>8-.)-\markup{\italic {"8" \super {"va"} "add lib."}} <fis fis,>-. <e e,>-. <d d,>4. |
  \repeat unfold 2 {g,8( d' g)} |
  %% 43
  c,8-. <e a>-. <e a>-. d <a' c>-. <c a>-. |
  %% 44
  <b g>4.~ <b g>8 r d,-.( | g-.)[ r d-.]( g-.[) r fis]( |
  %% 46
  b8-.[) r fis-.]( b-.[) r b,-.]( | d4.) r4. | e, r | e' r | e, r |
  %% 51
  b' r | e, r | e' r | e, r | fis4-- r8 fis'4-- r8 | b,4.~ b4 r8 | e4. r |
  %% 58
  e, r | b' r | e, r | e' r | e, e' | d4 r8 d4 r8 | g4. r |
  %% 65
  c,4 r8 c4 r8 | d4. r | d4-- r8 d4 r8 |
  %% 68
  \repeat percent 2 {g,( g' d) g,4.--} | g4 r8 b4 r8 | b4 r8 d4 r8 |
  %% 72
  \repeat percent 2 {d8( a d,) d'4.--} | d4-. r8 d4-. r8 |
  %% 75
  d4-. r8 g,4-. r8 | \repeat percent 2 {g( g' d) g,4.} |
  g4-. r8 b4-. r8 | b4-. r8 d4-. r8 |
  %% 80
  \repeat percent 2 {d8( a d,) d'4.} | d4-. r8 d4-. r8 |
  %% 83
  d4-. r8 g,4-. r8 | b4.( g) | c2. | cis4.( a) | d2. | fis,4. d' |
  %% 89
  g, d' | d, d' | g, g | fis d' | g,8 r r r4 <e' e,>8-. |
  %% 94
  <d d,>8-. r r <d d,>8 r r | <d d,>-. r r r4. | g8-. r g-. g4. |
  %% 97
  c,8 r c c4. | d8-. r r d-. r r | g-. r d-. g4.-> |
  %% 100
  g8 r g g4 r8 | c,8-. r c-. c4. | d8-. r r d-. r r |
  %% 103
  \repeat percent 2 {<g g,>4 r8 d4 r8} | <g g,>2.~ | <g g,>~ |
  %% 107
  <g g,>4 r8 r4. | <g, g,>4-> r8 r4. | \repeat tremolo 12 {g32 g'} |
  <g g,>8 r r r4 \bar "|."
}

%%% ------------

\include "composer.ily"

\header {
  arranger = ##f
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 13"
  source = "http://imslp.org/"
  title = "Student's Concerto No II."
}

\include "paper.ily"

#(define fileBaseName "Friedrich_Seitz-opus_13")

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
