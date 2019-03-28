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

agitato = \markup {\italic #"agitato"}
attacca = \markup {\italic #"attacca"}
brillante = \markup {\italic #"brillante"}
cadenzaAdLib = \markup {\italic #"Cadenza ad lib."}
energico = \markup {\italic #"energico"}
espressione = \markup {\italic #"espressione"}
espressivoText = \markup {\italic #"espressivo"}
fEnergico = #(make-dynamic-script
             (markup #:line (
               #:dynamic "f"
               #:normal-text
               #:italic " energico"
               #:hspace -9.9)))
fAgitato = #(make-dynamic-script
             (markup #:line (
               #:dynamic "f"
               #:normal-text
               #:italic " agitato"
               #:hspace -6)))
grazioso = \markup {\italic #"grazioso"}
leggiero = \markup {\italic #"leggiero"}
marcatoBasso = \markup {\italic #"marcato basso"}
morendo = \markup {\italic #"morendo"}
piuMoto = \markup {\italic #"più moto"}
pocoCresc = #(
  make-music 'CrescendoEvent
  'span-direction START
  'span-type 'text
  'span-text "poco cresc.")
pocoDim = #(
  make-music 'CrescendoEvent
  'span-direction START
  'span-type 'text
  'span-text "poco dim.")
pocoPocoCresc = #(
  make-music 'CrescendoEvent
  'span-direction START
  'span-type 'text
  'span-text "poco a poco cresc.")
pocoPocoMorendo = \markup {\italic "poco a poco morendo"}
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
simile = \markup {\italic #"simile"}

titleMovementI = #""

globalMovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4=101
  \key a \minor
}

violinMovementI = \relative a {
  a2->\f^\energico a'-> | e2.-> c'4-> | a-.-> e'-. c-.-> a'-.-> |
  %% 10
  g8-.-> f-.-> e4-.-> r d8.-.\p\upbow( e16-.) |
  g8->( f) f-.\upbow( f-.) f4\downbow c8.-.\upbow( d16-.) |
  f8->( e) e-.( e-.) e4 d8.-.\upbow( e16-.) |
  %% 13
  g8( f) a8-.( f-.) e->( f) c8.-.( d16-.) |
  f8( e) b'-.( e,-.) dis->( e) d8.( e16-.) |
  %% 15
  f8\cresc( e) a-.->( e-.) e-4( d) a'-.->( d,-.) |
  d( c) a'-.->( c,-.) c( b) a'-.->( b,-.) |
  %% 17
  b\dim( a) c-- e---4 d( c b a) | gis( f e d) c--( b-- c-- d--) |
  %% 19
  e2.\downbow\p a8_\espressivoText( c) | b4( a~ a8) b\upbow( c e-4) |
  %% 21
  d4( c~ c8) d\upbow( e g) | f4( e~ e8) e\upbow( f g) |
  %% 23
  a2\f b,4.( d8-3) | f4-- a-- g-- f-- | g2 a,4.( c8) |
  %% 26
  e4-- g-- f-- e-- | f4 g,8-- b-- d( f e d) |
  e4-- f,8-- a-- c( e d c) | d4 c8-- b-- c4( d) |
  dis4( e~ e8) f( g a) | bes4 cis,8-- e-- g( bes a g) |
  gis( a) a,-- d-- f( a g f) | dis( e d c) b( c b a) |
  gis( a^\rit g f) dis--\< e--\! c'8.\fermata\>( b16\!) |
  a8-.\p\< c16 b a8-. d16 c b8-. e16 d c8-. f16 e |
  d16-- f--\f\> a-- gis-- a-- f-- e-- d-- e---4 c-- b-- a-- b-- gis-- fis-- e-- |
  a8-.\p\< c16 b a8-. d16 c b8-. e16 d c8-. f16 e |
  dis16\f\> fis a g fis e dis c b c b a g fis e dis |
  %% 39
  d8\pocoPocoCresc g16 fis e8 a16 g fis a c b c a g fis |
  %% 40
  g8 b16 a g8 c16 b ais16 cis e-4 dis e cis b ais |
  \repeat percent 2 {b8\f d16 cis b8 fis'16 d b8 r r4} |
  %% 43
  b,8-.\p d16 c b8-. f'16 e d8-. aes'16 g f8-. d'16 c |
  b8-.\< aes'16 g \repeat unfold 3 {f8-. aes16 g} |
  \tuplet 3/2 4 {
    %% 45
    f8\mf^\tenutoTxt( a g f e d) cis( d e g^\tenutoTxt f d) |
    %% 46
    a( b e-4 d^\tenutoTxt b g) fis( g fis^\rit g fis f)
  }
  %% 47
  e2\pDolce g4( a8-4 e) | g2~ g8 f( e f) | d4.\<( e8) f4.( a8) |
  %% 50
  c2\>( b4\!) g | c2 d4.( a8) | g2 c4.( e,8) | d4\<( f) a( b) |
  %% 54
  a2\>( gis4) g | c2\p d4.\cresc( a8) | g2 e'4.-4( c8) |
  %% 57
  bes4\mf\<( d) f( g) | f2\> e4.( d8--) | bes4\<( d) f( g) |
  %% 60
  f2\> e4.( d8--) | cis4\p\cresc( e) g( a) | g2\dim fis4.( d8--) |
  %% 63
  f2 e4.( c8) | ees2 e4( d8 c) | g'2.\< gis4 | b4\f( a) f( e) |
  %% 67
  d( a) f-- e-- | d-- a-- b4.\fermata( a8) |
  \tuplet 3/2 4 {
    %% 69
    c8\espressivo\p( g' c e-4 c-2 e-0) g\espressivo( e g a\espressivo e a) |
    %% 70
    g\espressivo( b a g a f) e( f d c d b) |
    \omit TupletNumber
    a\espressivo( e a c a c) e-4\espressivo( c e-0 f\espressivo c f) |
    %% 72
    e\espressivo( g f e f d) c( d b a b gis) |
    %% 73
    a-4\espressivo( c, f a f a-0) c\espressivo\<( a c d a d\!) |
    %% 74
    a\espressivo( d, fis a-4 fis a-0) c\espressivo\<( a c d a d\!) |
    %% 75
    \fingerNumberSpanner #"1"
    b\startTextSpan( d, g b g b) d\<( b d e-4 b e\!\stopTextSpan) |
    %% 76
    b\startTextSpan( e, gis b gis b) e\<( b d e-4 b e\!\stopTextSpan) |
    %% 77
    c-.->\cresc a( c) f-.-> c( f) d-.-> b( d) g-.-> d( g) |
    e-.-> c( e) a-.-> e( a) f-.-> d( f) b-.-> f( b) |
    g-.->\f e( g c-4) a-- fis-- e-- c-- a-- fis-- e-- c-- |
    g-.-> c( g a) c-- e-- fis-- a-- c-- e-- fis-- a-- |
    g-> e( g c-4) a-- fis-- e-- c-- a-- fis-- e-- c-- |
    g-.-> c( g a) c-- e-- fis-- a-- c-- e-- fis-- a--
  } |
  g16-- g-- a-- g-- e-- e-- f-- e-- c-- c-- d-- c-- g-- g-- a---4 g-- |
  %% 84
  \fingerNumberSpanner #"2"
  <f a>4:16\startTextSpan_\simile <f a,>8:16 <f a>8:16 <f b>4:16 <f g,>8:16 <f b>8:16\stopTextSpan |
  g'16 g a g e e f e c c d c g g a a |
  <f a>4:16-. <f g,>8:16-. <f a>8:16-. <f b>4:16-. <f g,>8:16-. <f b>8:16-. |
  \repeat percent 2 {
    <e c'>4:16-. <f d'>8:16-. <e c'>8:16-. <d c'>8:16-. <d b'>8:16-. <d g,>8:16-. <d b'>8:16-.
  } | c16 c d-4 c e e f e g g a-4 g c c d c |
  g g a-4 g c c d c e e f e g g a g | c4-4 r r2 
}

violinMovementIViolin = \new Voice {
  %%\cueDuring "pianoUpMovementI" #DOWN {R1*6} |
  R1*6
  \violinMovementI |
  \cueDuring "pianoUpMovementI" #DOWN {R1*7} |
  \cueDuring "pianoUpMovementI" #UP {R1} |
  \cueDuring "pianoUpMovementI" #DOWN {R1*3} |
  \cueDuring "pianoUpMovementI" #UP {R1*8} \bar "|."
}

violinMovementIPiano = \new Voice {R1*6 | \violinMovementI | R1*19}

pianoUpMovementI = \new Voice \relative a' {
  <a e c>2\f <a' e c> |
  %% 2
  <e c a>~ <e c a>8 r <c-2 a-1>-.[\< r16 <d-3 b-1>16-.]\! |
  %% 3
  <f d>8\>( <e c>-.\!) <e c>4 r <a,-2 f-1>8-.[\< r16 <b-3 g-1>16-.]\! |
  %% 4
  <d b>8\>( <c a>-.\!) <c a>4 r <f,-2 d-1>8\p [ r16 <g-2 e-1>16 ] |
  %% 5
  <b g>8\cresc( <a f>-.) <d-4 b-2>( <c a>-.)
  << {\voiceOne g'8( f-.) b( a-.)}
     \new Voice {\voiceTwo <d, a>4 <fis c>} >> \oneVoice |
  %% 6
  <c' a e>4\f r <e, b a>8 r <e b gis> r |
  \clef "tenor" r4 <a,, e c>-.\f r <c a e>-. |
  r4 <e c a> -. <a e c>-. r |
  \clef "violin" r <c a e>-. <a e c>-. <a c f>-. |
  <g c e>8-. <f a d>-. <e gis b>4-. r2 |
  r8 <f c>-.\p <f c>-. <f c>-. <f c>4-. r |
  r8 <e b>-. <e b>-. <e b>-. <e b>4-. r4 |
  r8 <f c>-. <f c>-. <f c>-. <<
    {\voiceOne e8->( f-.) }
    \new Voice {\voiceTwo c4} >> \oneVoice r4 |
  r8 <e b>-. <e b>-. <e b>-. <<
    {\voiceOne dis8->( e-.)} \new Voice {\voiceTwo b4} >> \oneVoice r4 |
  r4 <a' cis, a>-.\mf r4 <a d, a>-. | r4 <a c, a>-. r4 <a f b,>-. |
  r4 <e c>-.\dim <d b>-. <c a>-. | <bis g>-. r r2 |
  %% 19
  \clef "alto"
  \repeat percent 3 {r4\pp <c a>8-. <c a>-. <c a>4 r} |
  %% 22
  r4 <c a>8-. <c a>-. <e c>4 r |
  %% 23 / 24
  r\f <<
    {\voiceOne a2.~ a4 a( g f)}
    \new Voice {\voiceTwo c4 d4. c8 b4 f' e d} >> \oneVoice |
  %% 25 / 26
  r4 <<
    {\voiceOne g2.~ g4 g f e}
    \new Voice {\voiceTwo a,4 c4. b8 a4 e'( d c)} >> \oneVoice |
  %% 27
  r8\p <<
    {\voiceTwo g8\< b a g}
    \new Voice {\voiceOne f'4.~ f8} >> \oneVoice <f d>8( <e c> <d b>\!) |
  %% 28
  r8 <<
    {\voiceTwo f,8\< a g f}
    \new Voice {\voiceOne e'4.~ e8} >> \oneVoice <e c>( <d b> <c a>\!) |
  %% 29
  r4\> <d a f>2 <d c a>4\! |
  %% 30
  <dis b a> <e b gis> r r8 \once \override Hairpin.to-barline = ##f <f d>8\<  |
  %% 31
  <g e>4\! r4 r8 \once \override Hairpin.to-barline = ##f
  <bes g>\<( <a f> <g e> |
  %% 32
  <f d>4\!) r4 r8 \once \override Hairpin.to-barline = ##f
  <a f>\<( <g e> <f d> | <e c>4\!) r r2 | r2  <d b>8\p r8 r4\fermata |
  %% 35
  r8 <c a>\p r <d b> r <e c> r <f d> | r <a f>\f r4 r8 <e c> r <d b> |
  %% 37
  r <c a> r <d b> r <e c> r a16\<( g |
  %% 38
  fis8\f) r r fis16\p( e dis8) r8 r <a fis> |
  r <b g>\pocoCresc r8 <b g> r <d a fis> r4 |
  %% 40
  \repeat unfold 2 { r8 <d b g> } r8 <fis cis ais> r4  |
  <fis d b>8\f r r4 r8 d16-.\f cis-. b8-. fis'16-. d-. |
  b8-. r r4 r8 d16-.\> cis-. b8-. fis'16-. d-. | b8\pp r8 r4 r2 |
  %% 44
  r4 b8-.\p\< r b8-. r b8-. r\! | b8 r r4 r2 | R1 |
  %% 47
  r8\p <g' g,>4 <g g,>8 r <g g,>4 <g g,>8 |
  r8 <g g,>4 <g g,> <g g,> <g g,>8 | r <g g,>4 <g g,>8 r g4 g8 |
  %% 50
  r <g d c>4 <g d c>8 r <g d b>4 <g d b>8 |
  r8 <g c,>4 <g c,>8 r <a c,>4 <a c,>8 |
  %% 52
  \repeat unfold 2 {r <g c,>4 <g c,>8} |
  r8 <a d, b>4\< <a d, b>8 r <a f b,>4 <a f b,>8\! |
  %% 54
  r <a e b>4\> <a e b>8 r <gis e b>\! r <g f b,> |
  %% 55
  r\p <g e c>8 r <g e c>\cresc r <a c,>4 <a c,>8 |
  %% 56
  r8 <g c,> r <g e> r <g e c>4 <a e c>8 |
  r8 <bes f d>4\mf <bes f d> <bes f d> <bes f d>8 |
  %% 58
  r8\p\< <bes a d,>4 <bes a d,>8 r <bes g d>4 <bes g d>8\! |
  r8 \repeat unfold 3 {<bes f d>4} <bes f d>8 |
  %% 60
  r8\< <bes a d,>4 <bes a d,>8 r <bes g d>4 <bes g d>8\! |
  r8\p\cresc <a cis,>4 <a cis,>8 r <a d,>4 <a dis,>8 |
  %% 62
  r8\dim <a g e>4 <a g e>8 r <a fis>4 <a fis>8 |
  r8 <g f d>4 <g f d>8 r <g e>4 <g e>8 |
  %% 64
  r8 <fis ees c>8 r <a ees c> r <g e c> r <f d c> |
  r\< <g e c>4 <g e c>8 r <g e c>4 <gis d b>8( |
  %% 66
  <a c, a>4\f) r r <a g>4( | <a f>8) r r4 r <a, g>4( |
  %% 68
  <a f>8) r r4 <g f>8 r\fermata r4 |
  %% 69
  \clef "violin"
  << {\voiceOne e'2( g4 a8 e) | g2~ g8 f( e f) | c2( e4 f8 c) | e2~ e8 d( c d)}
     \new Voice {\voiceTwo c1\p | b | a | gis} >> \oneVoice |
  r4\pocoPocoCresc a4( c d8 a) | r4 a4( c d8 a) |
  %% 75 / 76
  \repeat percent 2 {r4 b( d e8 b)} |
  %% 77
  <e c a>8 r <f c a> r <f d b> r <g d b> r |
  <g e c> r <a e c> r <a f d> r <b f d> r |
  %% 79
  <c g e>4-.->\f <c a fis>-.-> r2 | <e c g>4-.-> <e c a>-.-> r2 |
  %% 81
  <c g e>4 <c a fis> r2 | <e c g>4 <e c a> r2 |
  %% 83 -- 86
  \repeat unfold 2 {
    r8\p <e, c> r <g e c> r <a f c> r <c g c,> |
    r4 <d, b>8\< r <f b,>\! r <g b,>\> <d b>\!
  }
  %% 87
  r4 c8\mf e g r <f b,> r | <e c> r c e g r <f b,> r | <e c> r r4 r2 |
  <g e c>8 r r4 r2 | \repeat tremolo 8 {<g c>16\ff e} |
  \repeat percent 6 \repeat unfold 2 { \repeat tremolo 4 {<g c>16 e} } |
  \repeat tremolo 8 {<g cis>16 e} | d'2 d' | a2. gis,8.\p a16 |
  c8->( <bes d,>) <bes d,>-. <bes d,>-. <bes d,>->( <g d>) <g d> <g d> |
  <g d>->( <f des>) <f des> <f des> <f des>->( <e c>) <e c> <e c> | R1 |
  <d' a fis d>2\p <d d'> | <d bes d,>1 | <c bes g e>2\p <c' g e c> |
  <a fis ees a,> <fis ees a,> | <g d bes>( <f des bes>)^\rall\dim |
  << {\voiceOne f4( e d e | d c b <c bes>\!)}
     \new Voice {\voiceTwo <c g>2 <bes g> | <g e>2. e4} >>
  \oneVoice \mark \markup{\fermata} \bar "|."
}

\addQuote #"pianoUpMovementI" {\pianoUpMovementI}

pianoDownMovementI= \new Voice \relative a, {
  \repeat tremolo 16 {a32( a')} |
  \repeat tremolo 8 {a,( a'} a,8) r8 r4 |
  \clef "violin" r4 <b'' g>8( <a f>-.) <a f>4 r |
  r <g e>8-.( <f d>) <f d>4 r |
  \clef "bass" r4 <f, f,>4 <d d,> <dis dis,> | <e e,> r e'8-. r e,-. r |
  \repeat unfold 2 {r4 <a, a,>-.} | r <a a,> <a a,> r | r a'-. g-. f-. |
  c8-. d-. e4-. r2 | r8 a8-. a-. a-. a4-. r |
  r8 gis8-. gis-. gis-. gis4-. r | r8 a8-. a-. a-. gis->( a-.) r4 |
  r8 gis-. gis-. gis-. fisis->( gis-.) r4 | r4 g4-. r f-. | r e-. r d-. |
  r c-. d-. dis-. | e-. r r2 |
  %% 19
  \repeat percent 3 {
    << {\voiceOne r4 e8-. e-. f\>( e\!)}
       \new Voice {\voiceTwo a,2.} >> \oneVoice r4
  }
  %% 22
  a4 e'8-. e-. a\>( g\!) r4 | f2.\f e4 | d b( c d) | e2. d4 |
  %% 26
  c a( b c | d4.) c8( b g a b | c4.) b8( a f g a | b4) a8 g f4( f') |
  %% 30
  b,( e e,) d | cis r r8 <e' cis>( <f d> <g e> |
  %% 32
  <a f>4) r r8 <d, b>( <e c> <f d> | <a e>4) r r2 |
  %% 34
  r2 <gis e>8 r r4\fermata | a,8 r a r a r d r | b r r4 e8 r e, r |
  %% 37
  a8 r a r a r a a'16( g | fis8) r r fis16( e dis8) r r b8 |
  e, r e' r d r r4 | g,8 r g' r fis r r4 |
  %% 41
  <fis b,>8 r r4 r8 \repeat unfold 3 {<fis d b>-.} |
  <fis d a>8-. r r4 r8 \repeat unfold 3 {<fis d a>-.} |
  <f d aes> r r4 r2 | r4 \repeat unfold 3 {<f d aes>8-. r} |
  <f d g,>-. r r4 r2 | R1 | c2 e4( f8 c) | e2~ e8 d( c d) |
  b4.\<( c8 d4. f8) | a2\>( g4\!) f | e2( fis4. f8 | e1) | f2 d |
  e e4( d) | c g'( fis f | e) c'( b bes8 a | aes2) g | g,4( c d e) |
  %% 59
  g1 | g,4( bes d e) | a2 b | cis4( a d c) | b4( g c bes) |
  %% 64
  a( fis g aes) | g( f e) e,( | f) r r cis''( | d8) r r4 r cis,( |
  %% 68
  d8) r r4 <d g,>8 r\fermata r4 | <g c,>1 | <g g,> | <e a,> | <e e,> |
  <c f,> | <d fis,> | <d g,> | <e gis,> |
  %% 77 
  <e c a>8 r <f c a> r <f d b> r <g d b> r |
  <g e c> r <a e c> r <a f d> r <b f d> r |
  %% 79
  <c g e>4-.-> <c a fis>-.-> r2 | <e c g>4-. <e c a>-. r2 |
  %% 81
  <c g e>4 <c a fis> r2 | <e c g>4 <e c a> r2 |
  %% 83
  \repeat unfold 2 { e,8 r c r a r e r | r4 g8 r g' r g, g' } |
  %% 87
  r4 c,8 e g r g, r | c r c e g r g, r | c r r4 r2 | <c e g>8 r r4 r2 |
  %% 91
  c,2 c' | g2. e'4 | c g' e c' | bes8 a g4 r g,8.\< a16\! |
  c8->( bes) bes bes bes r g'8.-> a16-> |
  bes8-> a-> g4-> r g,8.\< a16\! |
  c8\>( bes\!) bes bes bes r g'8. a16 | bes8 a g4 r2 |
  \repeat tremolo 8 {<a f>16 d} |
  \repeat tremolo 4 {<a fis>16 d} <a fis>4 r |
  r8 g g g g->( bes,) bes bes | bes->( g) g g g->( c) c c |
  <c c,>2-> c'->~ | c1 | c,2-> c'->~ | c1 | c,2-> c'->~ | c1~ | c~ |
  << c {s2 s_\attacca} >> \bar "|."
}

%%% ------------

titleMovementII = #""

globalMovementII = {
  \tempo "Andante, cantabile." 4=88
  \time 4/4
  \key f \major
}

violinMovementII = \relative f' {
  f2\p a4.( d8) | e,1 | d2 f4.( a8-4) | bes,1 | a4( c) f-- g-- |
  %% 8
  a-4( f) e'---4 d-- | c4.( g8) a4.( bes8) | a2~ a8 c\<( d e) |
  %% 11
  f2\f a4.( d,8) | e1-4 | d2  f4.( a,8) | bes1 | a4\<( c) f-- g-- |
  %% 16
  a\>( f) e-- d-- | c4.\>( a8\!) c4.\>( a8\!) | c2~\> c8 a( b gis) |
  a2\p c4.( e8-4) | f,1 | g2 b4.( d8) | e,1 |
  %% 23
  f2\downbow\pocoCresc a4.( c8) | e4-4( d) cis d | c2 e4.( g8) |
  %% 26
  bes4( a) gis-- a--\f | g--\downbow f-- e-- f-- | e-- d-- cis-- d-- |
  %% 29
  c8--\dim bes-- a-- bes-- a-- g-- fis-- g-- | f( e d e) a4.-4( g8) |
  f1~\p\dim | f4 f( a-4 cis,\!) | d4\f r r2 |
  %% 34
  \tuplet 3/2 {d8\f^\agitato( f a)} f'4~ \tuplet 3/2 4 {f8 e-. d-. cis( d bes)} |
  %% 35
  a4\upbow g~\downbow \tuplet 3/2 4 {g8 a-- bes-- cis( d e)} |
  %% 36
  bes'2~ \tuplet 3/2 4 {bes8 a-_ gis-_ a( e g)} |
  %% 37
  g4\downbow( f~ \tuplet 3/2 4 {f8) d--( e-- f-- g-- gis--)} |
  %% 38
  a2~ \tuplet 3/2 4 {a8 g( f e d a)} |
  %% 39
  c4( bes~ \tuplet 3/2 4 {bes8\>) a( g f e d)} |
  %% 40
  a2\p\downbow f'4.\upbow d8\downbow | e1\upbow |
  %% 42
  \tuplet 3/2 4 {fis8\pocoPocoCresc\downbow( a c)} ees4~ \tuplet 3/2 4 {ees8 d-. cis-. d( a c)} |
  %% 43
  c4\upbow bes2\downbow a4\upbow |
  %% 44
  \tuplet 3/2 {gis8( b d)} f4~ \tuplet 3/2 4 {f8 e-- dis-- e( b d)} |
  d4\upbow c~\downbow \tuplet 3/2 4 {c8 a,( c e a b)} |
  %% 46
  \tuplet 3/2 {c8\f\<\downbow(\( e g\!)} c4-4->~_\pocoRit \tuplet 3/2 4 {c8\) a-- e-- c-- b-- a--} |
  \tuplet 3/2 {g8\<(\( c e\!)} a4->~ \tuplet 3/2 4 {a8\) f-- d-- a-- f-- d--} |
  %% 48
  \tuplet 3/2 {e8\<( g bes\!} d2->\>) des4\!\upbow( | c\dim bes d, e) |
  %% 50
  f2\downbow\p^\aTempo a4.( d8) | e,1 | d2 f4.( a8-4) | bes,1 |
  %% 54
  a4( c) f( g) | a( f) e'-4 d | c4.( g8) a4.( bes8) |
  %% 57
  a2~ a8 c,( d e) |
  \once\override TextSpanner.bound-details.left.text = \pocoPocoMorendo
  \once\textSpannerDown
  f2~\startTextSpan f8 e( f d') | c2~ c8 b( c a') |
  g4.( f8) g,4.( gis8) | a4.-4( f8) c4.( e8\stopTextSpan) | f2. a,4 |
  c2 e4.( a8-4) | f2. a4 | c2 e4.( a8) | f1\pp~ | f\fermata \bar "|."
}

violinMovementIIViolin = \new Voice {
  R1*2 |
  %%\cueDuring "pianoUpMovementII" #UP {R1*2} |
  \violinMovementII
}

violinMovementIIPiano = \new Voice {R1*2 | \violinMovementII}

pianoUpMovementII = \new Voice \relative c''' {
  \repeat percent 3 {
    <c-4 f,-1>8\pp( <d-5 a-2> <c f,> <d a> <c f,> <d a> <c f,> <d a>)
  }
  %% 4
  <c-3 g-1>( <d bes> <c g> <d bes> <c g> <d bes> <c g> <d bes>) |
  %% 5
  <a-4 d,-1>( <bes-5 f-2> <a d,> <bes f> <a d,> <bes f> <a d,> <bes f>) |
  <g-3 d-1>( <a-4 f-2> <g d> <a f> <g d> <a f> <g d> <a f>) |
  %% 7
  c,-1( f-5 a,-2 c-3 f,-1 a f bes | a-3 f-2 c-1 f-2 cis-1 g'-3 d-1 gis-4) |
  %% 9
  a-5( f g e f d e-2 c-1 | f-3) c-1( b-2 c-1 d-2) e-3\<( f-4 g-1 |
  %% 11
  <c-4 a-2>)\mf d( <c a> d <c f,> <d a> <c f,> <d a> |
  %% 12
  <c-4 g-1> <d-5 bes-3> <c g> <d bes> <c g> <d bes> <c a> <bes g>) |
  %% 13
  <a-4 f-2>( bes <a f> bes <f d> <bes> d,-1 f-3) |
  %% 14
  <g-4 d-1>( <a-5 f-3> <g d> <a f> <g d> <a f> <g d> <f-4 des-2>) |
  %% 15
  c-1( a'-5 f a f a f a | f a f c' e, a f a) |
  \repeat unfold 2 { e\>( a e dis\!) } | e\>( a e a e) c( d b) |
  <a' a,>\pp <a a,> <g a,> <g a,> <f a,> <f a,> <e a,> <e a,> |
  <d a> d <c' d,> <c d,> <b d,> <b d,> <a d,> <a d,> |
  <g d> <g g,> <f g,> <f g,> <e g,> <e g,> <d g,> <d g,> |
  <c g> c <b' c,> <b c,> <a c,> <a c,> <g c,> <g c,> |
  <f c>\pocoPocoCresc f <f e> <f e> <f d> <f d> <f c> <f c> |
  <f bes,> <f bes,> <fis bes,> <fis bes,> <g bes,> <g bes,> <f bes,> <f bes,> |
  <e c> c <c' bes> <c bes> <c a> <c a> <c g> <c g> |
  <c f,> <c f,> <cis f,> <cis f,> <d f,> <d f,> <e a, g> <e a, g> |
  r4 <f a, f>\mf r4 <f, cis> | r <f d> r <d a> | r4\pocoDim <d bes> r2 |
  <c a>8 r r4 <c e c'>8\arpeggio r8 r4 | <f c a>4\pp r4 a,4.( d8) |
  <c a>2 <cis a>4. <a' a,>8 |
  \tuplet 3/2 4 {
    <d, f>8\mf^\agitato( a) <d f>-. \repeat unfold 3 { {<d f>8( a) <d f>-.}} |
    \omit TupletNumber
    \repeat unfold 4 {<d f>8( a) <d f>-.} |
    \repeat unfold 4 {<d g>( bes) <d g>-.} |
    \repeat unfold 4 {<cis g'>( a) <cis g'>-.} |
    \repeat unfold 4 {<d f>8( a) <d f>-.} |
    \repeat unfold 4 {<d a'>( a) <d a'>-. } |
    <d g>( bes) <d g>-. <d g>\>( bes) <d g>-. \repeat unfold 2 {<d g>( bes) <d g>-.} |
    <d f>\p( a) <d f>-. <d f>( a) <d f>-. \repeat unfold 2 {<d f>( gis,) <d' f>-. } |
    \repeat unfold 4 {<cis e>( a) <cis e>-.} |
    %% 42
    <d fis>\p\pocoPocoCresc( a) <d fis>-. \repeat unfold 3 {<d fis>( a) <d fis>-.} |
    %% 43
    \repeat unfold 4 {<d g>( bes) <d g>-.} |
    %% 44
    \repeat unfold 4 {<e gis>( b) <e gis>-.} |
    %% 45
    \repeat unfold 4 {<e a>( c) <e a>-.}
  }
  \tuplet 3/2 4 {<e a>8^\pocoRit\<( c) <e a> <a c>( e) <a c>} <e a e'>\f r r4 |
  \tuplet 3/2 4 {<g c>8\<( e) <g c> <c e>( g) <c e>-.\!} <a f'> r r4 |
  r4\pp <bes g e c>8\arpeggio r r2 | R1 |
  %% 50
  <f' c a>2\p^\aTempo <a c, a>4. <d, a>8 | <e c g>2.~ <e c g>8 <e c g> |
  <d a f>2  <f a, f>4. <a, f>8 | <bes g d>1 |
  %% 54
  << {\voiceOne a4( c)}
     \new Voice {\voiceTwo f,2} >> \oneVoice <f' a,>4 <g des> |
  %% 55
  << {\voiceOne a4 f}
     \new Voice {\voiceTwo <c a>2} >> \oneVoice <f g e'>4( <f gis d'>) |
  <a c>8( <a f> <d bes> <bes e,> <a f> <f d> <g e> <e c> |
  <f a,>) <c a f>-. <d a f>-. <c a f>-. <a f c>-. r r4 \clef "alto" |
  \override TextSpanner.bound-details.left.text = \pocoPocoMorendo
  \textSpannerDown
  << {\voiceOne f4 e\startTextSpan ees2~ | ees4 d des c}
     \new Voice {\voiceTwo <a f>2\p <a f>~ | <a f>4 <a f>2 <a f>4 } >> \oneVoice |
  %% 60
  \clef "violin" <g' b, g>2~ <g b, g>8 <fis fis,>\<( <g g,> <d' d,>\!) |
  <c a c,>2~ <c a c,>8 <b b,>\>( <c c,> <g' g,>\!\stopTextSpan) | <f c a f>1\p |
  <e c bes e,> | <f c a f> <e c bes e,> |
  <f c a f>4 r4 <f, d bes f>\pp( <g des bes g>) | <a f c>1\fermata \bar "|."
}

\addQuote #"pianoUpMovementII" \pianoUpMovementII

pianoDownMovementII = \new Voice \relative g ' {
  \clef "violin" <a f>4 r r2 | R1 | \clef "bass" r2 f,4-. r | r c' c, r |
  r2 d4 r | r g g, r | f''( e d des c-1 a-4 bes-3 b-3) | c2-1  c, |
  f~ f8 r r4 |
  r4 f'4( << {\voiceOne e d)} \new Voice {\voiceTwo f,2} >> \oneVoice |
  r4 c'4( c,4. cis8 |
  d) r d'4( <<
    {\voiceOne c4 bes8 a)}
    \new Voice {\voiceTwo d,2} >> \oneVoice | r4 g4 g, r |
  %% 15
  << {\voiceOne r4 e''( d des | c a2 b4) | <c a>2 <c a> }
     \new Voice {\voiceTwo f,1 | f2 c4 d | e4.( f8) e4.( f8)} >> \oneVoice |
  %% 18
  <c' a e>2~ <c a e>8 r <gis e>4 | r4 c,( a c) | d2( f4. a8 |
  %% 21
  b,) r b4( g b) | c2( e4. g8) | a,2( f4 a) | bes2 r | r4 e c e |
  %% 26
  f2 r4 <cis cis,> | r <d d,> r <a a,> | r <bes bes,> r <fis fis,> |
  %% 29
  r <g g,> r2 | <c c,>8 r r4 <c bes'>8\arpeggio r r4 | f,2( a4. d8) |
  %% 32
  << {\voiceOne c2 cis} \new Voice {\voiceTwo f,2. e4} >> \oneVoice |
  %% 33
  <d d'>4 r r2 | d2^\marcatoBasso a'4. d8 | d,2 bes'4. d8 |
  %% 36
  d,2 a'4. e'8 | d,2 a'4. d8 | f,2 d'4. f8 | g,2 d'4. g8 |
  %% 40
  a,2 d4. f8 | a,4( e' cis a) | d,2 a'4. d8 | g,4(\( g' g,4.) f8\) |
  %% 44
  e2 b'4. e8 | a,4( a' a,4. g8) | fis8 r r4 <fis' c'>8 r r4 |
  %% 47
  g8 r r4 <g bes d f>8\arpeggio r r4 | <c, c,>8 r r4 r2 | R1 |
  r8 f'-. e-. d-. c-. a-. g-. f-. |
  c-. g'-. a-. bes-. c-. b-. c-. cis-. |
  r8 d-. c-. bes-. a-. f-. e-. d-. |
  g,-. d'-. e-. fis-. g-. f-. e-. d-. |
  c-. f-. g-. a-. c-. d-. e-. c-. |
  f-. e-. d-. c-. bes-. a-. bes-. b-. | c2( <c c,>) | f,2~ f8 r r4 |
  << {\voiceOne f4 e ees2~ | ees4 d des c }
     \new Voice {\voiceTwo \repeat unfold 4 { f,2:8}} >> \oneVoice |
  <f d'>1 | <<
    {\voiceOne c'2. e4 | f s s2 }
    \new Voice {\voiceTwo f,1 | f2\sustainOn( a4. d8\sustainOff)} >> \oneVoice |
  c2\sustainOn( c,\sustainOff) | f2\sustainOn( a4. d8\sustainOff) |
  c2\sustainOn( c,\sustainOff) | f4 r f2\sustainOn( | <a' f, f,>1) \bar "|."
}

%%% ------------

titleMovementIII = #"Finale"

globalMovementIII = {
  \tempo "Allegro." 4=112
  \time 2/4
  \key  a \minor
}

violinMovementIII = \relative a' {
  R2*4 | \repeat unfold 2 {
    a8:16\p b:16 c:16 d:16 | e:16-4 c:16 d:16\f b:16
  }
  a:16\p\cresc b:16 c:16 d:16 | e:16-4 c:16 d:16\f\> b:16 |
  c:16 a:16 b:16 gis:16 | a8\p r b4\f\downbow |
  c8:16\p\downbow d:16 e:16 f:16 | g:16 e:16 f:16\f d:16 |
  c8:16\p d:16 e:16 f:16 | g:16 e:16 f:16\f d:16 |
  c8:16\p\< d:16 e:16 f:16 | g:16 e:16 f:16\f\> d:16 |
  e:16 c:16 d:16 b:16\! | c8 r b4\f\upbow | a4\p( e') |
  \acciaccatura e8 d-- c-- d4 | a2 | c4( d) | e\downbow( a) |
  \acciaccatura a8 g--\downbow f-- g4\upbow | e2 | g4 a | b2 |
  g4 a | b2 | e,8:16\f\downbow fis: g: a: | b: g: a: fis: |
  g: e: fis: dis: | e8 r r4 | r <d d,>\f\upbow |
  \repeat unfold 3 {
    <d, g,>8:16 <d a>:16 <d bes>:16 <d c>:16 |
    <d-4 d-0>:16 <d bes>:16 <d c>:16\f <d a>:16 |
  }
  <d bes>:\> <d g,>: <d a>: fis:\! | g8 r b4\f |
  \repeat unfold 2 {
    e8:16\p f:16 gis:16 a:16 | b:16 gis:16  a:16\f f:16
  }
  gis:16 e:16 f:16->\f\dim d:16 | e:-4 c: d:-> b: | c: a: b: gis: |
  a:-4 f: gis:-> e: | \repeat percent 2 {f: dis: f: e:} |
  f8\!( e) gis-- a--^\rit | b--( c-- d-- e--) | f8\pDolce e d4~ |
  d8 e( f d) | e4( g~ | g) e8\<( c'-4\!) |
  b---4 a-- \once \override Hairpin.to-barline = ##f g4~\> |
  g\! e8\<( c'-4\!) |
  b8-4 a \once \override Hairpin.to-barline = ##f g4~\> |
  g\! a\f\upbow\>( | f g\! | e) a4->\f\>( | f g\! |
  %% 68
  e) f\upbow\f\dim^\rit( | d e) | c8( d16 c) b8--( a--) | d4 g,~ |
  %% 72
  g e'\upbow | f8\mf\downbow e d4~ | d8 e( f d) |
  %% 75
  \once \override Hairpin.to-barline = ##f a4\>( b | d4.\!) c8\upbow |
  %% 77
  bes'8\f a g4~ | g8 a( bes g) |
  %% 79
  \once \override Hairpin.to-barline = ##f d4\>( e | f\!) r8 f,\upbow |
  %% 81
  ees'8->\f d-> c4->~ | c8 d\p( ees c | a) bes( c a | f) g( a-4 f |
  %% 85
  c) d( ees c | a) bes( c a | gis) a\cresc( c) e( |
  %% 88
  f--\upbow) a--( c-- ees--) | e8\f-> d-> c4~-> | c8 d-.\p e-.-4 c-. |
  %% 91
  a-. b-. c-. a-. | e-. gis-. a-.-4 e-. | c-. d-. e-. c-. |
  %% 94
  a-. b-. c-. a-. | gis--\< a-- c-- e-- | gis-- a-- c-- e-- |
  %% 97
  f\f e d4~ | d8 e( f d) | b( c) d b | gis'( a b gis) | f\f e d4~ |
  %% 102
  d8 e( f) d | b( c) d b | gis'( a b gis) | f\f e d4~ | d8 e-- f-- d-- |
  b-- c-- d-- b-- | gis-- a-- b-- gis-- | d--\dim e-- f-- d-- |
  b-- c-- d---4 b-- | gis-- a-- b-- c-- | dis-- e-- fis-- gis-- |
  %% 113
  \repeat unfold 2 {
    <a e'>8:16\p <b e>:16 <c e>:16 <d e>:16 |
    <e-4 e-0>:16 <c e>:16 <d e>:16\f <b e>:16
  }
  <a e'>8:16\p <b e>:16 <c e>:16 <d e>:16 |
  <e-4 e-0>:16 c:16 d:16\f b:16 |
  \once \override Hairpin.to-barline = ##f c:\> a: b: gis: |
  a8\! r c,4->\f |
  \repeat unfold 2 {
    f8:16\p g: a: bes: | c: a: bes:\f g:
  }
  f8:16\< g: a: bes:\! | c: a: bes:\f g: |
  \once \override Hairpin.to-barline = ##f a:-4\> f: g: e: |
  f8\! r c'4\upbow | f8-- e-- dis4~ | dis8 e( f dis) |
  e4( b'~^\tenutoTxt | b4) e,\upbow | f8-- e-- dis4~ |
  dis8 e( f dis) | e4( b'~^\tenutoTxt | b8) e,( b cis) |
  d8--_\dolce cis-- b4~ | b8 cis( d b) | cis4( e4-4~ |
  e4) cis8( a') | gis fis e4~ | e cis8( a') | gis-- fis-- e4~ |
  e a\f\upbow | f g | e8 r f4\f | d e-4 | c8 r a'4\f\upbow |
  c,8^\rit( \tuplet 3/2 {d16 c b)} c8-- d-- | e2\fermata |
  \cadenzaOn e,16^\cadenzaAdLib ( [
    \once \fingerNumberSpanner "4" e')\startTextSpan e( e,)] f([ e') e( f,)] \bar ""
  fis([ e') e( fis,)] gis([ e') e\stopTextSpan( gis,)] \bar ""
  a([ e'-0) e( a,)] ais([ e') e( ais,)] b([ e) e( b)] c([ e) e( c)] \bar ""
  a\ff([ e') e( a,)] bes([ e) e( bes)] \bar ""
  gis([ e'-4) e( gis,)] a-0([ e'-4) e( a,)] \bar ""
  fis([ e'-4) e( fis,)] gis([ e') e( gis,)] \bar ""
  e4~\espressivo( e16[ a) c-- a--] \bar ""
  d,4~\espressivo( d16[ a') c-- a--] \bar ""
  c,4~\espressivo( c16[ e) a-- e--] \bar ""
  b4~\espressivo b16[ d---> b---> ^\rit e--->] \bar "|" \cadenzaOff
\tempo \markup {\italic "Più allegro"}
a,16\p
\once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
\once \override TextSpanner.bound-details.left.text = \markup {\italic "poco a poco cresc."}
  \once\textSpannerDown
a\startTextSpan a a e'\fp e e e |
d8:16 c:16 d4:16 | a4:16-. f':16-.\fp | e8:16-. d:16-. e4:16-. |
a,4:16-. gis':16-.\fp | fis8:16-. e:16-. fis4:16-. |
a,:16-. a':16-.\fp | gis8:16-. fis:16-. gis4:16-. |
a:16-. e':16-.\fp | d8:16-. c:16-. d4:16-. | a4:16 f':16\fp |
e8:16 d:16 e4:16 | a,4:16 c':16\fp | b8:16 a:16 gis4:16 |
a8:16 e:16 c'4:16\fp | b8:16 a:16 gis4:16  |
a8:16 e:16 c'4:16\fp | b8:16 a:16 gis4:16\stopTextSpan |
a8:16\ff gis: a: f: | a: e: a: d,: | a': b,: d: f: | e: d: c: b: |
a:-0 f: a:-4 e: | a:-4 d,: a':-4 c,: | a': b,: d: f: | e: d: c: b: |
a4 \repeat unfold 2 { <e' b' e> <a c e> } r4 |
<a a'> r8.a,16-> | a2~ | a8 r r4 \bar "|."
}

violinMovementIIIViolin = \new Voice {\violinMovementIII}

violinMovementIIIPiano = \new Voice {\violinMovementIII}

pianoUpMovementIII = \new Voice \relative e' {
  \clef "alto" << R2 {s8\p s s s} >> |
  r4 \once \override Hairpin.to-barline = ##f <e b gis>\f\>( |
  <e c a>8\p) r r4 |
  r \once \override Hairpin.to-barline = ##f <e b gis>\f\> | <c a>2~\p |
  <c a>8 r <e b gis>4->\f | <c a>2~\p | <c a>8 r <e b gis>4\f |
  << {<c a>2~\p} {s8 s s\cresc s}>> | <c a>8 r r <d b> |
  <c a>\! r\> <b gis> r\! | <c a> r <d b>4\f |
  << {<e c>2~} {s8 s\p} >> | <e c>8 r <g d b>4\f | <e c>2~\p |
  <e c>8 r  <g d b>4\f | <e c>4.\p\cresc <f d>8 | <g e> r r <f d> |
  %% 19
  <e c> r\! <d b>\> r | <e c> r <e d gis,>4\f | r8\p <c a> r <e a,> |
  %% 22
  r <d a> r <f a,> | r <e a,> r <e c a> | r <e c a> r <d c a> |
  r <e c g>4 <e c g>8 | r <c d>4 <d b>8 | r <e c g> r <e c g> |
  %% 28
  <e c g>4 r | e8\mf\< <fis dis> <g e> <a fis>\! | <g e> r r4 |
  %% 31
  e8\< <fis dis> <g e> <a fis>\! | <g e> r8 r4 | R2 | \clef "violin" r4 b~\f |
  b8\> g a fis\! | e r <d' fis, d>4\f | <d bes g>2~\p |
  <d bes g>8 r <d a fis>4\f | <d bes g>2~\p |
  <d bes g>8 r <d a fis>4\f | <d bes g>\p g8( a |
  bes4) \acciaccatura {a16 bes} a8 g |
  << {\voiceOne d2(} \new Voice {\voiceTwo r4 c} >> \oneVoice |
  <d bes>8) r <b a d,>4\f | <b gis e>2~\pp |
  <b gis e>8 r \once \override Hairpin.to-barline = ##f <b a f>4\f\> |
  <b gis e>2~\pp |
  <b gis e>8 r \once \override Hairpin.to-barline = ##f <b a f>4\f\>( |
  <b gis e>8\p) r r4 | R2*7 | d8-4\p( c b a | b c d b) | c-1( d e c |
  e f g e) | f( d e f e d c e) | f( d e f | e d-1) cis-3( e | d c b d |
  c b) cis( e | d c b d | c b) a( c | b a gis-3 b) | a4 g_\rit |
  fis << {\voiceOne g~ g8} \new Voice {\voiceTwo d8( c d)} >> \oneVoice r8 r4 |
  <f d a>2~\p | <f d a>~ | <f d a>4 <f d b>( |
  <e c>8\<)( <f d> <g e>\!) r | <bes g d>2~->\p | <bes g d>~ |
  <bes g d>4 <bes g e>( | <a f>8\<)( <bes g> <a c>\!) r |
  r4 <ees c a>8\mf\> <ees c a>\! | <ees c a>2~-> | <ees c a>~ |
  <ees c a>~ | <ees c a>4 <ees c a> |
  <ees c a>\cresc \repeat unfold 4 {<ees c a>} <ees c a>\! |
  r4 <e c a>8\mf\> <e c a> | <e c a>2~->\p | <e c a>4 <e c a>~ |
  <e c a> <e c a> | \repeat percent 4 {<e c a> <e c a>} |
  \repeat unfold 3 {
    r4 <f b, a>8\mf <f b, a> | <f b, a>4 r | <e b gis> r | R2 } |
  R2*4 |
  %% 113
  \repeat unfold 2 {
    << {\voiceOne e2~ | e8}
       \new Voice {\voiceTwo r4\p a,8 b | c} >> \oneVoice r8 <e b gis>4\f |
  }
  e4 a8 b | c4 \acciaccatura {b16 c} b8-> a | e r <e b gis> r |
  <e c a> r <c bes g>4\f |
  \repeat unfold 2 {<c a>2~\p | <c a>8 r <e c g>4\f} |
  <c a>4\p f8 g | a4 \acciaccatura {g16 a} g8->( f) |
  c r <e c g> r | <f a,>4 r |
  \repeat unfold 2 {
    r4 <c' dis,>8\> <b dis,>\! | <a dis,> r r4 | r8 b\p( e, fis | gis) r r4
  }
  R2 | d8( cis b4) | R2 | cis4( e) | r4 
  << {\voiceOne cis8( a' | gis8 fis e)}
     \new Voice {\voiceTwo s4 | cis4~ cis8} >> \oneVoice r8 |
  r4 << {\voiceOne cis8( a' gis a a4->) }
        \new Voice {\voiceTwo cis,4 cis8 r c8\mf} >> \oneVoice |
  <f c>4->_\pocoRit <g c,>-> | <e c>8-> r <a f>4-> |
  <a d,>-> <a e>-> | <a c,>8-> r r4 | <a c, a>4.\f <a d, b>8 |
  <gis e b>2\fermata | \cadenzaOn s4*22 \bar "|" \cadenzaOff
  %% 151
  r4 <e c>\p\pocoCresc | <d b>8-. <c a>-. <d b>4-> | r4 <f d> |
  <e c>8-. <d b>-. <e c>4-> | r4 <gis e>-. |
  <fis d>8-. <e c>-. <fis d>4-> | r4 <a fis> |
  %% 158
  <gis e>8 <fis d> <gis e>4->\! | r4 <c e,> | <b d,>8 <a c,> <b d,>4-> |
  r4 <d f,> | <c e,>8 <b d,> <c e,>4-> | <a e c>8 r <c a f c>\f r |
  \repeat unfold 2 {
    <a f b,> r <gis e b> r | <a e c> r <a f c>\f r
  }
  <a f b,> r <gis e b> r | r\f <a c> \repeat unfold 3 { r <c a f> } |
  r <d a f> r4 | r8 <b gis> r4 | \repeat unfold 5 { r8 <a f c> } r4 |
  r8 <gis e b> r4 | \repeat percent 2 { <a e c>4 <gis e b> } |
  <a e c>4 r | <a c e a>4 r8. a,16 | a2~ | a8 r r4 \bar "|."
}

pianoDownMovementIII = \new Voice \relative a, {
  a8-. e'-. a,-. e'-. | a,-. e'-. e,4( | a8-.) e'-. a,-. e'-. |
  %% 4
  a,-. e'-. e,4-.( | a8-.) e'-. a,-. e'-. | a,-. e'-. e,4-> |
  %% 7
  a8-. e'-. a,-. e'-. | a, e' e,4->( | a8) e'-. e,-. e'-. |
  %% 10
  a,-. e'-. d-.-> f-. | r e-. e,-. e'-. | a,-. r <g g'>4 |
  %% 13
  c8 g'-. c,-. g'-. | c,-. g'-. g,4( | c8) g'-. c,-. g'-. |
  %% 16
  c,-. g'-. g,4 | c8 g' g, g' | c, g' f-> aes | r8 g g, g' | c, r e4 |
  a,8 r c r | f r d r | c r b r | a r fis r | g2 | g' | c,4 c, |
  c' r | \repeat unfold 2 { <b b,>2 | <c c,>8 r r4} | R2 | r4 b'~ |
  b8 f a fis | e r <d d,>4 |
  \repeat unfold 2 {g,8 d' g, d' | g, d' d, d'} | g, d' g, d' |
  g, d' c-> ees | r d d, d' | g, r <f' f,>4 | <e b e,>2~ |
  <e b e,>4 <d d,> | <e b e,>2~ | <e b e,>8 r <d d,>4( | <e e,>8) r r4 |
  R2*7 | \clef "alto" g4( g') | r g,( | c g') | r c,( g g') |
  c,( g') | g, g'( | c,8) r a4( | d8) r g,4( | c8) r a4( |
  d8) r g,4( | c8) r f,4( | b8) r  e,4( | a b8 c) |
  d( c << {\voiceOne b8 a} \new Voice {\voiceTwo g4} >> \oneVoice |
  %% 72
  <b g>8) r r4 \clef "bass" | <d, d,>2->~ | <d d,>~ | <d d,>4 g,( | <c c,>4) r |
  %% 77
  <g g'>2->~ | <g g'> | <g g'>4 c( | <f f,>) r | r <f f,>8 <f f,> |
  %% 82
  \repeat unfold 3 {<f f,>2~} | <f f,>4 <f f,> |
  \repeat percent 3 {<f f,> <f f,>} | r4 <e e,>8 <e e,> | <e e,>2~ |
  <e e,>4 <e e,>~ | <e e,> <e e,> | \repeat percent 4 {<e e,> <e e,>} |
  \repeat unfold 3 {r4 <d d,>8 <d d,> | <d d,>4 r | <e e,> r | R2} | R2*4
  %% 113
  a,8-. e'-. a,-. e'-. | a,-. e'-. e,-. e'-. | a, e' a, e' |
  a, e' e, e' | a, e' a, e' | a, e' d-> f | r e e, e' | a, r c4 |
  \repeat unfold 2 {f,8 c' f, c' | f, c' c,4} | f8 c' f, c' |
  f, c' bes-> des | r c c, c' | f,4 r |
  \repeat unfold 2 { r a'8 g | f r r4 | r8 b( e, fis | gis) r r4 } |
  <b, e,>2~^\pp | <b e,> | <e a,>~ | <e a,> | <f dis>4 <e a,>~ |
  <e a,>2 | <fis d>4 <e a,>~ | <e a,>8 r f4 | d e | c8 r d4 | b c |
  a8 r r4 | <f' f,>2 | <e e,>2_\fermata
  \cadenzaOn s4*22 \bar "|" \cadenzaOff
  <a, a,>4 r | \repeat unfold 4 { r a( | <a a,>) r } | r4 a'( |
  <a a,>) r | r a( | <a a,>8) r f r |
  \repeat unfold 2 { d8 r e r | a, r f' r } | d r e r | f' r e r |
  d r c r | b r r4 | e8 r r4 | f,8 r e r | d r c r | b r r4 | e8 r r4 |
  \repeat percent 2 { <a, a,>4 e } | <a a,> r | <c' e> r8. <a, a,>16 |
  <a a,>2~ | <a a,>8 r r4 \bar "|."
}

%%% ------------

\header {
  arranger = ##f
  composer = "Leo Portnoff"
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 18"
  source = "http://imslp.org/"
  title = "Violin-Concertino in A Minor"
}

\include "paper.ily"

fileBaseName = "Leo_Portnoff-opus_18"

define(`PianoMovement', `\score {
    <<
      \new Staff \with {
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
      } { \globalMovement$1 \violinMovement$1Piano }
      \new PianoStaff <<
        \new Staff = "up" \with {
          \accidentalStyle modern-cautionary
        } {
          \globalMovement$1 \pianoUpMovement$1
        }
        \new Staff = "down" \with {
          \accidentalStyle modern-cautionary
        } {
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
    \new Staff \with {
      \accidentalStyle modern-cautionary
    } {
      \compressFullBarRests
      \globalMovement$1 \violinMovement$1Violin
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
          \globalMovementIII \violinMovementIIIPiano
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
