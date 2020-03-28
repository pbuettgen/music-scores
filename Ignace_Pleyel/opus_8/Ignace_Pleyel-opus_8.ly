%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2016-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\version "2.20"

\include "lily-snippets.ily"

titleduoImovementI = ##f

globalduoImovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key c \major
}

violinIduoImovementI = \new Voice \relative g' {
  \violinVoiceSettings
  
  \repeat volta 2 {
    g1\p | a | b | c2 r | e1 | d | c2 a | g r4 b-.\f\upbow |
    %% 9
    c-. d-. c-. b-. | a2 r4 cis-. | d-. e-. d-. c-. | b2 r4 d-. |
    %% 13
    g-. a-. g-. f-. | e-. d-. c-. b-. | a2 b | c r4 c\p | d2( e) |
    %% 18
    c( g4) c | d2( e) | c4-.\f g-. c-. d-. | e2 r4 b-. |
    %% 22
    c-. e-. g-. f-. | e2 r4 b-. | c-. e-. a-. g-. | fis2 r4 d-. |
    %% 26
    g-. fis-. e-. d-. | c-. a-. b-. cis-. | d <d d,> <d d,> r |
    %% 29
    b2_\dolce\downbow( c) | d( c4 b) | e-. e-. d-. d-. | d( c) b-. r |
    %% 33
    g'2( fis) | e2.( d4) | <c d,>-. <c d,>-. <b d,>-. <b d,>-. |
    %% 36
    <b d,>2( <a d,>4-!) r | b2\downbow d8( c b c) | d2 c8( b c d) |
    %% 39
    e4-. e-. d-. d-. | d( c) b-. r | g'2 fis8( a g fis) |
    %% 42
    e2( d4-!) d-. | d( c b a) | g2 r4 <b d,>-.\upbow |
    <c d,>-. <c d,>-. <a d,>-. <a d,>-. | <b d,>2 r4 g' |
    %% 47
    a-. a-. fis8( g a fis) | g2 r4 <b, d,>4-.\upbow |
    <c d,>-. <c d,>-. <a d,>-. <a d,>-. | <b d,>2 r4 g' |
    %% 51
    a-. a-. fis8( g a fis) | g4 a8( fis) g4 a8( fis) |
    %% 53
    g4 r <g b,>\f\downbow r | <g b,>2\downbow r
  }
  \repeat volta 2 {
    %% 55
    b,1\p\downbow | c | dis | e2 r | g1 | f | d2 g | e r4 g,\f |
    %% 63
    c-. g-. c-. d-. | e2 r4 e,-. | f-. c'-. f-. e-. | d2 e4-. d-. |
    %% 67
    cis-. e-. a-. g-. | f2 r4 fis,-.\upbow | g-. d'-. g-. f-. |
    %% 70
    e2 f4-. e-. | d2 e4-. d-. | c2 b4-.( a-.) | gis1\p | e | f |
    %% 76
    d2( g) | g1 | a | b | c2 r | e1 | d | c2 a | g r4 b-.\f |
    %% 85
    c-. d-. c-. b-. | a2 r4 cis-.\upbow | d-. e-. d-. c-. |
    %% 88
    b2 r4 d-.\upbow | g-. a-. g-. f-. | e2 a4-. g-. | f-. e-. d-. c-. |
    %% 92
    b <b g'> <b g'> r | e,2\p\downbow( f) | g( f4 e) | a-. a-. g-. g-. |
    %% 96
    g( f) e-. r | c'2( b) | a2.( g4) |
    <f g,>-. <f g,>-. <e g,>-. <e g,>-. | <e g,>2( <d g,>4-!) r |
    e2\downbow g8( f e f) | g2 f8( e f g) | a4-. a-. g-. g-. |
    g( f) e-. r | c'2 b8( d c b) | a2( g4) g-. | g( f e d) |
    c2 r4 <e g,>4\upbow |
    \repeat unfold 2 {<f g,>-.} \repeat unfold 2 {<d g,>-.} |
    <e g,>2 r4 c' | d-. d-. b8( c d b) | c2 r4 <e, g,>4\upbow |
    \repeat unfold 2 {<f g,>-.} << {\voiceOne d8( e f d) }
				   \new Voice {\voiceTwo g,2} >> \oneVoice |
    <e' g,>2 r4 c'\upbow | d-. d-. b8( c d b) |
    c-.( g-.\f) a-. b-. c-. b-. c-. d-. | e4-! f-! e-! f-! |
    e8-. b-. c-. d-. e-. d-. e-. f-. | g4-! g-! e-! c-! |
    a-! f-! d-! <d g, b'>\downbow |
    \repeat unfold 2 {<e g, c'>\downbow r} | <e g, c'>2\downbow r
  }
}

