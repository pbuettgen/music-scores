%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2019 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\version "2.18.2"

\include "lily-snippets.ily"

brillante = \markup {\italic #"brillante."}
conMotoBrillante = \markup \italic #"con moto brillante."
fEspressivo = \markup\whiteout\pad-around #.5 {\dynamic "f" \italic "espressivo."}
ffDeciso = \markup { \dynamic #"ff" \italic #"deciso."}
ffGrandioso = \markup {\dynamic "ff" \italic "grandioso."}
ffWhiteOutTxt = \markup \whiteout \pad-around #.5 \dynamic #"ff"
ffWhiteOut = #(make-dynamic-script ffWhiteOutTxt)
fWhiteOutTxt = \markup {\whiteout \pad-around #.5 \dynamic "f"}
fWhiteOut = #(make-dynamic-script fWhiteOutTxt)
grazioso = \markup {\italic #"grazioso."}
hairpinMolto = \hairpinWithCenteredText \markup\smaller\italic #"molto."
legato = \markup {\italic #"legato."}
leggiero = \markup {\italic #"leggiero."}
mfWhiteOutTxt = \markup \whiteout \pad-around #.5 \dynamic "mf"
mfWhiteOut = #(make-dynamic-script mfWhiteOutTxt)
morendo = \markup \italic #"morendo."
nullTxt = \markup \null
nullDynamic = #(make-dynamic-script nullTxt)
pDolceCantabile = \markup {\dynamic "p" \italic "dolce cantabile."}
piuMoto = \markup {\italic #"più moto."}
ppWhiteOutTxt = \markup {\whiteout \pad-around #.5 \dynamic "pp"}
ppWhiteOut = #(make-dynamic-script ppWhiteOutTxt)
pWhiteOutTxt = \markup \whiteout \pad-around #.5 \dynamic "p"
pWhiteOut = #(make-dynamic-script pWhiteOutTxt)
risoluto = \markup {\italic #"risoluto."}
solo = \markup {\italic \caps "Solo."}
sostenuto = \markup {\italic #"sostenuto." }
tenutoTxt = \markup { \italic #"tenuto." }
tranquillo = \markup {\italic #"tranquillo."}
tranquilloEtDolce = \markup \italic #"tranquillo et dolce."
tutti = \markup {\italic \caps "Tutti."}

globalMovementI = {
  \time 4/4
  \tempo "Allegro risoluto." 4=117
  \key g \minor
}

violinMovementI = \relative g {
  \cueDuring #"pianoUp" #DOWN { \partial 4 r4^\tutti }
  \cueDuring #"pianoUp" #UP   { R1*4 }
  \cueDuring #"pianoUp" #DOWN { R1*7 }
  %% 12
  g4.\mf^\solo( a8) bes( d g a) |
  bes4( d~ d8.\< d16-.) ees( d cis d) |
  bes'4.\f( a8 g) d( f-3 ees) | d2-1\>( c4-2\!) c8.\<( bes16\!) |
  a4.\>( g8 fis\!) ees'4-4\<( d8\!) |
  %% 17
  c8\>( b c bes\!) a4 a8.\upbow\<( fis'16-3) |
  %% 18
  fis4.\f( ees8 \tuplet 3/2 4 { d8) cis-2( d ees d a) } |
  c2\>( bes4\!) r | g,4.\mf( a8) bes( d g-1 a) |
  %% 21
  bes4_(\( d4-3~\flageolet\< d8.) d16-.-1\) ees16( d cis-1 d-1\!) |
  %% 22
  d'4._\markup {\dynamic "f" \italic "grandioso."} c8( ees-4) d-4 c( bes) |
  a2-1\>( g4-2\!) g_\markup {\dynamic "p" \italic "tranquillo et espressivo."} |
  g8.( a,16) a4~ a8 a( c\< ees-2\!) |
  g4\upbow f2\downbow f,4\upbow( |
  %% 26
  ees'8-.) r ees4~ ees8\> ees( d cis) | d2.\p g4-4\< |
  g8.\!( a,16) a4~ a8 a\upbow\<( c ees-2\!) |
  %% 29
  g8--\downbow_\markup {\dynamic "ff" \italic "largamente."} f-- d'-- bes-- f-- d-- bes-- d-- |
  %% 30
  d-- d,_(\( d'4\flageolet) d8\)
  d,_(\( \once \override Hairpin.to-barline = ##f d'4\<) |
         %% 31
         d8\!\) d,_(\( bes'2-3^\rit\>) a4-2\!\) |
  %% 32
  \tuplet 3/2 4 {
    g8-.^>\mf^\aTempo g,^\markup {\italic "deciso."} a
    \acciaccatura c8 bes-. a-. g-.
    <g d' bes'>-.^> g a-. \acciaccatura c8 bes-. a-. g-. |
    <g d' d'>-.^> g-. a-.
    bes-.^"sul G." c-._1 d-._2
    e-. fis-. g-.\flageolet\( g,4\<_( <d' bes' g'>8\!)\) |
    <d a' fis'>4->\downbow <d a'>8\<( <ees a>) <d a'>-. <d a' g'>-.\!
    <d a' fis'>4\downbow <d a'>8\<( <ees a>) <d a'>-. <d a' g'>-.\! |
    <d a' fis'>4-> <d a'>8( <ees a>)\cresc <d a'> <e a>-.
    <d a'>-. <f a> <d a'>-. <fis a>-. <d a'>-. <d d'>\! |

    <g g,>^>\mf g, a \acciaccatura c8 bes-. a-. g-.
    <g d' bes'>-.^> g-. a-. \acciaccatura d8 bes-. a-. g-. |
    <g d' d'>-.^> g-. a-.
    bes-.\<^"sul G." c-._1 d-._2
    e-. fis-. g-.\!\flageolet\( g,4_( <d' bes' g'>8)\) |
    <a' f'>4->\f <a f>8( <a e>) <a f>-. <a g>-.
    <a f>4-> <a f'>8( <a e'>) <a f'>-. <a g'> |
    <a f'>4 f'8( ees'-4) c-.-3 a-.-1 f-.-1 ees-.\> c-. a-. f-. ees\! |
  }
  %% 40
  d8_\markup {\dynamic "p" \italic "dolce"}( fis16 a cis d fis a-1)
  ees'16( d c a fis-1 ees d cis) |
  c( bes a bes d' c bes a) c( bes a bes g-2 d bes g) |
  b,8( d16 f aes b d f) aes( g fis g d'-4 b g fis-3) |
  f\cresc( ees d ees d' c b c) c( aes-3 g ees d c g ees) |
  \tuplet 3/2 4 {
    aes,16->\f( ees' c') c( ees, aes, aes\espressivo ees' c') c( ees, aes,
    g\espressivo ees' c') c( ees, g, g\espressivo ees' c') c( ees, g, |
  }
  g32 ees' c' a') a\cresc( c, ees, g, g ees' c' a') a( c, ees, g, g e'-1 cis'-3 g'-2)
  g( cis, e, g, g e' cis' g') g( cis, e, g, |
  <d' d' fis>8\ff)->^\markup{\italic "energico."} <a' e'>16-.^"Sp."\f <a e'>-.
  <fis d'>8-. <a e'>-. <d fis>-> <a e'>16-.->-"Fr." <a e'>-.-> <fis d'>8 <a e'> |
  <d fis>-> d,-. <d' fis>\cresc d, <fis' a-1>8-> d,-. <fis' a>8-> d,-. |
  d''8\ff d4-- a8( d) d4-- a,8\open( |
  d-3)\dim a( d) a-4( d-4_\rit\flageolet) d4--\flageolet d8-3\p |
  %% 50
  \tempo "Meno mosso."
  d2_\markup {\dynamic "p" \italic "dolce et tranq."} g4( f) |
  d4.( bes8) f4( fis) | g4.( a8\<) bes4( ees-2) | d4.-1\>( f8-3\!) f2 |
  %% 54
  r8 c4-2->\downbow\mf( d8\<) ees-. d-.\!
  \once \override Hairpin.to-barline = ##f  c4~\> |
  %% 55
  c8\! c4-> \<( d8\!) ees--( d-- c-- bes--) |
  %% 56
  a8.\mf( g'16) g8--\< a,( a'\flageolet\!) g---4 f-- ees-- |
  %% 57
  ees8( d4 bes8-1) f'4.-3\>( ees8\!) |
  %% 58
  d2_\markup {\dynamic "pp" \italic "dolciss."} g4( f) |
  %% 59
  d4.-1( bes8-1) f4( fis) | g4.( a8) bes4( ees-2) | d4.\<( f8-3) f2\! |
  %% 62
  r4 fis4---1\downbow_\markup{\dynamic "mf" \italic "epress."} eis-- fis-- |
  a4.\<( g8) g2\! |
  %% 64
  r4 a8--\upbow\f a( gis) gis( a) a_(\( | c4._3\<) bes8\) bes2\! |
  %% 66
  bes2-2_\ffGrandioso a4-1( g-2) |
  %% 67
  g-- f-- d-- bes8( g'-4) | g4. f8( a-3\flageolet) g---4 f( ees) |
  d2. d8.-1\<( bes'16\!) |
  %% 70
  bes4._\markup{\dynamic "ff" \italic "largamente."} a8( c) bes-- a-- g---2 |
  g-- f( d'-4) bes-- \tuplet 3/2 4 {f8---1( d-- bes--) f--\( d-- f\)( } |
  a8-2)^\rit g-1 f4-4~\dim f8 ees--\! g,( a) |
  %% 73
  \tempo "Tempo 1°" bes8--_\markup {\dynamic "p" \italic "leggiero."} c16-.( d-. ees-. f-. g-. a-.) bes8-- c16-.( d-. ees-. f-. g-. a-.) |
  %% 74
  bes-. f( d'-4) c-. bes( a) g-.-2 f-. g( f) ees-. d-. ees( d) c-. bes-. |
  %% 75
  << {\voiceOne a8 a a a16 f' f8-. f16( ges) ges( f) f( a) }
     \new Voice {\voiceTwo s8 f,16( ges) ges( f) f( a) a8-. a a a} >> \oneVoice |
  %% 76
  << {\voiceOne s4 a4}
     \new Voice {\voiceTwo <a a'>8 <a e>16( <a f> ges f e f)} >> \oneVoice
  a16-.\>\downbow g-. f-. e-. f ees d-. c-. |
  %% 77
  bes8--\p c16-.( d-. ees-. f-. g-. a-.) bes8-- c16-.( d-. ees-. f-. g-. a-.) |
  %% 78
  bes16-. f( d'-4) c-. bes( a) g-.-2 f-. g( f) ees-. d-. ees( d) c-. bes-. |
  %% 79
  << {\voiceOne a8-. a\cresc a a16 f' f8-. f16( ges) ges( f) f( a) }
     \new Voice {\voiceTwo s8 f,16( ges) ges( f) f( a) a8-. a a a} >> \oneVoice |
%%%  a8-. <a f>16\cresc( <a ges>) <a ges>( <a f>) <a f>( <a f'>)
%%%  <a f'>8-. <a f'>16( <a ges'>) <a ges'>( <a f'>) <a f'>( <a a'>) |
  %% 80
  << \new Voice {\voiceOne s4 a4}
     {\voiceTwo <a a'>8^>\f <a ees>16( <a f> ges f ees f) } >> \oneVoice
  ees'16-.\> d-. c-. bes-. a-. g-. f-. ees-. |
  %% 81
  d8\p d16-. ees-. f\cresc( g) f-. ees-. d d c c b-. b-. aes-. aes-. |
  %% 82
  g8\ff( <d' b'>^>) g,( <d' d'>^>) g,( <d' b' g'>^>) \tuplet 3/2 {g,8-. a-. b-.} |
  c16( ees) ees( g) g( c) c( ees) ees( d) c-. g-. ees-. d-. c-. aes-. |
  %% 84
  g8 <g d' b'>\downbow g8 <g d' d'>\downbow g <g d' b' g'>\downbow
  \once \tupletDown \tuplet 3/2 4 { g8\upbow a b } |
  %% 85
  c16( ees) ees( g) g( c) c( ees) ees( d) c g ees d c bes |
  %% 86
  a8\upbow <a f' c'>\downbow a\upbow <a f' c'>\downbow a8\upbow <f' c' a'>\downbow
  g'16( f) ees c-. |
  %% 87
  bes( des) des( f) f( bes) bes( f) f\dim( des) des( bes) bes( des) des( f) |
  %% 88 -- 90
  << {\voiceOne ges2\p ges-> | ges4-> f-> e-> f-> | ges-> f-> e2-> }
     \new Voice {
       \voiceTwo \repeat unfold 6 {
         bes16( des bes des bes des bes des)
       }
     } >> \oneVoice |
  %% 91
  <f bes, d,>8->\f\downbow d16-. d-. d( bes) f-. d-. f-. bes-. d-. f-. bes-. f-. d-. bes-. |
  %% 92
  <g' bes, ees,>8-> ees16-. ees-. ees( bes) g-. ees-. g-. bes-. ees-. g-. bes-. g-. es-. bes-. |
  %% 93
  <cis e,>16( <cis g>) <cis g>\cresc( <cis e>) <cis e>( <cis g>) <cis g>( <cis e,>)
  <cis e,>( <cis g>) <cis g>( <cis e>) <cis e>( <cis g>) <cis g>( <cis e,>) |
  %% 94
  <bes' cis, e, g,>\ff bes( g) g( e\open) e( cis) cis( e-4) e( cis) cis( bes) bes g g( |
  %% 95
  bes-4) bes( g) g( e) e\>( g) g( bes) bes( g) g( e) e( g g-.) |
  f8--\p g16-.( a-. bes c d-.-1 ees) f8-. g16( a-. bes-.\< c-.-1 d-. ees-.) |
  f\mf f-. d-.-4 d-. bes-. bes-. f-. f-. d'-.\< d-. bes-. bes-. f-. f-. d-. d-. |
  d,16\f f-. bes d f bes f-. d-. bes f-. d-. f bes\> d-. f-. d-. |
  c2~\trill\downbow\p\cresc c\trill\upbow |
  \repeat unfold 2 f2\trill |
  \tempo "Grandioso."
  bes,4\f^\tutti r r2
  \cueDuring #"pianoUp" #UP   { R1*14 }
  \cueDuring #"pianoUp" #DOWN { R1*4 \bar "||" }
}

pianoUpMovementI = \relative d' {
  \partial 4 d8.\f d16 | g4.-> d8-. g-. a-. bes-. c-. |
  %% 2
  d8.-- <g g,>16-. <g g,>2-> d8.--\< d16-. |
  %% 3
  <d bes'>4.->\f <a' ees c>8-. <g d bes>-. d-. <<
    \new Voice {\voiceOne f8( ees)}
    {\voiceTwo <bes g>4} >> \oneVoice |
  %% 4
  <d bes g>2\>( <c bes g>8\!) r8 ees,8.\<( d16) |
  %% 5
  c8.\f( fis16) fis2-> ees8.( d16) | c8.( a'16) a2-> ees8.( d16) |
  c2. <g' cis, a>4-. <fis d a>2. a,8.-.\f a16-. | d4-. r r2 |
  %% 9 -- 12
  <<
    \repeat unfold 4 {
      r8 <g d bes>8-. <g d bes>4:8-. <g d bes>2:8-.
    }
    {
      s8\f s2 s4.\> | s8\mfWhiteOut\> s8*7 | s8\pWhiteOut
    }
  >>
  %% 13 -- 14
  \repeat unfold 2 {r8 \repeat unfold 3 <g d bes>8-.} |
  %% 15
  r8 \repeat unfold 3 <g ees c>8 <g ees c>4-- r |
  %% 16
  r8 <fis ees c>-.\< <fis ees c>-. <g ees c>-.\! <a ees c>4 r |
  %% 17
  r8 <fis ees c>-. <fis ees c>-.\< <g ees c>-. <a ees c>4-. <a fis c>-- |
  %% 18
  r8\f \repeat unfold 3 <a fis c>8-. \repeat unfold 2 {r <c fis, d>-.} |
  %% 19
  r8\> \repeat unfold 3 <c g d>8-. << {<bes g d>4 r} {s4 s8\!} >> |
  %% 20
  r8\pWhiteOut \repeat unfold 3 <g d bes>8-. <g d bes>2:8 |
  %% 21
  r8 \repeat unfold 3 <g d bes>8-. r8\< <bes g> <d bes>-. <c a>-.\! |
  %% 22
  <bes g>4. <c g>8-. \voiceOne <ees bes>-_ <d a>-_ <c g>-_ <bes f>-_ \oneVoice |
  %% 23
  r8 \voiceOne << \repeat unfold 3 {<a ees>8-.} {s4 s8\>} >>
  <g ees>4 \oneVoice <g c, bes>\p |
  %% 24
  r8^\tranquillo <g c, a>-. <f c a>8.-- <f c a>16-. <a c, a>2 |
  %% 25
  r8 <g d bes>-. <f d bes>8.-- <f d bes>16-. <bes d, bes>2-- |
  %% 26
  r8 <a ees c>8 <g ees bes> <f ees a,> <a ees c>2-- |
  %% 27
  r8 <bes d, bes>-. <g d bes>8.-> <f d bes>16 <f d bes>4 r |
  %% 28
  r8 <g c, a>-. <f c a>8.-- <f c a>16-. <a c, a>2--\< |
  %% 29
  r8\mfWhiteOut \repeat unfold 3 <bes f d>8-. r8 <bes f d>-.\< r8 <d bes d,>-.\! |
  %% 30
  <a d,>4.--_\markup {\dynamic "f" \italic "sostenuto."}
  <bes d,>8-. <c d,>-. <bes d,>-. <a d,>-. <g d>-. |
  %% 31
  <fis d>4 r^\rit r8 d-.\>
  << {\voiceOne fis8( d)} \new Voice {\voiceTwo c4} >> \oneVoice |
  %% 32
  << { \repeat unfold 2 {<g' d bes>4-. r} } s4^\aTempo\mfWhiteOut >>
  %% 33
  <g d bes>4-. r r <g d bes>-. |
  %% 34
  \repeat unfold 2 { <fis d c>-. r } |
  %% 35
  <fis d c>4-. r <eis d c>-. <fis d c>-. |
  %% 36
  \repeat unfold 2 { <g d bes>4-. r } |
  %% 37
  <g d bes>4-. r r  <g d>4-. |
  %% 38
  \repeat unfold 2 { <f ees c>4-. r } |
  %% 39
  <a ees c>4 r <a ees c>-.\> <a ees c>-.\! |
  %% 40
  << \repeat unfold 2 <a d, c>2 s2_\legato >> |
  %% 41
  <bes d, bes>2 <bes g d> |
  %% 42
  <b aes>4( d,) <g d'>( d) |
  %% 43
  <g c>\cresc( ees) <g c>( c,) |
  %% 44
  aes'2->\mf g8-. f-. ees4-> |
  %% 45
  <a g ees>2-> <a g e>2-> |
  %% 46
  <a fis d>4\f r <d a fis>-. r |
  %% 47
  <fis d a>2-. <a fis d>-. |
  %% 48
  <d a fis>4 r8 a,8-. <d a fis>4-> r8 a, |
  %% 49
  <d a fis>4-. r4 r2^\rit |
  %% 50
  r8\ppWhiteOut <d'' bes>-. <bes f>-. <f d>-. <d bes>2-- |
  %% 51
  r8 <d bes>-. <f d>-. <bes f>-. <d bes>2 |
  %% 52
  r8 <ees bes>-. <bes g>-. <g ees>-.
  << {\voiceOne ees4( bes) }
     \new Voice {\voiceTwo g2} >> \oneVoice |
  %% 53
  r8 <d' bes>8-.\< <f d>-. <bes f>-. <d bes>-.\> <bes f>-. <f d>-. <d bes>-.\! |
  %% 54
  <c bes g>4.->\mf\< <bes g>8-. <bes g>-.\>( <bes g>-.) <bes g>4\! |
  %% 55
  <a fis>4.->\< <a fis>8-. <a fis>8-.\>( <a fis>-.) <a fis>4-.\! |
  %% 56
  <a f>2\mf <c f, ees> |
  %% 57
  <bes f d>4.( <d bes f>8)
  << {\voiceOne <c a>8 <b gis>\>_\tenutoTxt c( cis)}
     \new Voice {\voiceTwo f,2}
     \new Voice {\voiceThree s4 a4} >> \oneVoice |
  %% 58
  r8\ppWhiteOut <d' bes>8-. <bes f>-. <f d>-. <d bes>2-- |
  %% 59
  r8 <d bes>-. <f d>-. <bes f>-. <d bes>2-- |
  %% 60
  r8 <ees bes>-. <bes g>-. <g ees>-.
  << {\voiceOne ees4( bes)}
     \new Voice {\voiceTwo g2} >> \oneVoice |
  %% 61
  r8 <f d>8-.\< <f d>-. <bes f>-.\! <d bes>-. <bes f>-. <a f ees>-. <bes f d>-. |
  %% 62
  <fis c'>\p( d <fis c'> d) <f b>\cresc( d <fis c'> d) |
  %% 63
  <g bes>( d <g bes> d) <g bes>2 |
  %% 64
  <ees a>8\mfWhiteOut( c <ees a> c) <d gis>( b <ees a> c) |
  %% 65
  <d bes'>( bes <d bes'> bes) <d bes'>2 |
  %% 66
  <ees bes'>8_\ffGrandioso( bes <ees bes'> bes) <ees bes'>( bes <ees g> bes) |
  %% 67
  g'( bes, f' bes,) f'( bes, f' bes,) |
  %% 68
  r8 \repeat unfold 3 <a' f ees c>8-. <a f ees c>2 |
  %% 69
  r8 \repeat unfold 3 <bes f d>8-. <bes f d>2-- |
  %% 70
  r8\f \repeat unfold 3 <g ees bes>8-. r8 \repeat unfold 3 <g cis, bes>8-. |
  %% 71
  r8 < f d bes>8-.\< <bes f d>-. <d bes f>-. <f d bes>2\! |
  %% 72
  <f, c a>2->\p^\rit <c' f, ees>4->~ <c f, ees>\fermata |
  %% 73
  \repeat unfold 2 {
    << \repeat unfold 2 {<bes f d>4 r} s4\p >> |
    <bes f d>1(
    <a f ees>4) r <c f, ees> r |
    <c f, ees> r r  << <a f ees> {s16\> s8 s16\!} >>
  }
  %% 81
  <bes f d>4 r r2 |
  %% 82
  r4\mfWhiteOut <g' b,>8-. r <d b>-. r <g, f>-. r |
  %% 83
  <g ees>1 |
  %% 84
  r4 <g' b,>8\p r <d b>-. r <g, f>-. r |
  %% 85
  <g ees>1 |
  %% 86
  r4 <g' ees>8-. r <ees c>-. r <a, ees>-. r |
  %% 87
  <bes des,>1
  %% 88
  << \repeat unfold 2 { r4 <bes ges des>4-. } s4\p >> |
  %% 89
  <bes ges des>4 r r2 |
  %% 90
  <bes ges des>4-.\cresc r r <bes e, des>-. |
  %% 91
  <bes f d>2->\f r |
  %% 92
  <bes g ees>2-> r |
  %% 93
  \repeat unfold 2 <bes g cis,>2-> |
  %% 94
  <bes g cis,>1->\ff~ |
  %% 95
  <bes g cis,>4 <g' cis, bes>4-.\>( <g cis, bes>-. <g cis, bes>-.\!) |
  %% 96
  <f d bes>2->\p <d bes f>-> |
  %% 97
  <bes f d>1 |
  %% 98
  <d bes f>2 << \repeat unfold 2 <bes f d>4 s4\> >> |
  %% 99
  << \repeat unfold 3 <bes g ees>4:8 {s4\p s\cresc} >> <bes ges ees>4:8 |
  %% 100
  <bes f ees>2:8 <a f ees>2:8 |
  %% 101
  \tempo "Grandioso."
  <bes f d>4\f f8.-. f16-. <bes f d>4 <c f,> |
  %% 102
  <d bes f>8-. <ees bes f>-. <f bes, f>2-> \tuplet 3/2 4 {bes,8-. bes-. bes-.} |
  %% 103
  <g' bes, g>4.-> <f bes, f>8-. <d bes f>4 <bes f d> |
  %% 104
  <d bes f>-. <c a f>-. r <c a f>8-.\< <d bes f>-. |
  %% 105
  <ees bes g>4.->\f <bes g>8 <bes g>4 <c bes g> |
  %% 106
  <d bes f>8.-. <f bes, f>16-. <f bes, f>2-> <bes, f>8-.\p\< <c bes g>-. |
  %% 107
  <d bes>2 <c a f>4.\f <bes f d>8 |
  %% 108
  <bes f d>4\> r r8 <g ees>-.\p^\tranquilloEtDolce <f d>-. <g ees>-. |
  %% 109
  <aes f>8.\<( <c aes>16) <c aes>4.\! <g ees>8-.\p <f d>-. <g ees>-. |
  %% 110
  <aes f>8.\<( <c aes>16) <c aes>4.\! <f aes,>8-.\< <e g,>-. <f aes,>-. |
  %% 111
  <aes c,>8->\f <g bes,>-> <f aes,>4.-> <e g,>8-. <f aes,>-. <d aes>-. |
  %% 112
  <ees g,>8-.\> <c g> <bes g>4. <g ees>8\p <f d> <g ees> |
  %% 113
  <aes f>8.\<( <c aes>16) <c aes>4.\! <g ees>8\p <f d> <g ees> |
  %% 114
  <aes f>8.\<( <c aes>16) <c aes>4.\! <f aes,>8\< <aes c,> <g bes,> |
  %% 115
  <f aes,>8\f <e g,> <f aes,>4. <ees g,>8\> <d f,> <c ges ees> |
  %% 116 / 117
  << 
    \repeat unfold 2 {
      <bes f d>4 <ces ges ees>8.-> <ces ges ees>16 <bes f d>4 <a f ees>
    }
    { s4\mfWhiteOut s2. | s4\dim}
  >>
  %% 118
  <bes f d>2--\p\dim <ces aes f ees>-- |
  %% 119
  <bes a f d>2--\pp^\rit r \bar "||"
}

pianoDownMovementI = \relative d {
  \partial 4 d8. d16 |
  %% 1
  <g g,>4.-> d8-. <g g,>-. <a a,>-. <bes bes,>-. <c c,>-. |
  %% 2
  <d d,>8.-- g,16-. g2-> r4 |
  %% 3
  \repeat unfold 2 <g d g,>2:8-. |
  %% 4
  <g ees c>2:8-. <g ees c>8 r r4 |
  %% 5
  \repeat percent 2 { r2 <a fis ees c>4-> r } |
  %% 7
  r4 c,8.( d16) ees2 |
  d2. r4 |
  %% 9
  r4 a8.-.\f a16-. d4-. d,8.-. d16-. |
  %% 10
  \repeat percent 2 { g2. d8. d16 } |
  %% 12
  \repeat percent 2 g1 |
  %% 14
  g2 bes |
  %% 15
  c2. \once \override Hairpin.to-barline = ##f ees8.\<( d16) |
  c2.\! \once \override Hairpin.to-barline = ##f c'8.\<( bes16) |
  %% 17
  a4.--\! g8-. fis4-. ees-- |
  %% 18
  d2 d,8-. r d' r |
  %% 19
  g,2~ g8 d'( d,8.) d16 |
  %% 20
  g1 |
  %% 21
  g2 g'~ |
  %% 22
  g8 bes-. d-. ees \change Staff = "up" \voiceTwo g8-._\tenutoTxt f-. ees-. d-. |
  %% 23
  s8 \repeat unfold 3 c8-. c4 \oneVoice \change Staff = "down" ees,4 |
  %% 24
  ees2 c4( f,) |
  %% 25
  d'2 bes4( f) |
  %% 26
  c'2 f4( f,) |
  %% 27
  bes2~ bes8 bes'-. g8.-- f16-. |
  %% 28
  ees2 c4( f,) |
  %% 29
  bes2 d8-. r f-. r |
  %% 30
  fis4.-- g8-. a-. g-. fis-. e-. |
  %% 31
  d4 r8 d, d'4-. d,-. |
  %% 32
  \repeat unfold 2 { g4-. r } |
  %% 33
  g4 r r g-. |
  %% 34
  \repeat unfold 2 {d'-. r } |
  %% 35
  d4-. r d-. d,-. |
  %% 36
  \repeat unfold 2 {g4-. r} |
  %% 37
  bes4-. r r <bes' bes,>-. |
  %% 38
  \repeat unfold 2 { <bes bes,>4 r } |
  %% 39
  <f f,>4 r \repeat unfold 2 <f f,> |
  %% 40
  <fis fis,>( d <fis fis,> d) |
  %% 41
  <g g,>4( d <g g,> d) |
  %% 42
  <f f,>2 <b, b,> |
  %% 43
  <c c,> <ees ees,> |
  %% 44
  <aes aes,>2-> <g g,>8-. <f f,>-. <ees ees,>4-> |
  %% 45
  <c c,>2-> <cis cis,>-> |
  %% 46
  <d d,>4 r <d d,>-. r |
  %% 47
  d4 d'-. a-. fis-. |
  %% 48
  d4 r8 a'-. <d d,>4 r8 a,8-. |
  %% 49
  <d d,>4-. r r2 |
  %% 50
  bes2~ bes8 d( f bes) |
  %% 51
  bes,2~ bes8 d( c bes) |
  %% 52
  ees2~ ees8 bes'( g ees) |
  %% 53
  <bes' bes,>1 |
  %% 54
  \clef "alto" r8 ees4->( d8) c8-.( d-.) ees4-. |
  %% 55
  r8 ees4->( d8) c-.( d-.) ees4 |
  %% 56
  ees4( c) a( f) |
  %% 57
  bes2( f) |
  %% 58
  \clef "bass" bes,~ bes8 d( f bes) |
  %% 59
  bes,2~ bes8 d( c bes) |
  %% 60
  ees2~ ees8 bes'( g ees) |
  %% 61
  <bes' bes,>2~ <bes bes,>8-. <d d,>-. <c c,>-. <bes bes,>-. |
  %% 62
  <a a,>2 <gis gis,>4( <a a,>)
  %% 63
  <g g,>2~ <g g,>8 <bes bes,>8-. <a a,>-. <g g,>-. |
  %% 64
  <f f,>1 |
  %% 65
  <bes, bes,>2~ <bes bes,>8 <d d,> <ees ees,> <f f,> |
  %% 66
  <g g,>2 <f f,>4( <ees ees,>) |
  %% 67
  <d d,>2 <bes bes,> |
  %% 68
  f2.( f'4) |
  %% 69
  bes,2~ bes8 bes( c d) |
  %% 70
  ees2-> e-> |
  %% 71
  f1-> |
  %% 72
  f,2.-> <f f'>4\fermata |
  %% 73
  \repeat unfold 2 {
    \repeat unfold 2 {bes4 r} |
    bes8-. r d-. r f-. r bes-. r |
    c4 r a r |
    f r r f,
  }
  %% 81
  bes4 r r2 |
  %% 82
  <g g'>1-> |
  %% 83
  r4 g\<( c ees\!) |
  %% 84
  <g g,>1-> |
  %% 85
  r4 g,( c ees) |
  %% 86
  <f f,>1 |
  %% 87
  r4 g,( bes des) |
  %% 88
  \repeat unfold 2 {<ges ges,>-. r} |
  %% 89
  <ges ges,>4 r r2 |
  %% 90
  <ges ges,>4-. r r <ges ges,>-. |
  %% 91
  <f f,>2-> r |
  %% 92
  <f f,>2-> r |
  %% 93
  \repeat unfold 2 <e e,>2 |
  %% 94
  <e e,>1~ |
  %% 95
  <e e,>4 r r2 |
  %% 96
  <f f,>1~ |
  %% 97
  \repeat unfold 3 <f f,>1 |
  %% 100
  <f, f,>1 |
  %% 101
  <bes bes,>4 f'8.-. f16-. <bes bes,>4 <a a,> |
  %% 102
  <bes bes,>8 <c c,> <d d,>2 r4 |
  %% 103
  <ees bes ees,>4.-> <d bes d,>8-. <bes bes,>2 |
  %% 104
  \repeat unfold 2 <f f,>4-. r2 |
  %% 105
  <ees ees,>2. <ees ees'>4 |
  %% 106
  <bes' bes,>8.-. <d d,>16-. <d d,>2-> d8-. ees-. |
  %% 107
  f4 f,8. f16 ees'4 f, |
  %% 108
  a4 bes,8. bes16 bes4 r |
  %% 109
  \repeat percent 3 { bes8 bes' d, bes' bes,4 r } |
  %% 112
  bes8 bes' ees, bes' bes,4 r |
  %% 113
  \repeat percent 2 { bes8 bes' d, bes' bes,4 r } |
  %% 115
  bes8 bes' d, bes' bes,4 bes' |
  %% 116
  \repeat percent 3 \repeat unfold 2 {bes, bes'} |
  %% 119
  bes, \repeat unfold 3 bes'-- \bar "||"
}

%%% ---------------------------

globalMovementII = {
  \tempo "Adagio." 8 = 88
  \time 3/8
  \key ees \major
}

violinMovementII = \relative a' {
  %% 120
  bes8_\markup {\dynamic "p" \italic "espressivo." } ( g aes) |
  %% 121
  bes4\<( ees8-2\!) | d( g f) | ees4\>( bes8---1\!) |
  %% 124
  c8\<( ees-2\!) d16( c) |
  %% 125
  bes8.( g16) g( bes-3) | c8-4( bes) g16\>( bes\!) | f4-2 bes8-1 |
  %% 128
  bes( g aes) | bes4( ees8-2) | d8( g) f\upbow | f( ees) e |
  %% 132
  g( f) c16_2( ees_2) | ees4( bes8-1\p) | aes8( g f) |
  %% 135
  %%\once \set crescendoText = \markup { \italic #"molto cresc." }
  %%\once \set crescendoSpanner = #'text
  \hairpinMolto bes4\< bes16( bes') |
  %% 136
  bes8--\ff g-- ees-- | ees--( c--) aes16( f |
  %% 138
  bes8.-3) g16-1\>( aes f-2) | bes8.-3\p( g16-1\> aes f-1) |
  ees4.\pp~ | ees8 r r|
  %% 142
  \tempo "Più moto."
  <g, ees' c'>16.^>_\markup{\dynamic "ff" \italic "energico."} g'32(
  \tuplet 3/2 8 {ees16 g c ees) d c } |
  b16.\<( aes'32\!) g8.->( g,16) |
  %% 144
  <g, d' b' g'>16.^( aes''32) \tuplet 3/2 8 {g16( fis g aes) g-. d-.} |
  f32-3( ees d ees) c8 r16 <b d, g,>16\ff\downbow |
  %% 146
  <c ees, g,>16.\downbow g32( \tuplet 3/2 8 {ees16 g c ees) f-. g-.} |
  aes16.-3\<( c32-3\!) c8.( aes16-3) |
  g32.( ees64) ees32.( c64) c16 g <g, d' b' g'>16-> <g g'>-> |
  <g ees' c'>-> c-> r8 r |
  %% 150
  r8. d'16-1\upbow_\markup{\dynamic "p" \italic "tranquillo."}( f16.---3 ees32) |
  \tuplet 3/2 {d16-1( c-2 b\>)} b8\! r |
  r8. d16-1\upbow\<( g16.-4 f32) |
  %% 153
  f32-3\mf\>( ees d ees) c8-2\! ees16--\> g--\! |
  aes16._\markup {\dynamic "f" \italic "con passione."}( c32-3) c4( |
  c16-.) c8-> c16--\< c-- c\portato |
  bes16.\ff( g32-2) g8.\>( bes16\!) |
  bes16.( g32) g8.\<( bes16) |
  bes8.\ff aes16-1( f-3 d-3) |
  %% 159
  c16.->( bes32) bes16_\markup{\italic "poco a poco string."} bes-. a( bes) |
  d( c) bes-. aes-. f( d) |
  c16.->( bes32) bes16-. bes-. a( bes) |
  %% 162
  ces16.->( bes32) bes16 bes \afterGrace bes8^\trillNatural( {a16 bes)} |
  ces16.^\rit( bes32\>) bes16 bes \afterGrace {bes8\!^\trillNatural(} {a16 bes)} |
  bes4\p( bes8--) | bes4\>( bes'8-3\!) |
  %% 166
  \tempo "Tempo 1°"
  bes8_\markup {\dynamic "pp" \italic "espressivo."}( g aes) |
  %% 167
  bes4( ees8-2) | d8\<( g f) | ees4\>( bes8---1\!) | c8( ees) d16( c) |
  %% 171
  bes8.\<( g16) g( bes-3) | c8\>(^\( bes) g16( bes)\) | f4-2\p( bes8--) |
  bes8( g aes) | bes4( ees8-2\cresc) | d8( g) f | f( ees) e |
  g8\f( f) c16-2( ees) | ees4 bes8 | aes( g) f |
  %% 181
  bes4
  \once \set crescendoText = \markup { \italic #"molto cresc." }
  \once \set crescendoSpanner = #'text
  bes16\<( bes') |
  %% 182
  \tempo "Grandioso."
  bes16-- bes( g) g( ees^\ff) ees-- | ees8( c) aes16\>( f) |
  %% 184
  bes8.-3\mf g16\>( aes f-2) | bes8.-3\p g16\>( aes f-2\!) |
  f4.\>^\rit | ees8.\pp^\aTempo bes16_\tranquillo( ees g) |
  g( f c'-4) bes( aes f-2) | ees( g bes) g'-4( f ees) |
  ees( d c') bes( aes-1 f-3) | ees8( g bes,-1) |
  %% 192
  bes8( ees-2) g,16\upbow_\markup {\italic #"dolciss."}( aes) |
  %% 193
  bes8\pp( g aes) | bes( g aes) | bes4( g8-3) |
  <ees g,>4.~^\morendo | <ees g,>~ |
  %% 198
  <ees g,>8 r r \mark \markup{\normalsize \fermata} \bar "||"
}

pianoUpMovementII = \relative a' {
  %% 120
  <bes g>8\p( <g ees> <aes f>) |
  <bes g>8\<( <g ees>4) |
  %% 122
  << {\voiceOne aes4\> aes8}
     \new Voice {\voiceTwo f8( d) d8} >> \oneVoice |
  <g ees>8( <bes g>)\! r |
  %% 124
  <c aes ees>\<( <ees c ees,>\!) <d aes ees>16( <c aes ees>) |
  <bes ees,>8\>( <g ees>\!) r |
  %% 126
  <c ees,>8\p( <bes ees,>) <g ees>-. |
  %% 127
  <f d>4 r8
  %% 128
  <bes g>8\p( <g ees> <aes f>) |
  %% 129
  <bes g>8\<( <g ees>4) |
  %% 130
  <b g d>8.\mf\<( <c g d>16-.) <d g, d>8-.\! |
  %% 131
  << {\voiceOne d8\mfWhiteOut\<( c)}
     \new Voice {\voiceTwo <g ees>4} >> \oneVoice <des' g, e>8 |
  %% 132
  <c aes f>4--\f <fis, ees>8 |
  %% 133
  <g ees>16-.\> <aes f>-. <bes g>8( <g ees>\p) |
  %% 134
  <aes f>8( <g ees> <f d>) |
  %% 135 / 136
  << {\voiceOne \hairpinMolto
      bes4~\<( bes16 aes) | g16--\ffWhiteOut aes-- bes8-> a16-- bes-- }
     \new Voice {\voiceTwo ees,16( f g f ees d) | s4 ees8 } >> \oneVoice |
  %% 137
  <c' aes ees>8\dim( <aes ees c>) <f c>-. |
  %% 138
  <ees bes>16-.\mfWhiteOut <f d>-. <g ees>8^\dim( <f d>) |
  %% 139
  << {\voiceOne es16-.\p\> f-. g8 d}
     \new Voice {\voiceTwo s4 f,16( aes)} >> \oneVoice |
  %% 140
  <ees' g,>4.\pp~ | <ees g,>8 r r |
  %% 142
  %% \tempo "Più moto."
  \tuplet 3/2 8 {r16\fWhiteOut \repeat unfold 2 <ees c g>16-.}
  \repeat unfold 2 <ees c g>8-. |
  %% 143
  \tuplet 3/2 8 {r16 \repeat unfold 2 <d b g>-.} <d b g>4--
  %% 144
  \tuplet 3/2 8 {r16 \repeat unfold 2 <f d g,>-.} \repeat unfold 2 <f d g,>8-. |
  %% 145
  \tuplet 3/2 8 {r16 \repeat unfold 2 <ees c g>-.} <ees c g>4--
  %% 146
  \tuplet 3/2 8 {r16\f \repeat unfold 2 <ees c g>16-.}
  \repeat unfold 2 <ees c g>8-. |
  %% 147
  \tuplet 3/2 8 {r16 \repeat unfold 2 <f c aes>16-.} <f c aes>4-- |
  %% 148
  \tuplet 3/2 8 {r16 \repeat unfold 2 <ees c>-.} <ees c>8-. g-.-> |
  %% 149
  <c g ees>16-> c,->~ c16^\tranquillo <g' ees>\>( <f d> <ees c>) |
  %% 150
  <d b>4~\p  <d b>16 <ees c> |
  %% 151
  <f d>8. <aes f>16\<( <f d> <ees c>-.\!) |
  %% 152
  <d b>4~ <d b>16\< <d b>-. | <ees c>16-.\mfWhiteOut <f d>-. <g ees>4--\< |
  %% 154
  << {\voiceOne aes8.\nullDynamic_\fEspressivo aes16( g) g-.}
     \new Voice {\voiceTwo <ees c>4 <ees c>8} >> \oneVoice |
  %% 155
  <fis ees c>16.( <c' fis, ees>32) <c fis, ees>8 <fis, ees>-> |
  %% 156
  <g ees>8.--_\markup\whiteout\pad-around #.5 \italic #"con passione." <bes g>16-.( <g ees> <f d>-.) |
  %% 157
  <g ees>8.-- <ees' g,>16-.\<( <bes g>-. <g ees>-.) |
  <<
    {
      %% 158
      \voiceOne <f d>16-.\ffWhiteOut <g ees>-. <aes f>4~ | <aes f>4. |
      <f' d>16 <g ees> <aes f>4~ | <aes f>4. |
      %% 162
      \repeat unfold 2 { <aes f>4 s8 }
    }
    \new Voice {
      %% 158
      \voiceTwo s8 ees,( bes~ | bes4.) | r8 f''8 bes,~ | bes4. |
      %% 162
      \repeat unfold 2 {ees8( d) <g e cis>16-. <aes f d>-. }
    }
  >> \oneVoice |
  %% 164
  <c aes>16-.\p\dim^\rit <aes f>-. <f d>8 <ees c>-. |
  %% 165
  <d bes>16 <c aes> <bes g>8-. <aes f>-. |
  %% 166
  %% \tempo "Tempo 1°"
  <g ees>4\ppWhiteOut( <aes f>8) | <bes g>8( <g ees>4) |
  %% 168
  << {\voiceOne aes4 aes8-.}
     \new Voice {\voiceTwo f8( d) d-.} >> \oneVoice |
  %% 169
  <g ees>8( <bes g>) r |
  %% 170
  <c aes ees>8\<( <ees aes, ees>\!) <d aes ees>16( <c aes ees>) |
  %% 171
  <bes ees,>8( <g ees>) r |
  %% 172
  <c ees,>8\>( <bes ees,>) <g ees>\! | <f d>4 r8 |
  %% 174
  <bes g>8\ppWhiteOut( <g ees> <aes f>) | <bes g>8( <g ees>4) |
  %% 176
  <b g d>8.\mf\<( <c g d>16) <d g, d>8-.\! |
  %% 177
  << {\voiceOne d8\<( c)}
     \new Voice {\voiceTwo <g ees>4} >> \oneVoice <des' g, e>8 |
  %% 178
  <c aes f>4\f <fis, ees>8 |
  %% 179
  <g ees>16\> <aes f> <bes g>8( <g ees>)\p |
  %% 180
  <aes f>8( <g ees> <f d>) |
  %% 181
  << {\voiceOne bes4~( bes16 aes) | g16-- aes-- bes8-- a16-- bes-- }
     \new Voice {\voiceTwo ees,16( f g f ees d) | ees4 ees8 } >> \oneVoice |
  %% 183
  <c' aes ees>8( <aes ees c>) <f c> |
  %% 184
  <ees bes>16-.\mfWhiteOut <f d>-. <g ees>8\>( <f d>) |
  %% 185
  << {\voiceOne ees16-.\p f-. g8 d | d4. | ees8 ees4 | <d bes aes>4. | ees8 ees4 }
     \new Voice {
       \voiceTwo s4 f,16( aes) | aes8( ces) bes16( aes) |
       g16( bes) g4 | s4. | g16( bes) g4 } >> \oneVoice |
  %% 190
  <d' bes c>4. | <ees bes g>4. |
  %% 192
  <g ees bes>4 ees16( f) |
  << \repeat unfold 2 { <bes g>8( <g ees> <aes f>) } s8\ppWhiteOut >> |
  <bes g>4 <g ees bes>8 |
  <g bes, g>8^\morendo r <g bes ees>-.\arpeggio |
  r r <bes ees g>-.\arpeggio |
  <ees, bes g>\arpeggio r r \bar "||"
}

pianoDownMovementII = \relative b {
  %% 120
  <bes ees,>4-- <bes ees,>8 |
  <bes ees,>4. |
  %% 122
  <bes bes,>4-- <bes bes,>8-. |
  <bes ees,>4 r8 |
  %% 124
  aes8( c) bes16( aes) |
  g8( ees) r8 |
  %% 126
  aes8( g) ees-. |
  bes8-. bes'-. r |
  %% 128
  <bes ees,>4-- <bes ees,>8-. | <bes ees,>4. |
  %% 130
  <g g,>8.( <a a,>16-.) <b b,>8 | <c c,>4 <bes bes,>8 |
  %% 132
  <aes aes,>4-- <a a,>8 | <bes bes,>4. |
  %% 134
  bes16-. bes8-- bes( aes16) |
  %% 135
  g16( bes ees bes g f) |
  %% 136
  <ees ees,>16-- <f f,>-- <g g,>8-> <fis fis,>16-- <g g,>-- |
  %% 137
  <aes aes,>4 aes8-. | g16-. bes-. ees8( bes) |
  %% 139
  g16-. bes-. ees8 bes,8 | ees bes g |
  %% 141
  ees r16. g'32-.\< ees16-. d-.\! |
  %% 142
  %% \tempo "Più moto."
  c4-- c,8 | f8~ f16. g'32 d16.-. b32-. | g4 b8 |
  %% 145
  c8~ c16. g'32-.\< ees16-. d-.\! |
  %% 146
  c8~ c16. ees32-. c16-. c-. | f,8~ f16.\< aes32 c16. f32\! |
  %% 148
  g8 r <g g,>-> | <c, c,>8-> r r |
  %% 150
  r16 aes'16->( g8) g,~ | g8 g'-. r | r16 aes16->( g8) g,16 g'-. |
  %% 153
  <g c,>8~ <g c,>16 g ees-. c-. | aes8( aes'4) | <a a,>4 <a a,>8-> |
  %% 156
  <bes bes,>8 <bes bes,>4-> | <bes bes,>8-. <bes bes,>4-> |
  %% 158
  <bes, bes,>4.-> | <d d,>16 <ees ees,>-. <f f,>8( <bes, bes,>) |
  %% 160
  <bes' bes,>4. | <d d,>16-. <ees ees,>-. <f f,>8( <bes, bes,>) |
  %% 162
  \repeat percent 2 {<ces ces,>8( <bes bes,>4)} |
  %% 164
  bes,,8( bes') bes | bes( bes') bes-. | <bes ees,>4-- <bes ees,>8 |
  %% 167
  <bes ees,>4. | <bes bes,>4-- <bes bes,>8-. | <bes ees,>4 r8 |
  %% 170
  a8( c) bes16( aes) | g8( ees) r | aes8( g) ees-. | bes8-. bes' r |
  %% 174
  <bes ees,>4-- <bes ees,>8-. | <bes ees,>4.-. |
  %% 176
  <g g,>8.( <a a,>16) <b b,>8 | <c c,>4 <bes bes,>8 |
  %% 178
  <aes aes,>4-- <a a,>8-. | <bes bes,>4. |
  %% 180
  bes16-. bes8-- bes--( aes16) | g16( bes ees bes g f) |
  %% 182
  <ees ees,>16-- <f f,>-- <g g,>8-- <fis fis,>16-- <g g,>-- |
  %% 183
  <aes aes,>4-- aes8-. | g16-. bes-. ees8( bes) | g16-. bes-. ees8-. bes, |
  %% 186
  bes4. | ees | bes16( bes,) bes'4 | <ees ees,>4. |
  %% 190
  bes16( bes,-.) bes'4 | \repeat unfold 2 <ees ees,>4. |
  %% 193
  \repeat percent 3 {ees,8( ees'4)} |
  %% 196
  << {\voiceOne r8 bes4 | r8 bes4_~ | bes8 }
     \new Voice {
       \voiceTwo <ees ees,>4. | <ees^~ ees,~>4. |
       <ees ees,>8 }
   >> \oneVoice r8 r\bar "||"
}

%%% ---------------------------

globalMovementIII = {
  \tempo "Allegro vivace." 4 = 120
  \time 2/4
  \key g \major
}

violinMovementIII = \relative d' {
  \cueDuring #"pianoUp" #DOWN {R2*9}
  \cueDuring #"pianoUp" #UP   {R2*5}
  \cueDuring #"pianoUp" #DOWN {R2*3}
  \cueDuring #"pianoUp" #UP   {
    R2*2 \bar "||"
    \tempo "Allegro moderato." 4=99
    \time 2/4
  }
  \cueDuring #"pianoUp" #DOWN {
    R2 } | r4 r8 d8\upbow\p | d8\<( g-.-3) g-1(\( b\!) |
  %% 221
  d16-.-3\flageolet\) [ r cis-.-2\p e ] d8-- b16-. c-. |
  d8--\< b16-. c-. d-. e-. fis-. g-.\> |
  %% 223
  g4--( \acciaccatura {a16 g} fis8) a16-1\upbow b-.\downbow |
  c8\<( e4---3\flageolet\!) a,16-.-1 b-. |
  %% 225
  d8-.\downbow c~\downbow( c16 fis,-1) g-. gis-. |
  b8-.\upbow a~\downbow( a16\> fis-1) d-. c | b4. d,8\upbow\p |
  d8( g-.-3) g-1(\( b) |
                    d16-.-3\flageolet\) [ r cis-2\p e ]  d8-- b16-. c-. |
  %% 230
  d8-- b16-.\cresc c-. d-. e-. fis-. g-. | b8.--\mf( fis16) fis4-- |
  %% 232
  fis8_\markup{
    \dynamic "p" \italic #"cantabile."}( e'4-4\flageolet) dis16-.-4 cis-. |
  %% 233
  cis8( b4--) ais16-1 gis-2 | gis8--\< fis-- eis-- e-- |
  %% 235
  dis4.\>( fis8) | fis8\p( e'4-4\flageolet) dis16-4 cis |
  cis8--\cresc b-- ais-- gis---2 | gis8( fis) e-- cis-- |
  b4\f d-1\upbow\< |
  %% 240
  \acciaccatura <d d, g,>8 b'8.-2\downbow\!_\ffDeciso( ais16) b8.->\upbow( g16-2) |
  %% 241
  e16-.\open_\markup\italic #"du talon." fis-. g e-. d4-> |
  %% 242
  d,16\p\<\open\upbow( g-3 b d g[ b-4 e-4\flageolet r32 d-.-4\!) ] |
  d4 a8.( ais16) |
  %% 244
  b8.->_\markup{\dynamic "f" \italic #"deciso."}( ais16) b8.->( g16-2) |
  e16-.\open fis-. g-. e-. d4( |
  %% 246
  cis16-.)\downbow  a\cresc\upbow( cis'-3) b a-. g-.-4 fis e |
  %% 247
  d( d') a-. fis-. d8 d,\! |
  %% 248
  \acciaccatura <d' d, g,>8 b'8.->_\ffDeciso( ais16) b8.->( g16-2) |
  %% 249
  e16-.\open fis-. g-. e-. d4-> |
  %% 250
  d,16\p\<\upbow( g b d g[ b-4 e-4\flageolet r32 d-4\!) ] |
  d4 a8.( ais16) |
  %% 252
  b8.\f( ais16) b16-. b-. cis d-. | d8.( a16) a8-. fis-1 |
  %% 254
  fis16( e) g16-. e-. b'-. a-. g-. e-. | d4.--\>( a8\!) |
  %% 256
  \tempo "Meno mosso."
  a8_\markup{\dynamic "p" \italic "cantabile et espressivo."}( g'-4) fis-- e-- |
  %% 257
  e--( d--) cis---2 b-- | b-- a\<( \tuplet 3/2 4 {b'8) a-- g--\!} |
  %% 259
  fis4.( a,8) | a\cresc( g'-4) fis-- e-- |
  %% 261
  e8-- d( \tuplet 3/2 {d') cis-- b--} | b-- a-- g-- e-- |
  %% 263
  d4.--\f d,8-.\open\p | d\<( a'-4) fis( d'-2\flageolet\!) | c4.-4 fis,8-2
  %% 266
  fis8\<( d') c-2( a'-2\flageolet\!) |
  %% 267
  fis4.-3 \tuplet 3/2 {d,16\open\<( fis a\!} |
  %% 268
  d8-4\flageolet) \tuplet 3/2 {fis,16_2\<_( a c} e8\>) ees\!( |
  %% 269
  d4.) d,8( | d'-1\<) d( d') d,( | d'4.\f) d,,8\p |
  %% 272
  \tempo "Tempo 1°"
  d\<( g-3) g-1(\( b)\! | d16-.-3\flageolet\) [ r16 cis-.-2 e-.] d8-- b16-. c |
  %% 274
  d8-- b16\< c d e fis-. g-.\! | \afterGrace g4_(\( {a16 g)} fis8\) a16-1 b |
  c8\<( e4-3\flageolet\!) a,16-.-1 b-. |
  %% 277
  d8-. c~\downbow( c16 fis,-.-1) g-. gis-. |
  b8-.\upbow a~( a16\> fis-.) d-. c\! | b4. d,8\upbow |
  %% 280
  d\<( g-3) g-1(\( b\!) | d16-.-3\flageolet\) [ r16 cis-.-2 e] d8-. g,-. |
  %% 282
  g( c) c_\rit(\( e-2) |
                  g16-.\)\< [ r fis-.-1 a-.]
  g8\!\fermata fis16-.-1^\aTempo e-.\open\f |
  %% 284
  d8-.-1 d'4-> d16\downbow c-. | b a-. g-.-2 fis-. e-. d-. c-. b-. |
  %% 286
  e-.-4 d-. c-. a-. fis-. d-. c-. a-. |
  %% 287
  g4 r8 b_\markup{\dynamic "f" \italic #"risoluto"}^"sul G." |
  %% 288
  e8.-2( dis16-.) e8-.( fis-.) |
  g16-.-4 fis-.-3 e4-2 \tuplet 3/2 {e16-1( g b} |
  %% 290
  e8\open) \tuplet 3/2 { e16\open( g b-4} e8-4\flageolet) b,,8-.\upbow |
  c4->\downbow( b8) b'-3\p( | c b4) fis8-2( |
  %% 293
  a-2) g\upbow~ g16 dis-.\upbow_"sul G." e-. fis-. |
  %% 294
  g8-.-4\flageolet e->-3\downbow d->\downbow c->\downbow |
  b4.-2\downbow b8\upbow |
  %% 296
  e8.---2(-\markup\italic #"risoluto." dis16-.) e8-.( fis-.) |
  g16-4 fis-.-3 e4-2 \tuplet 3/2 {
    e16-1(\( g b) } |
    e8\open\) \tuplet 3/2 {e16\open( g b-4)} e8-4\flageolet b-2\upbow |
  %% 299
  d4\>\downbow( c8\!) a,8\upbow_\pDolceCantabile( |
  %% 300
  fis'8---3) e-- d--( c---2) | b16( c cis e-4 d8) d,\<( |
  %% 302
  a''-4\flageolet) fis---3\> d--( c---2\!) |
  %% 303
  b4.-- d,8--( | fis'-3) e--\cresc d--( d--)\! |
  b'->\downbow_\tenutoTxt a-> g-> e-> |
  %% 306
  e8-. d4->\upbow a16-.\downbow e' | d4.\> d8\mf\upbow( |
  %% 308
  a'8\flageolet\cresc) fis-- e--( d--) | d'--\f b-- g-- e-- |
  %% 310
  << \repeat unfold 2 {e->( d)} s8_\rit >> |
  \cadenzaOn
  d,4->\fermata
  << s32^\markup\italic #"ad lib."
     \new Voice \with { fontSize = #-3 } {
       fis32\p( [ a c d fis a c a fis d c a fis d e'-4) d,( d') d, ]
     } >>
  b'8.\fermata( [ a16) ] \cadenzaOff \bar "|"
  << {\voiceOne g8\mf^\aTempo d d e---> | d d d e---> }
  \new Voice {\voiceTwo s8 b16( g) b( g) g8 | b8 b16( g) b( g) g8}
>> \oneVoice |
%% 313
d'16\p\<( fis g b d b') a-. g-.\! | e16( d b) g-. e8^>\f( d) |
%% 315
<< {\voiceOne a'8\mf a a b-> | a8 a a b-> }
   \new Voice {\voiceTwo a8 fis16( d) fis16( d) d8 | d8 fis16( d) fis( d) d8 }
 >> \oneVoice |
   %% 317
   <a' d,>16->( d fis a e'-3\flageolet\< d-4) c-. b-.\! |
   %% 318
   a16( g-4 fis) e-.-2 e8->\f( d) |
   %% 319
   << {\voiceOne d4.-1^"3. Posit."\p e8 | d4. e8 }
      \new Voice {\voiceTwo \repeat unfold 2 {g,8( b16 g b g) g8->}}
    >> \oneVoice |
   %% 321
   d'16( d') d-.( b-.) b( g) g( d-.) |
   %% 322
   e-2\<( d-1) b-.-3  c-.-4 d-1( e) fis-. g-. |
   %% 323
   << {\voiceOne a4.\fp  b8 | a4. b8 }
      \new Voice {\voiceTwo \repeat unfold 2 {d,8( fis16 d fis d) d8->} }
    >> \oneVoice |
   %% 325
   d16( e'\flageolet) d-.-4 b-. c( a) a-.-3 fis-. |
   a-. fis-. d-.\< c a fis-. d-.\! c |
   b16\mf^\leggiero( dis-4 fis\< b dis fis b16.-- a32\!) |
   %% 328
   g16.\trill( fis32 g16.\>) fis32\downbow e4\upbow |
   d,16\<( fis a d-1 fis a d16. c32) |
   %% 330
   b16.\>\trill( ais32 b16.) a32\downbow g4-4\upbow\! |
   b,,16-2( dis-4\< fis b dis fis b16.-- a32\!) |
   %% 332
   g16.\trill( fis32 g16.) fis32\downbow\> e8\upbow( e'\flageolet\!) |
   %% 333
   d,,16\p\<( fis a d-1 fis a d16.-- c32\!) |
   b16.\trill\cresc( ais32 b16.) a32\downbow a8( <g, g,>) |
   cis,8-3\f( g'-3\flageolet) <bes g>->( <e bes>) |
   cis,->-3( g'-3\flageolet) <bes g>->( <e g>) |
   %% 337
   <b d,>16( <d d,>) <d d,>( <d g>) <d g>4-> |
   %% 338
   <b d,>16( <d d,>) <d d,>( <d b'>) <d b'>4-> |
   %% 339
   <d d'>8-> <d d,>-. <d b'>-> <d d,> |
   %% 340
   <d b-1>-> d,-.\open <b' g-1>-> d,-.\open |
   %% 341
   d'-1-> e16->\upbow d,-.\downbow fis'->\upbow d,-.\downbow g'-> d,-. |
   %% 342
   <d' a'> d, <d' b'>-> d, \ritSpan <d' c'>\startTextSpan d, <d' cis'>->( d,) |
   %% 343
   <d d' d'>8\downbow d'-.\stopTextSpan <fis a, d,>->\downbow d,-. |
   %% 344
   <g' b, d, g,>4^\aTempo_\tutti r
   %% 345
   \cueDuring #"pianoUp" #UP   R2*3 |
   \cueDuring #"pianoUp" #DOWN R2   |
   \cueDuring #"pianoUp" #UP   R2*3 |
   \cueDuring #"pianoUp" #DOWN R2   |
   \cueDuring #"pianoUp" #UP   {
     R2*8 |
   %% 361
     r4 r8 } d,8\p^\markup\italic #"quasi Recit." |
   d(\< a') fis( c'-4\!) | a4. fis8-.-2\p |
   %% 364
   fis\<( c'-4) a\open( a'\flageolet\!) | fis4.-3 d,8\p\open |
   %% 366
   \once \override Hairpin.to-barline = ##f
   d\<(^\rit g-3) g-1(\( b) |
                         \tempo "Tempo 1°"
                         d16-._3\flageolet\!\) r16 cis-.\p e d8-- b16-. c-. |
   %% 368
   d8-- b16-. c-. d-.\< e-. fis-. g-. |
   g4\>( \acciaccatura {a16 g} fis8\!) a16-.-1 b |
   c8-3\<( e4-3\flageolet\!) a,16-. b-. |
   %% 371
   d8 c8~\downbow( c16 fis,-1) g-. gis-. | b8-. a~( a16\> fis-.) d-. c-.\! |
   b4.-- d,8-.\p\upbow |
   %% 374
   d( g)
   \once \override Hairpin.to-barline = ##f
   g-1\<(\( b) | d16-3\flageolet\!\) r 16 cis-.-2 e-. d8-- b16-. c |
   d8-- b16-.\< c d-. e-. f-. g-. | b8.--\mf( fis16) fis4-- |
   %% 378
   fis8_\markup{\dynamic "p" \italic #"tranquillo."}\<( e'4-4\flageolet\!) dis16-4 cis |
   %% 379
   cis8( b4) ais16-.-1 gis-.-2 | gis8-- fis-- eis-- e-- |
   %% 381
   dis4.\<( fis8\!) | fis8\mf\<( e'4\!\flageolet) dis16-4 ais-. |
   %% 383
   cis8--\cresc b-- ais-- gis---2 | gis8( fis) e-- cis-- | b4\f d-1\upbow |
   %% 386
   \acciaccatura <d d, g,>8 b'8.\downbow_\ffDeciso( ais16) b8.->( g16-2) |
   %% 387
   e16-.\open_\markup\italic #"du talon." fis g-. e-. d4-> |
   d,16\mf\<\upbow( g b d g b-4 e-4\flageolet r32 d32-.\!) |
   b4 a8.\<( ais16\!) |
   %% 390
   \acciaccatura <d, d, g,> b'8.->_\ffDeciso( ais16) b8.->( g16-2) |
   e16-.\open fis-. g-. e-. d4->( |
   cis16\mf) a( cis'-3) b-.\cresc a-. g-.-4 fis-. e |
   d( d') a-. fis-. d8-. d,-.\open\! |
   %% 394
   \acciaccatura <d' d, g,> b'8.->-2_\ffDeciso( ais16) b8.->( g16-2) |
   e16-. fis-. g-. e-. d4-> |
   %% 396
   d,16\upbow\mf( g b d\< g b-4 e-4\flageolet r32 d-.\!) | d4 a8.( ais16) |
   b8.\f( ais16\cresc) b-. b-. cis d-. |
   %% 399
   d8.\upbow a16\downbow \tuplet 3/2 {\acciaccatura a8 d-.\upbow cis-. b-.} |
   b8-- a-- g---4 e---2 | d4.-1\f d,8\p | d\<( a') fis( d'\!) |
   %% 403
   c4. d,8( | d'-1)\< d^\rit( d') d,( | d'4.\f) d,,8\p |
   %% 406
   d8\p( g) g-1\<(\( b-3\!) | \tempo "Tempo 1°" d16-.-3\flageolet\) r cis-.\p e-. d8-- b16-. c-. |
   %% 408
   d8-- b16-.\< c d-. e-. fis-. g-.\! |
   g4--( \acciaccatura {a16 g} fis8) a16-.-1 b-. |
   c8\<( e4-3\flageolet\!) a,16-1 b-. |
   %% 411
   d8-. c->~\downbow( c16 fis,-.) g-. gis-. |
   b8-. a->~( a16\> fis-.) d c-.\! | b4. d,8\p\upbow |
   %% 414
   d( g-3) g-1(\( b-3) | d16-3\flageolet\) r cis-.-2 e-. d8-. g,-.\p |
   %% 416
   g8^\rit\cresc( c) c(\( e-2) | g16-.-4\) r fis-.-1 a-. g8\fermata fis16-.-1^\aTempo e-.\open |
   %% 418
   d8-.-1\f\upbow d'4-> d16-.\downbow c-. |
   b-. a-. g-.-2 fis-. e-. d-. c-. b-. |
   e-.-4 d-. c-. a-. fis-. d-. c-. a-. |
   %% 421
   g8\f^\conMotoBrillante( <d' b'>16) <d b'>-. g,8( <d' d'>16) <d d'>-. |
   \acciaccatura <a' a,>8 e'16-.-4 e-. d-. d-. b8:16-. g8:16-. |
   <d g,>8( <d b'>16) <d b'>-. <d g,>8( <d d'>16) <d d'>-. |
   %% 424
   \acciaccatura <d' d,>8 b'16-. b16-. g-. g-. d8:16-. b8:16-. |
   <e, c>8\mf( <a e'>16) <a e'>-. a'8-. e-. |
   %% 426
   e'8:16-.\flageolet\< a,8:16-.\flageolet e8:16-.\open  a,8:16-.\open\! |
   <a d,>8\cresc <a d,>( \acciaccatura d,8 <a' g'>8->) <a d,>( |
   %% 428
   \acciaccatura d,8 <a' fis'>8->) d,-.( \acciaccatura d8 <d' d'>4->\f) |
   \tuplet 3/2 8 {g,,16\p\downbow( d' b') b( d, g,) g( d' d')} d8-- |
   e8:16-.-4 d:16-. b:16-. g:16-. |
   %% 431
   \tuplet 3/2 8 {g,16( d' b') b( d, g,) g( d' d') } d8 |
   b'8:16-. g:16-. d:16-. b:16-. |
   c,16( e a e') a8-.( e-.) |
   %% 434
   e'8:16-.\flageolet a,:16-. e:16-.\open a,:16-.\open |
   d,16( a') a-. a-. g'->\cresc( a,) a-. a-. |
   %% 436
   <d, a' fis'>8.-> d16( \tuplet 3/2 {e8^>) d-. c-.} |
   b8-.\ff \acciaccatura {b16 fis' dis'} b'8 b,,4->~ |
   \tuplet 3/2 4 {b8 b-. cis-. dis-._4 cis-. b-.} |
   e8 \acciaccatura {e16 b'} g'8 g,,4->~ |
   %% 440
   \tuplet 3/2 4 {g8 g-. a-. b-. a-. g-.} |
   c8-. \acciaccatura {c16^( e a)} e'8-. a,,4->~ |
   \tuplet 3/2 4 {a8 a-. b-. c-. b-. a-.} |
   %% 443
   cis16->\ff( e) e( g) g->( ais-1) ais( cis) |
   %% 444
   cis->( e) e( g) g->( ais) ais( b) | b->( a) a( g) g( e) e( d) |
   d( b) b( g) g( e) e( d) |
   %% 447
   e''16->\ff\flageolet e d-.-4 d-. c8:16-. b:16-. |
   a:16-. g:16-.-2 fis:16-. e:16-. | d:16-. cis:16-. c:16-. a:16-. |
   fis:16-. d:16-. c:16-. a:16-. |
   \tuplet 3/2 4 {
     g8-.->\ff g-. a-. b-. a-. g-. |
     <g d' b'>-.-> g-. a-. b-. a-. g-. | <g d' d'>-> g a b-. a-. g-.} |
   \cueDuring #"pianoUp" #DOWN {R2} |
   \tuplet 3/2 4 {r8\f d'_2 e fis\< e d} | <d d' d'>4\ff r4 |
   g-4\flageolet r | <g, d' d' b'>4->\ff r8. <g\open g'-3>16 |
   \repeat percent 2 <g g'>2-> | <g d' b' g'>4->\ff r4 \bar "|."
}

pianoUpMovementIII = \relative e' {
  %% 199
  << \repeat unfold 2 \repeat tremolo 8 {ees32 d}
     s32\f^\markup \italic #"quassi trillo." >> |
  %% 201
  c8.->( fis16) fis4~ | fis2 |
  %% 203
  \repeat unfold 2 \repeat tremolo 8 {ees32 d} | c8.->( a'16) a4~ |
  %% 206
  a2 | <fis ees>8.->\f( <a fis>16) <a fis>4 | <c a>2-> |
  %% 209
  <a fis>8.->( <c a>16) <c a>4 | <ees c>2-> | r8 ees'8-. c-. a-. |
  %% 212
  fis-. ees-. c-. a-. |
  fis-. r <ees a, g>4->^\tenutoTxt |
  %% 214
  <d a fis>4-> <cis a g>-> | <d a fis>-> r8 d |
  %% 216
  <d fis a d>4->\ff r8 d'-. | <d fis a d>4->\ff r8\fermata r \bar "||"
  %% \clef "alto"
  %% 218 / 219
  << \repeat unfold 2 {r8 d,-. <g b,>4--}
     { s8_\markup\whiteout\pad-around #.5 {\dynamic "f" \italic "grazioso."} s2 s8\>} >> |
  %% 220
  << \repeat unfold 2 {r8 <d b>-.} s8\p >> |
  %% 221
  r8 <cis ais> <d b>4-- | r8 d-. <g b,>-. d-. | r8 d-. <fis c>4-- |
  %% 224
  r8 d-.\< <fis a c>4--\! | r8 d-. <fis a>4-- | r8 d-. <fis c>4-- |
  %% 227
  r8 d-.\> <g b,>-. d-. | << \repeat unfold 2 { r8 <d b>-. } s8\p >> |
  %% 229
  r8 <cis ais>-. <d b>4-- | r8\cresc <g b,>-. <d b>4-- | <dis b>4.\mf fis,8 |
  %% 232
  <ais e'>8\p( fis <ais e'> fis) | <b dis>( fis <b dis> fis) |
  %% 234
  <ais e'>8( fis\< <ais e'> fis) |
  %% 235
  << { \voiceOne dis'4.\>( fis8\!) }
     \new Voice {\voiceTwo <b, fis>2} >> \oneVoice |
  <ais e'>8( fis) <cis' e>4 |
  %% 237
  <dis b>4\cresc << {\voiceOne c8 d} \new Voice {\voiceTwo <b gis>4 } >> \oneVoice |
  %% 238
  <dis b fis>4 <e ais, fis> | <dis b fis>\f d-> |
  %% 240
  <d g b>4->\f <d g b>->~ | <d g b>8-. <cis gis' a>-.\> <d gis b>4-> |
  %% 242
  r8\p\< d-. <g b>-. d-.\! | <d fis a>4.\< r8 | <d g b>4->\f <d g b>4->~ |
  <d g b>8-. <cis gis' a>-.\> <d gis b>4-> |
  %% 246
  r8\mf <cis a>8\cresc <d b>-. <e cis>-. | <fis d>4-- d-> |
  %% 248
  <d g b>4->\f <d g b>->~ | <d g b>8-. <cis gis' a>-.\> <d gis b>4 |
  r8\p\< d-. <g b>-. d-.\! | <d fis a>4.\< r8 |
  %% 252
  <d g b>4->\mf <d eis b'>->\cresc | <d g b>2->\f |
  %% 254
  <d e g>4-- << {\voiceOne a'8( g) }
                \new Voice {\voiceTwo <e cis>4} >> \oneVoice |
  %% 255
  <fis d a>2\> |
  %% 256
  %% \tempo "Meno mosso."
  <g e a,>->\p | <d fis>8( a <d fis> a) | <cis g'>( a <cis g'> a) |
  %% 259
  <a d fis>2 | <cis g'>2 | <d fis>4 <d eis b'> | <d fis a> <e g cis> |
  <d fis d'>4.\f r8 | R2 |
  %% 265
  r8 << {\voiceOne a'4->\p}
        \new Voice {\voiceTwo <g ees>8( <fis d>)} >> \oneVoice r8 | R2 |
  %% 267
  r8 \voiceOne <a c>4->\p \oneVoice r8 |
  %% 268
  << \repeat unfold 2 {<fis c'>8-. r} s8\mf >> |
  << <fis c'>4. {s8 s\< s\!} >> r8 |
  %% 270
  <c'' a>8-.\< <b g>-. <a fis>-.^\rit <g e>-. | <fis d>4.\f r8 |
  %% 272
  %% \tempo "Tempo 1°"
  << \repeat unfold 2 {r8 <d, b>8-.} s8\p >> | r8 <cis ais>8-. <d b>4-- |
  r8 d-.\< <g b,>-. d-.\! | r8 d-.\> <fis c>4--\! |
  %% 276
  r8 d-.\< <fis a c>4->\! | r8 d-.\< <fis a>4--\! | r8 d-. <fis c>4-- |
  %% 279
  r8 d-.\> <g b,>-. d-. |
  %% 280
  << \repeat unfold 2 {r8 <d b>-.} s8\p >> | r8 <cis ais>-. <d b>4 |
  %% 282
  << {\voiceOne g8( c)}
     \new Voice {\voiceTwo e,4} >> \oneVoice <c' e,>8^\rit\cresc( <e g,>) |
  %% 283
  <e g,>-. <dis fis,>-. <e g,>-.\fermata <ais, g e>-.\!^\aTempo |
  %% 284
  <b g d>8-. r r4 | r r8 d,8-.\f | <fis d c>8 r r d'-.\f |
  %% 287
  <g d b>-. r r4 | r r8 b,,-.\f^\risoluto | e8.-> dis16-. e8-. r |
  %% 290
  <g e b>-. r <g e b>-. b,-. | c4->( b8) r | r4 r8 <fis' b,>( |
  %% 293
  <a dis, b>) <g e b>4.~ | <g e b>8 e->\f d-> c-> |
  %% 295
  b-. <cisis eis>-. <dis fis>-. r8 | r4 r8 b-.\f | e8.-> dis16 e8 r |
  r4 r8 <b' e, d>-. |
  %% 299
  << {\voiceOne b4\>( a8\!) r8}
     \new Voice {\voiceTwo <e c>4.} >> \oneVoice |
  %% 300
  <c' a>8--_\markup\whiteout\pad-around #.5 {
    \dynamic "p" \italic #"cantabile e dolce."} <b g>-- <a fis>-- <a d,>-- |
  %% 301
  <b d,>-. <ais cis,>-. <b d,>4-- | r8 <fis d>-. <a fis>-. r |
  %% 303
  r <b g>-. <d b>4-. | <c a>8--\p\< <b g>-- <a fis>-- <a d, c>-- |
  %% 305
  <b d, b>-.\f^\tenutoTxt <a dis, b>-> <g e b>-> <g e c>-> |
  %% 306
  <fis d c>-. r <fis d c>4-> | <g d b>4. r8 |
  %% 308
  << \repeat unfold 2 <fis d a>4 s4\cresc >> |
  %% 309
  <g d g,>4-.\f <e c g>8-- <e ais, g>-- |
  %% 310
  << {\voiceOne e8->^\rit( d) d4 }
     \new Voice { \voiceTwo <b g>4 \tuplet 3/2 {<gis eis>8( <a fis> <b g>)} } >> |
  \cadenzaOn
  << {\voiceOne d4\fermata}
     \new Voice {\voiceTwo <c a>} >> \oneVoice
  s32*18 <d c fis,>4\mf\fermata \cadenzaOff \bar "|"
  %% 311 / 312
  << \repeat unfold 2 { <d b g>4.-- <e b g>8-. } s4.\mf^\tranquillo >> |
  %% 313
  <d b g>8-.\p r <d g b>-.\arpeggio r8 |
  %% 314
  r8\< g-. e^>\f( d) |
  << \repeat unfold 2 {<d fis a>4.-- <d fis b>8-.} {s4.\mf s2 s8\p} >> |
  %% 317
  <d fis a>8-.\p r <d fis a d>-.\arpeggio r | r e8-.\mf e->( d) |
  %% 319
  << \repeat unfold 2 {<g d b> r r  <g e c>-.} s8\p^\leggiero >> |
  %% 321
  <g d b>8-. r <b g d>-.\arpeggio r | r4 b8-.\mf g-. |
  %% 323
  << \repeat unfold 2 { <a fis d>-. r r <b g d>-. } s8\p >> |
  %% 325
  <a fis d>8 r8 r4 | r fis,8-.\f a | b-.\p b-. <b dis fis a>4\arpeggio |
  %% 328
  <b e g>2-. | r8\< d8-. <d fis a c>4-.\arpeggio |
  %% 330
  << <d g b>2 {s4\> s8 s} >> | r8\p b8 <b dis fis a>4\arpeggio |
  %% 332
  <b e g>2 | r8 d-.\< <d fis a c>4\arpeggio\! |
  %% 334
  << <d g b>2 {s8\> s8 s4\!} >> | <e g bes>2->\f | <g bes e>-> |
  %% 337
  <g b d>4-> r8 <b d>-. | <b g>4-> r8 <b d g>-. | <b d>-. r <b g>-. r |
  %% 340
  R2 | <d a fis d>8-.\f r r4 | R2 | <d, fis a d>8-.\f r r d-. |
  %% 344
  <g d b>8.->\f <a d,>16 <b g>8.-> <c a>16 | <d b>4.-> b'16-.\mf a-. |
  g-. fis-. e-. d-. e d-. c-. b-. | d( c b c) a8-. d,-.\f |
  %% 348
  <fis d>8.-> <g b>16 <a fis>8.-> <b g>16 | <c a>4.-> e'16-.\mf d-. |
  c-. b-. a-. g-. fis-. e-. d-. c-. | e16( d cis d-.) b8 d,-.\f |
  %% 352
  <g b,>8.-> <a d,>16 <b g>8.-> <c a>16 | <d b>4.-> <b g>8-.\mf |
  <e b g>8.-> <g b,>16-.\cresc <g e b>8-.-> <a e c>-. |
  <b fis dis>8->\f\< fis16-. fis-. fis8-. fis-.\! |
  %% 356
  <ais e>8-> fis16-. fis-.\cresc <e fis dis'>8-> <e fis cis'>->\! |
  <dis fis b>8->\< fis16-. fis-. fis8-. fis-.\! |
  <e ais>8-> fis16-. fis-.\cresc <e fis dis'>8-> <e fis cis'>->\! |
  %% 359
  <dis fis b>8-> \repeat unfold 2 <b b'>16-. <<
    \repeat unfold 2 {
      <b b'>8-> \repeat unfold 2 <b b'>16-.} {s8 s16\cresc} >>
  \repeat unfold 2 <b b'>8-> |
  %% 361
  <d fis a d>4.->\f r8 | R2 | r8 <g, ees>\p( <fis d>) r | R2 |
  %% 365
  r8 <a c>4 r8 | << R2 s8^\rit >> | r8\p^\aTempo <cis, ais>8 <d b>4-- |
  r8 d8-.\< <g b,>-. d-.\! | r8 d-.\> <fis c>4->\! |
  %% 370
  r8 d-.\< <fis a c>4--\arpeggio\! | r8 d-.\< <fis a>4--\! |
  r8 d-. <fis c>4-- | r8 d-.\> <g b,> d-. |
  %% 374
  << \repeat unfold 2 {r8 <d b>} s8\p >> |
  r8 <cis ais>-. <d b>4 | r8 <g b,>-.\cresc <d b>4-- |
  <dis b>4.\mf fis,8-. |
  <ais e'>8_\markup\whiteout\pad-around #.5 \italic #"tranquillo."( fis <ais e'> fis) |
  %% 379
  <b dis>( fis <b dis> fis) | <ais e'>\<( fis <ais e'> fis\!) |
  %% 381
  << {\voiceOne dis'4.\<( fis8\!)}
     \new Voice {\voiceTwo <b, fis>2} >> \oneVoice |
  <e ais,>8\p( fis,) <e' cis>4-- |
  %% 383
  <dis b>4\mf << {\voiceOne c8--\cresc d--}
                 \new Voice {\voiceTwo <bis gis>} >> \oneVoice |
  %% 384
  <dis b fis>4 <e ais, fis> | <dis b fis> d-> | <d g b>4->\f <d g b>->~ |
  s2 %%%  <d b g>8 <cis gis' a>-.\> <d g b>4-> |
  r8\pWhiteOut\< d8-. <g b>-. d-.\! |
  << {<d fis a>4. r8} {s8 s\< s\!} >> | <d g b>4->\f <d g b>~ |
  <d g b>8 <cis g' ais>-.\> <d g b>4->\! |
  %% 392
  r8 <cis a>-. <d b>-.\cresc <e cis>-. | <fis d>4-. d-> |
  <d g b>4->\f <d g b>->~ | <d g b>8 <cis g' ais>-.\> <d g b>4-> |
  r8\pWhiteOut\< d-. <g b>-. d-.\! | << {<d fis a>4. r8} {s8 s\< s\!} >> |
  <d g b>4\mfWhiteOut <d g>\cresc | <d fis a> <d eis b'>-> |
  <d fis a>-> <e g cis> | <d fis d'>4.\f r8 |
  %% 402
  << \repeat unfold 2 {<c' fis,>-. r8} s8\p >> | <c fis,>4. r8 |
  %% 404
  <c' a>8-.\< <b g>-.^\rit <a fis>-. <g e>-. | <fis d>4.--\f r8 | R2 |
  %% 407
  r8\p <cis, ais>8 <d b>4-- | r8 d-.\< <g b,>-. d-.\! |
  r8 d-. <fis c>4-> | r8 d-.\< <fis a c>4->\! | r8 d-.\< <fis a>4->\! |
  r8 d-. <fis c>4-- | r8 d-.\> <g b,>-. d-. |
  %% 414
  << \repeat unfold 2 {r8 <d b>-.} s8\p >> | r8 <cis ais>8 <d b>4-- |
  %% 416
  << {\voiceOne g8\p^\rit\cresc( c)}
     \new Voice {\voiceTwo e,4} >> \oneVoice <e c'>8( <g e'>) |
  %% 417
  <g e'>8-. <fis dis'>-. <g e'>\fermata <ais g e>\f^\aTempo |
  <b g d>8-. r r4 | r4 r8 d,-. | <fis d c>-. r r4 |
  %% 421
  <g b>8-.\mf^\markup\italic #"con moto." r8 <b d>-. r |
  <e c>-. <d b>-. <b g>4-> | <b g>8-. r <d b> r |
  <d b'>8-. <b g'>-. <d b>4-> |
  %% 425
  << \repeat unfold 2 {r8 e-. <a, g>4->} {s8\mf s8*3 s8\< s8 s4\!} >> |
  %% 427
  <a g>2( | <fis a>8) d-.\f <d fis a d>4-> | <g b>8-.\pp r <b d>-. r |
  <c e>-. <b d>-. <b g>4-> | <b g>8-. r <b d>-. r |
  %% 432
  <d b'>-. <b g'>-. <d b>4-> | \repeat unfold 2 {r8 e-. <a, g>4->} |
  <a g>2\mf( | <fis a>8.--\<) d16-. \tuplet 3/2 {e8-. d-. c-.} |
  b4\f <b dis a'>4->~ | <b dis a'> <b fis' a>4-. |
  %% 439
  \repeat unfold 2 {<g' e b>4-. <g e b>->~ | <g e b> <g e b>-.} |
  <g e ais,>2->\ff~ | <g e ais,>-> | <g d b>4-. d-. | <d g b d>2-> |
  <d fis a d>4->\f r | R2 | <fis d c>4\f r | R2 <g d b>4-> r |
  <b g d>-> r | <g b d>-> r | \tuplet 3/2 4 {r8\f d-. e-. fis-. e-. d-.} |
  <d fis a d>4-> r | \tuplet 3/2 4 {r8 d-. e-. fis-. e-. d-.} <g d b>4 r |
  <d' g b>4 r8. <g, d b>16 |
  << \repeat percent 2 \repeat tremolo 8 {<d g>32 b} {
    s32\ff^\markup\italic #"tremolo."} >> |
  <b d g>4-.\fz r4 \bar "|."
}

pianoDownMovementIII = \relative a {
  %% 199
  \repeat unfold 2 { R2*3 | <a fis ees c>2\f } | 
  \repeat unfold 2 { R2 | r4 <a fis ees c>4->\f } |
  %% 211
  r8 <a fis ees c>8-. \repeat unfold 3 <a fis ees c>4:8-. |
  %% 213
  <a fis ees c>8 r <c, c,>4-> | <d d,>-> <ees ees,>-> |
  <d d,> r | <d fis a>-> r | <d a fis d>-> r8\fermata d8 \bar "||"
  %% 218
  \repeat unfold 2 {g,4-- r8 d'-.} | \repeat unfold 2 {g,8-. r} |
  %% 221
  g'4.-- d8-. | g,2 | a | d, | d' | d,4. \acciaccatura cis'8 d-. |
  %% 227
  g,2 | \repeat unfold 2 {g'8-. r} | g4.-- d8-. | g,4. <g g'>8-. |
  %% 231
  <g g'>4. r8 | r4 fis | b2 | cis4( fis,) | b8( ais b dis) |
  %% 236
  cis4-- ais8( fis) | gis4 e8-. eis-. | fis4 <fis fis,> |
  %% 239
  <b b,> <d d,> | \repeat unfold 2 <g, g,>-> | <g g'>2-> | g |
  %% 243
  r8 d-. d'-. r | \repeat unfold 2 <g, g,>4-> | <g g'>2 | a |
  %% 247
  d4 <d d,>-> | \repeat unfold 2 <g, g,>4-> | <g g'>2 | g2 |
  %% 251
  r8 d d'-. r | <g g,>4-> <gis gis,>-> | <a a,>2-> |
  %% 254
  <bes bes,>4-- <a a,> | d,8-. a-. d4-> | r8 a-. b-. cis-. | d2 |
  %% 258
  e4( a,) | d8-. a( b a) | r8 a8-. ais4 | b gis | a2 |
  %% 263
  r8 d d,-. r | R2*3 |
  %% 267
  \change Staff="up" \voiceTwo s8 ees''8( d) s \oneVoice \change Staff = "down" |
  \repeat unfold 2 { <d a d,>8-. r } |
  %% 269
  <d a d,>8 \tuplet 3/2 {d,16( fis a} d8) r8 |
  %% 270
  << {\voiceOne fis,8-. g-. a-. b-. | c4. }
     \new Voice {\voiceTwo d,2~ | d4.-- } >> \oneVoice r8 |
  %% 272
  \repeat unfold 2 {g,8-. r} | g'4.-- d8 | g,2 | a | d, | d' |
  %% 278
  d,4. \acciaccatura cis'8 d8-. | g,2 | \repeat unfold 2 {g8-. r} |
  %% 281
  g'2 | \repeat unfold 2 <c, c,>4 | <c c,>~ <c c,>8\fermata <cis cis,>-. |
  %% 284
  <d d,>8 r r4 | R2 | <d d,>8-. r r4 | r8 d-.\f g-. r | r4 r8 b,-. |
  %% 289
  e8.-> dis16 e8-. r | e8-. r e-. b-. | c4->( b8) r | r4 r8 dis( |
  %% 293
  fis) e4.~ | e8 e-> d-> c-> | b4.-> r8 | r4 r8 b-. | e8.-> dis16 e8 r |
  %% 298
  r4 r8 gis-. | a4. r8 | d,,4. fis8 | g2 | d4. d'8-. | g,2 | d4. fis8-. |
  %% 305
  g-> fis-> e-> c-> | d8-. r d'4-> | g,8-. g'4-> fis16-. e-. | d4 c |
  %% 309
  b <c c,>8 <cis cis,> | <d d,>2~ |
  \cadenzaOn <d d,>4 s32*18 d4\fermata \cadenzaOff \bar "|"
  %% 311
  \repeat percent 2 {g,4.-- e8-.} | g2 | r8 g'-. e->( d) |
  %% 315
  \repeat percent 2 {d4.-- b8-.} | d2 | r8 e-. e->( d) |
  %% 319
  \repeat percent 3 { g8-. r r g-.} | r4 b8-. g-. |
  %% 323
  \repeat percent 2 { d8-. r r d-.} | d8-. r r4 | r4 fis,8-. a-. |
  %% 327
  b2\fp | r4 e,8( e') | d2 | r4 g,8( g') |
  %% 331
  b,2 | e,8( d') r4 | d2 | g,8( g') r4 | cis,2-> | <cis cis,>-> |
  %% 337
  \repeat percent 2 {<d d,>4-> r} | R2 | <d' b>8-. r <b g>-. r |
  %% 341
  <a d,>-. r r4 | R2 | <d, d,>8-. r r d-. |
  %% 344
  << {\voiceTwo <g^~ g,_~>2-> | <g g,>4 s8}
     \new Voice {
       \voiceOne d2->_~ | d8 \tuplet 3/2 {cis16_( d e} d8) } >> \oneVoice r8 |
  %% 346
  g,8-. <g' b>4.-> | <a fis d>4.-- r8 | <d, d,>2->~ |
  %% 349
  <d d,>8 \tuplet 3/2 {cis16_( d e} d8) r | d,8-. <d' fis c'>4.-> |
  <b' g>4.-> r8 |
  %% 352
  << {\voiceTwo <g^~ g,_~>2-> | <g g,>4 s8}
     \new Voice {
       \voiceOne d2->_~ | d8 \tuplet 3/2 {cis16_( d e} d8) } >> \oneVoice r8 |
  %% 354
  e'8.-> dis16 e8 c-> | b8-> <fis fis'> <fis fis'>4:8 |
  %% 356
  <fis fis,>4.-> <ais ais,>8-. | <b b,>8-> <fis fis'> <fis fis'>4:8 |
  <fis fis,>4.-> <fis fis,>8 |
  %% 359
  \repeat percent 2 \repeat unfold 2 {<b b,>8-> <b b,>-.} |
  %% 361
  <d, d,>4.-> r8 | R2 | r8 a'( d) r | R2 | r8 ees( d) r | R2 | g,4. d8 |
  %% 368
  g,2 | a | d, | d' | d,4. \acciaccatura cis'8 d | g,2 |
  %% 374
  \repeat unfold 2 {g'8-. r} | g4.-- d8-. | g,4. <g g'>8-. |
  <g g'>4. r8 | r4 g | b2 | cis4( fis,) | b8( ais b dis) |
  %% 382
  cis4-- ais8( fis) | gis4 e8-- eis-- | fis4 <fis a,> |
  %% 385
  <b b,> <d d,>-> | \repeat unfold 2 <g, g,>4-> | <g g'>2 | g |
  %% 389
  r8 d-. d'-. r | \repeat unfold 2 <g, g,>4-> | <g g'>2 | a2 |
  %% 393
  d4-. < d d,>-> | \repeat unfold 2 <g, g,>4-> | <g g'>2 | g |
  r8 d-. d'-. r | <g, g'>4 <b b'> | <a a'> <gis gis'> |
  %% 400
  <a a'>2 | r8 a8-. d-. r | \repeat unfold 2 {<d a' d>8-. r} |
  <d a' d>8 \tuplet 3/2 {d16( fis a} d8) r8 |
  %% 404
  << {\voiceOne fis,8-. g-. a-. b-. | c4.--}
     \new Voice {\voiceTwo d,2~ | d4.} >> \oneVoice r8 | R2
  %% 407
  g4.-- d8 | g,2 | a | d, | d' | d,4. \acciaccatura cis'8 d |
  %% 413
  g,2 | \repeat unfold 2 {g8-. r} | g'2 | \repeat unfold 2 <c, c,>4 |
  <c c,>4.\fermata <cis cis,>8-. | <d d,>-. r r4 | R2 |
  %% 420
  <d d,>8-. r r4 | \repeat unfold 2 {
    \repeat unfold 2 { <g d g,>8-. r} | <g d g,>2 } | <c, c,>2-> |
  %% 426
  <cis cis,> | <d d,>2->~ | <d d,>8 r <d d,>4-> |
  %% 429
  \repeat unfold 2 {
    \repeat unfold 2 {<g d g,>8-. r} | <g d g,>2
  }
  <c, c,>2 | <cis cis,>2 | <d d,>2~ |
  <d d,>8. d16-. \tuplet 3/2 {e8-.( d-. c-.)} | b4. b8-. | b,2 |
  e4. e'8-. | e,2 | c4. c'8-. | c,2 | cis( | cis') | d4 r | R2 |
  \repeat unfold 2 { <d d,>4-> r | R2 } | <g g,>4-> r | <d d,>-> r |
  <b b,>-> r | \tuplet 3/2 4 {r8 d-. e-. fis-. e-. d-.} |
  d4 r | \tuplet 3/2 4 {r8 d-. e-. fis-. e-. d-.} |
  << \repeat percent 4 \repeat tremolo 8 {g,,32 g'}
     s2^\markup\whiteout\pad-around #.5 \italic #"tremolo." >> |
  <g g,>4-. r \bar "|."
}

   \addQuote #"pianoUp" {\pianoUpMovementI \pianoUpMovementII \pianoUpMovementIII}

%%% ------------

\header {
  arranger = ##f
  composer = "Friedrich Seitz"
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 12"
  source = "http://imslp.org/"
  title = "Student's Concerto No III."
}

\include "paper.ily"


\book {
  \bookOutputName #"Friedrich_Seitz-opus_12"
  \bookOutputSuffix #"piano"

  \score {
    <<
      \new Staff \with {
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
      } {
        \killCues {
          \globalMovementI   \violinMovementI
          \globalMovementII  \violinMovementII
          \globalMovementIII \violinMovementIII
        }
      }
      \new PianoStaff <<
        \new Staff = "up" \with {
          \accidentalStyle modern-cautionary
        } {
          \globalMovementI   \pianoUpMovementI
          \globalMovementII  \pianoUpMovementII
          \globalMovementIII \pianoUpMovementIII
        }
        \new Staff = "down" \with {
          \accidentalStyle modern-cautionary
        } {
          \clef #"bass"
          \globalMovementI   \pianoDownMovementI
          \globalMovementII  \pianoDownMovementII
          \globalMovementIII \pianoDownMovementIII
        }
      >>
    >>
  }
}

   \book {
     \bookOutputName #"Friedrich_Seitz-opus_12"
  \bookOutputSuffix #"violin"

  \score {
    \new Staff \with {
      \accidentalStyle modern-cautionary
    } {
      \compressFullBarRests
      \globalMovementI   \violinMovementI
      \globalMovementII  \violinMovementII
      \globalMovementIII \violinMovementIII
    }  
  }
}

\include "articulate.ly"

\book {
  \bookOutputName #"Friedrich_Seitz-opus_12"
  \score {
    \articulate \unfoldRepeats
    \new StaffGroup <<
      \new Staff \with {
        midiInstrument = #"violin"
      } {
        \killCues {
          \globalMovementI   \violinMovementI
          \globalMovementII  \violinMovementII
          \globalMovementIII \violinMovementIII
        }
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