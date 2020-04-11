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

titleMovementI = ##f

globalMovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4=115
  \key g \major
}

violinMovementI = \relative b' {
  R1*8 | b2\p a8( b c a) | b4( c8 d) e2 | c2\mf b8( c d b) |
  %% 12
  c8( e a g) fis2 | b2\f a4( fis) | a4.( g8) fis( g b g) |
  fis( e a g) fis\>( e d c) | b4\p( d8 b) a4 r |
  %% 17
  b4->\f b'-> a-> a,-> | g a8( g) f4 g8( f) | e4-> e'-> d-> d,-> |
  c d8( c) b4 c8( b) | a8( b) c d e( fis g a) | b4( c) cis( d) |
  %% 23
  e( d) b'4.\>\fermata( a8) | g2~\p g8 fis16( g a g fis e) |
  d4.( cis8) e( d b g) | fis2~ fis8\< d16( e fis g a b) |
  c4.\mf( e16 d) c( b a g fis e d c) | b4.( a8 g) a16( b c d e fis) |
  %% 29
  g4.( fis8) g( b e d) | d4( cis8) b'16\<( a g fis e d cis b a g) |
  %% 31
  fis8\f( a d cis) b16( cis d cis) e( d cis b) |
  a4 a'4\fz r \tuplet 3/2 {a,8\mf b cis} \bar "||" \key d \major
  %% 33
  d4 \tuplet 3/2 {d8 cis d} e4 \tuplet 3/2 {cis8 d e} |
  fis4 d a \tuplet 3/2 {a8 d fis} | a4 g fis e |
  %% 36
  d \tuplet 3/2 {fis8 e d} cis4 \tuplet 3/2 {cis8 d e} |
  %% 37
  fis4 e d \tuplet 3/2 {d8\< e fis} | g4\f gis a \tuplet 3/2 {b8 a g} |
  %% 39
  fis4 \tuplet 3/2 {a8 g fis} e4 \tuplet 3/2 {g8 fis e} |
  d4 \tuplet 3/2 {d8 a fis} d4 a'\mf | d4( cis) b( fis) |
  %% 42
  a2( e4) e | e'( d) cis( b) | d2( cis4) a | fis'2\f gis |
  %% 46
  b4.( a8) gis( fis a fis) | fis( e cis a) gis^\rit( e d b) |
  a2^\aTempo r4 \tuplet 3/2 {a'8\mf b cis} |
  %% 49
  d4 \tuplet 3/2 {d8 cis d} e4 \tuplet 3/2 {cis8 d e} |
  fis4 d a \tuplet 3/2 {a8 d fis} | a4 g fis e |
  d4 \tuplet 3/2 {fis8 e d} cis4 \tuplet 3/2 {cis8 d e} |
  fis4 e d \tuplet 3/2 {d8\< e fis} | g4\f gis a \tuplet 3/2 {b8 a g} |
  fis4 \tuplet 3/2 {a8 g fis} e4 \tuplet 3/2 {g8 fis e} |
  %% 56
  d4\f d16( e d cis) b4 e16( d cis b) | a8:16 b: cis: d: e: fis: g: e: |
  d4 d16( e d cis) b4 e16( d cis b) | a8:16 a': fis: d: cis: a: g: e: |
  %% 60
  d:\f a: b: cis: d: a: b: cis: | d4 r r2 | R1*2 \bar "||"
  %% 64
  d'2\mf cis8( d e cis) | d4( e8 fis) g4( b) |
  %% 66
  b,4.( cis8) d4->( cis8 b) | fis4.( g8) fis2 | g2 fis8( g a fis) |
  %% 69
  g4\<( b) e4. e8( | a4->)\f a,8 b c4->( b8 a) | e4.( f8) e2\> |
  %% 72
  c'2\mf b8( c d b) | c8( b a e) f2 | d8( e f d) d'4.( f,8) |
  %% 75
  d8( f g e) e'4.( d8) | d( c b c) e( d c b) | a\<( b c d) e( fis g a) |
  %% 78
  b4.\f( fis8) a8( g fis g) | a4.( e8) g( fis e fis) |
  %% 80
  a( g fis g) fis\>( e d c\!) | b4( d) bes^\rit( d) |
  %% 82
  a( d) r\fermata \tuplet 3/2 {d,8\mf^\aTempo e fis} \bar "||" \key g \major
  %% 83
  g4 \tuplet 3/2 {g8 fis g} a4 \tuplet 3/2 {fis8 g a} |
  b4 g d \tuplet 3/2 {d8 g b} | d4 c b a |
  %% 86
  g \tuplet 3/2 {b8 a g} fis4 \tuplet 3/2 {fis8 g a} |
  b4 a g \tuplet 3/2 {g8\< a b} | c4\f cis d \tuplet 3/2 {e8 d c} |
  %% 89
  b4 \tuplet 3/2 {d8 c b} a4 \tuplet 3/2 {c8 b a} |
  \repeat volta 2 {
    %% 90 / 94
    g4->\f fis16( g a g) g,8:16 a: bes: g: |
    %% 91 / 95
    g'4-> fis16( g a g) d8:16 fis: g: a: |
    %% 92 / 96
    bes8.( e16\open) g8.( fis16) a8.( g16) bes8.( g16) |
    %% 93 / 97
    b8:16 g: d: b: d: c: a: fis: |
  }
  %% 98
  g4\f \tuplet 3/2 {g,8 b d} g4 \tuplet 3/2 {b,8 d g} |
  b4 \tuplet 3/2 {d,8 g b} d4 \tuplet 3/2 {g,8 b d} |
  g4 r <b b, d,>\downbow r | g,,1\fermata \bar "|."
}