violinIIduoImovementI = \new Voice \relative e' {
  \violinVoiceSettings

  \repeat volta 2 {
    <c e>4\p \repeat unfold 3 {<e c>} | \repeat unfold 4 {<f c>4} |
    %% 3
    \repeat unfold 4 {<d g,>} | \repeat unfold 4 {<e c>} |
    %% 5
    \repeat unfold 4 {<g c,>} | \repeat unfold 4 {<g b,>} |
    \repeat unfold 2 {<g a,>} \repeat unfold 2 {<fis d>} |
    %% 8
    <g g,> g,-.\f g'-. f-. | e2 r4 e-. | f-. g-. f-. e-. |
    %% 11
    d2 r4 fis-. | g-. a-. g-. f-. | e2 r4 g-. | c-. gis-. a-. e-. |
    %% 15
    f-. d-. g-. g,-. | c <e g,>\p <e g,> <e g,> |
    %% 17
    << {\voiceOne f2( g) } \new Voice {\voiceTwo g,1} >> \oneVoice |
    %% 18
    \repeat unfold 4 {<e' g,>4} |
    %% 19
    << {\voiceOne f2( g) } \new Voice {\voiceTwo g,1} >> \oneVoice |
    %% 20
    e'4 r r2 | c4-.\f g-. c-. d-. | e2 r4 b-. | c-. e-. g-. f-. |
    %% 24
    e2 r4 cis-. | d-. a'-. d-. c-. | b-. d-. c-. b-. |
    %% 27
    a-. fis-. g-. e-. | d <fis a> <fis a> r | g2_\dolce\downbow( a) |
    %% 30
    b( a4 g) | <g c>-. <g c>-. <g b>-. <g b>-. | <a fis>2( g4) b |
    %% 33
    e2( d) | c2.( b4) | a-. a-. g-. g-. | g2( fis4-!) r |
    g2\downbow b8( a g a) | b2 a8( g a b) |
    %% 39
    <g c>4-. <g c>-. <g b>-. <g b>-. | fis8( d e fis) g( b c d) |
    %% 41
    e4-. g,-. d'-. g,-. | c-. g-. b-. g-. | b( a g fis) |
    %% 44
    g8-.\upbow d-. g8-. d-. \repeat tremolo 2 { g-. d-.} |
    %% 45
    \repeat tremolo 2 {a'-. d,-.} \repeat tremolo 2 {fis-. d-.} |
    \repeat tremolo 2 {g-. d-.} g-. d-. b'-. d,-. |
    %% 47
    \repeat tremolo 2 {c'-. d,-.} a'-. d,-. c'-. d,-. |
    \repeat tremolo 2 {b'-. d,-.} b'-. d,-. g-. d-. |
    %% 49
    \repeat tremolo 2 {a' d,} \repeat tremolo 2 {fis d} |
    \repeat tremolo 2{g d} g d b' d, |
    %% 51
    \repeat tremolo 2 {c' d,}
    << {\voiceOne a'( b c a)} \new Voice {\voiceTwo d,2} >> \oneVoice |
    %% 52
    \repeat percent 2 {<< {\voiceOne b'4 c8( a)}
			  \new Voice {\voiceTwo d,4 d} >>} \oneVoice |
    %% 53
    <b' d,>4 r <d, g,>\f\downbow r | <d g,>2\downbow r
  }
  \repeat volta 2 {
    %% 55
    <e g,>4\p\downbow \repeat unfold 3 {<e g,>} |
    \repeat unfold 4 {<e a,>} | \repeat unfold 4 {<a b,>} |
    \repeat unfold 4 {<g c,>} | \repeat unfold 4 {<e c>} |
    \repeat unfold 4 {<a c,>} |
    %% 61
    \repeat unfold 2 {<g b,>} \repeat unfold 2 {<d b>} |
    c-. g-.\f c-. d-. | e2 r4 b-. | c-. g'-. c-. bes-. | a2 r4 a-. |
    %% 66
    bes-. a-. g2 | a r4 cis,-. | d-. a'-. d-. c-. | b2 r4 g-.\upbow |
    c-. b-. a2 | b4-. a-. gis2 | a4-. f-. d-. dis-. |
    %% 73
    e <e b>\p \repeat unfold 2 {<e b>} |
    r \repeat unfold 3 {<gis b,>} | r \repeat unfold 3 {<g b,>} |
    r <g b,>\upbow <g b,> <d b> | \repeat unfold 4 {<e c>} |
    \repeat unfold 4 {<f c>} | \repeat unfold 4 {<d g,>} |
    %% 80
    \repeat unfold 4 {<e c>} | \repeat unfold 4 {<g c,>} |
    \repeat unfold 4 {<g b,>} |
    %% 83
    \repeat unfold 2 {<g a,>} \repeat unfold 2 {<fis d>} |
    <g g,> g,-.\f g'-. f-. | e2 r4 e-. | f-. g-. f-. e-. |
    %% 87
    d2 r4 fis-. | g-. a-. g-. f-. | e2 r4 g-.\upbow |
    %% 90
    c-. d-. c-. b-. | a-. g-. f-. fis-. |
    g \repeat unfold 2 {<d g,>} r | c2\p\downbow( d) | e( d4 c) |
    %% 95
    \repeat unfold 2 {<f c>-.} \repeat unfold 2 {<e c>-.} |
    g,( a8 b) c4-. e-. | a2-4( g) | f2.( e4) | d-. d-. c-. c-. |
    %% 100
    c2( b4-!) r | c2\downbow e8( d c d) | e2 d8( c d e) |
    %% 103
    f4-. f-. e-. e-. | d8( g, a b) c( e f g) | a4-. c,-. g'-. c,-. |
    %% 106
    f-. c-. e-. c-. | e( d c b) |
    %% 108
    c8-.\upbow g-. c-. g-. \repeat tremolo 2 {c-. g-.} |
    \repeat tremolo 2 {d'-. g,-.} \repeat tremolo 2 {b-. g-.} |
    %% 110
    \repeat tremolo 2 {c-. g-.} c-. g-. e'-. g,-. |
    \repeat tremolo 2 {f'-. g,-.} d'-. g,-. f'-. g,-. |
    %% 112
    \repeat tremolo 2 {e'-. g,-.} e'-. g,-. c-. g-. |
    \repeat tremolo 2 {d'-. g,-.} b( c d b) |
    %% 114
    \repeat tremolo 2 {c-. g-.} c-. g-. e'-. g,-. |
    \repeat tremolo 2 {f'-. g,-.} << {\voiceOne d'( e f d)}
				     \new Voice {\voiceTwo g,2} >> \oneVoice |
    %% 116
    <e' g,>4 r r8 g-.\f\upbow a-. b-. |
    \repeat percent 2 {c-. g-. b-. g-.} |
    %% 118
    c-. g-. a-. b-. c-. b-. c-. d-. | e4-! g,-! e-! c-! |
    %% 120
    a-! d-! b-! <g f'>-! | <e' c> r <e c>\downbow r | <e c>2\downbow r
  }
}

titleduoImovementII = ##f

globalduoImovementII = {
  \time 3/4
  \tempo "Tempo di Menuetto" 4 = 111
  \key c \major
}

violinIduoImovementII = \new Voice \relative g' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 g4\p | c( b c) | d2( e4) | c( b c) | d2( g,4) |
    %% 5
    c( b a | g f e) |
    %% 7
    << {\voiceOne d( f e)} \new Voice {\voiceTwo g,2.} >> \oneVoice |
    %% 8
    <d' g,>4 r g | c( b c) | d2( e4) | c( b c | d2) g,4\f | c( b a) |
    g( b c) | d2( b4) | c2
  }
  \repeat volta 2 {
    e4\p\upbow | a( b a) | gis2( e4) | g( a g) | fis2( d4) | f( g f) |
    %% 22
    e2( d4) | c( b a) | gis2( g4) | c( b c) | d2( e4) | c( b c |
    %% 28
    d2) g,4\f | c( b a) | g( b c) | d2( b4) | c2
  }
  e,4\downbow( | a) r e( | b') r e,( | d') r e,( | c') r e,( |
  %% 37
  b') r gis-. | a( d, dis) | e-. gis-. gis-. | gis2 e4( | a) r e( |
  %% 42
  b') r e,( | cis') r d,( | d') r d,( | gis,2.) | a4( d e) |
  %% 47
  a,-. \repeat unfold 3 {<c e>-.} r r | r4 a''2\downbow |
  %% 50
  r4 gis2\downbow | r4 f2\downbow | r4 e2\downbow | r4 d\downbow( b) |
  %% 54
  c( b a) | gis-. e-. e-. | e-. r r | r a'2\downbow | r4 gis2\downbow |
  %% 59
  r4 g2\downbow | r4 f2\downbow | r4 e\downbow( d) | c( b gis) |
  %% 63
  a-. e-. c-. | a-. r r | r cis'2\downbow | r4 d2\downbow |
  %% 67
  r4 b2\downbow | r4 r g\p\upbow | c( b c) | d2( e4) | c( b c) |
  d2( g,4) | c( b a | g f e) |
  %% 75
  << {\voiceOne d( f e)} \new Voice {\voiceTwo g,2.} >> \oneVoice |
  %% 76
  <d' g,>4 r g | c( b c) | d2( e4) | c( b c | d2) g,4\f | c( b a) |
  %% 82
  g( b c) | d2( b4) | c r e\p\upbow | a( b a) | gis2( e4) | g( a g) |
  %% 88
  fis2( d4) | f( g f) | e2( d4) | c( b a) | gis2( g4) | c( b c) |
  %% 94
  d2( e4) | c( b c | d2) g,4\f | c( b a) | g( b c) | d2( b4) |
  %% 100
  \repeat unfold 2 { c8( d e f g a) | g2( f4) | e-. d-. b-. } |
  c r <b d, g,>\downbow | <c e, g,>\downbow r <b d, g,>\downbow |
  <c e, g,>\downbow <c e,> <c e,> |
  <c e,>2 r4 \mark \markup { \musicglyph #"scripts.ufermata" } \bar "|."
}

violinIIduoImovementIIvoltaI = {
  << {\voiceOne e4\p( d e) | f( d g) | e( d c)}
     \new Voice {\voiceTwo g2. | g2. | g2.} >> \oneVoice | b4( g f') |
  e( g f | e d c) | b( d c) | b( g) r |
  << {\voiceOne e'4\downbow( d e) | f( d g) | e( d c | b g)}
     \new Voice {\voiceTwo g2. | g2. | g2.} >> \oneVoice f'4\f |
  e( g f) | e( d e) | f( d g) | e( c)
}

violinIIduoImovementIIvoltaII = {
  r4 | r r a'\p\upbow | d( e d) | cis2( a4) | c( d c) | b2( g4) |
  c( g gis) | a( d, dis) | e( e') r |
  << {\voiceOne e,4\downbow( d e) | f( d g) | e( d c | b g)}
     \new Voice {\voiceTwo g2. | g2. | g2.} >> \oneVoice f'4\f |
  e( g f) | e( d e) | f( d g) |
}

violinIIduoImovementII = \new Voice \relative e' {
  \violinVoiceSettings

  \repeat volta 2 {\partial 4 r4 | \violinIIduoImovementIIvoltaI }
  \repeat volta 2 { \violinIIduoImovementIIvoltaII e( c) }
  r | r a''2\downbow | r4 gis2\downbow | r4 f2\downbow | r4 e2\downbow |
  r4 d\upbow( b) | c( b a) | gis <b e,> <b e,> | <b e,>2 r4 |
  r a'2\downbow | r4 gis2\downbow | r4 g2\downbow | r4 f2\downbow |
  r4 e4\downbow( d) | c( b gis) |
  a-. \repeat unfold 3 {<a a,>-.} r e\downbow( |
  a) r e( | b') r e,( | d') r e,( | c') r e,( | b') r gis |
  a( d, dis) | e \repeat unfold 3 {<gis b,>} r e\downbow( | a) r e( |
  b') r e,( | cis') r d,( | d') r d,( | gis,2.) | a4( d e) |
  a,-. \repeat unfold 3 {<c e>-.} r a\downbow( | g') r a,( | f') r g,( |
  f') r g,( | f'2.) |
  \violinIIduoImovementIIvoltaI \violinIIduoImovementIIvoltaII
  c,2 r4 | b8\upbow( c d e f g) | a4-. f-. g-. | c,2 r4 |
  b8\downbow( c d e f g) | a4-. f-. g-. |
  \repeat percent 2 { c,-. e-. g-. } | c,-. <c e> <c e> |
  <c e>2 r4 \bar "|."
}

%%% ----------- Duo II ------------

titleduoIImovementI = ##f

globalduoIImovementI = {
  \time 4/4
  \tempo "Allegro" 4 = 123
  \key g \major
}

violinIduoIImovementI = \new Voice \relative g' {
  \violinVoiceSettings

  \repeat volta 2 {
    g2\f g, | b' b, | d' g | <c, d,>4-! <b d,>-! r2 | a2 a, | c' c, |
    %% 7
    e' a | <d, e,>4-! <c e,>-! r2 | c4\p( a b g) | d( e8 fis) g4( a8 b) |
    %% 11
    c4( a b g) | d( e8 fis) g4-. r | e'2-4\f c4-. a-. | a'2 fis4-. d-. |
    %% 15
    g << {\voiceOne d4( c b) }
	 \new Voice {\voiceTwo d,2.} >> \oneVoice |
    %% 16
    <b' d,>2( <a d,>4) r | a\p\downbow( d) d-. d-. | d2( cis4-!) r |
    %% 19
    a( fis') fis-. fis-. | fis2( e4-!) r | a,4( a') a-. a-. |
    %% 22
    a8( fis b a) g2 | g8( e a g) fis2 |
    e8\f( b' g e) d4-. cis-. \mark \default |
    %% 25
    d-. r r d_\dolce\upbow | cis( a) d( e8 fis) | g2( fis4-!) d-. |
    %% 28
    cis4( a) d( e8 fis) | g2( fis4) b\cresc( | e, a d, g) |
    cis,( fis) b,( e) |
    %% 32
    cis-! d-!\f e-! <cis e,>-! | <d d,>8( a\p fis a) fis( a fis a) |
    %% 34
    g( a g a) fis( a fis a) | e( cis' e, cis') d,( d' a fis) |
    %% 36
    g( a g a) fis( a fis a) | e( cis' e, cis') d,4-. d'~\cresc |
    %% 38
    d cis2 b4-.\upbow | e8-. d-. cis-. b-. a-. g-. fis-. e-. |
    %% 40
    d4-. d'-!\f e-! <cis e,>-! |
    %% 41
    << {\voiceOne d4( a b cis) | d4( a b cis) }
       \new Voice {\voiceTwo d,1\p | d2. e4} >> \oneVoice |
    %% 43
    <cis' e,>1\pp( | <d d,>4-.) r r2
  }
  \repeat volta 2 {
    %% 45
    b2\f b, | c' c, | fis' fis, | g4-! g'-! r2 | e2 e, | f' f, |
    %% 51
    gis' gis, | a4-! a'-! r2 | c,2\p c4( cis) | d2 c8( b a g) |
    %% 55
    c4( d) e8-4( c a d) | <c e,>2( <b d,>4-!) r |
    %% 57
    c2\downbow c4( cis) | d2 c8( b a g) | c4\cresc( d e) cis-. |
    %% 60
    d( e f) dis-. \mark \default | e8\f( g b a) g( fis e d) | c2 a' |
    %% 63
    d,8( f a g) f( e d c) | b2 g' | c,\p b4 c8-. d-. | e2 d4 r |
    %% 67
    cis2 c | b( a4) g-. | fis8-. d-. e-. fis-. g-. a-. b-. cis-. |
    %% 70
    d-. fis,-. g-. a-. b-. cis-. d-. e-. |
    fis-. a,-. b-. cis-. d-. e-. fis-. g-. |
    %% 72
    a-. g-. fis-. e-. d-. c-. b-. a-. | g2\f g, | b' b, | d' g |
    %% 76
    <c, d,>4-! <b d,>4-! r2 | a2 a, | c' c, | e' a |
    %% 80
    <c, d,>4-! <b d,>4-! r2 | c4\p( a b g) | d( e8 fis) g4 r |
    %% 83
    d'( b c a) | e( fis8 gis) a4-. r | f'( d e c) | g( a8 b) c4-. d-. |
    %% 87
    e\cresc( d) <c d,>( <b d,>) | a\f <d d,> <d d,> r \mark \default |
    %% 89
    R1 | d,4\p( a'-4) a-. a-. | a2( g4-!) r | d( c') c-. c-. |
    %% 93
    c2( b4-!) r | e2 e8( a fis e) | d2 d8( g e d) | c2 c8( e d c) |
    %% 97
    b4-! g'-!\f a-! <fis a,>-! | <g b,> r r g,-.\dim |
    %% 99
    fis( d) g( a8 b) | c2( b4) g-. | fis( d) g( a8 b) |
    %% 102
    c2( b4) e-4\cresc( | a, d g, c) | fis,( b) e,( a-4) |
    %% 105
    fis-! g-!\f a-! fis-! \mark \default | g8\p( d b d) b( d b d) |
    c( d c d) b4-. g'-.\upbow | fis( d) g( a8 b) | c2( b4) g-. |
    %% 110
    fis( d g) g'~\cresc | g fis2 e4-. | e8( d c b) a( e' d c) |
    b4-. g'-!\f a-! <fis a,>-! | <g b,> b,-.\pp( b-. b-.) |
    d2( c4 d) | b-. g-.( g-. g-.) | b2( a4 b) |
    \repeat percent 2 {
      << {\voiceOne g( d e fis) }
	 \new Voice {\voiceTwo g,1 } >> \oneVoice } |
    <g' g,>4 r <a d, fis'>\f\downbow r | <b d, g, g''>2\downbow r
  }
}

violinIIduoIImovementI = \new Voice \relative g' {
  \violinVoiceSettings

  \repeat volta 2 {
    R1 | g2\f g, | b' b, | <fis' a,>4-! <g g,>-! r2 | R1 | a2 a, |
    %% 7
    c' c, | <gis' b,>4-! <a a,>-! r2 | R1 | c4\p( a b g) |
    %% 11
    d( e8 fis) g4( a8 b) | c4( a b g) |
    %% 13
    <e c>8\f \repeat unfold 3 {<e c>} \repeat tremolo 4 {<e c>} |
    \repeat unfold 2 {\repeat tremolo 4 {<d c>}} |
    <d b>4 <g b,>( <fis a,> <g g,>) | g2( fis4) r | R1 |
    %% 18
    a,4\p( e') e-. e-. | e2( d4-!) r | a( g') g-. g-. |
    %% 21
    g2( fis4-!) g8 a | b2 b8( g c b) | a2 a8( fis b a) |
    %% 24
    g4\f e8( g) <fis a,>4 <e a,> \mark \default |
    d8 <fis a>\p <fis a> <fis a> \repeat tremolo 4 {<fis a>} |
    %% 26
    \repeat tremolo 4 {<g a>} \repeat tremolo 4 {<fis a>} |
    \repeat tremolo 4 {<cis' e,>} <d d,> <a fis> <a fis> <a fis> |
    %% 28
    \repeat tremolo 4 {<g a>} \repeat tremolo 4 {<fis a>} |
    \repeat tremolo 4 {<cis' e,>} <d d,>4\cresc d~ | d cis2 b4~ |
    %% 31
    b a2 g4~ | g fis-!\f\upbow g-! <g a,>-! |
    %% 33
    <fis a,> r r d'_\dolce | cis( a) d( e8 fis) | g2( fis4-!) d |
    cis( a) d( e8 fis) |
    %% 37
    \acciaccatura a8 g8( fis g a) fis4\cresc b8-. b-. |
    b( e,) a-. a-. a( d,) g-. g-. |
    g-. fis-. e-. d-. cis-. b-. a-. g-. |
    fis4 <fis a>-!\f <g b>-! <g a,>-! | <fis a,> fis\p( g e) |
    %% 42
    fis fis( g) <g a,>\upbow | <g a,>1\pp( | <fis a,>4) r r2
  }
  \repeat volta 2 {
    %% 45
    R1 | a2\f a, | dis' dis, | e4-! e'-! r2 | R1 | d2 d, | b' b, |
    c4-! c'-! r2 |
    %% 53
    <e, g,>8\p \repeat unfold 3 {<e g,>} \repeat tremolo 4 {<e g,>} |
    \repeat unfold 2 {\repeat tremolo 4 {<f g,>}} |
    e8( c b g) c( e f d) | g( fis g fis) g( f e d) |
    \repeat unfold 2 {\repeat tremolo 4 {<e g,>8}} |
    %% 58
    \repeat unfold 2 {\repeat tremolo 4 {<f g,>}} |
    e8\cresc( c b g) c( e a g) | f( d cis a) d( f b a) \mark \default |
    %% 61
    g2\! r | a8\f( c e d) c( b a g) | fis2 d' | g,8( b d c) b( a g fis) |
    e\p( g e g) d( g d g) | c,( g' c, g') b,( g' b, g') |
    %% 67
    a,( e' g e) a,( d fis d) | g,( b d g) c,( e cis e) | d4 r r2 |
    r8 d8-.\upbow e-. fis-. g-. a-. b-. cis-. |
    d-. fis,-. g-. a-. b-. cis-. d-. e-. |
    %% 72
    fis-. e-. d-. c-. b-. a-. g-. fis-. | <g g,>4 r r2 | g2\f g, |
    b' b, | <fis' a,>4-! <g g,>-! r2 | R1 | a2 a, | c' c, |
    %% 80
    <gis' b,>4-! <a a,>-! r2 | R1 | c4\p( a b g) | e( fis8 gis) a4 r |
    d\downbow( b c a) | g( a8 b) c4 r | f,4\upbow( d e b) |
    c\cresc( b) <fis' a,>( <g g,>) |
    %% 88
    d4\f <fis a> <fis a> r \mark \default | d\p( g) g-. g-. |
    %% 90
    g2( fis4-!) r | d( b') b-. b-. | b2( a4-!) r | d,( d') d-. d-. |
    %% 94
    d8( b e d) c2 | c8( a d c) b2 | b8( g c b) a4-. fis-. |
    g-! e-!\f c-! d-! |
    %% 98
    g,8 <b d>\p <b d> <b d> \repeat tremolo 4 {<b d>} |
    \repeat tremolo 4 {<c d>} \repeat tremolo 4 {<b d>} |
    %% 100
    \repeat tremolo 4 {<a fis'>} <g g'> \repeat unfold 3 {<b d>} |
    \repeat tremolo 4 {<c d>} \repeat tremolo 4 {<b d>} |
    %% 102
    \repeat tremolo 4 {<a fis'>} <g g'>4 g'~\cresc | g fis2 e4~ |
    e d2 c4~ | c b-!\f c-! d-! \mark \default | g, r r g'_\dolce |
    %% 107
    fis( d) g( a8 b) | c2( b4) g' | fis( d) g( a8 b) |
    %% 110
    d,4( c) b e8-.\cresc e-. | e( a,) d-. d-. d( g,) c-. c-. |
    c( b a g) fis( d e fis) | g4 e-!\f c-! <d c'>-! |
    <d g, b'> g-.\pp( g-. g-.) | b2( a4 fis) | g b,-.( b-. b-.) |
    %% 117
    d2-4( c4 d) | \repeat percent 2 {b-! b( c a)} |
    b r <d c'>\f\downbow r | <g, d' b'>2\downbow r 
  }
}

titleduoIImovementII = "Rondo."

globalduoIImovementII = {
  \time 2/4
  \tempo "Allegretto" 4 = 123
  \key g \major
}

violinIduoIImovementII = \new Voice \relative g' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 b8-.\p\downbow c-. | d-. b-. g'-. e-. | d4 b8-. c-. |
    %% 3
    d-. b-. a-. b-. | g4 b8-. c-. | d-. b-. g'-. e-. | d4 g8-. b-. |
    a-. g-. fis-. e-. | d4
  }
  \repeat volta 2 {
    d8-. fis-. | g( b) g-. fis-. | e4 e8-. d-. | c( a') b,-. g'-. |
    %% 12
    a,4 b8-. c-. | d-. b-. g'-. e-. | d4 g8-. b-. | e,-. a-. g-. fis-. | g4
  }
  \mark \default \key bes \major r4 | r d\fz\downbow( |
  %% 18
  bes8) a-. g-. bes-. | d-. d,-. d'4\fz( | bes8) a-. g-. b-. |
  c r c4\fz\downbow( | a8) g-. f-. a-. | bes-. d,-. ees-. f-. |
  bes,4 r | f''_\dolce\downbow( bes | g ees) | c( f | d bes) |
  %% 29
  f'8( g a bes) | g( f ees d) | c( d ees f) | d4 r | r f\fz\downbow( |
  ees8) d-. c-. ees-. | g r g4\fz\downbow( | fis8) e-. d-. fis-. |
  g-. a-. bes-. g-. | fis-. e-. d-. fis-. | g-. a-. bes-. a-. |
  %% 40
  g4 a8-. g-. | fis4 <d d,>\f | <d d,> <d d,> | <cis e,>2 |
  <cis e,>4 <cis e,> | <c d,>2~ |
  %% 46
  <c d,>8\fermata r8\fermata \bar "||"
  \key g \major \mark \default b8-.\p\downbow c-. | d-. b-. g'-. e-. |
  %% 48
  d4 b8-. c-. | d-. b-. a-. b-. | g4 b8-. c-. | d-. b-. g'-. e-. |
  %% 52
  d4 g8-. b-. | a-. g-. fis-. e-. | d r d-. fis-. | g( b) g-. fis-. |
  e r e-. d-. | c( a') b,-. g'-. | a, r b-. c-. | d-. b-. g'-. e-. |
  %% 60
  d4 g8-. b-. | e,-. a-. g-. fis-. | g4 r | d_\dolce( g | e c) |
  %% 65
  a8( b c d) | b4( g) | d'8( b' a g | fis e d c) |
  b( a d c) \mark \default | b4 r | r d4\fz\downbow( |
  %% 72
  c8) b-. a-. c-. | e r e4\fz\downbow( | dis8) cis-. b-. dis-. |
  e-. fis-. g-. e-. | c-. b-. a-. cis-. | d-. e-. d-. c-. |
  \repeat percent 2 {b-. g'-. c,-. a'-.} |
  b,-. b'-.\p a4\( | g fis | e d | cis c | b8-.\) g'-. a,-. fis'-. |
  g g4 fis8~ | fis e4 d8~ | d c4( b8-.) | a-. e-. fis-. d-. |
  g-. e-. c-. d-. | g,-. b-. d-. fis-. | g-. b-. d-. fis-. | g4 r |
  <g b,>\f\downbow <g b,> |
  <g b,>2 \mark \markup { \musicglyph #"scripts.ufermata" } \bar "|."
}

violinIIduoIImovementII = \new Voice \relative g' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 g8-.\p\downbow a-. | b-. g-. e-. c-. |
    %% 2
    b-. g-. g'-. a-. | b-. g-. c,-. d-. | b-. g-. g'-. a-. |
    %% 5
    b-. g-. e-. c-. | b-. g-. b'-. g-. | fis-. g-. a-. a,-. | d-. d'-.
  }
  \repeat volta 2 {
    r4 | r g,8-.\upbow b-. | c( e) c-. b-. | a-. fis-. g-. cis,-. |
    %% 12
    d-. d'-. g,-. a-. | b-. g-. e-. c-. | b-. g-. b'-. g-. |
    %% 15
    c-. a-. d-. d,-. | g-. g,-.
  }
  \mark \default \key bes \major g'4\fz( | fis8) e-. d-. fis-. |
  %% 18
  g-. g,-. g'4\fz( | fis8) e-. d-. fis-. | g r g'4\fz\downbow( |
  %% 21
  ees8) d-. c-. e-. | f r f4\fz\downbow( | d8) bes-. c-. a-. |
  <d, bes>\p \repeat unfold 3 {<d bes>} | \repeat tremolo 4 {<d bes>8} |
  \repeat tremolo 4 {<ees bes>8} | \repeat tremolo 4 {<f a,>8} |
  %% 28
  \repeat tremolo 4 {<f bes,>8} | \repeat tremolo 4 {<d bes>8} |
  \repeat tremolo 4 {<ees bes>8} | \repeat tremolo 4 {<f a,>8} |
  %% 32
  <f bes,>4 bes\fz\downbow( | a8) g-. f-. a-. | c r c4\fz\downbow( |
  %% 35
  bes8) a-. g-. bes-. | d4. c8-. | bes-. a-. g-. bes-. | d4. c8-. |
  bes-. a-. g-. f-. | ees4 cis' | d <a fis>\f | <a fis> <a fis> |
  %% 43
  <bes g>2 | <bes g>4 <bes g> | <a fis>2~ |
  %% 46
  <a fis>8\fermata r\fermata \bar "||"
  \mark \default \key g \major g8-.\p\downbow a-. | b-. g-. e-. c-. |
  %% 48
  b-. g-. g'-. a-. | b-. g-. c,-. d-. | b-. g-. g'-. a-. |
  %% 51
  b-. g-. e-. c-. | b-. g-. b'-. g-. | fis-. g-. a-. a,-. | d-. d'-. r4 |
  r g,8-.\upbow b-. | c( e) c-. b-. | a-. fis-. g-. g,-. |
  %% 58
  d'-. d'-. g,-. a-. | b-. g-. e-. c-. | b-. g-. b'-. g-. |
  c-. a-. d-. d,-. | b \repeat unfold 3 {<d b>} |
  %% 63
  \repeat tremolo 4 {<d b>8} | \repeat tremolo 4 {<e c>8} |
  \repeat tremolo 4 {<fis d>8} | \repeat tremolo 4 {<g g,>8} |
  \repeat tremolo 4 {<d b>8} | \repeat tremolo 4 {<e c>8} |
  %% 69
  \repeat tremolo 4 {<fis d>8} \mark \default |
  <g g,>8 r g4\fz\downbow( | fis8) e-. d-. fis-. | a r a4\fz\downbow( |
  %% 73
  g8) fis-. e-. g-. | b4. a8-. | g-. fis-. e-. gis-. | a4. g8-. |
  %% 77
  fis-. d-. e-. fis-. | \repeat percent 2 {g-. d-. fis-. d-.} |
  g g'4\p fis8~ | fis e4 d8~ | d c4 b8 | a-. e-. fis-. d-. |
  g-. e-. c-. d-. | g, b'' a4( | g fis | e d | cis c |
  b8) g'-. a,-. fis'-. | g r d-. c-. | b r d,-. <c d>-. |
  <d b>4 r | <d g,>\f <d g,> | <d g,>2 \bar "|."
}

%%% ----------- Duo III ------------

titleduoIIImovementI = ##f

globalduoIIImovementI = {
  \time 4/4
  \tempo "Allegro" 4 = 123
  \key c \major
}

violinIduoIIImovementI = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    <a a'>2\f <a a'>4.--( <a a'>8-.) | <a a'>2 r4 e\p | a( c b a) |
    %% 4
    gis2 r | <b b'>2\f <b b'>4.--( <b b'>8-.) | <b b'>2 r4 e,\p |
    %% 7
    b'( d c b) | c2 r4 a\upbow | e'2 c4-. a-. | f2 d'4-. f-. |
    %% 11
    e-. a,-. b-. c8( d) | d2( c4) a8( c) | e2-4 b8( c gis a) |
    f2 d'4-. f-. | e-. a,-.\f b8( d c b) |
    %% 16
    a4 r r e'\p\upbow \mark \default | a-. a-. a( b) |
    a2( gis4) b,8( c) | d4-. d-. d( e) |
    %% 20
    d2( c4) e\f\upbow | a8-. e-. c-. e-.-4 a,-. e'-. c-. e-.\open |
    f4-! d,-! r d'\upbow | g8-. d-. b-. d-. b-. g-. b-. d-. |
    e4-! c,-! r g'\upbow | a8-. f-. a-. d-. b-. g-. b-. e-. |
    %% 26
    c-. a-. c-. f-. d-. b-. d-. g-. |
    e-. d-. c-. b-. c-. d-. e-. fis-. |
    g4 <g b,> <g b,> r \mark \default | c,2_\dolce\downbow( b4 a) |
    %% 30
    g2.( a8 b) | d8( c b c) d4( g) | e2-4( d4-!) r | f2( e4 d) |
    cis1 | d4( c a' c,) | b1 | c4( bes g' bes,) |
    %% 38
    a gis'8( a) g( f e d) | <c e,>2 <b d,> | <c e,>4 r r c\downbow |
    b8( d) g4. f8( e d) | e4-. c-. r c\downbow |
    b8( d) g4. f8( e d) \mark \default |
    e-.\f c-. g-. c-. e,-. g-. c-. e-. |
    f-. d-. b-. d-. f,-. b-. d-. f-. |
    %% 46
    g-. e-. c-. e-.-4 g,-. c-. e-.\open g-. | a( b a g) f( e d c) |
    b( c d c) b( a g f) | e4-. c'-. e8( d) c-. b-. |
    %% 50
    c4 r r e-.\downbow | f-. d-. r f-.\upbow | g-. e-. r g\downbow |
    %% 53
    a2 f,4-. fis-. | g8( a b a) g( f e d) | c4-. g'-! a-! <f g,>-! |
    <e g,>-! c\p( e a-4) | g2.( f4) | e( e'-4) d8( c b a) |
    << {\voiceOne g2.( f4)} \new Voice {\voiceTwo g,1} >> \oneVoice |
    <e' g,>4 r <g g,> r | <e g,>2. r4 \mark \default
  }
  %% 62
  <a a'>2\f\downbow <a a'>4.--( <a a'>8-.) | <a a'>2 r4 a\p |
  e'( g f e) | d2 r | <d, d'>2\f <d d'>4.--( <d d'>8-.) |
  %% 67
  <d d'>2 r4 d\p\downbow | a'( c bes a) | bes-. bes'( g e) | r a( f d) |
  %% 71
  r g( e cis) | d-. f\f( e d) | cis-. <cis a'>-! <cis a'>-! a-.\p |
  d-. d-. d( e-4) | d2( cis4) e8\open( f) | g4-. g-. g( a) |
  %% 77
  g2( f4) a,\f\upbow | d8-. a-. f-. a-.-4 d,-. f-. a-.\open d-. |
  cis4-! a,-! r a'\upbow | d8-. a-. f-. a-. d,-. f-. a-. d-. |
  %% 81
  e4-! c,-! r g''\upbow | a8-. f-. c-. f-. a,-. c-. f-. a-. |
  b4-! gis,-! r b\upbow | c8-. a-. c-. f-. dis( e) b-.( d-.) |
  %% 85
  c4-. a-. gis-. e-. | a,8-. e'-. a-.-4 gis-. a-.\open b-. c-. d-. |
  e4 <e b e,> <e b e,> r \mark \default \bar "||"
  %% 88
  \key a \major a,2-4_\dolce\downbow( gis4 fis) | e2.( fis8 gis) |
  b( a gis a) b4( e-4) | cis2( b4-!) r | d2( cis4 b) | ais1-1 |
  %% 94
  b4-1( dis fis a) | gis1 | a2( gis4 g) | fis8( a b a gis fis e d) |
  << {\voiceOne cis2( b)} \new Voice {\voiceTwo e,1} >> \oneVoice |
  %% 99
  a4 r r a-4\downbow | gis8( b) e4.-4 d8( cis b) |
  %% 101
  cis4-. a-.\open r a-.-4 | gis8( b) e4. d8( cis b) |
  cis-.\f a-. e-. a-. cis,-. e-. a-. cis-. |
  %% 104
  d-. b-. gis-. b-. d,-. gis-. b-. d-. |
  e-.-4 cis-. a-. cis-. e,-. a-. cis-. e-.\open |
  %% 106
  fis( gis a gis fis e d cis) | b( gis' b a gis fis e d) |
  %% 108
  cis4-. a'-! b-! <gis b,>-! \mark \default | <a a,> r r cis,\downbow |
  %% 110
  d-. b-. r d\upbow | e-. cis-. r  e\downbow |
  fis8( gis a gis fis e d cis) | b2 r4 gis |
  %% 114
  \repeat percent 2 {a8-. e-. cis'-. a-. gis-. e-. b'-. gis-.} |
  %% 116
  a-. gis-. fis-. e-. d-. b-. e-. e-. | a,4-. a'\p( cis fis) |
  e2.( d4) | cis( a') b8( a gis fis) |
  << {\voiceOne e2.( d4) | cis( d cis d) }
     \new Voice {\voiceTwo e,1 | e1} >> \oneVoice |
  <cis' e,>4 r <cis a'>\f <cis a'> | <cis a'>2 r \bar "|."
}

violinIIduoIIImovementI = \new Voice \relative c'' {
  \violinVoiceSettings

  \repeat volta 2 {
    <c e>2\f <c e>4.--( <c e>8-.) | <c e>2 r | r4 a,\p( d f) | e2 r |
    %% 5
    <e gis,>2\f <e gis,>4.--( <e gis,>8-.) | <e gis,>2 r |
    %% 7
    r4 b\p( e gis) | a2 r | r r4 d,\downbow | a'2 f4-. d-. |
    %% 11
    c-. f-. d-. e-. | a,-. a'-. a,-. r | r2 r4 d8\upbow( f) |
    a2-4 e8( f cis d) | c4-. f-.\f d-. e-. |
    %% 16
    a,8-. e'-.\p c-. e-. a-. e-. c-. e-. \mark \default |
    a,-. e'-. c-. e-. a-. e-. c-. e-. |
    %% 18
    b-. e-. d-. e-. b'-. e,-. d-. e-. |
    b-. e-. d-. e-. gis-. e-. d-. e-. |
    %% 20
    a,-. e'-. c-. e-. a-. e-. c-. e-. | a,4-!\f a'-! r a\upbow |
    %% 22
    d8-. a-. f-. a-. d,-. a'-. f-. a-. | b4-! g,-! r g'\upbow |
    c8-. g-. e-. g-. e-. c-. e-. g-. | f4-. d-. g-. e-. |
    %% 26
    a-. f-. b-. g-. | c c,8\downbow b-. c-. d-. e-. fis-. |
    g4 <g g,> <g g,> r \mark \default | R1 |
    %% 30
    f2_\dolce\downbow( e4 d) | e-. c-. b-. g-. | c-. fis-. g-. g,-. |
    %% 33
    R1 | bes'2( a4 g) | fis1 | g4( f d' f,) | e1 | f4( d e f) |
    g( fis g g,) | c8( e g e) c( e g, e') | d( f g f) d( f g, b) |
    %% 42
    c( e g e) c( e g, e') | d( f g f) d( f g, b) \mark \default |
    c4 r r c\f | b-. d-. r d-. | c-. e-. r c'8-.\downbow e-. |
    f( g f e) d( c b a) | g( a b a) g( f e d) | e4 e-! f-! g-! |
    %% 50
    c8-. g-. e-. g-. c,-. e-. g-. c-. |
    d-. b-. f-. b-. d,-. f-. b-. d-. |
    e-. c-. g-. c-. e,-. g-. c-. e-. | f( g f e) d( e d c) |
    %% 54
    b( c d c) b( a g f) | e4 <e c'>-! <f d'>-! <d g, b'>-! |
    %% 56
    <e c' g,> r r2 | r4 g,\p( b d) | c2 r2 |
    r4 f4\upbow( e8 d c b) | c4 r e r | c2. r4 \mark \default
  }
  %% 62
  <cis' e>2\f <cis e>4.--( <cis e>8-.) | <cis e>2 r | r4 a,4\p( d g) |
  f2 r | <fis a>\f <fis a>4.--( <fis a>8-.) | <fis a>2 r |
  %% 68
  r4 d\p( g fis) | g r r c\downbow( | a f) r bes( | g e) r a( |
  %% 72
  f) d\f( g, gis) | a <a e'>-! <a e'>-! r |
  d8-.\p\downbow a'-. f-. a-. d-. a-. f-. a-. |
  e-. a-. g-. a-. e'-. a,-. g-. a-. |
  %% 76
  e-. a-. g-. a-. cis-. a-. g-. a-. | d,-. a'-. f-. a-. d-. a-. f-. a-. |
  %% 78
  d,4 r r d\f | a'8-. e-. cis-. e-. a,-. cis-. e-. a-. |
  %% 80
  f4-! d-! r d'\upbow | c8-. g-. e-. g-. c,-. e-. g-. c-. |
  f4-! f,-! r a'\upbow | gis8-. e-. b-. e-. gis,-. b-. e-. gis-. |
  %% 84
  a4-. a,-. gis-. e-. | a,8 a'-. c-. f-. dis( e) b-. d-. |
  c4 a,8-. gis-. a-. b-. c-. d-. |
  e4 <gis b> <gis b> r \mark \default \bar "||" \key a \major R1 |
  %% 89
  d2_\dolce( cis4 b) | a-. a'-. gis-. e-. | a-. dis,-. e-. e'-. | R1 |
  %% 93
  g,2\downbow( fis4 e) | dis1 | e4( gis b d) | cis( a b cis) |
  d8( fis gis fis e d cis b) | a2( gis) |
  a,8-. e'-. cis-. e-. a-. e-. cis-. e-. |
  %% 100
  b-. e-. d-. e-. b'-. e,-. d-. e-. |
  a,-. e'-. cis-. e-. a-. e-. cis-. e-. |
  b-. e-. d-. e-. gis-. e-. d-. e-. | a,4-.\f a'-. r a,-. |
  gis-. b-. r b-. | a-. cis-. r  a'8-.\downbow cis-. |
  %% 106
  d( e fis e d cis b a) | gis( e gis fis e d cis b) |
  a4 cis-! d-! e-! \mark \default |
  %% 109
  a8-. e-. cis-. e-. a,-. cis-. e-. a-. |
  b-. gis-. d-. gis-. b,-. d-. gis-. b-. |
  cis-. a-. e-. a-. cis,-. e-. a-. cis-. | d( e fis e d cis b a) |
  %% 113
  gis( b e gis b gis e d) |
  \repeat percent 2 { cis-. a'-. e-. cis-. d-. b'-. gis-. d-. } |
  %% 116
  cis4 <cis a'>-! <d b'>-! <b e, gis'>-! | <cis a' e, a,> r r2 |
  r4 e,\p( gis b) | a r r2 | r4 gis8\downbow( b a gis fis e) |
  a4( <gis b> a <gis b>) | a8 a-!\f cis-! a-! e-! a-! cis,-! e-! |
  a,2 r \bar "|."
}

titleduoIIImovementII = ##f

globalduoIIImovementII = {
  \time 6/8
  \tempo "Andantino grazioso." 8 = 77
  \key c \major
}

violinIduoIIImovementII = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    a4( b8) \acciaccatura d8 c8( b a) | e'4.-4( d) |
    c8( e c) b( d b) | a4.-4( gis4) r8 |
    %% 5
    a4( b8) \acciaccatura d8 c8( b a) | e'4.( d) |
    c8( e) a,-. \acciaccatura c8 b-. a-. gis | a( e c') a4 r8
    \mark \default
  }
  \repeat volta 2 {
    %% 9
    c4. \acciaccatura d8 c8-. b-. a-. | gis4.( e) |
    %% 11
    a \acciaccatura d8 c8-. b-. a-. | e'4.~ e4-! r8 |
    %% 13
    c4. \acciaccatura d8 c8-. b-. a-. | g4. g8( a b) | c4. d8( e d) |
    c4 r8 r4. | e4.\downbow e8( d b) | c4. a | bes a | gis a8 gis a |
    %% 21
    bes4. a | gis a8( c e-4) | e( d b) d( c a) |
    <c e,>4.( <b e,>4-!) r8 |
    %% 25
    a4\downbow( b8) \acciaccatura d8 c( b a) | e'4.\< d\! |
    c8( e) a,-. \acciaccatura c8 b-. a-. gis-. |
    a( e c') a4 r8 \mark \default
  }
  \repeat volta 2 {
    %% 29
    \key a \major cis4._\dolce\downbow e8-4( cis a) | b4. e8( d b) |
    %% 31
    cis( d e\open fis a fis) | e4-4( d8) cis4-. r8 |
    cis4.\downbow e8( cis a) | dis4. b'8( a fis) |
    %% 35
    b( a e) b-.( cis-. dis-.) | e4.~ e4-! r8 \mark \default
  }
  \repeat volta 2 {
    %% 37
    e4. cis8( a' e\open) | d4. b8( b' d,) | cis( e a fis d b) |
    a4.-4( gis4-!) r8 | cis4. e8( cis a) | b4. e8( d b) |
    e( cis a) e-.( fis-. gis-.) | a( e cis') a4 r8 \mark \default
  }
  %% 45
  \key c \major a4( b8) \acciaccatura d8 c8( b a) | e'4.( d) |
  c8( e c) b( d b) | a4.( gis4) r8 |
  a4( b8) \acciaccatura d8 c8( b a) | e'4.( d) |
  %% 51
  c8( e) a,-. \acciaccatura c8 b-. a-. gis-. | a( e c') a4 r8 |
  c4. \acciaccatura d8 c-. b-. a-. | gis4.( e) |
  %% 55
  a \acciaccatura d8 c-. b-. a-. | e'4.~ e4 r8 |
  %% 57
  c4. \acciaccatura d8 c-. b-. a-. | g4. g8( a b) | c4. d8( e d) |
  c4 r8 r4. \mark \default | e4.-4\downbow e8( d b) | c4. a |
  bes a | gis a8( gis a) | bes4. a | gis a8( c e-4) |
  %% 67
  e( d b) d( c a) | <c e,>4.( <b e,>4-!) r8 |
  %% 69
  a4\downbow( b8) \acciaccatura d8 c8( b a) | e'4.( d) |
  c8( e) a,-. \acciaccatura c8 b-. a-. gis-. | e'4.-4( d) |
  c8( e\open a) f( d b) | e4 r8 <gis b, e,>4\f\downbow r8 |
  <a c, e, a,>4\downbow r8 r4.
  \mark \markup { \musicglyph #"scripts.ufermata" } \bar "|."
}

violinIIduoIIImovementII = \new Voice \relative e' {
  \violinVoiceSettings

  \repeat volta 2 {
    R2. | e4( fis8) \acciaccatura a8 gis( fis e) | a4. d, |
    e8( f dis e d b) | a4 r8 r4. |
    e'4( fis8) \acciaccatura a8 gis( fis e) | a4 c,8 d4 e8 |
    %% 8
    a,-. c-. e-. a4 r8 \mark \default
  }
  \repeat volta 2 {
    \repeat unfold 2 {<e a,>8( <e c>) <e c>-!} |
    \repeat unfold 2 {<e b>8( <e d>) <e d>-!} |
    \repeat unfold 2 {<e a,>8( <e c>) <e c>-!} |
    %% 12
    <e-2 gis,-1>8( <e b>) <e b>-!  <e gis,>8( <e b>) <e b>-! |
    <e-1 a,-1>8( <e c>) <e c>-! <e a,>8( <e c>) <e c>-! |
    <g b,>8( <g d>) <g d>-! g,( <f' d>) <f d>-! |
    %% 15
    g,( <c e>) <c e>-! g( <b-3 f'-2>) <b f'>-! |
    c( e g) e( d c) | \repeat unfold 2 {b-. e-. gis-.} |
    \repeat unfold 2 {a,-. c-. e-.} | d( f) f-! c( f) f-! |
    %% 20
    b,-!-3 f'-2( e-1) c-!-3 f( e) | d( f) f-! c( f) f-! |
    b,-! f'( e) c-! f( e) | gis,( b e) a,( c e) | a( e a) gis( e gis) |
    %% 25
    a4 r8 r4. | e4\downbow( fis8) \acciaccatura a8 gis8( f e) |
    a4 c,8 d4 e8 | a,-. c-. e-. a4 r8 \mark \default
  }
  \repeat volta 2 {
    %% 29
    \key a \major <a, e'>8\p <a e'> <a e'> <a e'>4 r8 |
    <gis e'>8 <gis e'> <gis e'> <gis e'>4 r8 | a( b cis d fis d) |
    %% 32
    cis( e gis a) e cis | <a e'>8 <a e'> <a e'> <a e'>4 r8 |
    \repeat unfold 3 {<b a'>8} <b a'>4 r8 |
    %% 35
    <b gis'>4 r8 <b a'>-.( <b a'>-. <b a'>-.) |
    <b gis'> b'-. gis-. e4 r8 \mark \default
  }
  \repeat volta 2 {
    %% 37
    a8( e cis') a4. | gis8( e b') gis4. | a4 cis,8 d4 fis8 |
    <e cis>4.( <e b>4-!) r8 | \repeat unfold 3 {<e a,>8 } <e a,>4 r8 |
    %% 42
    \repeat unfold 3 {<e gis,>8} <e gis,>4 r8 |
    <e a,>4 r8 <d e>8-.( <d e>-. <d e>-.) |
    \repeat unfold 3 {<e cis>8} <e cis>4 r8
  }
  %% 45
  \key c \major R2. | e4( fis8) \acciaccatura a8 gis8( fis e) |
  a4. d, | e8( f dis e d b) | a4 r8 r4. |
  %% 50
  e'4( fis8) \acciaccatura a8 gis( fis e) | a4 c,8 d4 e8 |
  a,-. c-. e-. a4 r8 | \repeat unfold 2 {<e a,>8( <e c>) <e c>-!} |
  %% 54
  \repeat unfold 2 {<e b>8( <e d>) <e d>-!} |
  \repeat unfold 2 {<e a,>8( <e c>) <e c>-!} |
  <e-2 gis,-1>8( <e b>) <e b>-!  <e gis,>8( <e b>) <e b>-! |
  <e-1 a,-1>8( <e c>) <e c>-! <e a,>8( <e c>) <e c>-! |
  <g b,>8( <g d>) <g d>-! g,( <f' d>) <f d>-! |
  g,( <e' c>) <e c>-! g,( <f'-2 b,-3>) <f b,>-! |
  %% 60
  e( g f) e( d c) \mark \default | \repeat unfold 2 {b-. e-. gis-.} |
  \repeat unfold 2 {a,-. c-. e-.} | d( f) f-! c( f) f-! |
  %% 64
  b,-!-3 f'-2( e-1) c-!-3 f( e) | d( f) f-! c( f) f-! |
  %% 66
  b,-! f'( e) c-! f( e) | gis,( b e) a,( c e) | a4.( gis4-!) r8 | R2. |
  e4( gis8) \acciaccatura a8 gis( f e) | a4 c,8 d4 e8 |
  %% 72
  c( e a) gis( b e,) | a4( c,8) d( f d) |
  <e c>4 r8 <e d'>4\f\downbow r8 | <e c' a,>4\downbow r8 r4. \bar "|."
}

%%% ----------- Duo IV ------------

titleduoIVmovementI = ##f

globalduoIVmovementI = {
  \time 3/4
  \tempo "Allegro." 4 = 123
  \key f \major
}

violinIduoIVmovementI = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    <a f'>4\f <a f'> <a f'> | <a f'> r c-.\downbow | f-. c-. a'-. |
    %% 4
    f-. r a,-.\upbow | d-. a-. f'-. | d-. r f,-.\downbow |
    bes-. f-. d'-. | c-. bes-. a-. | g c8( b d b) | c2( cis4\p) | d2. |
    g4( e d) | c2. | a'8( g f e d c) | a'4( e f) | g2( e4) |
    %% 17
    <f a,>4\f <f a,> <f a,> | <f a,> r r \mark \default |
    %% 19
    r r c-.\p\upbow | f-. c-. a'-. | f-. r a,-.\downbow |
    d-. a-. f'-. | d-. r b\upbow | c( e a) | g2 b,4 |
    %% 26
    c8( d) e-. f-. g-. a-. | fis4-. g-. e-. | f-. dis-. e-. |
    cis-. d-. b-. | c-. a'-. c,-. | b-.\f g-. d-. | b-. g-. r |
    %% 33
    f''-.\downbow d-. b-. | f-. d-. r | a''-.\downbow g-. f-. |
    e-. b-. c-. | d2( b4) \mark \default | c r e_\dolce\upbow |
    f( d b) | c-. g-. e'-. | g8( f e d c b) | c4-. g-. e'-. |
    g8( f\cresc e d c b) | a'( g f e d cis) | bes'( a g f e d) |
    c4 <d f,>-.\f <b d,>-. | \acciaccatura e,8 c'2.\p | gis | a~ |
    %% 50
    a4( g f) | e( g b) | c( g f) | e( g b) | c r r
  }
  \repeat volta 2 {
    %% 55
    <a a'>4\f <a a'> <a a'> | <a a'> r e\p\upbow | a( e cis') |
    a r a | cis( a e') | cis r a'\upbow | bes( a g) | f( e d) |
    cis-.\f a-. e-. | cis-. a r | g''-.\downbow e-. cis-. |
    g-. e-. r | a-.\downbow cis-. e-. |
    g2( f4) | e-. d-. cis-. \mark \default | d r f\p\upbow |
    g( e cis) | d( a f') | a8( g f e d cis) | d4 r d\upbow |
    ees( c a) | bes( f d') | f8( ees d c bes a) | g'( f ees d c b) |
    aes'( g f ees d c) | cis( bes' a g fis g) |
    fis( a) fis-. d-. a-. fis-. | d2( c4) |
    bes8( d) g-. bes-. d-. g-. | bes2( g4) | e8( g) e-. c-. g-. e-. |
    c2( bes4) | a8( c) f-. a-. c-. f-. | a2( f4) | d4. fis8( g f) |
    e4. gis8( a g) | f4. a8( bes a) |
    g-. f-. e-. d-. c-. bes-. \mark \default |
    <a f'>4\f <a f'> <a f'> | <a f'> r c-.\downbow | f-. c-. a'-. |
    f-. r a,-.\upbow | d-. a-. f'-. | d-. r f,-.\downbow |
    bes-. f-. d'-. | c-. bes-. a-. | g c8( b d b) |
    c4-.\( c\p( cis)\) | d2. | g4( e d) | c2. | a'8( g f e d c) |
    a'4( e f) | g2( e4) \mark \default | f r a\downbow | bes( g e) |
    f( c) a'-. | bes-. a8( g f e) | f4-. c( cis) |
    d c8\cresc( bes a g) | e'2 a,4-. | f'-. e8( d c bes) | g'2 c,4-. |
    a'8\f( g f e d c) | d4-. g-. e-. | f2.\p | cis | d~ | d4( c bes) |
    a( c e) | f( c bes) | a( c e) | f r r | <g c, e,>\f r r | <a c, f,>2 r4
  }
}

violinIIduoIVmovementI = \new Voice \relative f' {
  \violinVoiceSettings

  \repeat volta 2 {
    <f c'>4\f <f c'> <f c'> | <f c'> r r | r r c-.\downbow |
    %% 4
    f-. c-. a'-. | f-. r a,-.\upbow | d-. a-. f'-. |
    d-. r bes-.\downbow | a-. <c e> <c f> |
    << {\voiceOne e e( f) } \new Voice {\voiceTwo c4 g2} >> \oneVoice |
    <c e>4 c' a\p | bes( g f) | e2. | bes'4( g f) | e2. |
    %% 15
    f4( g a) | bes( g c) | <f, c'>4\f <f c'> <f c'> |
    %% 18
    <f c'> r c-.\p\upbow \mark \default | f-. c-. a'-. | f-. r a,-. |
    d-. a-. f'-. | d-. r c | b( d g) | e2 c4 |
    b8( c) d-. e-. f-. g-. | e4 r c | c'-. b-. bes-. | a-. a-. gis-. |
    %% 29
    g-. fis-. f-. | e-. f-. fis-. | g\f r r | d'-.\downbow b-. g-. |
    %% 33
    d-. b-. r | a''-.\downbow f-. d-. | b2. | c4-. gis-. a-. |
    f( d g) \mark \default | c,8( g e'\p g, c g) |
    %% 39
    \repeat unfold 2 {b( g d' g, f' g,) | e'( g, e' g, c g) } |
    %% 43
    b\cresc( g d' g, f' g,) | e'( g, g' g, a' g,) |
    %% 45
    f'( g, d' g, f' g,) | e'4 a\f <f g,> | <e c>\p <e c> <e c> |
    \repeat unfold 3 {<e c>} | \repeat unfold 3 {<f c>} |
    <f b,-3>2 <d\open b-2>4 | c r f\upbow | e( g b) | c( g) <f g,> | <e c> r r
  }
  \repeat volta 2 {
    %% 55
    <cis' e>4\f <cis e> <cis e> | <cis e> r r | r r e,\p\upbow |
    %% 58
    a( e cis') | a r a | cis( a e') | cis r a\upbow( | bes g gis) |
    %% 63
    a\f r r | e'-.\downbow cis-. a-. | e-. cis-. r |
    bes''-.\downbow g-. e-. | cis-. g-. r | a,-.\downbow cis-. d-. |
    %% 69
    g-. a-. a,-. \mark \default | d8\p( a f' a, d a) |
    %% 71
    cis( a e' a, g' a,) | f'( a, f' a, d a) | cis( a e' a, g' a,) |
    %% 74
    bes( f' d f bes, f') | a,( f' c f ees f) | d( f d f bes, f') |
    %% 77
    a,( f' c f ees f) | d( f d f aes f) | ees( g ees g ees g) |
    %% 80
    e2 cis'4 | d2 r4 | fis8\downbow( a) fis-. d-. a-. fis-. | g2 r4 |
    %% 84
    g,8( bes) d-. g-. bes-. d-. | c2 r4 | e8( g) e-. c-. g-. e-. |
    %% 87
    f2 r4 | a,8( c) f-. a-. c-. a-. | bes( c) bes-. a-. g b-. |
    %% 90
    c( d) c-. bes-. a-. cis-. | d( e) d-. c-. bes-. d-. |
    e-. d-. c-. bes-. a-. g-. \mark \default |
    %% 93
    <f c'>4\f <f c'> <f c'> | <f c'> r r | r r c-.\downbow |
    f-. c-. a'-. | f-. r a,-.\downbow | d-. a-. f'-. |
    d-. r bes-.\downbow | a-. <c e> <c f> |
    %% 101
    <<{\voiceOne e e( f) } \new Voice {\voiceTwo c4 g2} >> \oneVoice |
    <e' c>4 r r | bes'\p\downbow( g f) | e2. | bes'4( g f) | e2. |
    %% 107
    f4( g a) | b( g c) \mark \default | f,8( c a' c, f c) |
    e( c e g bes g) | a( c a f c f) | e( c e g bes g) |
    %% 113
    a( c a f a f) | bes4 r r | g\downbow\cresc f8( e d c) | a'2 d,4 |
    %% 117
    bes' a8( g f e) | f4-.\f g-. a-. | bes-. g-. c-. |
    <a f>4\p <a f> <a f> | \repeat unfold 3 {<a f>} |
    \repeat unfold 3 {<bes f>} | <bes-1 e,-2>2 g4-3 | f r bes, | a( c e) |
    f( c bes) | a r r | <e' c>4\f r r | <f a>2 r4
  }
}

titleduoIVmovementII = "Romance."

globalduoIVmovementII = {
  \time 4/4
  \tempo "Andante." 4 = 77
  \key f \major
}

violinIduoIVmovementII = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    a2( d) | bes( a) | g( f4 g) | a1-4 | f2( g) | a\open( bes4 a) |
    g2( a-4) | f1
  }
  %% 9
  c'2( f) | d( c) | bes( a4 f) | g1 | f2( fis) | g( bes4 g) | f2( e) |
  %% 16
  d1 | e4( g c e) | f2. e4-. | d( e cis d) | bes( b c f) | e( d c bes) |
  a2( b) | c4 r c r | c2. r4\fermata \bar "|."
}

violinIIduoIVmovementII = \new Voice \relative f' {
  \violinVoiceSettings

  \repeat volta 2 {
    f4( d e f) | g( d g d) | e( a, d bes) | a( cis e a) | d,( f e c) |
    f( e d c) | bes( g c e) | f( c a c)
  }
  %% 9
  f( g a f) | bes( f a f) | g( e f d) | c( e g bes,) | a( c d c) |
  %% 14
  bes( d g e) | d( a cis a) | d( f a d) | c2. bes4 | a( c f a) |
  bes( g a f) | g( f e d) | c( bes a g) | f( e d g) | e r <e c> r |
  <e c>2. r4\fermata \bar "|."
}

titleduoIVmovementIII = "Rondo."

globalduoIVmovementIII = {
  \time 6/8
  \tempo "Allegretto." 8 = 123
  \key f \major
}

violinIduoIVmovementIII = \new Voice \relative c'' {
  \violinVoiceSettings

  \partial 8 c8_\dolce | f( e) f-. g( f) g-. | a4.( g4) g8 |
  %% 3
  f( e) f-. g( a) g-. | c,4.~ c4 c8 | f( e) f-. g( f) g-. |
  a4.( g4) g8 | f8( e) f-. g( a) g-. | f4 r8 r4 a8 | g( f e) d( e f) |
  f4.( e4-.) d8 | c( bes a) g( a bes) | bes4.( a4-.) c8( |
  d-.) r d( e-.) r e( | f-.) r f( g-.) r g-. |
  %% 15
  a-. f-. e-. d-. c-. b-. | c4 r8 g'4. | a8-. f-. e-. d-. c-. b-. |
  c4 r8 r4. | e8( g e) c( e f) | g4 r8 r4. | g8\upbow bes( g e f fis) |
  %% 22
  a( g d) c( d e) \mark \default | f( e) f-. g( f) g-. | a4.( g4) g8 |
  %% 25
  f( e) f-. g( a) g-. | c,4.~ c4 c8 | f( e) f-. g( f) g-. |
  a4.( g4) g8 | f( e) f-. g( a) g-. | f4 r8 r4 a,8\f | f'4. e4( f8) |
  %% 32
  d4 r8 r4 d8 | e( f) g-. f( e d) | cis4 r8 r4 a8 | a'4. g | f e |
  d8-. f-. a-. a-. g-. f-. |
  %% 38
  e <a a,> <a a,> <a a,>4 r8 \mark \default | r4. r4 d,,8 |
  %% 40
  bes'4. a4( bes8) | g4 r8 r4 f8 | g( a) bes-. a( g e) | f4 r8 r4 a8 |
  a'-. a,-. a'-. g-. a,-. g'-. | f( e) d-. e( d) cis-. |
  d-. a-. f-. d4 r8 | f'4._\dolce d | bes bes'8( g f) | ees4. c |
  a c8( a ees) |
  %% 51
  d8 <d' f> <d f> \repeat unfold 3 {\repeat tremolo 3 {<d f>8}} |
  %% 53
  g4. d | b g'8( f) d-. | ees4. f8( ees) c-. | d4. bes' |
  c,8 b-. c-. a'-. gis-. a-. | bes,4. g' |
  %% 59
  a,8-. gis-. a-. f'-. e-. f-. | e-. bes'-. g-. f-. e-. d-. |
  cis-. e-. cis-. a-. cis-. e-. | a2. |
  %% 63
  c,8-.\upbow e-. c-. a-. c-. e-. | a2. | g8-. bes-. g-. f-. e-. g-.  |
  f-. e-. d-. c-. d-. e-. \mark \default | f( e) f-. g( f) g-. |
  a4.( g4) g8 | f( e) f-. g( a) g-. | c,4.~ c4 c8 |
  %% 71
  f( e) f-. g( f) g-. | a4.( g4) g8 | f( e) f-. g( a) g-. |
  f4.~ f8 g( a) | bes4.~ bes8 a( g) | f( e d) c( d e) |
  %% 77
  f-.\f a-. g-. f-. e-. d-. | c-. d-. c-. bes-. a-. g-. | f4 r8 r4. |
  <e g,>4 r8 r4. | <f a,>4 r8 <e c' g'>4 r8 |
  <f c' a'>2 r4 \mark \markup { \musicglyph #"scripts.ufermata" } \bar "|."
}

violinIIduoIVmovementIII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 8 r8 | a4\p( c8) e,4( c'8) | f,4( c'8) bes4( c8) | a4. b |
  %% 4
  c8-. g-. e-. c4 r8 | a'4( c8) e,4( c'8) | f,4( c'8) bes4( c8) |
  a4 a8 bes4 c8 | a-. c-. a-. f-. r f'\upbow | e( d c) b( c d) |
  d4.( c4-.) bes8 | a( g f) e( f g) | g4.( f4-.) a8 |
  %% 13
  bes-. g-. bes-. c-. a-. c-. | d-. bes-. d-. e-. c-. e-. |
  f4 r8 <f, g,>4. | e8( g e) c( d e) | f4 r8 <f g,>4. |
  %% 18
  e8( g e) c( e f) | g4 r8 r4. | g8( bes g) e( g a) | bes4 r8 r4. |
  %% 22
  R2. \mark \default | a4( c8) e,4( c'8) | f,4( c'8) bes4( c8) |
  a4 a8 bes4 b8 | c-. g-. e-. c4 r8 | a'4( c8) e,4( c'8) |
  %% 28
  f,4( c'8) bes4( c8) | a4 a8 bes4 c8 | f,-. a-. c-. f4 r8 |
  r4. r4 d,8\f\upbow | bes'4. a4( bes8) | g4 r8 r4 f8 |
  %% 34
  g( a) bes-. a( g e) | f4 r8 r4 a,8\upbow | a'4. g | f4 d8 cis4 d8 |
  a8 <cis e> <cis e> <cis e>4 a8\upbow \mark \default | f'4. e4( f8) |
  d4 r8 r4 d8 | e( f) g-. f( e d) | cis4 r8 r4 a8 |
  a'-. a,-. a'-. g-. a,-. g'-. | f-. a,-. f'-. e-. a,-. e'-. |
  d-. e-. f-. g-. a-. a,-. | d-. f-. a-. d4 r8 |
  %% 47
  <d, bes>8\p <d bes> <d bes>
  \repeat unfold 3{\repeat tremolo 3{<d bes>}} |
  %% 49
  \repeat unfold 4 {\repeat tremolo 3 {<f a,>8}} |
  %% 51
  \acciaccatura {bes,16 d} bes'4._\dolce f | d f8( d bes) |
  \repeat tremolo 6 {<d b>8} | \repeat tremolo 6 {<g b,>8} |
  c8( bes) g-. a4. | bes8-. a-. bes-. g-. fis-. g-. | a4. fis |
  g8-. fis-. g-. e-. d-. e-. | f4. d | g, gis | a4 r8 r4. |
  cis8-.\upbow e-. cis-. a-. cis-. e-. | a2. |
  %% 64
  c,8-. e-. c-. a-. c-. e-. | <e c>2.~ | <e c>4 r8 r4. \mark \default |
  f8-. a-. c-. e,-. g-. c-. | f,-. a-. c-. bes-. c-. e-. |
  %% 69
  a,( c) a-. bes( d) b | c-. g-. e-. c4 r8 | f-. a-. c-. e,-. g-. c-. |
  f,-. a-. c-. bes,-. c-. e-. | a,-. c-. a-. bes4 c8 | f( a c) ees4. |
  %% 76
  f,8( a bes) d4. | <bes g>2. | <a f>4\f r8 r4. | <e g,>4 r8 r4. |
  <f a,>8 a'-. g-. f-. e-. d-. | c-. d-. c-. bes-. a-. g-. |
  f4 r8 <e c>4 r8 | <a f>2 r4 \bar "|."
}

%%% ----------- Duo V ------------

titleduoVmovementI = ##f

globalduoVmovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4 = 123
  \key d \major
}

violinIduoVmovementI = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 128 s128
    \acciaccatura {a8} a'1\p | \acciaccatura b,8 b'1 |
    \acciaccatura e,,8 cis'1 | \acciaccatura d,8 d'1 |
    \acciaccatura e,8 e'2 d8( cis b a) |
    %% 6
    <g a,>4-. <g a,>-. <fis a,>-. <fis a,>-. |
    <fis a,>2( <e a,>4) r4 |
    %% 8
    \acciaccatura a8 a'2\f\downbow \repeat unfold 2 {\acciaccatura gis8 a4} |
    \acciaccatura b,8 b'2 \repeat unfold 2 {\acciaccatura ais8 b4} |
    %% 10
    \acciaccatura e,,8 cis'2 \repeat unfold 2 {\acciaccatura bis8 cis4} |
    \acciaccatura d,8 d'2 \repeat unfold 2 {\acciaccatura cis8 d4} |
    %% 12
    \acciaccatura e,8 e'2 d8( cis b a) | a'2 b8( a g fis) |
    %% 14
    e( b' g e) d4( cis) | d2_\dolce e8( d cis b) | a4 a a b8( cis) |
    d2 e8( d cis b) | a4 a a b8( cis) | d2( fis4) b | gis2( a4) r |
    fis2\upbow( g4) r | \acciaccatura b,8 b'4.( a8 g fis e d) |
    cis4 <cis a'>\f <cis a'> r \mark \default |
    %% 24
    e,4._\dolce( fis16 gis) a4-. b-. | cis2( b4) gis | a( a' gis e) |
    %% 27
    fis2( e4) a, | \acciaccatura cis8 b4( a \acciaccatura e'8 d4 cis) |
    <cis e,>2( <b e,>4) r | R1 | a,4.( b16 cis) d4-. e-. |
    fis2( e4) cis | d( d' cis) cis,-. | b-. a-. d-. e-. |
    a,4 r8 a''\upbow b( a gis fis) | e4-. e-. e8( fis e d) |
    cis4 r8 a'8-. b( a gis fis) | e4-. e-. e8( fis e d) |
    cis( d e fis) fis\rf( e) d-. cis-. |
    %% 40
    b'\rf( a) gis-. fis-. fis\rf( e) d-. cis-. |
    b4 <a b>-.( <a b>-. <a b>-.) |
    <gis b>8( cis\cresc d e) fis( gis a b) |
    gis\f( a fis d) cis4( b) \mark \default |
    %% 44
    a8\p( b cis d) d\rf( cis) b-. a-. |
    gis'\rf( fis) e-. d-. d\rf( cis) b-. a-. |
    dis,( fis dis\cresc fis) dis( fis dis fis) | e4 r r d |
    %% 48
    cis-.\f d-. e-. e-. | a,8\p( cis e a) cis( a e'-4 cis) |
    a4 << {\voiceOne cis( b d)}
	  \new Voice {\voiceTwo e,2.} >> \oneVoice |
    %% 51
    <e cis'>4 r r2 | r4 a-4( gis b) | a\open r <cis a'>\f <cis a'> |
    <cis a'>2 r
  }
  %% 55
  fis1\p( | g | ais,-1) | b2.-1( cis8 d) | e4 e fis8( e d cis) |
  d2( dis) | e g8( fis e fis) | g( e b' g) e( g e b) |
  \repeat unfold 2 {\repeat tremolo 2 {g8-. e-.}} |
  \repeat unfold 2 {\repeat tremolo 2 {a-. e-.}} |
  \repeat unfold 2 {\repeat tremolo 2 {a-. b,-.}} |
  g'8 \repeat unfold 3 {<g b,>8} <g b,>4 r | b2.\upbow( cis8 dis) |
  e4 e f8( d c b) | c2( cis) |
  %% 70
  d8( fis a fis) d( c a fis) \mark \default |
  g-. d-. b-. g-. \repeat tremolo 2 {b-. g-.} |
  \repeat unfold 2 {\repeat tremolo 2 {c-. g-.}} |
  \repeat percent 2 {a( c d c)} |
  b \repeat unfold 3 {<b d>} <b d>4 r | d'2.( e8 fis) |
  g4 g a8( g fis e) | fis2( gis) | a r |
  \acciaccatura a,8 a'2\f \repeat unfold 2 {\acciaccatura gis8 a4} |
  \acciaccatura b,8 b'2 \repeat unfold 2 {\acciaccatura ais8 b4} |
  \acciaccatura e,,8 cis'2 \repeat unfold 2 {\acciaccatura bis8 cis4} |
  \acciaccatura d,8 d'2 \repeat unfold 2 {\acciaccatura cis8 d4} |
  e2 d8( cis b a) | a'2 b8( a g fis) | e( b' g e) d4( cis) |
  \acciaccatura d,8 d'2_\dolce e8( d cis b) | a4 a a b8( cis) |
  %% 88
  d2 e8( d cis b) | a4 a a b8( cis) | d2( fis4) b | gis2( a4-!) r |
  fis2\upbow( g4-!) r | \acciaccatura b,8 b'4.( a8 g fis e d) |
  cis4 <cis a'>\f <cis a'> r \mark \default |
  a,4._\dolce( b16 cis) d4-. e-. | fis2( e4) cis | d( d' cis a) |
  b2( a4 fis) | \acciaccatura fis8 e4 d-. <g a,> <fis a,> |
  %% 100
  <fis a,>2( <e a,>4-.) r | R1 | d4.\downbow( e16 fis) g4-. a-. |
  %% 103
  b2 a8( cis b a) | g4-. cis,-. fis8( a g fis) |
  g4-. e-. <fis a,> <e a,> | \repeat percent 2 {d8( fis a, fis')} |
  e( g a, e') cis( e a, cis) | \acciaccatura d8 d'2 e8( d cis b) |
  %% 109
  a4-.( a-.) a8( b a g) | fis( g a b) b\rf( a) g-. fis-. |
  e'\rf( d) cis-. b-. b\rf( a) g-. fis-. |
  e4 <e d'>-.( <e d'>-. <e d'>-.) |
  %% 113
  cis'8\cresc( d e fis) g( a b cis,) |
  d\f( a b e) d4( cis) \mark \default |
  d8\p( e fis g) g\rf( fis) e-. d-. |
  %% 116
  b'\rf( a) g-. fis-. g\rf( fis) e-. d-. |
  <d e>4 <d e>-.\cresc( <d e>-. <d e>-.) | <cis e>4 r r cis, |
  d\f <g g,>( <fis a,> <e a,>) | d8\p( fis a d) fis( a fis d) |
  %% 121
  a4 << {\voiceOne fis'( e g)} \new Voice {\voiceTwo a,2.} >> \oneVoice |
  <a fis'>4 r r2 | r4 d\upbow( cis e) |
  d8-.\f fis-. a-. fis-. d-. a-. fis-. a-. | d,4 r <d a' fis'> r |
  <d a' fis'>2 r \bar "|."
}

violinIIduoVmovementI = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 128 s128
    <fis d>8\p \repeat unfold 3 {<fis d>} \repeat tremolo 4 {<fis d>8} |
    \repeat unfold 2 {\repeat tremolo 4 {<g g,>8}} |
    \repeat unfold 2 {\repeat tremolo 4 {<g a,>8}} |
    \repeat unfold 2 {\repeat tremolo 4 {<fis b,>8}} |
    \repeat unfold 2 {\repeat tremolo 4 {<e cis>8}} |
    e4-. e-. d-. d-. | d2( cis4) r |
    <fis d>8\f \repeat unfold 3 {<fis d>} \repeat tremolo 4 {<fis d>8} |
    \repeat unfold 2 {\repeat tremolo 4 {<g g,>8}} |
    \repeat unfold 2 {\repeat tremolo 4 {<g a,>8}} |
    \repeat unfold 2 {\repeat tremolo 4 {<fis b,>8}} |
    cis8( d e fis) g2~ | g4 fis8-. e-. fis4-. d-. | g-. e-. a-. a,-. |
    %% 15
    \repeat percent 2 {d8\p( fis a, fis')} |
    \repeat percent 2 {e( g a, g')} |
    \repeat percent 2 {d( fis a, fis')}
    \repeat percent 2 {e( g a, g')} |
    \repeat unfold 2 {\repeat tremolo 2 {d8( fis)}} |
    d( e f d) cis( e cis a) | c( d ees c) b( d b g) |
    %% 22
    g( b d g) b( a g gis) | a4 <e a,>\f <e a,> r \mark \default | R1 |
    a,4._\dolce( b16 cis) d4-. e-. | fis2( e4) cis-. |
    d( d' cis <e, cis>) |
    %% 28
    << {\voiceOne e1}
       \new Voice {\voiceTwo d4( cis b a)} >> \oneVoice |
    %% 29
    a'2( gis4-!) r | e4.( fis16 gis) a4-. b-. | cis2( b4) gis |
    a( a' gis e) | fis2( e4) a, |
    \acciaccatura e'8 d4( cis) cis8( b) a-. gis-. |
    %% 35
    \repeat unfold 2 {
      \repeat percent 2 {a( cis e, cis')} | b( d e, b') gis( b e, gis)
    } |
    %% 39
    a( b cis d) d\rf( cis) b-. a-. |
    gis'\rf( fis) e-. d-. d\rf( cis) b-. a-. |
    \repeat percent 2 {dis,( fis dis fis)} | e4\cresc r r d |
    cis-.\f d-. e-. e-. \mark \default |
    %% 44
    cis'8\p( d e fis) fis\rf( e) d-. cis-. |
    b'\rf( a) gis-. fis-. fis\rf( e) d-. cis-. |
    b4 <a b>-.\cresc( <a b>-. <a b>-.) |
    %% 47
    <gis b>8( cis d e) fis( gis a b) | gis\f( a fis d) cis4-. b-. |
    a4 r r2 | r4 a,\p( gis b) | a8( cis e a cis a e' cis) |
    %% 52
    a4 << {\voiceOne e2.} \new Voice {\voiceTwo cis4( b d)} >> \oneVoice |
    <e cis>4 r <e a,>\f <e a,> | <e a,>2 r
  }
  %% 55
  <d b>8\p \repeat unfold 3 {<d b>} \repeat tremolo 4 {<d b>} |
  \repeat unfold 2 {\repeat tremolo 4 {<e b>8}} |
  \repeat unfold 2 {\repeat tremolo 4 {<e cis>8}} |
  \repeat tremolo 4 {<d b>8} <d b>4 r4 | fis2.( gis8 ais) |
  b4 b c8( a g fis) | g4-. e-. dis-. b-. | e2 r | b'1( | c | dis,) |
  e2.( fis8 g) | a4 a b8( a g fis) | g2( gis) | a8( c e c) a( b a g) |
  %% 70
  fis2 r | \acciaccatura {d8} {\mark \default d'1} |
  %% 72
  \acciaccatura e,8 e'1 | \acciaccatura a,,8 fis'1 |
  \acciaccatura g,8 g'2.( a8 b) | c4-.( c-.) d8( c b a) | b2( cis) |
  d4 d e8( d cis b) | a8( cis e d cis b a g) |
  %% 79
  \repeat tremolo 4 {<fis d>8\f} \repeat tremolo 4 {<fis d>} |
  \repeat unfold 2 {\repeat tremolo 4 {<g g,>}} |
  \repeat unfold 2 {\repeat tremolo 4 {<g a,>}} |
  \repeat unfold 2 {\repeat tremolo 4 {<fis b,>}} |
  %% 83
  cis8( d e fis) g2 | fis8( g fis e) d4-. fis-. |
  g( e) <fis a,> <e a,> | \repeat percent 2 {d8\p( fis a, fis')} |
  \repeat percent 2 {e( g a, g')} |
  \repeat percent 2 {d8( fis a, fis')} |
  \repeat percent 2 {e( g a, g')} | \repeat percent 2 {d( fis d fis)} |
  d( e f d) cis( e cis a) | c( d ees c) b( d b g) |
  %% 93
  g( b d g) b( a g gis) | a4\f <e a,> <e a,> r \mark \default | R1 |
  %% 96
  d4._\dolce( e16 fis) g4-. a-. | b2( a4) fis | g( g' fis d) |
  cis( d e d) | d2( cis4-!) r | a4.( b16 cis) d4-. e-. | fis2( e4) cis |
  %% 103
  d8( fis e d) cis4 fis, | b8( d cis b) a4 d, |
  b'8( b' g e) d4-. cis-. | d2 e8( d cis b) |
  a4-.( a-.) a8( g fis e) | \repeat percent 2 {d( fis a, fis')} |
  e( g a, e') cis( e a, cis) | d( e fis g) g\rf( fis) e-. d-. |
  cis'\rf( b) a-. g-. g\rf( fis) e-. d-. |
  \repeat unfold 2 {\repeat tremolo 2 {gis,( b)}} |
  a8\cresc( b cis d) e( fis g e) |
  %% 114
  fis4-.\f g-. a-. a,-. \mark \default |
  fis'8\p( g a b) b\rf( a) g-. fis-. |
  g\rf( fis) e-. d-. b'\rf( a) g-. fis-. |
  gis\cresc( b e gis) b( a b gis) | a( b g e) cis( a e' g,) |
  %% 119
  fis\f( d' b e) d4( cis) | d r r2 | r4 d,\p( cis e) |
  d8( fis a d) fis( a fis d) |
  << {\voiceOne a1}
     \new Voice {\voiceTwo r4 fis( e g)} >> \oneVoice |
  <a fis>\f r r2 | d8-. fis-. a-. fis-. d-. a-. fis-. a-. | d,2 r \bar "|."
}

titleduoVmovementII = ##f

globalduoVmovementII = {
  \time 6/8
  \tempo "Andante." 8 = 77
  \key g \major
}

violinIduoVmovementII = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    b4--\p( b8-.) c4( b8) | a( g a) b4( g8) | g( c b) e4--( d8-.) |
    cis( c b) <b d,>4( <a d,>8) | b4--( b8-.) d->( c b) |
    a( g a) b4( g8) | b( e d) cis4--( b'8-.) | a( g e) d4 r8
  }
  \repeat volta 2 {
    d4\mf( g8) d4( c8) | a'( fis d) c4--( b8-.) | b( e g) g( fis dis) |
    e( a, g) g4( fis8) | b4\p--( b8-.) d( c b) | a( g a) b4( g8) |
    b( d g) e( c a) | g4--( fis8-.) <g g,>4 r8
  }
}

violinIIduoVmovementII = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    <d g,>4--\p( <d g,>8-.) <e g,>4( <d g,>8) | c( b c) d4( b8) |
    r4. g'8\upbow( c b) | a( fis g) g4( fis8) |
    <d g,>4--( <d g,>8-.) <e g,>4->--( <d g,>8-.) | c( b c) d4( b8) |
    r4. e8\upbow( a g) | fis( g a) d,4 r8
  }
  \repeat volta 2 {
    %% 9
    b16\mf( d g d b d) a( e' g e a, e') |
    d( fis a fis d fis) dis( fis a fis a fis) |
    %% 11
    e4 r8 a,8\upbow( dis fis) | g <fis b,> <e b> <e b>4( <dis b>8) |
    <d g,>4--\p( <d g,>8-.) <e g,>4( <d g,>8) | c( b c) d4( b8) |
    <d g,>( f b,) c4( cis8) | d4--( d8-.) g,4 r8
  }
}

titleduoVmovementIII = "Rondo."

globalduoVmovementIII = {
  \time 4/4
  \tempo "Moderato." 4 = 111
  \key d \major
}

violinIduoVmovementIII = \new Voice \relative a'' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 2 a4-.\mf\downbow a-. | fis2 e8( fis) g-. e-. |
    d2 e4-. e-. | g8( fis) e-. d-. g( a fis g) | e2 a4-. a-. |
    fis2 e8( fis) g-. e-. | d2 e4-. e-. | fis( b) a-. gis-. | a2
  }
  \mark \default
  \repeat volta 2 {
    e4-. e-. | fis( d) fis-. fis-. | g( e) a8( b) a-. g-. |
    %% 11
    fis-.\upbow e-. d-. cis-. b-. a-. g-. fis-. |
    << {\voiceOne fis4( e)}
       \new Voice {\voiceTwo a,2} >> \oneVoice a''4-. a-. |
    fis2 e8( fis) g-. e-. | d2 b'4-. b-. | cis,( d) e-. cis-. | d2
  }
  \mark \default \key f \major
  a'8\p\downbow( f) e-. d-. | d( cis) b-. a-. d4-. d-. |
  %% 18
  e( g) e8( f) g-. a-. | bes4( g) e8( f) g-. e-. |
  f2 c8( a') g-. f-. | f( e) d-. c-. f4-. f-. |
  g( bes) a8\upbow( bes) a-. g-. | f( g) f-. e-. d( f) e-. d-. |
  cis2 \bar "||" \key d \major a'4-.\mf a-. \mark \default |
  %% 25
  fis2 e8( fis) g-. e-. | d2 e4-. e-. | g8( fis) e-. d-. g( a fis g) |
  e2 a4-. a-. | fis2 e8( fis) g-. e-. | d2 b'4-. b-. |
  %% 31
  cis,4( d) e-. cis-. | d e8-.\upbow a-. fis-. a-. e-. a-. |
  fis4 e8-. a-. fis-. a-. e-. a-. | fis4-. d-. e-. fis-. |
  g-. a-. b( a8 g) | fis( e g fis) e( d cis b) |
  a( a') g-. fis-. fis( e) d-. cis-. | d2 d8( fis) a-. fis-. |
  %% 39
  e4-. e-. a,( b8 cis) | d( e) fis-. g-. b( a) g-. fis-. |
  e4-. e-. a,8( b) cis-. a-. | d4 r <d d,>\f <fis a, d,> | <d d,>2 r
  \mark \markup { \musicglyph #"scripts.ufermata" } \bar "|."
}

violinIIduoVmovementIII = \new Voice \relative f' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 2 fis8-.\mf\downbow a,-. fis'-. a,-. |
    \repeat tremolo 2 {d8 a} \repeat tremolo 2 {g' a,} |
    fis' a, d a \repeat tremolo 2 {cis a} | d a fis' a, e' a, d a |
    \repeat tremolo 2 {cis a} \repeat tremolo 2 {fis' a,} |
    \repeat tremolo 2 {d a} \repeat tremolo 2 {g' a,} |
    \repeat tremolo 2 {fis' a,} \repeat tremolo 2 {cis a} |
    d fis d b cis e b e | a, cis e a
  }
  \mark \default
  \repeat volta 2 {
    cis a cis a | d a fis a \repeat tremolo 2 {d a} |
    e' cis a cis fis( g) fis-. e-. |
    %% 11
    d-. cis-. b-. a-. g-. fis-. e-. d-. |
    d4( cis) \repeat tremolo 2 {fis8 a,} |
    \repeat tremolo 2 {d a} \repeat tremolo 2 {g' a,} |
    %% 14
    \repeat tremolo 2 {fis' a,} g b d g | a g fis d g e a a, | d2
  }
  \mark \default \key f \major r4 d4\p\upbow | e( g) g8( f) e-. d-. |
  %% 18
  d( cis) b-. a-. d4( f) | fis8( g) a-. bes-. c4 c, | f2 r4 f4\upbow |
  g( bes) bes8( a) g-. f-. | f( e) d-. c-. | f4-.( cis-.) |
  d-. c-. bes-. gis'-. |
  a-. a,-. \bar "||" \key d \major fis'8\mf a, fis' a, \mark \default |
  \repeat tremolo 2 {d a} \repeat tremolo 2 {g' a,} |
  fis' a, d a \repeat tremolo 2 {cis a} | d a fis' a, e' a, d a |
  cis a cis e \repeat tremolo 2 {fis a,} |
  \repeat tremolo 2 {d a} \repeat tremolo 2 {g' a,} |
  \repeat tremolo 2 {fis' a,} g b d g | a g fis d g e a a, |
  d4 cis'8-. a-. d-. a-. cis-. a-. | d4 cis,8-. a-. d-. a-. cis-. a-. |
  d a d fis r g r a | r b r b r d r e\upbow | d( cis b a) g( fis e d) |
  cis4-. d-. g-. a-. | \repeat percent 2 {fis8( a fis a)} |
  \repeat percent 2 {g( a g a)} | \repeat percent 2 {fis( a d, a')} |
  g( a g a) e( a g a) | fis4 r <fis a>\f\downbow <fis a> |
  <fis a>2 r \bar "|."
}

%%% ----------- Duo VI ------------

titleduoVImovementI = ##f

globalduoVImovementI = {
  \time 4/4
  \tempo "Moderato." 4 = 111
  \key g \major
}

violinIduoVImovementI = \new Voice \relative b {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 b8.\f\upbow( e16) | e2. b8.( g'16) | g2. e8.( g16) |
    %% 3
    b4( g' fis e) | e2-4( dis4-!) b,8.\downbow( fis'16) |
    %% 5
    fis2. b,8.( a'16-4) | a2. fis8.( g16) | a4( c b a) |
    a2-4( g4-!) b8.-.( b'16-.) | g2 dis | e c | b4-. e( fis g) |
    <g b,>2( <fis b,>4) b,8.-.( b'16) | g2 dis | e c |
    b4-. e-! fis-! <dis fis,>-! |
    %% 16
    <e b g>4 r r b,8.( e16) \mark \default | e2. b8.( g'16) |
    g2. e8.( g16) | b4( g' fis e) | e2( d4-!) r |
    r4 <fis, a,>\upbow <fis a,> <fis a,> |
    r <fis a,>\downbow <fis a,> <fis a,> |
    r <fis a,>\upbow <fis a,> <fis a,> |
    %% 24
    <g g,>8 b'( g e) cis( d) a-. c-. | b r g4-.\upbow fis-. d-. |
    g8-. b'-. g-. e-. a4-. fis,-. | e8-. g'-. e-. c-. fis4-. d,-. |
    c8-. e'-. c-. a-. d4-. b,-. | a <c' d,>2--( <b d,>4-.) |
    <b d,>2( <a d,>4) b8.-.\p( c16-.) | d2( b4 a) |
    g2 r4 a8.-.\downbow( b16-.) | c2( a4 g) |
    %% 34
    fis2 r4 g8.-.\upbow( a16-.) | b2( a4-!) a8.-.( b16-.) |
    c2( b4-!) b8.-.( c16-.) | d4( g a, e'-4) |
    g,2( fis4) r \mark \default | r2 r4 c8.-.\upbow( d16-.) |
    e2( c4 b) | a2 r4 b8.-.\downbow( c16-.) | d2( b4 a) |
    %% 43
    g-. g'-. fis-. d-. | r a'-.\upbow g-. g,-. | b-. c-. d-. d-. |
    %% 46
    \tuplet 3/2 {g8-.\f b-. d-.} \tuplet 3/2 {g-. b-. g-.}
    \tuplet 3/2 {fis-. a-. fis-.} \tuplet 3/2 {d-. a-. d-.} |
    b4-. g-. a-. fis-. |
    %% 48
    \tuplet 3/2 {g8 b d} \tuplet 3/2 {g b g}
    \tuplet 3/2 {e g e} \tuplet 3/2 {c e c} | a4-. e' c-. a-. |
    %% 50
    \tuplet 3/2 {fis8 a d} \tuplet 3/2 {a d fis}
    \tuplet 3/2 {a g fis} \tuplet 3/2 {e d c} |
    %% 51
    \tuplet 3/2 {b d g} \tuplet 3/2 {e c a}
    \tuplet 3/2 {d b g} \tuplet 3/2 {c a g} | g4 b-._\dolce( b-. b-.) |
    %% 53
    \repeat percent 2 {d->( c a b)} | d( c b a) | g( b a d) |
    b( g a <d d,>\pp) |
    %% 58
    << {\voiceOne b( d b d)} \new Voice {\voiceTwo d,1} >> \oneVoice |
    <d b'>2.
  }
  b8.\f\upbow( e16) | e2. b8.( gis'16) | gis2. e8.( gis16) |
  %% 62
  << {\voiceOne b4( d c b)} \new Voice {\voiceTwo e,1} >> \oneVoice |
  <b' e,>2( <c e,>4) a8.\downbow( e'16) | e2. d8.( a'16) | a2.( g8 f) |
  %% 66
  e4( g f e) | e2-4( d4-!) r | r \repeat unfold 3 {<c e,>} |
  r \repeat unfold 3 {<c g>} | r c,\upbow(d e) | <f g,>2. r4 |
  r4 \repeat unfold 3 {<g b,>} | r4 \repeat unfold 3 {<b d,>} |
  %% 74
  r f'\upbow( e d) | d2( c4-!) g8.-.( g'16-.) | e2 b | c4( cis d dis) |
  e2( f4 fis) | g2\p f8( e d c) | bes2( a4) a8.-.( a'16-.) |
  a2 g8( f e d) | c2( b4) b'8.-.( a16-.) \mark \default |
  %% 83
  \tuplet 3/2 {g8-.\f b-. g-.} \tuplet 3/2 {e-. g-. e-.}
  \tuplet 3/2 {b-. e-. b-.} \tuplet 3/2 {g-. b-. g-.} | a2 a'2 |
  %% 85
  \tuplet 3/2 {fis8 a fis} \tuplet 3/2 {d fis d}
  \tuplet 3/2 {a d a} \tuplet 3/2 {fis a fis} | g2 g'2 |
  %% 87
  \tuplet 3/2 {e8 c e} \tuplet 3/2 {g a g}
  \tuplet 3/2 {e b e} \tuplet 3/2 {g a g} |
  \tuplet 3/2 {fis a, c} \tuplet 3/2 {fis c fis}
  \tuplet 3/2 {a g fis} \tuplet 3/2 {g fis e} |
  %% 89
  dis4 <b b'> <b b'> b,8.( e16) | e2. b8.( g'16) | g2. e8.( g16) |
  %% 92
  b4( g' fis e) | e2-4( dis4-!) b,8.\downbow( fis'16) | fis2. b,8.( a'16) |
  %% 95
  a2. fis8.( g16) | a4( c b a) | a2( g4-!) b8.-.( b'16-.) | g2 dis |
  e r4 e,8.-.\upbow( e'16-.) | c2( cis) |
  %% 101
  d r4 d8.-.\downbow fis16-.\upbow | g8-. b-. g-. e-. a4-. fis,-. |
  e8-. g'-. e-. c-. fis4-. d,-. | c8-. e'-. c-. a-. d4 b, |
  %% 105
  a8-. c'-. a-. fis-. b4-. e,-. | fis <a b,>2( <g b,>4) |
  %% 107
  <g b,>2( <fis b,>4-!) r \mark \default | r2 r4 b,4\p |
  c( d c b) | a2 r4 a | b( c b a) | g( e' dis b) |
  %% 113
  r4 fis'\upbow( e) e8.-.( fis16-.) | g4( a fis e) |
  e2( dis4-!) g'8.-.( a16-.) | b2( g4 fis) |
  %% 117
  e2 r4 fis8.-.\downbow( g16-.) | a2( fis4 e) |
  dis2 r4 e8.-.\upbow( fis16-.) | g2( fis4) fis8.-.( g16-.) |
  a2( g4) e8-. b-. | d( c a fis) g4-. fis-. |
  %% 123
  \tuplet 3/2 {e8-.\f g-. b-.} \tuplet 3/2 {e-. g-. e-.}
  \tuplet 3/2 {dis-. fis-. dis-.} \tuplet 3/2 {b-. c-. a-.} |
  g4-. g-. fis-. dis-. |
  %% 125
  \tuplet 3/2 {e8 g b} \tuplet 3/2 {e g e}
  \tuplet 3/2 {b e b} \tuplet 3/2 {g b g} | fis4 c' a ais |
  %% 127
  \tuplet 3/2 {b8 dis fis} \tuplet 3/2 {a g fis}
  \tuplet 3/2 {e dis c} \tuplet 3/2 {b c a} |
  %% 128
  \tuplet 3/2 {g b e} \tuplet 3/2 {c a fis}
  \tuplet 3/2 {b g e} \tuplet 3/2 {a fis dis} \mark \default |
  %% 129
  e4_\dolce g-.( g-. g-.) | b->( a fis g) | b->( a fis gis) |
  a( c b a) | g( e fis b) | g-. gis-. a-. b-. | c-. dis-. e-. fis-. |
  g-. b-. g-. e-. | c-. a'-. fis-. c-. | b-. g'-. fis-. <dis fis,> |
  %% 139
  e,8-.\f g-. b-. e-. b-. dis-. fis-. b-. | g4-. e-. fis-. dis-. |
  e,8-. g-. b-. e-. b-. dis-. fis-. b-. | g4-. e-. fis-. dis-. |
  e8-. b'-! g-! e-! b-! e-! b-! g-! |
  e4 \repeat unfold 2 {<e' e, g,>} r \bar "|."
}

violinIIduoVImovementI = \new Voice \relative e' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 r4 | \repeat percent 2 {r4 <e g,>\f <e g,> <e g,>} |
    %% 3
    r4 e( fis g) | <fis b,>2. r4 |
    %% 5
    \repeat percent 3 {r4 \repeat unfold 3 {<dis b>}} |
    %% 8
    <dis b>2( <e b>4-!) r4 | r2 r4 b8.-.\upbow( b'16-.) | g2 dis |
    e4-. g( dis e) | e2( dis4) r | r2 r4 b8.-.\upbow( b'16-.) |
    %% 14
    g2 dis | e4 g-! a-! b-! | e, r r2 \mark \default |
    \repeat percent 2 {r4 \repeat unfold 3 {<e g,>}} | r4 e( fis g) |
    %% 20
    <a fis>2. d,8.( a'16) | a2. d,8.( c'16) | c2. a8.( b16) | c4( e d c) |
    b8 r g4-.\upbow fis-. d-. | g8-. b'( g e) cis( d) a-. c-. |
    %% 26
    b r g4\upbow fis8-. a'-. fis-. d-. | g4-. e,-. d8-. fis'-. d-. b-. |
    e4-. c,-. b8-. d'-. b-. g-. | fis4 <fis a,>2 <g g,>4 |
    g2( fis4) r4 | r2 r4 c8.-.\p\upbow( d16-.) | e2( c4 b) |
    %% 33
    a2 r4 b8.-.\downbow( c16-.) | d2( b4 a) | g g'-. fis-. d-. |
    r a'-. g-. g,-. | r b\upbow( c cis) |
    <d b>2( <d a>4) b'8.-.( c16-.) \mark \default | d2( b4 a) |
    g2 r4 a8.-.\downbow( b16-.) | c2( a4 g) |
    %% 42
    fis2 r4 g8.-.\upbow( a16-.) | b2( a4-!) a8.-.( b16-.) |
    c2( b4-!) b8.-.( c16-.) | d8( g a, e') <g, b,>4( <fis a,>) |
    <g g,>\f g-. a-. fis-. |
    %% 47
    \tuplet 3/2 {g,8-. b-. d-.} \tuplet 3/2 {g-. b-. g-.}
    \tuplet 3/2 {fis-. a-. fis-.} \tuplet 3/2 {d-. a-. c-.} |
    b4-. b'-. g-. e-. |
    %% 49
    \tuplet 3/2 {c8 e a} \tuplet 3/2 {c e c}
    \tuplet 3/2 {a c a} \tuplet 3/2 {fis a fis} | d4 d-. fis-. a-. |
    %% 51
    g-. c,-. d-. d-. | g8\p( d g d) \repeat tremolo 2 {g( d)} |
    \repeat percent 2 {b'( d, a' d,) fis( d g d)} |
    %% 55
    f( g, e' g,) d'( g, c g) | b( g d' g,) c( g fis' g,) |
    g'( g, b g) c( g fis'\pp g,) |
    %% 58
    \repeat percent 2 {g'( g, fis' g,)} | <g' g,>2.
  }
  r4 | r <gis b,>4\f <gis b,> <gis b,> | r <e b> <e b> <e b> |
  %% 62
  r b'( a gis) | gis2( a4) r | r a,8.\upbow( f'16) f2~ |
  f4 d8.( b'16) b2 | c4( e d c) | <c g>2( <b g>4-!) g,8.( c16) |
  c2. g8.( e'16) | e2. c8.( e16) | g4( e' d c) |
  %% 71
  <d d,>2 <b d,>4 g,8.\downbow( d'16) | d2. g,8.( f'16) |
  f2. d8.( e16) | f4( a g f) | <f g,>2( <e g,>4-!) r |
  %% 76
  r2 r4 g,8.-.\upbow g'16-.\downbow | e2 b2 | c4( cis d dis) |
  e8\p c' e, c' \repeat tremolo 2 {e, c'} |
  %% 80
  \repeat unfold 2 {\repeat tremolo 2 {e, cis'}} |
  \repeat unfold 2 {\repeat tremolo 2 {f, d'}} |
  \repeat unfold 2 {\repeat tremolo 2 {fis, dis'}} \mark \default |
  <e g,>2\f r |
  %% 84
  \tuplet 3/2 {c8-. e-. c-.} \tuplet 3/2 {a-. c-. a-.}
  \tuplet 3/2 {e-. a-. e-.} \tuplet 3/2 {c-. e-. c-.} | d2 d'2 |
  %% 86
  \tuplet 3/2 {b8 d b} \tuplet 3/2 {g b g}
  \tuplet 3/2 {d g d} \tuplet 3/2 {b d b} | c4 c' b, b' | a, a'2 ais4 |
  b <dis fis> <dis fis> r |
  %% 90
  \repeat percent 2 {r <e, g,> <e g,> <e g,>} | r e( fis g) |
  %% 93
  <fis b,>2. r4 | \repeat percent 3 {r4 \repeat unfold 3 {<dis b>}} |
  %% 97
  <dis b>2( <e b>4-!) r4 | r2 r4 b8.-.\upbow( g'16-.) | g2( gis) |
  a r4 a,8.-.\downbow( a'16-.) | fis2 c( |
  %% 102
  b4-.) g'-. fis8-. a'-. fis-. d-. | g4-. e,-. d8-. fis'-. d-. b-. |
  e4-. c,-. b8-. d'-. b-. g-. | c4-. a,-. g8-. b'-. g-. e-. |
  %% 106
  dis4 fis2( e4) | e2( dis4-!) g8.-.\p\upbow( a16-.) \mark \default | 
  b2( g4 fis) | e2 r4 fis8.-.\downbow( g16-.) | a2( fis4 e) |
  dis2 r4 e8.( fis16-.) | g2( fis4-!) fis8.-.( g16-.) |
  a2( g4-!) g8.-.( a16-.) | b4( c a g) | g2( fis4-!) r |
  %% 116
  r2  r4 a8.-.( b16-.) | c2( a4 g) | fis2 r4 g8.-.\downbow( a16-.) |
  b2( g4 fis) | e e'-. dis-. b-. | r fis'-. e-. gis,-. |
  a-. fis-. b-. b,-. | e-.\f g-. fis-. dis-. |
  %% 124
  \tuplet 3/2 {e8 g b} \tuplet 3/2 {e g e}
  \tuplet 3/2 {dis fis dis} \tuplet 3/2 {b c a} |
  g4 \repeat unfold 3 {<e g,>} |
  %% 126
  \tuplet 3/2 {a,8 c fis} \tuplet 3/2 {a c a }
  \tuplet 3/2 {fis a fis} \tuplet 3/2 {e g e} |
  dis4-. b-. fis'-. dis-. | e-. a,-. b-. b-. \mark \default |
  \repeat percent 2 {e8\p( b e b)} | g'( b, fis' b,) dis( b e b) |
  g'( b, fis' b,) dis( b e d) | c( e a, e') g,( e' c e) |
  b( e g e) b( dis fis dis) | e( b e d) c( e gis e) |
  a( e b' a) g( e dis b) | e( b g b) e( g b g) |
  a( fis c a) c( fis a fis) | g( b, e g) a( fis b b,) | e4 r <a b,> r |
  e8-. g-. b-. e-. b-. dis-. fis-. b-. | g4-. e-. fis-. dis-. |
  e,8-. g-. b-. e-. b-. dis-. fis-. b-. |
  g4-. b8-! g-! e-! b-! g-! e-! | \repeat unfold 3 {<e g,>4} r \bar "|."
}

titleduoVImovementII = "Romance."

globalduoVImovementII = {
  \time 4/4
  \tempo "Andante." 4 = 77
  \key e \major
}

violinIduoVImovementII = \new Voice \relative g' {
  \violinVoiceSettings

  \repeat volta 2 {
    gis2\p( a4 b) | fis2( gis4 fis) | e2 fis | gis r |
    %% 5
    gis\upbow( a4 b) | cis2( b4 e,) | a2-4 gis | fis1
  }
  \repeat volta 2 {
    %% 9
    b2\mf\downbow cis | a( fis4 b) | gis2( a4 cis) | gis2( fis4) r |
    e'2\upbow( dis4 gis,) | cis2( b4 gis) | fis2( gis4 fis)
  }
  \alternative {
    %% 16
    {e2 r}
    {
      \key g\major
      \tempo "Allegro." 4 = 123
      \time 2/4
      \repeat volta 2 {
	%% 17
	e8.-.\p\downbow( fis16-.) g8.-.\upbow e16-.\downbow | fis4( b) |
	%% 19
	g8.-.( fis16) g8.-. e16-. | fis2 | e8.-.( fis16-.) g8.-. e16-. |
	%% 22
	fis4( b) | cis8.-.( b16-.) cis8.-.( d16-.) | b4 r
      }
    }
  }
  %% 25
  \appoggiatura b8 b'8.-.\f([ a16-.)] g8.-.( fis16-.) |
  g8.-.( fis16-.) e8.-.( dis16-.) |
  %% 27
  e8.-.( d16-.) c8.-.\upbow b16-.\downbow | c4( cis) |
  d8.-.( c16-.) b8.-.( a16-.) | b4 c8.-.( b16-.) | a4 b8.-.( a16-.) |
  %% 32
  g8.-.( fis16-.) g8.-.( e16-.) | b'4 b | g8.-.( fis16-.) g8.-.( e16-.) |
  b'2 | R2 | e,8.-.\p\downbow( fis16-.) g8.-.\upbow fis16-.\downbow |
  fis4( b)  | g8.-.( fis16-.) g8.-. e16-. | fis2 |
  e'8.\f fis16-. g8.-. e16-. | c8.-.( d16-.) e8.-.( c16-.) |
  b8.-.( g16-.) a8.( fis16-.) | e2 \mark \default \bar "||"
  \key e \major gis4\p\upbow( a | b gis) | e'( cis) | b2 | gis4( a | b gis) |
  fis4( gis) | e2 | gis4( a | b gis) | cis( e) | dis2 | e4( gis |
  fis b, | cis dis) | b2 | b4( gis') | a,2 | gis4( e') | fis,2 |
  b4( gis' | a, fis') | gis,( e') | fis,2 \mark \default |
  gis4( a | b gis) | e'( cis) | b2 | e4( cis | b e,) | fis( gis) | e2 |
  b'4-.\upbow b-. | gis-. gis-. | fis8( gis a b) | gis2 | b'4-. b-. |
  gis-. gis-. | fis8( gis a b) | gis2 | fis | a | gis | fis4( dis | e b) |
  a2 | gis | fis4( a | dis, fis) \mark \default \bar "||"
  \key g \major e8.-.( fis16-.) g8.-. e16-. | fis4( b) |
  g8.-.( fis16-.) g8.-. e16-. | fis2 | e8.-.( fis16-.) g8.-. e16-. |
  fis4( b) | cis8.-.( b16-.) cis8.-.( d16-.) | b2 |
  \acciaccatura b8 b'8.-.\f( a16-.) g8.-.( fis16-.) |
  g8.-.( fis16-.) e8.-.( dis16-.) |
  e8.-.( d16-.) c8.-.\upbow b16-.\downbow |
  c4( cis) | d8.-.( c16-.) b8.-.( a16-.) | b4 c8.-.( b16-.) |
  a4 b8.-.( a16-.) | g8.-.( fis16-.) g8.-.( e16-.) | b'4 b |
  g8.-.( fis16-.) g8.-.( e16-.) | b'2 | R2 |
  e,8.-.\p\downbow( fis16-.) g8.-.\upbow e16-.\downbow | fis4( b) |
  g8.-.( fis16-.) g8.-. e16-. | fis2 |
  e'8.-.\f( fis16-.) g8.-.( e16-.) | c8.-.( d16-.) e8.-.( c16-.) |
  b8.-.( a16-.) g8.-.( fis16-.) | e4 r \mark \default |
  b'8.-.\downbow( c16-.) b8.-.\upbow a16-.\downbow | g4( e) |
  b'8.-.( c16-.) b8.-.( a16-.) | g8.-.( b16-.) e8.-.( g16-.) |
  b8.-.( a16-.) g8.-.( fis16-.) | e8.-.( d16-.) c8.-.( b16-.) |
  c8.-.( e16-.) d8.-.( c16-.) | b8.-.( a16-.) g8.-.( fis16-.) |
  e4 r | e8.-.( g16-.) b8.-.( e16-.) | g8.-.( fis16-.) e8.-.( d16-.) |
  c8.-.( b16-.) a8.-.( gis16-.) | a8.-.( c16-.) b8.-.( a16-.) |
  g8.-.( b16-.) a8.-.( fis16-.) | e4 r | <b' b'>\downbow r |
  <b g'>\downbow r | <dis fis, b,>\downbow r | <e e, g,>2\downbow
  \mark \markup { \musicglyph #"scripts.ufermata" } \bar "|."
}

violinIIduoVImovementII = \new Voice \relative e' {
  \violinVoiceSettings

  \repeat volta 2 {
    e4\p( b fis' gis) | dis( b e dis) | cis( gis a b) | e( b gis b) |
    e( b fis' gis) | a( a, gis gis') | fis( dis e ais,-2) |
    b-2( dis fis dis)
  }
  \repeat volta 2 {
    e\mf( gis eis cis) | fis( e dis b) | e( dis cis a) | b( e dis b) |
    cis cis'( b) b,( | a) a'( gis) gis,( | a) a'-. b-. b,-.
  }
  \alternative {
    {
      e-. b-. gis-. b-.
    }
    {
      \key g \major
      \time 2/4
      \tempo "Allegro." 4 = 123
      \repeat volta 2 {
	e-.\p b-. | dis-. b-. | e-. b-. | dis-. b-. | e-. b-. |
	d-. b-. | e8( g) fis4-. | b,-. b'-.
      }
    }
  }
  R2 | b8.-.\downbow\f( a16-.) g8.-.( fis16-.) | g4( gis) |
  a8.-.( g16-.) fis8.-.( e16-.) | f4( fis) | g8.-.( fis16-.) e4 |
  fis8.-.( e16-.) dis4 | e-. c-. | b8.-.( cis16-.) dis8.-.( b16-.) |
  e4-. c-. | b8.-.( cis16-.) dis8.-.( e16-.) |
  fis8.-.( g16-.) a8.-.( fis16-.) | e4-.\p b-. | dis-. b-. | e-. b-. |
  dis-. b-. | g-.\f g'-. | a-. a,-. | b b | e2 \mark \default \bar "||"
  \key e \major e4\p\upbow( fis | gis e) | cis'( a) | gis2 | e4( fis |
  gis e) | a,( b) | gis2 | e'4( fis | gis e) | ais( fis) | b2 | gis4( e |
  dis gis | e fis) | b,2 | gis'4( b, | fis' b,) | e( b | dis b) |
  gis'( b, | fis' b,) | e( b | dis b) \mark \default | e( fis | gis e) |
  cis'( a | gis e) | cis( a | gis cis) | a( b) |
  \repeat unfold 4 {e-. b-. | dis-. b-.} | e e'~ | e dis~ | dis cis~ |
  cis b | a2 | gis | fis4( dis | e b) | a2 | b \mark \default \bar "||"
  \key g \major \repeat unfold 2 {e4-. b-. | dis-. b-.} | e-. b-. |
  d-. b-. | e8.-.( g16-.) fis8.-.( fis16-.) | b,4 b' | R2 |
  b8.-.\f\downbow( a16-.) g8.-.( fis16-.) | g4( gis) |
  a8.-.( g16-.) fis8.-.( e16-.) | f4( fis) | g8.-.( fis16-.) e4 |
  fis8.-.( e16-.) dis4 | e-. c-. | b8.-.( cis16-.) dis8.-.( b16-.) |
  e4-. c-. | b8.-.( cis16-.) dis8.-.( e16-.) |
  fis8.-.( g16-.) a8.-.( fis16-.) | e4-.\p b-. | dis-. b-. | e-. b-. |
  dis-. b-. | g-.\f g'-. | a-. a,-. | b b |
  e8.-.( fis16-.) g8.-.\upbow( e16-.\downbow) \mark \default |
  dis4( b) | e8.-.( fis16-.) g8.-.\upbow( e16-.\downbow) | dis4( b) |
  e8.-.( g16-.) b8.-.( e16-.) | g8.-.( fis16-.) e8.-.( d16-.) |
  c8.-.( b16-.) a8.-.( gis16-.) | a8.-.( c16-.) b8.-.( a16-.) |
  g8.-.( fis16-.) e8.-.( dis16-.) | e8.-.( g16-.) b8.-.( e16-.) |
  g,8.-.( b16-.) e8.-.( g16-.) | b8.-.( a16-.) g8.-.( fis16-.) |
  e8.-.( d16-.) c8.-.( b16-.) | c8.-.( e16-.) d8.-.( c16-.) |
  b8.-.( g'16-.) fis8.-.( dis16-.) | e8.-.(b16-.) g8.-.( e16-.) |
  dis8.-.( fis16-.) dis8.-.( b16-.) | e8.-.( g16-.) b8.-.( g16-.) |
  fis8.-.( a16-.) b8.-.( a16-.) | g2 \bar "|."
}

%%% ------------

\header {
  arranger = ##f
  composer = "Ignace Pleyel"
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 8"
  source = "http://imslp.org/"
  title = "Six Duos for 2 Violins"
}

\include "paper.ily"

#(define fileBaseName "Ignace_Pleyel-opus_8")

define(`AllDuetts', `(I, II, III, IV, V, VI)')
define(`Movements', `(I, II)')
define(`MovementsDuoIV', `(I, II, III)')
define(`MovementsDuoV', `(I, II, III)')
define(`AllViolins', `(I, II)')

include(`output-duos.ily')
