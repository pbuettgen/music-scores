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

espr = \markup{\italic "espressivo"}
cantabile = \markup{\italic "cantabile"}

titleduoImovementI = ##f

globalduoImovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4 = 123
  \key c \major
}

violinIduoImovementI = \new Voice \relative c'' {
  \violinVoiceSettings

  \repeat volta 2 {
    c2\f e | g2. e8-.([ r16 c-.)] | g4 e8-.([ r16 c-.)] g4 <g' b> |
    %% 4
    <g c> d' e r | g4\p\downbow(\( b,2) b4-.\) | d4(\( c2) c4-.\) |
    %% 7
    a4.( cis8 d e f a) | c,2( b4) r | d2\f f | a2. f8-.([ r16 d-.)] |
    a4 f8-.([ r16 d-.)] a4 cis' | d <e a,> <f a,> r |
    %% 13
    bes,8\p\downbow( c bes c bes c bes c) | a( c a c a c a c) |
    %% 15
    f,( g f g f g f g) | e( g e g e g e g) | f4\cresc g a b |
    c d e8 c g e \mark \default | c8\f e c a gis b e d |
    %% 20
    c e a-4 e a e a e | c e c e cis e cis e~ | e d'4-> c8 b d b g |
    fis4 fis g b( | d8) d4 c8 b d b g | fis4 fis g b | d d, r2 |
    %% 27
    b'2_\pDolceGrazioso( d8 c b a) | g4.( d8 g a b c) | d4\<( dis) e( g) |
    %% 30
    d4.\>( c8) b4\! r | c2( e8-4 d c b) | a4.( e8 a b c e-4) |
    e4\>( fis,\!) g\<( c\!) | b2(\> a4\!) r \mark \default |
    %% 35
    \repeat percent 2 { r4 <b d,>\>( <c d,>8\!) r r4 } |
    %% 37
    r8 b,( d g) r g,( a ais) | r b( a' b, g' e g b) |
    %% 39
    \repeat percent 2 {
      << { e2.-4( dis8. b16) } {s4.\< s4 s8\> s8. s16\! } >> } |
    %% 41
    e4.-0( g8) f( e d c) | b4.( g8) c4 r | b2~ b8\cresc g'( fis e) |
    d2. g4 | g~\f( g16 e c a) d4( fis,) | g4 b'8\p( fis a g fis e) |
    %% 47
    d4.( e8-4) c4.( d8) | b4 r r2 | r4 g( a-4 fis) | fis2\>( g4\!) r
  }
  %% 51
  c2\f e | g2. e8-.[( r16 g-.)] | bes4 g8-.([ r16 e-.)] c4 <c e> |
  %% 54
  <c f> <c g'> <c a'> r | a2\downbow cis | e2.-4 cis8-.([ r16 e-.]) |
  %% 57
  g4 e8-.[( r16 cis-.)] a4 cis | d <e a,> <f a,> r |
  f\p\downbow(\( a,2) a4-.\) | c4(\( bes2) bes4-.\) |
  %% 61
  d4(\( fis,2) fis4-.\) | a4-4( g~ g8 d' bes g) | e( a-4 g a e a g a) |
  %% 64
  f( a-4 f a f a f a) | d,( g f g d g f g) | e( g e g e g e g) |
  f( a-4 e a-4 d, cis d-4 f) | e( g, e' g, d'4) r \mark \default |
  %% 69
  r8 g'4\f\> f8\! e g e c | b g b g c g d' g, | e'4 e, f f' |
  %% 72
  r bes,\upbow a e | f8 a'4\> g8\! f g4\> f8\! | e4 gis, a a, |
  r c'\upbow b fis | g8 g4->\downbow f8 e g e c | b4 b' c e |
  %% 78
  g8 g4->\downbow f8 e g e c | b4 b, c e | g8 b c e g b, c e |
  %% 81
  g4 g, r2 | c8\p( g c g e'-4 d c g) | e( g e g e b c d) |
  %% 84
  e( c e c f c a c) | b( g a b c4) r | d8( a f' d cis e a-4 g) |
  f( a-4 f a f cis d-4 f) | b,( d f g e g f a-2) |
  c( g c g b4) r \mark \default |
  \repeat percent 2 { << {c2.-2( b8. g16)} { s4.\< s4 s8\> s8. s16\! } >> } |
  c4.( e8-4) d( c b a) | gis4.( e8) a4-4 r |
  \repeat percent 2 { r <c e,>\>( <d e,>8\!) r r4 } |
  r8 c,( e a) r c,( f a) | r c,-1( bes' c, a'4) r |
  e'2-2~\cresc e8 c'-3( b a) | g2.-2 c4-3 | c~\f( c16 a f d) g4( b,-1) |
  c r r <e, g,>\p( | <f g,>) r r <f g,>( | <e g,>) r r <e bes>( |
  <f a,>) r <e g,>( <f g,>) | <e c> e8\upbow( f fis g e'-4 c) |
  c( b) b( c cis d a' g) | g( e) e( f fis g d'-4 c) |
  c( e,-0 f-1 a) c,4( b) | c e8-4( b d c b a) | g4.( a8-4) f4.( g8) |
  e4 r r2 | r4 c'( d b) | b2\>( c4\!) r \bar "|."
}

violinIIduoImovementI = \new Voice \relative c' {
  \violinVoiceSettings

  \repeat volta 2 {
    c2\f e | g2. e8-.([ r16 c-.)] | g4 r r f' | e  <g b,> <g c,> r |
    %% 5
    f8\p( g f g f g f g) | e( g e g e g e g) | f( a e a) d,( cis d f) |
    %% 8
    e( g, e' g,) d'4 r | d2\f f | a2. f8-.([ r16 d16-.)] | a4 r r <g' a> |
    %% 12
    <f a> cis d r |
    %% 13
    c''-3\p(\( e,2-0) e4-.\) | g4(\( f2) f4-.\) | a(\( b,2) b4-.\) |
    d4(\( c2) c4-.\) | a8-.\cresc c( b) d( c) e( d) f( |
    %% 18
    e) g( f) a( g4)\f r \mark \default | e4-4 e2( b4) |
    d8.( c16) c2( c4-.) | b8( a) e'2( g,4) | fis4 r r2 |
    %% 23
    r8 d'4\downbow c8 b d b g | fis4 fis g b( | d8) d4 c8 b d b g |
    %% 26
    d'4 d, r2 | g8\p( d g d b' a g d) | b( d b d b fis' g a) |
    %% 29
    b( g b g c g e g) | fis( d e fis g4) r | a8( e a e c' b a e) |
    %% 32
    c( e c e c gis a c) | fis( a-4 c, d-4 b d-4 c e) |
    g( d g d fis4) r \mark \default |
    %% 35
    \repeat percent 2 { << {g'2.( fis8. d16)} {s4\< s4. s8\> s8. s16\!} >> } |
    g4.( b8) a( g fis e) | dis4.( b8) e4 r |
    \repeat percent 2 { r <g, b,>\>( <a b,>8\!) r r4 } |
    r8 g,( b e) r g,( c e) | r g,( f' g, e' g e c) |
    r dis\cresc( fis a) g4 r | r8 fis( a c b g f g) |
    e\f( c e a) d,( b' d, c') | b4 r r2 | r4 gis\p( a-4 fis) |
    g b8( fis a-4 g fis e) | d4 <d b>( <d c> <d a>) | <d a>2\>( <d b>4\!) r
  }
  c2\f\downbow e | g2. e8-.[( r16 g-.]) |
  bes4 g8-.[( r16 e-.]) c4 bes' | a e f r | a,2\downbow cis |
  e2. cis8-.([ r16 e-.)] | g4 e8-.[( r16 cis-.)] a4 <g' a> |
  <f a> cis d r | ees8\p( f ees f ees f ees f) | d( f d f d f d f) |
  c( d c d c d c d) | bes( d bes d bes4) r | a''(\( cis,2) cis4-.\) |
  e4-2(\( d2) d4-.\) | g4(\( b,2-1) b4-.\) | d4(\( c2) c4-.\) |
  a4.( cis8 d e f a) | c,2( b4) r \mark \default | r b\f\upbow c c, |
  %% 70
  r f\upbow e b | c8 c''4->-3\downbow bes8 a c a f-1 | e c e c f c g' c, |
  %% 73
  a'4 cis, d b | c8 e4_>\downbow d8 c e c a | fis d fis d g d a' d, |
  b'4 b, c e | g8 g4->\downbow f8 e g e c | b4 b' c e, |
  %% 79
  g8 g'4->\downbow f8 e g e c | g f e c g' f e c | g'4 g, r2 |
  e''2_\markup{\italic "dolce, grazioso"}( g8 f e d) | c4.( g8 c d e f) |
  g4\<( gis) a-1( c) | g4.-2\>( f8\!) e4 r | f2( a8 g f e) |
  d4.( a8 d e f a) | a4\>( b,\!) c\<( f-3\!) |
  e2\>( d4\!) r \mark \default |
  \repeat percent 2 { r4 <e, g,>\>( <f g,>8\!) r8 r4 } |
  r8 e( g c) r c,( d dis) | r e( d' e, c' a c e) |
  \repeat percent 2 { << {a2.( gis8. e16) } {s4\< s4. s8\> s8. s16\!} >> } |
  a4.-1( c8) bes( a g-2 f) | e4.( c8) f( c a f) |
  %% 98
  r gis\cresc( b d) c4 r | r8 b( d f e c bes c) |
  a\f( f a d) g,,( e' g, f') | e4 e8\p( f fis g e'-4 c) |
  %% 102
  c( b) b( c cis d a' g) | g( e) e( f fis g d'-4 c) |
  c( e,-0 f-1 a) c,4( b) | c4 r r <e, g,>( | <f g,>) r r <f g,>( |
  <e g,>) r r <e bes>( | <f a,>) r <e g,>( <f g,>) | <e c> r r2 |
  r4 cis( d-4 b) | c e8( b d-4 c b a) | g4 <e' g,>( <f g,> <d g,>) |
  <d g,>2\>( <e g,>4\!) r \bar "|."
}

titleduoImovementII = ##f

globalduoImovementII = {
  \time 3/4
  \tempo "Andante grazioso." 4 = 92
  \key g \major
}

violinIduoImovementII = \new Voice \relative a' {
  \violinVoiceSettings
  
  b2\p( a4) | d2. | g,4-.( g-. a-.) | b2( g4) | a2( b4) | c2( e4-4) |
  fis,4~( fis8 g d' c) | \repeat percent 2 {b2( a4)} | d2. |
  g,4-.( g-. a-.) | b2. | a2( gis4) | a\< b c | d e fis | g2.\f |
  g2\p( fis8 e) | e4-4~\>( e8 d b g\!) | d'4~\>( d8 c a fis\!) | a2.-4( |
  g4) r r \mark \default |
  \repeat volta 2 {
    r8 e\mf( g e g e) | r fis( a fis a fis) | r b,( dis b dis b) |
    %% 25
    r e( g e g e) | a,( c a c a c) | g( b g b g b) | a( c a c a c) |
    b( dis b dis b dis) | r e( g e g e) | r fis( a fis a fis) |
    r b,( dis b dis b) | r e( g e g e) | r a,( c e a c) | r g,( b e g b) |
    a,( c a c a b) | g( b g b g) r \mark \default |
  }
  r8 d'\p( g d c d) | b( d g d b d) | b( d b d fis d) | g( d g d b d) |
  c( e c e gis,-1 e'-2) | a,( e' a, e' c e) | c( d c b c e) |
  g( d g d fis) r | b2\mf( a4) | d2. | g,4-.( g-. a-.) | b2. |
  a2( gis4) | a\< b c | d e fis | g2.\f | g2\p( fis8 e) |
  e4-4~\>( e8 d b g\!) | d'4~\>( d8 c a fis\!) | g4 r r |
  fis8-.( g-. a-. b-. c-. cis-. | d-. e-. fis-. g-. a-. b-.-4) |
  c-.-4( a-. fis-. d-. c-. a-.) |
  \repeat percent 2 {g\<( b d4.\> fis,8\!)} | g4-.( g-. g-.) |
  g r r \bar "|."
}

violinIIduoImovementII = \new Voice \relative d' {
  \violinVoiceSettings

  r8 d\p( g d c d) | b( d b d b d) | b( d b d fis d) | g( d g d b d) |
  %% 5
  c( e c e gis,-1 e'-2) | a,( e' a, e' c e) | c( d c b c e) |
  g( d g d fis) r | r d( g d c d) | b( d b d b d) | b( d b d fis d) |
  %% 12
  g( d g d g d) | c( e c e d e) | c\<( e gis,-1 e'-2 a e\!) |
  b\<( g' c, g' dis-1 b'-2\!) | e,\f( b'-3 ais b g e-1) |
  %% 17
  c\p( e c e c e) | d( g d g d g) | d( fis d fis d fis) |
  %% 20
  c( d-4 c d c d) | b4 r r \mark \default |
  \repeat volta 2 {
    %% 22
    g''2\mf^\espr( fis8 e) | e2-4\>( dis4\!) |
    %% 24
    a'2( g8 fis) | fis2\>( e4\!) | e2-4\<( c8\> a\!) | e'2\<( b8\> g\!) |
    %% 28
    fis2\<( g8\> fis\!) | fis2\>( b4\!) | g'2-4( fis8 e) |
    %% 31
    e2-4\>( dis4\!) | a'2-4-\0( g8 fis) | fis2\>( e4\!) |
    e2-4\<( c8\> a\!) | e'2\<( b8\> g\!) | fis4\<( c'-4 b8\> dis,-1\!) |
    e2~ e8 r \mark \default |
  }
  b'2\p( a4) | d2. | g,4-.( g-. a-.) | b2( g4) | a2( b4) | c2( e4-4) |
  fis,4~( fis8 g d' c) | b2( a4) | r8 d,( g d c d) | b( d g d b d) |
  b( d b d fis d) | g( d g d g d) | c( e c e d e) |
  c\<( e gis, e' a, e') | b\<( g' c, g' dis b') | e,\f( b'-3 ais b g e-1) |
  c\p( e c e c e) | d( g d g d g) | d( fis d fis c d) |
  b( g b d g b) | <c d,>2.( | <b d,>4) r r | <fis c>2. |
  \repeat percent 2 { b,8( d b d c d)} | b( d b d b d) | b4 r r \bar "|."
}

titleduoImovementIII = ##f

globalduoImovementIII = {
  \time 2/4
  \tempo "Allegro non troppo." 4 = 123
  \key c \major
}

violinIduoImovementIII = \new Voice \relative g'' {
  \violinVoiceSettings

  \partial 8 g8-.\upbow\p
  \repeat volta 2 {
    %% 1
    b,4\>( c8\!) g'-. | b,4\>( c8\!) e,16( f) | g8 a b c |
    %% 4
    a16( d) cis( e) d8 a'-. | cis,4\>( d8\!) a'-. |
    %% 6
    cis,4\>( d8\!) a'16( g) | g8-. b,-. c-. e16-4( d) |
    %% 8
    d8-. fis,-. g-. r | r <f g,>\>([ <e g,>\!)] r |
    %% 10
    r <f g,>\>([ <e g,>\!)] c16( d) | e8 f d e | f e d r |
    %% 13
    \repeat percent 2 { r <g bes>\>([ <a f>\!)] r } |
    %% 15
    r <f b>([\mf <e c'>)] r | r <e bes>([ <f a,>)] r |
    <e g,>4( <f g,>) \mark \default | <e c>4 r8 b'16\f\upbow( c) |
    %% 19
    c8 dis16( e) e8 fis16( g) | g8 b16-2( c) c4 |
    %% 21
    r16 e,-4 e e e d c b | a8 a' r gis,16\upbow( a-4) |
    a8 b16( c) c8 dis16( e-4) | e8 gis16( a) a4 |
    %% 25
    r16 c, c c c bes a g | f8 gis'16\f( a) a8 cis, |
    d dis16( e-4) e8 gis, | a8 b'16-2( c) c8 fis,-1 |
    %% 29
    g ais16( b) b8 cis, | d8\f cis16( d) d8 eis16( fis) |
    %% 31
    fis8 gis16( a) a8[ r16 d,16] | cis8 b'~\downbow b16 a( g fis |
    e d cis b a g fis e) |
    %% 34
    d8 r \repeat unfold 3 { <fis a,>\downbow r } | <g a,>2~ |
    <g a,>( | <fis a,>8) cis'16([ d)] d8 eis16( fis) |
    fis8 gis16( a) a8 b16-2( c) |
    c8 r <c, d,>\downbow r \mark \default | R2 |
    <g b>8-.\p d-. <g b>-. d-. |
    %%
    \repeat percent 3 { \repeat tremolo 2 {<g b> d} } |
    \repeat tremolo 2 { a' d, } | \repeat tremolo 2 { b' d, } |
    \repeat tremolo 2 { c e } |
    r8 <d b>\>([ <d a>\!)] cis'16_\dolce\upbow( d) |
    d4.\( fis16( g)\) | g4.\( ais16( b)\) | b8.( fis16 a g fis e) |
    d4. c16\upbow( b) | b4.\cresc\( a'16( g)\) | g4.\( e16-2( d)\) |
    d4.\( c'16( b)\) | b2\f | c8\p( b16 c) ais4 | b8( ais16 b) gis4-2 |
    a8( gis16 a) \afterGrace fis4\trill_( {e16 fis)} |
    a8\>( g16 fis\!) fis8\>( e16 d\!) |
    d8\>( c16 b\!) a8\>( c16 e-2\!) |
    e8.( d16) b'4~( | b16 fis-1 g e cis d c a) |
    g8 fis16\f( g) g8 ais16( b) |
    b8 cis16( d) \once \override Hairpin.to-barline = ##f d4~\> |
    d8\! ais16( b) b8 cis16( d) |
    d8 e16( f) \once \override Hairpin.to-barline = ##f f4~\> |
    f8\! fis16( g) \once \override Hairpin.to-barline = ##f g4~\> |
    g8\! fis,16([ g)] \once \override Hairpin.to-barline = ##f g4~\> |
    g8\! fis16( g) g8 fis16( g) | g8 fis16( g) g8 g'8-.
  }
  b,4\f( c8) e-4 | gis,4( a8-4) c | e,4( f8) a-4 | cis,4( d8-4) r |
  r <cis' e>\f [ <d f> ] r | r <d, b> [ <e c> ] dis'16\f( e-4) |
  e4.\( dis16( e)\) | e4.\( cis16( d)\) | d4.\( cis16( d)\) |
  d4.\( e16( f)\) | f8 cis16( d) d8 ais16( b) |
  b8 fis16( g) g8 fis16_\pDolce( g) | g4.\( b16( c)\) |
  c4.\( dis16( e-4)\) | e8.( b16 d c b a) | g4. g'16\upbow( fis) |
  f4.( d'16-4 c) | c2 | b8.( a16 e-0 g-2 f d) |
  c4( b8) r \mark \default |
  \repeat tremolo 2 { <e, c>-. g,-. } |
  \repeat percent 2 { \repeat tremolo 2 {<e' c> g,} } |
  <e' c> [ g, <e' c> ] f'16( e) | e4.\cresc\( b16( c)\) |
  c4.\( a'16( g)\) | g4.\( dis16( e)\) | e2\f |
  d'8-4\>( c16 b\!) b8\>( a16 g-2\!) | g8\>( f16 e\!) d8( f16 a\!) |
  a8.\>( g16\!) g4~( | g16 fis g fis g f d b) |
  c4 r | r8 <b f>\f [ <c e,> ] r | r <gis d> [ <a c,> ] r |
  <f a,> r <f g,> r | <e g,> r r a'16\f( g) |
  g4.\( f16( e)\) | e4.-4\( c16( b)\) | a8 d16( c) b8 g'16( b,) |
  c8 a'16( g) g4~ | g8 a,16-4[( g)] g4~ | g8 b16( c) c8 dis16( e-4) |
  e8 fis16( g) g8 b16-2( c) | c4 r8 \bar "|."
}

violinIIduoImovementIII = \new Voice \relative d' {
  \violinVoiceSettings

  \partial 8 r8
  \repeat volta 2 {
    r <f g,>\p\>([ <e g,>\!)] r | r <f g,>\>([ <e g,>\!)] c16( d) |
    %% 3
    e8 f d e | f e d r | \repeat percent 2 { r <bes' g>\>([ <a f>\!)] r } |
    %% 7
    r <f g,>-.[ <e g,>-.] r | r <e c>-.[ <d b>-.] g'-. | b,4->( c8) g'-. |
    %% 10
    b,4->( c8) e,16( f) | g8 a b c | a16( d) cis( e) d8 a'-. |
    %% 13
    cis,4->( d8) a'-. | cis,4->( d8) a'16\mf( g) | g4.\( d'16-4( c)\) |
    %% 16
    c4~( c16 a f-1 d) | a'16( g e c g' f d b) \mark \default |
    %% 18
    c4 r8 b,16\f\upbow( c) | c8 dis16( e) e8 fis16( g) | g8 b16( c) c4 |
    %% 21
    r8 <gis b,> [ <gis b,> <gis b,> ] | <a c,> <a c,> r gis,16\upbow( a) |
    %% 23
    a8 b16( c) c8 dis16( e) | e8 gis16( a) a4 |
    %% 25
    r8 <e bes> [ <e bes> <e bes> ] | <f a,>4 r8 <g a>\f |
    %% 27
    <f a>4 r8 <e d> | <e c>4 r8 <c' d,> | <b d,>4 r8 <g a,> |
    %% 30
    <fis a,>\f r \repeat unfold 3 {<fis a,>\downbow r} |
    <g a,>2~ | <g a,>( | <fis a,>8) cis16([ d-4)] d8 eis16( fis) |
    fis8 gis16( a) a8[ r16 d,16-.-4] |
    %% 36
    cis16[ r b'8~]\downbow( b16 a g' fis) | e( d cis b a g fis e) |
    d8 r \repeat unfold 4 {
      <c' d,>\downbow r} <fis, a,>\downbow r \mark \default |
    %% 41
    r4 r8 cis'16_\pDolce( d) | d4.\( fis16( g)\) | g4.\( ais16( b)\) |
    b8.( fis16 a g fis e) | d4. d16\upbow( cis) | c4.\( a'16( g)\) |
    %% 47
    g2 | fis8.( e16 b d c a) | g4( fis8) r |
    <g b>8-.\p d-. <g b>-. d-. |
    %% 51
    \repeat percent 3 { \repeat tremolo 2 {<g b> d} } |
    \repeat tremolo 2 {dis\cresc fis} | \repeat tremolo 2 {e g} |
    \repeat tremolo 2 {fis a} | g\f b f g |
    e\p r e16( fis e fis) | dis8 r d16( e d e) | cis8 r c16( d c d) |
    \repeat tremolo 2 {b8 d} | \repeat tremolo 2 {c e} |
    \repeat tremolo 2 {d g} | d g d fis | g4 r |
    r r8 <fis c>\f | <g b,>4 r | r r8 <d aes> | <d g,>4 r8 <ees c'> |
    <d b'>4 r8 <ees c> | <d b>4 r | R2
  }
  %% 73
  r8 <f g,>\f([ <e g,>)] r | r <d e>([ <e c>)] r |
  r <c-3 bes'>\>([ <c a'>\!)] r |
  %% 76
  r <g' a>\>([ <f a>\!]) fis'16\f( a) | a4.\( fis16( g)\) |
  g4~ g8 r | r <a, c> [ <gis b> ] r | r <gis b> [ <a c> ] r |
  r <g b> [ <fis a> ] r | r <fis a> [ <g b> ] r |
  \repeat percent 2 { \repeat unfold 2 { <f g,>\downbow r} } |
  <e c>\p g, <e' c> g, |
  \repeat percent 3 { \repeat tremolo 2 {<e' c> g,} } |
  \repeat tremolo 2 {d' g,} | \repeat tremolo 2 {e' g,} |
  \repeat tremolo 2 {f' a} |
  r <e g,>\>([ <d g,>\!]) fis16_\dolce\upbow( g) \mark \default |
  g4.\( b16( c)\) | c4.\( dis16( e-4)\) | e8.( b16 d c b a) |
  g4~ g8 r | gis,8\cresc b e gis, | \repeat tremolo 2 {a c} |
  b d g b, | c\f e g c |
  \repeat percent 2 { \repeat tremolo 2 {f, a} } | g,( e' g, e') |
  g,( e' g, f') | e4 r8 a'16\f( g) | g4.\( f16( e)\) | e4.\( c16( b)\) |
  a8 d16( c) b8 g'16( f) | e8 f16( fis g8) r |
  r <b, f> [\f <c e,> ] r | r <gis d> [ <a c,> ] r |
  <f a,> r <f g,> r | <e g,>4 r8 <f b> | <e c'>4 r8 <f b,> |
  <e c> r \repeat unfold 3 {<e c'>\downbow r} |
  <e c'>4\downbow r8 \bar "|."
}

%%% ------------ Duo II ------------

titleduoIImovementI = ##f

globalduoIImovementI = {
  \time 4/4
  \tempo "Moderato cantabile." 4 = 111
  \key f \major
}

violinIduoIImovementI = \new Voice \relative c'' {
  \violinVoiceSettings

  \repeat volta 2 {
    c2.\p( a4) | f'2.( c4) | a'2~( a16 f c a c bes g e) | g2( f4) r |
    %% 5
    d'2.( bes4) | g'2.( d4) | bes'2( e,4 f) | a4~\>( a16 g f d c4\!) r |
    %% 9
    a,8( c f c a c f c) | a( c f c a c a c) | f( c f c f c e c) |
    %% 12
    bes( c e bes a c f) r |
    << { d'2~( d8 fis g bes) } {s4.\< s8\> s8\!} >> |
    << { c,2~( c8 e f a) } {s4.\< s8\> s8\!} >> |
    a\< d,4-> fis-> g( d'8-4) |
    %% 16
    d16\>( c a f\!) c4-2~( c8 a c8. e,16) \mark \default |
    %% 17
    f4 r r8 <g a,>\>([ <f a,>\!)] r |
    r <e d>\>([ <e c>\!)] r r e( fis gis) |
    a4 r8. a'16\downbow b,4\>( c8\!)[ r16 e]\upbow |
    fis,4\>( g8\!) r d'4.\>( cis16 c\!) |
    b2~( b16 c cis d e-4 d b g) | fis8( e' d4~ d8 dis e c) |
    b2~( b16 c b c e-4 d b g) |
    g16( fis) e'( d) d4~( d16 dis e-4 b d c a fis) | g4 r r2 |
    g'2_\cantabile( e4 c) | c2( b4) r | a'2( f4 d) |
    d2( c4) r | b8-.\<( c-. cis-. d-.\!) g,2 |
    b8-.\<( c-. dis-. e-.\!) g,2 | b4.\<( c8-. cis-. d-. e-. fis-.\!) |
    g2~ g4 r \mark \default | e,8( g c g e g e c) |
    f( g, f' g, f' g, f' g,) | f'( g b g f g b f) | e( g e g e g e g) |
    r f\>( a d\!) r a,\>( d f\!) | \repeat unfold 2 { r g,\>( c e\!) } |
    r g,( b d) <f g,>2( | <e g,>4) g'\>( fis f\!) |
    e4( c) a8.( c16 b8. d16) | c4 g\>( fis f\!) |
    e( c) a8.( c16 b8. d16) | c4( e) g2 | c4( e) g2 |
    c4.-3( g8-2 e c g e) | c2~ c4 r |
  }
  %% 49
  e'2.-4\mf^\espr( b8. c16) | g'2.-4( dis8. e16) |
  %% 51
  c'4.( e,8-0 g-2 f d b) | d2( c4) r | f2-3\<( e) | d-3( cis) |
  %% 55
  d4\f( c) b( \acciaccatura d8 c8. b16) | b2( e4-4) r |
  c,8\p( g c g c g c g) | e'( g, e' g, e' g, e' g,) |
  %% 59
  e'( g, e' g, f' g, f' g,) | f'( g, f' g, e'4) r |
  %% 61
  c''2-3~\>( c8 bes g-2 e\!) | f r f4~\> f8 ees( c a\!) |
  bes4.\cresc( d8) fis,4.( d'8) |
  \tupletSpan 4
  g,4 bes'4~( \tuplet 3/2 {bes8 g e c bes g) } |
  %% 65
  f4.\<( g8) a-.( bes-. c-. cis-.) | d2.\p( bes4) | f'2.-3( d4) |
  %% 68
  d'2-4~( d16 bes f d f ees c-2 a) | c2( bes4) r |
  r8 a,( g' a, g' a, g' a,) | r a( d a d a d a) |
  r g( f' g, f' g, f' g,) | f'( g, f' g,) e'4 r \mark \default |
  %% 74
  a,8( c f c a c f c) | a( c f c a c a c) | f( c f c f c e c) |
  bes( c e bes a c f a) | bes,( d g d bes d g d) |
  bes( d g d bes d bes d) | c( e c e bes c a c) |
  b( g b g c e g c) | c2.( a4) | f'2.( c4) |
  a'2~( a16 f c a c bes g e) | g2( f4) r |
  << { d'2~( d8 fis g bes) } {s4.\< s8\> s8\!} >> |
  << { c,2~( c8 e f a) } {s4.\< s8\> s8\!} >> |
  a\< d,4-> fis-> g( d'8-4) | d8.\f\>( c16\!) c2( c,4-2) |
  c'2-3\p( a4 f) | f2( e4) r | d'2( bes4 g-2) | g2( f4) r |
  e8-.\<( f-. fis-. g-.\!) c,2 | e8-.\<( f-. fis-. a-.\!) c,2 |
  e4.\<( f8-. fis-. g-. a-.-1 b-.\!) | c2 r \mark \default |
  %% 98
  a,,8( c f c f c a c) | bes( c g' c, bes c g' c,) |
  bes( c e c g' c, e bes) | bes( c e bes a4) r |
  %% 102
  d''4.-4( cis8) d( a bes g-2) | g4.( f8) a( e f d) |
  d8.( c16) c4~\>( c8 bes-. g-. e-.\!) | f4 c''-3\>( b bes\!) |
  a( f) d8.( f16 e8. g16) | f4 c-2\>( b bes\!) |
  a( f) d8.( f16 e8. g16) | f4( a) c2 | f4( a-1) c2 |
  c( a8 f c-2 a) | f4 r r2 \bar "|."
}

violinIIduoIImovementI = \new Voice \relative g {
  \violinVoiceSettings

  \repeat volta 2 {
    a8\p( c f c a c f c) | a( c f c a c a c) | f( c f c f c e c) |
    %% 4
    bes( c e bes a c f a-4) | bes,( d g d bes d g d) |
    bes( d g d bes d bes d) | c( e c e bes c a c) |
    %% 8
    b( g b g c e g c) | c2.( a4) | f'2.( c4) |
    a'2~( a16 f c a c bes g e) | g2( f4) r |
    %% 13
    r8 bes\>( a fis g4\!) r | r8 a-4\>( g e f4\!) r |
    bes,8\<( d c d) bes( d bes g'\!) |
    %% 16
    r c,-1( a' c, a' c, bes' c,) \mark \default |
    %% 17
    a'4 r8. a'16-3\downbow cis,4\>( d8\!)[ r16 f-3]\upbow |
    %% 18
    gis,4\>( a8\!) r e'4.-4\>( dis16 d\!) |
    %% 19
    c4 r r8 <f, g,>\>([ <e g,>\!)] r |
    r <c d>\>([ <d b>\!)] r r d( e fis) |
    g( d g d g d g d) | c( d fis d c d fis d) |
    g,( d' g d g, d' g d) | c( d fis d c d fis c) |
    b( g b d) g( gis a f) | e( g, e' g, e' g, e' g,) |
    \repeat percent 2 { f'( g, f' g, f' g, f' g,) } |
    e'( g, e' g, e' g, e' g,) | f'4 r b,8-.\<( c-. cis-. d-.\!) |
    g,4 r b8-.\<( c-. dis-. e-.\!) | d( g d g) d( fis d c') |
    %% 33
    b( g e b) g\<\( g'-.( g-. g-.\!)\) \mark \default |
    g'2_\cantabile( e4 c) | c2( b4) r |
    %% 36
    a'2( f4 d) | d2( c4) r | a'4.( gis8) b( a f d) |
    %% 39
    d4.( c8) e( b c a) | a8.\>( g16\!) g4~( g8\> f-. d-. b-.\!) |
    %% 41
    c4 bes'8\>( c a c aes c\!) | g( c e, g) fis( a f g,) |
    %% 43
    e'( g,) bes\>( c a c aes c\!) | g( c e g) fis( a f g) |
    e( g c g f g b f) | e( g c g f g b f) | e( g c, e g c e g) |
    c4-3 r r2
  }
  c,,8\mf( g c g c g c g) | e'( g, e' g, e' g, e' g,) |
  e'( g, e' g, f' g, f' g,) | f'( g, f' g, e' g, e' g,) |
  a'\<( c a c g c g c) | f,( a f a e a e a) |
  f\f( a e a d, a' dis, a') | gis( e gis e gis e gis b) |
  e2.-4_\espr( b8. c16) |
  %% 58
  g'2.-4( dis8. e16) | c'4.( e,8-0 g-2 f d b) | d2( c8 g e c) |
  %% 61
  bes( c bes c bes c bes c) | a( c a c ees f ees f) |
  %% 63
  d\cresc( f d bes) a( d c d) | bes( d g f) e( g e bes\!) |
  %% 65
  a4 r r2 | bes8( f' bes f bes, f' d f) | d( f bes f d f bes f) |
  %% 68
  bes( f bes f bes f a-0 f) | ees( f a-0 ees d f bes d) |
  cis2~\>( cis8 e a, a'\!) | g2( f4) r | e4.\>( f8 cis d a b\!) |
  %% 73
  d2\>( c4\!) r \mark \default | c2.( a4) | f'2.( c4) |
  a'2~( a16 f c a c bes g e) | g2( f4) r | d'2.( bes4) |
  %% 79
  g'2.( d4) | bes'2( e,4 f) | a4~\>( a16 g f d c4\!) r |
  %% 82
  a,8( c f c a c f c) | a( c f c a c a c) | f( c f c f c e c) |
  bes( c e bes a c f) r | r bes\>( a fis g4\!) r |
  %% 87
  r8 a\>( g e f4\!) r | bes,8\<( d c d bes d bes g') |
  %% 89
  r c,-1\f( a' c,) bes'4 r | a,8\p( c f c f c a c) |
  \repeat percent 2 { bes( c bes c bes c bes c)} |
  a( c a c a c a c) | bes4 r e8-.\<( f-. fis-. g-.\!) |
  c,4 r e8-.\<( f-. fis-. a-.\!) | c,8( g c g f' g, f' g,) |
  e'( g c g e) c'-.\<( c-. c-.\!) \mark \default |
  %% 98
  c'2-3_\espr( a4 f) | f2( e4) r | d'2-4( bes4 g-2) |
  %% 101
  g2(\( f8) c a f\) | r bes,\>( d g\!) r d\>( g bes\!) |
  %% 103
  \repeat unfold 2 {r c,\>( f a\!) } | r c,( e g-1 bes4) r |
  r ees8-4\>( f d f des f\!) | c( f a, c) b( d bes c) |
  a( c) ees,\>( f d f des f\!) | c( f a, c) b( d bes c) |
  \repeat percent 2 { a( c f c bes c e bes) } |
  a( c a c a c a c) | a4 r r2 \bar "|."
}

titleduoIImovementII = "Romance."

globalduoIImovementII = {
  \time 4/4
  \tempo "Andante." 4 = 77
  \key bes \major
}

violinIduoIImovementII = \new Voice \relative d'' {
  \violinVoiceSettings

  \repeat volta 2 {
    d2\p( bes8. f16 c'8. f,16) | d'2( bes4) r | f'2-3( ees4 d) |
    %% 4
    c2-2( f,4) r | d'2( bes8. f16 c'8. f,16) | d'2( bes4 f'-3) |
    %% 7
    ees( d d-3 c8. d16) | bes2~ bes4 r |
  }
  %% 9
  ees,8( f ees f d f d f) | c( f c f bes, f' bes, f') |
  %% 11
  ees( bes' g ees d bes' f d) | c( f c f bes, f' d bes) |
  %% 13
  ees( f ees f d f d f) | c( f c f bes, f' bes, f') |
  %% 15
  ees( bes' g ees d bes' f d) | c-1( g' c, bes' a4) r \mark \default |
  %% 17
  c8.-2\mf( b16 c8. a16) bes2 | ees8.( d16 ees8. cis16) d2 |
  %% 19
  g2 f4.( g8) | f4.( ees8) d4 r | c8.( b16 c8. a16) bes2 |
  %% 22
  ees8.( d16 ees8. cis16) d2 | d2\mf( cis4 a) |
  %% 24
  << {f'1} {s4\< s s s\!} >> | f8( a, bes b) d4( c) | c'1-3\f |
  %% 27
  c8( a f-1 d c bes g e) | f4 r r2 \mark \default |
  %% 29
  bes8\p( f bes f d f a f) | bes( f bes f d f d f) |
  aes( bes aes bes g bes f bes) | a( f a f a f a f) |
  bes( f bes f d f a f) | bes( f bes f d f aes bes) |
  g( bes f bes f bes ees, f) |
  %% 36
  d( f d f d4) r \mark \default \bar "||" \key ees \major
  \repeat volta 2 {
    %% 37
    g'2~\mf^\markup{\italic "appassionato e molto agitato"}( g8 fis g d) |
    %% 38
    ees1 | r8 b\<( c e-0 f e f g) | bes2\>( aes4\!) r | R1 |
    ees2~( ees8 d ees cis) | d2~( d8 c bes a) |
    a2-4\>( g4\!) r \mark \default |
  }
  \repeat volta 2 {
    bes8\downbow\>( aes' e f\!) bes,2 | bes8\>( g'-4 d ees\!) bes2-1 |
    bes8\>( aes' e f\!) bes,2 | bes8\>( g'-4 d ees\!) bes2-1 |
    g'2~( g8 fis g d) | ees1\< |
    g8\f( aes  e f) bes4.-2\>( d,8\!) | d2( ees4) r \mark \default |
  }
  \key bes \major
  \repeat volta 2 {
    d2-3\pp( bes8. f 16 c'8. f,16) | d'2( bes4) r | f'2-3( ees4 d) |
    c2-2( f,4) r | d'2( bes8. f16 c'8. f,16) | d'2( bes4 f'-3) |
    ees( d d-3 c8. d16) | bes2~ bes4 r
  }
  \mark \markup {\fermata}
}

violinIIduoIImovementII = \new Voice \relative b' {
  \violinVoiceSettings

  \repeat volta 2 {
    bes8\p( f bes f d f a f) | bes( f bes f d f d f) |
    aes( bes aes bes g bes f bes) | a( f a f a f a f) |
    bes( f bes f d f a f) | bes( f bes f d f aes bes) |
    g( bes f bes f bes ees, f) | d( f d f d4) r
  }
  c'4.\mf( a8) bes2 | ees4.( cis8) d2 | g2 f | f4.-3( ees8) d2 |
  c4.-2( a8) bes2 | ees4.( cis8) d2 | g f |
  f4( e) f8( c a f) \mark \default |
  ees8\p( f ees f) d( f d f) | c( f c f) bes,( f' bes, f') |
  ees( bes' g ees) d( bes' f d) | g( bes a c) bes( f d bes) |
  ees( f ees f) d( f d f) | c( f c f) bes,( f' bes, f') |
  r a,\mf( g' a, g' a, g' a,) | r cis\<( d e f g aes b,) |
  c4\f r8 f( e g e bes) | r a\<( bes b c f g gis) |
  a4\f r <bes-3 c,>2( | <a c,>4) f'2-3\>( ees4) \mark \default |
  d2\p( bes8.-1 f16 c'8. f,16) | d'2( bes4) r | f'2-3( ees4 d) |
  c2-2( f,4) r | d'2( bes8. f16 c'8. f,16) | d'2( bes4 f'-3) |
  ees( d d-3 c8. d16) | bes2~ bes4 r \mark \default \bar "||" \key ees \major
  \repeat volta 2 {
    R1 | c2~\mf^\markup{\italic "appassionato e molto agitato"}( c8 b c g) |
    aes1 | r8 e\<( f g aes g aes a) |
    bes2~\>( bes8 a bes fis\!) | g1 |
    bes4( a8 g) fis2 | c8( d c d) bes4 r \mark \default |
  }
  \repeat volta 2 {
    %% 45
    r2 bes8\>( aes' e f\!) | bes,4 r bes8\>( g' d ees\!) |
    bes4 r bes8\>( aes' e f\!) | bes,4 r bes8\>( ees g bes\!) |
    %% 49
    ees4 r r2 | r8 b\<( c a ges ees c b) | bes4\f r r8 aes'\p( e f) |
    aes( bes, aes' bes,) g'4 r \mark \default
  }
  \key bes \major
  %% 53
  \repeat volta 2 {
    bes8\pp( f bes f d f a f) | bes( f bes f d f d f) |
    aes( bes aes bes g bes f bes) | a( f a f a f a f) |
    bes( f bes f d f a f) | bes( f bes f d f aes bes) |
    g( bes f bes f bes ees, f) | d( f d f d4) r \mark \markup {\fermata} |
  }
}

titleduoIImovementIII = "Rondo."

globalduoIImovementIII = {
  \time 2/4
  \tempo "Allegretto." 4 = 123
  \key f \major
}

violinIduoIImovementIII = \new Voice \relative d'' {
  \violinVoiceSettings

  \partial 4 c16-.\p\upbow([ r c-.]) r | c8\>( f\!) d\>( f\!) |
  %% 2
  c\>( f\!) a16-.([ r a-.]) r | a8\>( bes\!) g16-.([ r e-.]) r |
  f8\>( c\!) c16-.([ r c-.)] r | c8\>( f\!) d\>( f\!) |
  %% 6
  c\>( f\!) a16-.([ r f-.]) r | e8\>( g\!) b,16-.([ r d-.]) r |
  c4 r | \repeat tremolo 2 {bes,8 c} | \repeat tremolo 2 {a c} |
  %% 11
  a'8\>( g\!) c,16-.([ r c-.]) r | g'8\>( f\!) r4 |
  \repeat tremolo 2 {bes,8 c} | a8 r a'16-.-4([ r a-.)] r |
  %% 15
  a8\>( gis\!) e'16-.-4([ r e-.)] r | e8\>( a,\!) r4 |
  \repeat tremolo 2 {f8 g} | e r <e c>4~ | <e c>2~ |
  %% 20
  <e c>4 r \mark \default | a4( bes) | a( f) |
  \repeat tremolo 2 {bes,8 c} | a4 a''16-.([ r a-.]) r |
  %% 25
  cis,8\>( d\!) f16-.([ r f-.]) r | a,8\>( bes\!) d16-.([ r d]) r |
  c8\>( a\!) bes16-.([ r g-.]) r | f4 a'8.\f( g16) |
  %% 29
  g16( f) f( e) e-4( d) d( c) | c8( b) f'8.( e16) |
  %% 31
  g16\>( f d b g gis a f\!) | e4 g'16-.\upbow\p([ r g-.]) r |
  %% 33
  g8( fis) c'16-3-.([ r c-.]) r | c8\>( b\!) g16-.-2([ r g-.]) r |
  g8\>( fis\!) ees16-.([ r c-.)] r | b8\>( d\!) r4 | <d, aes>2( |
  %% 38
  <d g,>8) d'([ g b-2]) | c4.\>( fis,8-1\!) |
  %% 40
  g4 g,16-.\upbow_\markup{\italic "leggiero"}([ r g-.)] r \mark \default |
  g8\>( e'\!) b16-.([ r c-.]) r | a'8\>( g\!) g16-.([ r g-.]) r |
  gis16\>( a\!) a8 e16\>( f\!) f8 |
  %% 44
  cis16\>( d\!) d8 g,16-.\upbow([ r g-.]) r |
  g8\>( e'\!) b16-.([ r c-.]) r | a'8\>( g\!) e16-.-4([ r e-.]) r |
  dis16\>( b') b8\! b,16\>( a') a8\! | g16\>( e) e8\! r4 |
  %% 49
  \repeat percent 2 { \repeat tremolo 2 { <e, c>8 <e g,> } } |
  %% 51
  \repeat tremolo 2 {d f} | g, b g'16-.\upbow([ r g-.]) r |
  %% 53
  d'8\>( c\!) c16-.([ r c-.]) r | g'8\>( f\!) cis16-.([ r cis-.]) r |
  e8-4\>( d\!) b16-.([ r b-.]) r | d8( c) a16\f( b c d) |
  %% 57
  e( f fis g) g8.( b,16) \mark \default | c4 a'8.\p( g16 |
  f8. e16 d8. c16) | b8.( d16-1) f4~\>( | f b,-1\!) |
  c4.( e8) | g16( fis a g f e d c) |
  %% 64
  b8.( d16-1) f4~\>( | f4. b,8-1\!) |
  \override Hairpin.to-barline = ##f
  c8 cis'-3\f\>( d\!) a\>( |
  %% 67
  bes\!) fis-1\>( g\!) dis\>( | e\!) a\>( bes\!) fis\>( |
  %% 69
  g\!) dis\>( e\!) b\>( | c\!) r bes\downbow r |
  \override Hairpin.to-barline = ##t
  g\downbow r c\downbow r | R2 | a4\p( bes) | a( f) |
  %% 75
  \repeat tremolo 2 {bes,8 c} | a4 r | a'( bes) | a( f) |
  %% 79
  g,8 c g b | c4 c'16-.\upbow([ r c-.]) r \mark \default |
  %% 81
  c8\>( f\!) d\>( f\!) | c\>( f\!) a16-.([ r a-.]) r |
  a8\>( bes\!) g16-.([ r e-.]) r | g8\>( f\!) a16-.([ r a-.]) r |
  %% 85
  cis,8\>( d\!) f16-.([ r f-.]) r | a,8\>( bes\!) d16-.([ r d-.)] r |
  c8\>( a\!) bes16-.([ r g-.]) r | f8 c''4->-3\f\upbow bes8 |
  %% 89
  a a4-> g8-2 | f8 f4-> ees8 | d d4-> c8 | bes16( d) d( g) g4 |
  d16( g) g( bes) bes4 | c,16( f) f( a) a4~ |
  %% 95
  a16 bes g e c bes g e | f8 c d e | f a, b cis | d f g a |
  bes d, e fis | g4 r8 <d bes> | <g bes,>4 r8 <d bes> |
  <bes' d,>4 r8 <bes d,> | <bes g'>4 r |
  \repeat tremolo 4 {<a-2 c,>8} | <bes c,>4 r |
  <a c,> c8-2-.\f( c-.) \mark \default | a'8( g) c,-.( c-.) |
  %% 108
  g'( f) c-.( c-.) | cis16( d) d8 g,16( c) c8 | a4 r |
  bes,16\downbow\f( c bes c bes c bes c) | a( c a c a c a c) |
  bes( d-4 bes d) c( g' c, g') | f( a) a( c) c4 |
  f16( a-1) a( c) c4~ | c8 a16 a f-1 f c c | a' a f f c c a a |
  f8 r <f c' a'>\downbow r | <f a,>4\downbow \bar "|."
}

violinIIduoIImovementIII = \new Voice \relative b' {
  \violinVoiceSettings

  \partial 4 r4 | a4\p( bes) | a( f) | \repeat tremolo 2 {bes,8 c} |
  %% 4
  a4 r | a'4( bes) | a( f) | g,8 c g b | c r c'16-.([ r c-.)] r |
  %% 9
  a'8\>( g\!) c,16-.[( r c-.)] r | g'8\>( f\!) c16-.[( r c-.)] r |
  c4.\>( bes8\!) | a4 c16-.\upbow([ r c-.]) r |
  %% 13
  a'8\>( g\!) c,16-.([ r c-.)] r | g'8\>( f\!) r4 |
  %% 15
  \repeat tremolo 2 {d,8 e} | c r c'16-.([ r c-.)] r |
  c8\>( b\!) g'16-.([ r g-.)] r | g8 c, bes'4~\f\>( |
  bes16 a bes g e c bes g\!) |
  %% 20
  e4 c'16-.\p\upbow([ r c-.)] r \mark \default |
  %% 21
  c8\>( f\!) d\>( f\!) | c\>( f\!) a16-.([ r a-.]) r |
  a8\>( bes\!) g16-.[( r e-.)] r | f8\>( c\!) r4 |
  %% 25
  <g a>8\>( <f a>\!) r4 | ees8\>( d\!) <e bes> r |
  %% 27
  <f a,> r <e c> r | <f a,>4 r | d8\f e f fis | g4 r |
  %% 31
  \once \override Hairpin.to-barline = ##f
  bes,2\p\>( | c4\!) r |
  %% 33
  \once \override Hairpin.to-barline = ##f
  <d aes>2\>( | <d g,>8\!) d\p( g-1 b) |
  %% 35
  c4.( fis,8-2) | g4 g16-.\upbow([ r g-.]) r |
  %% 37
  g8\>( fis\!) c'16-.[( r c-.)] r | c8\>( b\!) g16-.[( r g-.)] r |
  g8\>( fis\!) ees16-.[( r c-.)] r | g'4 r \mark \default |
  %% 41
  \repeat percent 2 {\repeat tremolo 2 {<e c>8 <e g,>}} |
  %% 43
  \repeat tremolo 2 {d f} | \repeat tremolo 2 {g, b} |
  %% 45
  \repeat percent 2 {\repeat tremolo 2 {<e c> <e g,>}} |
  \repeat tremolo 2 {b dis} |
  %% 48
  e4 g16-.\upbow_\markup{\italic "leggiero"}([ r g-.]) r |
  %% 49
  g8\>( e'\!) b16-.[( r c-.)] r | a'8\>( g\!) g16-.[( r g-.)] r |
  %% 51
  gis16\>( a\!) a8 e16\>( f\!) f8 | cis16\>( d\!) d8 r4 |
  %% 53
  \repeat tremolo 2 {bes,8 c} | a r g'\< a |
  \repeat tremolo 2 {f a} | e g f a |
  %% 57
  <c e, g,>\f\downbow r <b d, g,>\downbow r \mark \default |
  %% 58
  <c e, c>4 r | R2 | r4 d8.\p( c16 | b8. a16 g8. f16) |
  %% 62
  e8.( g16-1) c4~ | c8 r r4 | r d16-3( cis d cis | d c b a g f e d) |
  %% 66
  \override Hairpin.to-barline = ##f
  c8-. cis'\f\>( d\!) a\>( | bes\!) fis\>( g\!) dis\>( |
  e\!) a\>( bes\!) fis\>( | g\!) dis\>( e\!) b\>( |
  %% 70
  c\!) r bes\downbow r | g\downbow r c\downbow r |
  \override Hairpin.to-barline = ##t
  r4 c'16-.\p\upbow([ r c-.]) r | c8\>( f\!) d\>( f\!) |
  %% 74
  c\>( f\!) a16-.[( r a-.)] r | a8\>( bes\!) g16-.[( r e-.)] r |
  f8\>( c\!) c16-.[( r c-.)] r | c8\>( f\!) d\>( f\!) |
  %% 78
  c\>( f\!) a16-.[( r f-.)] r | e8\>( g\!) b,16-.[( r d-.)] r |
  %% 80
  c4 r \mark \default | a( bes) | a( f) |
  %% 83
  \repeat tremolo 2 {bes,8 c } | a4 r | <g' a>8\>( <f a>\!) r4 |
  %% 86
  ees8\>( d\!) <e bes> r | <f a,> r <e c> r | <f a,> c\f d e |
  f a, b cis | d f g a | bes d, e fis | g4 r8 <d bes> |
  %% 93
  <g bes,>4 r8 <g bes,> | c,4 r8 <f c> | <e c>4 r |
  r8 c''4-3->\upbow\f bes8 | a8 a4-> g8-2 | f8 f4-> ees8 |
  d8 d4-> c8 | bes16( d) d( g) g4 | d16( g) g( bes) bes4 |
  g16( bes-2) bes( d) d4~ | d16 c bes a g-2  f e d |
  c8 c,16 f a c f a | bes8 g16 e c bes g e | f4 r \mark \default |
  %% 107
  bes,16\f\downbow( c bes c bes c bes c) | a( c a c a c a c) |
  bes8 d c e | f4 c'8-.\f( c-.) | a'\>( g\!) c,-.( c-.) |
  %% 112
  g'\>( f\!) c-.( c-.) | cis16( d) d8 bes'16( e,) e8 |
  f4 r8 <e, bes> | <f a,>4 r8 <bes e> |
  %% 16
  <a f'> <f a,>16[\downbow <f a,> ] \repeat tremolo 4 {<f a,>} |
  \repeat tremolo 8 {<f a,>16} | <f a,>8 r <a f'>\downbow r |
  <f a,>4\downbow \bar "|."
}

%%% ------------

\header {
  arranger = ##f
  composer = "Jean Baptiste Charles Dancla"
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 15"
  source = "http://imslp.org/"
  title = "Troi Duos."
}

\include "paper.ily"

#(define fileBaseName "Charles_Dancla-opus_15")

define(`AllDuetts', `(I, II)')
define(`Movements', `(I, II, III)')
define(`AllViolins', `(I, II)')

include(`output-duos.ily')