pianoUpMovementI = \relative b' {
  <b b,>2 <a a,>8 <b b,> <c c,> <a a,> |
  %% 2
  <b b,>4 <c c,>8 <d d,> <e g, e>4 <d gis, e> |
  <c a e> <e c a> <a e a,> <g e bes> |
  %% 4
  <g d a> <fis d a>8 <eis d gis,> <fis d a>2 |
  %% 5
  <g d g,>2-> <f, d g,>2-> |
  %% 6
  <e c g>4 <e' c g> <ees a, g> <ees, a, g> |
  %% 7
  <d b g>4. <g d b>8 <b g d>4 <bes g cis,> |
  <a fis c>4. <gis eis b>8 <a fis c>4 r |
  %% 9
  b,8\p( d g d) c( d a' d,) | b( d g d) c\<( e g e) |
  %% 11
  c\mf( e a e) d( e b' e,) | c( e a e) d\<( fis a fis) |
  %% 13
  dis\f( fis a fis) b,( fis' a fis) |
  %% 14
  \repeat percent 2 { b,( e g e) } |
  %% 15
  a,( e' a e) a,\>( e' a e) | b\p( d g d) c( d fis d) |
  <g d b>4\f <b g d> <a fis c>2 | <g e b>4 r <f d g,> r |
  %% 19
  <e c g>2 \change Staff = "down" \voiceOne <d b f> |
  %% 20
  <c a e>4 r <b gis e> r |
  %% 21
  <a e>4 r \change Staff = "up" \oneVoice <e' bes g> r |
  %% 22
  <d b g>4:8 <ees a, g>4:8 <e bes g>4:8 <f b, gis>4:8 |
  %% 23
  <fis c a>2. <fis d c>4\fermata\> |
  %% 24
  r8\p b,( d g) <d b>( g) <e c>( g) |
  r8 b,8( d g <d b>4) r | r8 c( d fis <d c>4) r |
  %% 27
  r8\mf a8( c fis <c a>4) r | r8 g( b d g4) r |
  %% 29
  r8 b,( <g' e> b, <g' e>4) r | r8 a,( <g' e cis> a, <g' e cis>4) r |
  %% 31
  <fis d a>4\f <fis d b> <f d b> \change Staff = "down" \voiceOne <d b f> |
  %% 32
  <cis a e> \change Staff = "up" \oneVoice
  \tuplet 3/2 {<a' e cis>4.:8} <g e cis>4-> r \bar "||"
  \key d \major
  %% 33
  r4\mf <fis d a> r <g cis, a> | \repeat unfold 2 { r <fis d a> } |
  %% 35
  <a d, a> <g e b> <fis d a> <e cis g> |
  %% 36
  <d b fis> <fis d b> <e cis> <e cis a> |
  %% 37
  <fis cis ais> <e cis fis,> <d b fis> <fis d a>\< |
  %% 38
  <g d g,>\f <gis f d> <a fis d> <b g d> |
  %% 39
  <a fis d> r <g e cis a> r | <fis d a>\> r <d a fis> r |
  %% 41
  \change Staff = "down" \voiceOne r8^\p fis,( <d' b> fis,)
  \change Staff = "up" \oneVoice r b( <b' fis>b,) |
  %% 42
  r8 cis( e a) e-1\<( a cis e\!) |
  %% 43
  <b gis>( e) <a, fis>( d) <gis, e>\>( cis) <fis, d>( b\!) |
  %% 44
  <b e, d>2( <a e cis>8) <a e cis> <e cis> <e cis> |
  %% 45
  <fis d a>8\f <fis d a>4 <fis d a>8 <gis eis b>8 <gis eis b>4 <b e, cis>8 |
  %% 46
  <b fis cis>8 <b fis cis>4 <a fis cis>8 <a fis bis,>2 |
  %% 47
  <a e cis>\> <gis e d>\!^\rit |
  %% 48
  <a e cis>4^\aTempo \tuplet 3/2 {<a' e cis>4.:8\f} <a g e cis>4-> r |
  %% 49
  r8\mf <fis, d a> r <fis d a> r <g e a,> r <g cis, a> |
  %% 50
  \repeat unfold 4 {r <fis d a>} |
  %% 51
  r <a d, a> r <g e b> r <fis d a> r <e cis g> |
  %% 52
  r <d b fis> r <fis d b> r <e cis> r <e cis a> |
  %% 53
  r <fis cis ais> r <e cis fis,> r <d b fis> r\< <fis d a> |
  %% 54
  r\f <g d g,> r <gis f d> r <a fis d> r <b g d> |
  %% 55
  r <a fis d> r\> <fis d a> \repeat unfold 2 {r <g cis, a>} |
  %% 56
  <fis d a>4\mf <fis d b> <e d b>4:8 <f d b>4:8 |
  %% 57
  <fis d a>4 r <g e cis a> r |
  %% 58
  <fis d a> <fis d b> <e d b>4:8 <f d b>4:8 |
  %% 59
  <fis d a>4 r <e cis g> r | <d a fis> r r8 a\f b cis |
  %% 61
  d4\f <d a fis> <fis d a> <a fis d> |
  %% 62
  <d a fis> r <fis d a fis> r |
  %% 63
  <d a fis d> fis,->\> fis-> fis-> \bar "||"
  <fis d b>2:8\mf <fis e cis>2:8 | <fis d b>2:8 <g cis, b>2:8 |
  %% 66
  \repeat unfold 2 { <gis d b>2:8 } |
  %% 67
  \repeat unfold 3 {<fis cis ais>8} <g cis, ais>
  <fis cis ais>4:8 <fis dis b>4:8 |
  %% 68
  <g e b>2:8 <a fis b,>2:8 |
  %% 69
  <g e b>2:8 <g e c>4:8\< <gis e c>4:8 |
  %% 70
  <a f c>2:8\f <a fis c>4:8\> <fis c a>4:8 |
  %% 71
  <e b gis>8\mf <e b gis> <e b gis> <f b, gis> <e b gis>4 <e d gis,> |
  %% 72
  <e c a>2:8\mf <e d b>2:8 | <e c a>2:8 <f d a>4:8 <f d aes>4:8 |
  %% 74
  \repeat unfold 2 { <f d g,>2:8 } |
  %% 75
  <e c g>2:8 <e c g>4:8 <e d gis,>4:8 | <e c a>2 <e c a> |
  %% 77
  <a fis e>\< <a fis e> |
  %% 78
  r16\f dis,( <fis b> dis) r b( <fis' a> b,) r b( <e g> b) r bes( <e g> bes) |
  %% 79
  r16 a( <e' a> a,) r a( <e' g> a,) \repeat unfold 2 { r a( <d fis> a) } |
  %% 80
  r g( <d' g> g, <d' g>4) <a' g e>\> <a g e> |
  %% 81
  <b g d>2\p <bes g d>-\rit |
  %% 82
  <a g d>4( <a fis d>) r4\fermata r-\aTempo \bar "||" \key g \major
  %% 83
  r8\mf <g d b> r <d b> \repeat unfold 2 { r <d c a> } |
  %% 84
  \repeat unfold 3 { r <d b> } r <g d b> |
  %% 85
  r <d' g, d> r <c a e> r <b g d> r <a fis c> |
  %% 86
  r <g e b> r <g e a,> \repeat unfold 2 { r <fis d a> } |
  %% 87
  r <fis dis b> r <a fis b,> r <g e b> r\< <g d b> |
  %% 88
  r\f <g c,> r <g cis, bes> r <g d b> r <g e c> |
  %% 89
  r <g d b> r\> <g d b> r <fis c a> r <fis c a> \! |
  \repeat volta 2 {
    %% 90 / 94
    <g bes, g>4:8\f r <g bes g'> r |
    %% 91 / 95
    <g bes, g>4:8\f r <bes d g> r |
    %% 92 / 96
    \repeat percent 2 { <g e>16\f( bes, <g' e> bes,) }
    \repeat percent 2 { <bes' g>( e, <bes' g> e,) }
    %% 93 / 97
    <b' g d>4 <g d b>\> <a fis c> <fis c a> \! |
  }
  %% 98
  <g d b>4\f <d b g> <g d b> <d b g> |
  %% 99
  \repeat unfold 2 { <g d b> } <b g d> <d b g> |
  %% 100
  <g d b g> r <b g d b> r | <g, d b>1 \bar "|."
}

pianoDownMovementI = \relative d {
  r4 <d b g> <d a fis> r | <d b g> r <c c,> <b b,> |
  %% 3
  <a a,>2 <c c,>4 <cis cis,> | <d d,>2. <c c,>4 |
  %% 5
  <b b,>2~ <b b,>8 <g g,> <a a,> <b b,> |
  <c c,>4 \repeat unfold 3 { c,8( c') } |
  %% 7
  \repeat percent 2 {\repeat unfold 2 {d,( d')}} |
  \repeat unfold 2 {d,( d')} d,4 r |
  %% 9
  g2 fis | g c | a gis | a d4( c) | b2 dis | e1 | c | d |
  %% 17
  <g g,>2 <dis dis,> | <e e,>4 r <b b,> r |
  %% 19
  <c c,>2 \voiceTwo <gis gis,> | <a a,>4 r <b b,> r |
  %% 21
  <c c,>4 r \oneVoice <cis cis,> r | <d d,>1 | <d d,>\fermata |
  %% 24
  g,1 | g2. r4 | a2. r4 | d,2. r4 | g2. r4 | <e' e,>2. r4 |
  %% 30
  a,2. r4 | <d d,>4 <b b,> <gis gis,>4~ \voiceTwo <gis gis,> |
  %% 32
  <a a,>4~ \oneVoice <a a,>4 <a' a,>4-> r \bar "||" \key d \major
  %% 33
  d,4 r a r | d r d r | fis, g a ais | b gis a g |
  %% 37
  fis ais b <c c,> | <b b,> <bes bes,> <a a,> <g g,> |
  %% 39
  \repeat unfold 2 { <a a,> r } | <d d,> r d r |
  %% 41
  \voiceTwo b2 \oneVoice d | e1 | <e e,> |
  r8 <e e,>( <fis fis,> <gis gis,> <a a,>4) r |
  %% 45
  \repeat unfold 2 {<d, d,>4} \repeat unfold 2 {<cis cis,>} |
  %% 46
  \repeat unfold 2 {<fis fis,>4} <dis dis,>2 | <e e,>1 |
  %% 48
  <a a,>4 r <a a,>-> r | d, a cis a | d d d a | fis g a ais |
  %% 52
  b gis a g | fis ais b <c c,> | <b b,> <bes bes,> <a a,> <g g,> |
  %% 55
  \repeat unfold 4 {<a a,>4} |
  %% 56
  \repeat unfold 2 {
    <d d,>8 <cis cis,> <b b,> <a a,> <g g,>4 <gis gis,> |
    \repeat unfold 2 { <a a,> r }
  }
  %% 60
  <d d,>4 r r8 <a a,> <b b,> <cis cis,> |
  %% 61
  \repeat percent 2 {
    \repeat tremolo 8 {d,32\sustainOn( d')} \repeat tremolo 8 {d,32( d')}
  }
  %% 63
  <d d,>4 r\sustainOff r2 \bar "||"
  %% 64
  b2 ais | b e | eis eis, | fis <fis fis'> | <e' e,> <dis dis,> |
  %% 69
  <e e,> <c c,> | <f f,> <dis dis,> |
  %% 71
  <e e,> <e e,>8 <d d,> <c c,> <b b,> | <a a,>2 <gis gis,> |
  <a a,> <d d,>4 <c c,> | <b b,>2~ <b b,>8 <g g,> <a a,> <b b,> |
  <c c,>2. <b b,>4 | <a a,>1 | <c c,>2 <c c,> |
  <b b,>4 <dis dis,> <e e,> <d d,> |
  %% 79
  <cis cis,> <cis cis,> <d d,> <c c,> | <b b,>2 <c c,>2 |
  <d d,>1 | d2 r4\fermata r \bar "||" \key g \major
  %% 83
  <g g,> <g g,> <fis fis,> <d d,> | \repeat unfold 3 {<g g,>} <d d,> |
  %% 85
  <b b,> <c c,> <d d,> <dis dis,> | <e e,> <cis cis,> <d d,> <c c,> |
  %% 87
  <b b,> <dis dis,> <e e,> <f f,> | <e e,> <ees ees,> <d d,> <c c,> |
  %% 89
  \repeat unfold 4 {<d d,>} |
  \repeat volta 2 {
    %% 90
    <ees ees,>4:8 r <ees ees,> r |
    <d d,>4:8 r <d d,> r |
    \repeat percent 4 { cis,16\sustainOn( cis' cis, cis') } |
    <d d,>2\sustainOff <d d,> |
  }
  \repeat percent 2 {
    \repeat tremolo 8 { g,,32\sustainOn( g')}
    \repeat tremolo 8 { g,( g') }
  }
  <g g,>4 r\sustainOff <g g'> r | <g g,>1 \bar "|."
}

%%% ------------

titleMovementII = ##f

globalMovementII = {
  \time 4/8
  \tempo "Lento." 8=55
  \key g \major
}

violinMovementII = \relative b {
  \partial 4 b4\p | e fis | g\< a\! | b8-> fis4. | R2\fermata |
  %% 5
  g4\p a | b\< e\! | d8-> a4. | R2\fermata |
  %% 9
  c8.\mf( a'16) a8.( g16) | g8.( fis16) fis8.( e16) | b'4\f g |
  %% 12
  fis fis | a8.( g16) g8.( fis16) | g8( fis) e\>( ais,) |
  %% 15
  b16( e\! b^\rit a) g8( fis) | e4.\p\fermata r8\fermata \bar "||"
  \key c \major \time 2/4 \tempo "Allegro moderato." 4=115
  \repeat volta 2 {
    %% 17
    f8.->\mf\downbow( g16) e8.->( g16) | f8 d'16( c) b a g f |
    %% 19
    e8.->( g16) fis8.->( a16) | g8 e'16( d) c d c b |
    %% 21
    a8 a16 b c8 c16 d | e8\< e16 f g8 fis16 g | b8\f a a, b |
    %% 24
    d16( c) c b c8\upbow r | c16\mf( e) c( e) b4 |
    %% 26
    c16\upbow( e) c( e) b4 | c16( b) a b c( d) e\open fis |
    %% 28
    g( fis) g a b8 r |
  }
  \alternative {
    {
      %% 29
      \repeat percent 2 { g16( b) g( b) fis4 } |
      %% 31
      a16->( g) fis e d( c) b a | g\>( a) fis( g) e8\! e-- |
    }
    {
      %% 33
      g'16( b) g( b) fis4 | e16\open\upbow( g) e( g) d4 |
      %% 35
      c16( b) a g fis( e) d c |
      %% 36
      b8^\markup{\italic "molto rit."}( g') g8.\fermata( fis16\!) \bar "||"
    }
  }
  \key g \major \time 4/8 \tempo "Lento." 8=55
  %% 37
  e4\p fis | g\< a\! | b8-> fis4. | R2\fermata |
  %% 41
  g4\p a | b\< e\! | d8-> a4. | R2\fermata |
  %% 45
  c8.\mf( a'16) a8.( g16) | g8.( fis16) fis8.( e16) | b'4\f g |
  %% 48
  fis fis | a8.( g16) g8.( fis16) | g8( fis) e\>( ais,) |
  b16( e\! b^\rit a) g8( fis) | e2\p | R2*4 \bar "|."
}

pianoUpMovementII = \relative e' {
  \partial 4 r 4 | <e b g>\p <fis b,> | <g e b>\< <a fis e>\! |
  <b fis dis>8 <fis dis b>4 r8 |
  %% 4
  b'16._\markup{\italic "ad lib."}\fermata( fis32 b fis b fis b8) r |
  %% 5
  <g, e b>4\p <a fis d> | <b g d> <e a, g> | <d a fis>8 <a fis d>4 r8 |
  %% 8
  d'16._\markup{\italic "ad lib."}\fermata( a32 d a d a c8) r |
  %% 9
  <a, fis c>2\mf | <g e b> | <b e, b>4\f <g cis, b> |
  %% 12
  <fis cis ais>8 <ais fis cis> <b fis b,>\> <a fis c> |
  %% 13
  <g e b>4\mf <fis e c> | <g e cis>\> <g e ais,> |
  %% 15
  <g e b>8\p <e b g>^\rit
  << {\voiceOne g8( fis) }
     \new Voice { \voiceTwo <dis a>4 } >> \oneVoice |
  %% 16
  <e b g>4.\fermata r8\fermata \bar "||"
  \key c \major \time 2/4
  \repeat volta 2 {
    %% 17
    r8\mf <f b, g> r <e ais, g> | \repeat unfold 2 { r <f b, g> } |
    %% 19
    r <e c g> r <dis c fis,> | r <e c g> r <g c,> |
    %% 21
    \repeat unfold 2 { r <a f c>} | r <g e c> r <c g e> |
    %% 23
    r\f <b f d> r <b f d> | \repeat unfold 2 { r <c g e> } |
    %% 25
    r\mf <c a e> r <b e,> | r <c a e> r <b e, d> |
    %% 27
    r <a e c> r <a fis c> | \repeat unfold 2 { r <g d b> } |
  }
  \alternative {
    {
      %% 29
      \repeat percent 2 { r <g e b> r <a fis b,> } |
      %% 31
      r <g e b> r <fis e c> | <g e b>\> <fis dis a> <e b g>\! r |
    }
    {
      %% 33
      r <g e b> r <fis b, fis> | \clef alto r <e c g> r <d g, d> |
      %% 35
      r <c a e> r <e c fis,> |
      %% 36
      r\>-\markup{\italic "molto rit."}
      <e b g>\! r <dis b a>\fermata \clef G \bar "||"
    }
  }
  \key g \major \time 4/8
  %% 37
  <e b g>4\p <fis b,> | <g e b>\< <a fis e>\! |
  <b fis dis>8 <fis dis b>4 r8 |
  %% 40
  b'16._\markup{\italic "ad lib."}\fermata( fis32 b fis b fis b8) r |
  %% 41
  <g, e b>4\p <a fis d> | <b g d> <e a, g> | <d a fis>8 <a fis d>4 r8 |
  %% 44
  d'16._\markup{\italic "ad lib."}\fermata( a32 d a d a c8) r |
  %% 45
  <a, fis c>2\mf | <g e b> | <b e, b>4\f <g cis, b> |
  %% 48
  <fis cis ais>8 <ais fis cis> <b fis b,>\> <a fis c> |
  %% 49
  <g e b>4\mf <fis e c> | <g e cis>\> <g e ais,> |
  %% 51
  <g e b>8\p <e b g>_\rit
  << {\voiceOne g8( fis) }
     \new Voice { \voiceTwo <dis a>4 } >> \oneVoice |
  <e b g>8. g,16( b\< e g-1 b\!) | <e b g>8. g,16( b\< e-1 g b) |
  e2~\mf | e4 <g, e b g>\p\arpeggio | <e, b g>2\fermata \bar "|."
}

pianoDownMovementII = \relative e {
  \partial 4 r4 | e dis | e c | b4. b32^\f\sustainOn( dis fis b~ |
  %% 4
  b4\fermata) \clef G <fis'' dis b>8 r\sustainOff \clef bass |
  %% 5
  e,,4 d | g c, | d4. d32^\f\sustainOn( fis a d~ |
  %% 8
  d4\fermata) \clef G <a'' fis>8 r\sustainOff \clef bass |
  <dis,,, dis,>2 | <e e,> | <g g,>4 <e e,> |
  %% 12
  <fis fis,>8 <e e,> <d d,> <dis dis,> | <e e,>4 <a, a,> |
  %% 14
  <ais ais,> <cis cis,> | <b b,> <b b,> | <e e,>4. r8\fermata \bar "||"
  \key c \major \time 2/4
  \repeat volta 2 {
    %% 17
    <d d,>4 <cis cis,> | <d d,> <g, g,> | <c c,> <c c,> |
    %% 20
    <c c,> <e e,> | <f f,> <f f,> | <g g,> <g g,> |
    %% 23
    <g g,> <g g,> | <c c,> <c c,> |
    %% 25 / 26
    \repeat percent 2 { <a a,> <gis gis,> } |
    %% 27
    <a a,> <d, d,> | <g g,> <g g,>
  }
  \alternative {
    {
      \repeat percent 2 { <e e,> <dis dis,> } |
      <e e,> <a, a,> | <b b,> <e e,>8 r |
    }
    {
      <e e,>4 <d d,> | <c c,> <b b,> |
      <a a,> <a a,> | <b b,> b\fermata \bar "||"
    }
  }
  \key g \major \time 4/8
  %% 37
  e dis | e c | b4. b32^\f\sustainOn( dis fis b~ |
  %% 40
  b4\fermata) \clef G <fis'' dis b>8 r\sustainOff \clef bass |
  %% 41
  e,,4 d | g c, | d4. d32^\f\sustainOn( fis a d~ |
  %% 44
  d4\fermata) \clef G <a'' fis>8 r\sustainOff \clef bass |
  <dis,,, dis,>2 | <e e,> | <g g,>4 <e e,> |
  %% 48
  <fis fis,>8 <e e,> <d d,> <dis dis,> | <e e,>4 <a, a,> |
  %% 50
  <ais ais,> <cis cis,> | <b b,> <b b,> |
  %% 52
  e,16\sustainOn( b' e8) r4\sustainOff |
  %% 53
  e16\sustainOn( b' e8) << { r4 } {s16*3 s16\sustainOff } >> \clef G |
  %%
  << {\voiceOne <g' e>8( <a fis>_\rit <b g> <c a> | <b g>4) }
     \new Voice {\voiceTwo e,2-5~ | e4} >> \oneVoice \clef bass <e, e,> |
  %%
  <e, e,>2_\fermata \bar "|."
}

%%% ------------

titleMovementIII = ##f

globalMovementIII = {
  \time 4/4
  \tempo "Allegro." 4=118
  \key g \major
}

violinMovementIII = \relative d' {
  R1*3 | r2 r4 d\p |
  \repeat volta 2 {
    %% 5
    g8( fis) g a b( a) b c | d4 cis8\<( e d4) b'( |
    %% 7
    a\mf) g\<( fis g) | a2\f( e4) a8( g) |
  }
  \alternative {
    %% 9
    { fis8\>( e) d c b( c) b a\! | g4 b e d8( b) |
      a( b\<) cis d e( fis) g e\! | d4 d,\> e fis\! | }
    %% 13
    { fis'8\>( e) d c d( c) b a\! | g4 f e e'8( c) |
      b( c) d cis\< d( fis b a) | a2\f( g4) r }
  } \bar "||"
  %% 17
  g,4.\p\downbow( fis8) e( fis g e) | a4.( g8) fis\<( g a fis) |
  g4\mf( b) e( b) | d4.( c8) c2 | b4.( cis8) dis\<( b cis dis) |
  %% 22
  e4.\f( b8) d8( c b c) | e4.( b8) d( c b a) | b4\>( g) fis( a) |
  g4.\p( fis8) e( fis g e) | a4.\<( g8) fis( g a fis) |
  %% 27
  g4\mf( b) e( b) | d4.( cis8) cis2\< | fis4.\f( cis8) e( d cis d) |
  fis4.( cis8) d( cis d fis) | b4( a) gis( fis) |
  %% 32
  a8( gis fis e) gis\>( fis) e d | cis\mf( e) a gis b( a) g e |
  d( fis) a gis b( a) fis d | cis( b') a( cis,) b( a') g( b,) |
  %% 36
  a( g') fis( a,) cis b a g | fis( a) d cis e( d) c a |
  g( b) d cis e( d) b g | fis( e') d( fis,) e( d') c( e,) |
  %% 40
  d\>( c') b( d,) c4 a' \bar "||"
  \repeat volta 2 {
    %% 41
    g8\p( fis) g a b( a) b c | d4 cis8\<( e d4) b'( |
    %% 43
    a\mf) g\<( fis g) | a2\f( e4) a8( g) |
  }
  \alternative {
    %% 45
    { fis8\>( e) d c b( c) b a\! | g4 b e d8( b) |
      a( b\<) cis d e( fis) g e\! | d4 d,\> e fis\! | }
    %% 49
    { fis'8\>( e) d c d( c) b a\! | g4 f e e'8( c) |
      b( c) d cis\< d( fis b a) | a2\f( g4) b8( a) }
  }
  %% 53
  g4-> b8( g) fis4-> b8( fis) | e4-> a g e |
  d8( e) d b c( d) c a | b( c) d e d4 b'8\downbow a\upbow |
  g4-> b8( g) fis4-> b8( fis) | e4-> a g e |
  d8( c) b a b( a) g fis | a( g) fis e d( c b a) |
  g\f( d' b' g') g( b, d, g,) | g( d' b' b') b( b, d, g,) |
  g( d' b' g') g( b, d, g,) | g( d' b' b') b( b, d, g,) |
  g4 r <d' b' g'>\downbow r | g,1\downbow \bar "|."
}

pianoUpMovementIII = \relative d'' {
  <d d,>8\f <dis dis,> <e e,>4:8 <fis fis,>8\< <g g,> <gis gis,> <a a,> |
  %% 2
  <bes bes,>2\ff <e bes g e> | <d b g d> <cis bes g e> |
  %% 4
  <c a fis d>4 r <fis,, d c a> r |
  \repeat volta 2 {
    %% 5
    r4\p <g d b> <g d b> r | r <g cis, ais> <g d b> r |
    \repeat percent 2 { r8\mf g,( <g' d> g,) } |
    r8 c( <e a> c <e a>4) r |
  }
  \alternative {
    %% 9
    { \repeat unfold 2 { r4 <a fis c> } |
      r8 b,( <e g> b) <e b'>( b) <f' b>( d) |
      <a' fis d>4 r <a g e cis> r |
      <a fis d> d, <e cis>\> <fis d c>\! }
    %% 13
    { r4 <a fis c> r <fis d a> | r8 g,( <f' d> g,) <e' c>( g,) r4 |
      <d' b g> <g d b> <fis d c> r | <a fis d c>2->( <g d b>4) r |
    }
  } \bar "||"
  %% 17
  r8\p b,( <e g> b <e g>) r r4 | r8 c\<( <fis a> c <fis a>\!) r r4 |
  %% 19
  r8\mf b,( <e g> b) r b( <e b'> b) | r8 c( e a) c( a e c) |
  %% 21
  r b( dis fis) b( fis dis b) | r b( <e b'> b) r4 <c e a> |
  %% 23
  r8 b( <e b'> b) <c e a>4 <fis e a,> | <g e b>\> r <fis dis b> r |
  %% 25
  r8\p b,( <e g> b <e g>) r r4 | r8 c\<( <fis a> c <fis a>) r r4 |
  %% 27
  r8\mf b,( <e g> b) r b( <e b'> b) | r a( <e' g> a,) r a( <cis e> a) |
  r8 ais( <cis fis> ais) r b( <d fis> b) |
  r cis( <e fis> cis) r b( <d fis> b) |
  %% 31
  r b( <fis' b> b,) r bis( <fis' b> bis,) | <a' e cis>4 r <gis e d> r |
  %% 33
  r4\mf <a e cis> r <g e a,> | r <fis d a> r <a fis d> |
  r <a e cis> r <g d b> | r <fis cis a> r <e cis g> |
  %% 37
  r <d a fis> r <c' a d,> | \repeat unfold 2 {r <b g d>} |
  %% 39
  r <d a fis> r <c g e> | r <b fis d>\> r <a fis c> \bar "||"
  \repeat volta 2 {
    %% 41
    r4\p <g d b> <g d b> r | r <g cis, ais> <g d b> r |
    \repeat percent 2 { r8\mf g,( <g' d> g,) } |
    r8 c( <e a> c <e a>4) r |
  }
  \alternative {
    %% 45
    { \repeat unfold 2 { r4 <a fis c> } |
      r8 b,( <e g> b) <e b'>( b) <f' b>( d) |
      <a' fis d>4 r <a g e cis> r |
      <a fis d> d, <e cis>\> <fis d c>\! }
    %% 49
    { r4 <a fis c> r <fis d a> | r8 g,( <f' d> g,) <e' c>( g,) r4 |
      <d' b g> <g d b> <fis d c> r | <a fis d c>2->( <g d b>4) r |
    }
  }
  %% 53
  <g e b>\mf r <fis b, fis> r |
  <e c g> <a e a,> \repeat unfold 2 { <g e ais,> } |
  <g d b> r <fis d c a> r | \repeat unfold 2 { <g d b> r } |
  <g e b> r <fis b, fis> r |
  <e c g> <a e a,> \repeat unfold 2 { <g e ais,> } |
  <g d b> r r2 | <fis d c a>4 r r2 | g8\f( fis g a b4) <d b g> |
  <g d b>2. r4 | b,8( a b c d4) <g d b> |
  <b g d>4\f <g d b> <d b g> <b g d> | <g d b> r <g' d b g> r |
  <g, d b>1 \bar "|."
}

pianoDownMovementIII = \relative d {
  <d d,>8 <dis dis,> <e e,> <f f,> <fis fis,> <g g,> <gis gis,> <a a,> |
  %% 2
  <bes bes,>4 <cis, cis,>-> r <cis cis,>-> |
  %% 3
  \repeat unfold 2 {r <d d,>->} | r <d d,>2 r4 |
  \repeat volta 2 {
    %% 5
    \repeat percent 2 { <g g,>4 r r2 } | <b, b,>2 <b b,> | <c c,>2. r4
  }
  \alternative {
    %% 9
    { <d d,>4 r <dis dis,> r | <e e,>2 <g g,>4 <gis gis,> |
      \repeat unfold 2 {<a a,>4 r} | <d, d,> r r2 }
    %% 13
    { <d d,>4 r <c c,> r | <b b,>2 <c c,>4 r |
      <d d,>2. r4 | g4( d g) r | }
  } \bar "||"
  %% 17
  e2~ e8 r r4 | dis2~ dis8 r r4 | e2 g, | a1 | b2 a | g a | g a4 c |
  %% 24
  b4 r b r | e2~ e8 r r4 | dis2~ dis8 r r4 | e2 g, | a g' | fis b, |
  %% 30
  ais b | d dis | e4 r e r | a,2 cis | d d | a a | a a | d fis, |
  %% 38
  g g | d d' | d, d' \bar "||"
  \repeat volta 2 {
    %% 41
    \repeat percent 2 { <g g,>4 r r2 } | <b, b,>2 <b b,> | <c c,>2. r4
  }
  \alternative {
    %% 45
    { <d d,>4 r <dis dis,> r | <e e,>2 <g g,>4 <gis gis,> |
      \repeat unfold 2 {<a a,>4 r} | <d, d,> r r2 }
    %% 49
    { <d d,>4 r <c c,> r | <b b,>2 <c c,>4 r |
      <d d,>2. r4 | g4( d g) r | }
  }
  %% 53
  <e e,>4 r <d d,> r | c,8( c') c,( c') cis,( cis') cis,( cis') |
  \repeat unfold 2 { <d d,>4 r } | \repeat unfold 2 { <g g,> r } |
  <e e,>4 r <d d,> r | c,8( c') c,( c') cis,( cis') cis,( cis') |
  \repeat unfold 2 {<d d,>4 r r2} |
  \repeat percent 3 { \repeat unfold 2 {g,4 <d' g b>} } |
  << { \repeat percent 2 {
    \repeat unfold 2 { \repeat tremolo 8 {g,,32( g'32)} } } }
     { s32\sustainOn s32*31 | s32*31 s32\sustainOff } >> |
  <g g,>1 \bar "|."
}

%%% ------------

\include "composer.ily"

\header {
  arranger = ##f
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 34"
  source = "http://imslp.org/"
  title = "Concert."
}

\include "paper.ily"

fileBaseName = "Oskar_Rieding-opus_34"

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
      } { \globalMovementI   \violinMovementI
          \globalMovementII  \violinMovementII
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
