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

moltoRit = \markup {\italic #"molto rit."}

titleMovementI = ##f

globalMovementI = {
  \time 4/4
  \tempo "Andante sostenuto." 4=96
  \key c \major
}

violinMovementI = \relative e'' {
  \set Timing.measurePosition = #(ly:make-moment -5/16) r16 r4 | R1*2
  \cueDuring #"pianoUpMovementI" #DOWN {
    R1 |
  }
  \cueDuring #"pianoUpMovementI" #UP {
    r4 r
  }
  r8. e16\open\mf\<\upbow( fis gis a-1 b) |
  %% 5
  c8\f\downbow b\downbow c4~\downbow c8 b16 c d( c) b a |
  b8.-2( e,16\open) b'8.( e,16\open) b'8 b4( gis8-2) |
  %% 7
  a8\downbow gis\downbow a4~\downbow a8 gis16 a-1 b-2( a) g-4 f |
  e8.-2\>( dis16) e8.( c16-2) e8->-4 e,4. |
  d'16\p( c b c d) d8. c16( b a b c) c8. |
  %% 10
  b8.\f( b'16) b8.->( a16) a8.->( gis16) gis8.->( f16) |
  f8.->( e16\open) d( c) b c e8.-4\>( d16) c( b) a c |
  b8\mf gis4 e8( f16-> e) e4( d8) |
  %% 13
  c8\downbow b\downbow c4~\downbow c8 a16( b c a) b-- c-- |
  d8-4\downbow cis\downbow d4~\downbow d8 b16( c d b) c---1 d-- |
  %% 15
  e4-3 g8.( e16-1) f4 a8.-4( fis16) |
  g16( fis g b e8-4) gis, a16->\open( e'-4) a,8\open b16->( e-4) b8 |
  c8\f a,16 b c->( b) b c b->( a) a'\open b c->( b) c a |
  %% 18
  a'8->\< gis16 a b16->( a) gis a gis->( fis) fis gis a( gis b-2 a) |
  c8\ff\downbow b\downbow c4~\downbow c8 b16 c d( c) b a |
  %% 20
  c8.->( bes16) c16->( bes) bes a bes\> e,\open( f->-1) cis( d->) a( bes->) f\!( |
  e->) e( dis-1) e-1( f->) f( e) f( fis->) fis( eis) fis( g->) g( fis) g( |
  %% 22
  gis8->) b,16 e gis( e) gis b e8.-4( b16) e b e b |
  %% 23
  e8\upbow gis,16\downbow( b) e-> b e\open fis gis e\open gis a b\upbow_\rit e,\open gis b-4 |
  %% 24
  e2~-4\flageolet_\moltoRit e8 d,,-2\downbow c\downbow b\downbow \bar "||"
  \tempo "Allegro moderato." 4=111
  a4\downbow r r2 | R1 |
  %% 27
  a'16\open\downbow\mf b c4 b16 c d->( cis d) r f->( e\open f) r |
  e32\upbow( a) r16 a4\downbow gis16( a) b a gis\< a-1 c b a c |
  %% 29
  b16->\f( d e,\open) r a->( c e,\open) r gis-2->( b e,\open) r a-1->( c e,\open) r |
  b'8-> d16( b) b( gis-2) gis\>( e) b'( gis) gis( e) e( d) d( b) |
  a16\mf b c4 b16 c d->( cis d) r f->( e f) r |
  %% 32
  e32\upbow( a) r16 a4\downbow gis16( a) b\< a gis a-1 d c b a |
  g-4->\f( f e) r f->( e d) r e->_\open( c') c8 e,16->_\open( cis') cis8 |
  d8-> d16( b) b( g-2) g\>( f) f( d) d( b) b( g) g( f) |
  e16\mf f g4 f16 e d e f4 e16 d |
  %% 36
  e16 f g a\open b c d e-4 d b c d e\open\< fis g a |
  b16\f c d4 c16 b a b c4 b16 a |
  b16 d c b a c b a g-2 b a g fis a g fis |
  g16 a b4 a16\> g fis g a4 g16 fis |
  %% 40
  g16\mf b a g fis e d c b-> a g8 a16->-4 g fis8 |
  %% 41
  e16 g,( c^>) g( b^>) g( ais^>) g( b^>) g( c^>) g( b^>) g( ais^>) g( |
  %% 42
  b8^>) g16( b e^>) e( g b e-4) e\open( g b-4 e8-4\flageolet) b-2( |
  c16->) c( b c) a-> a( b a) fis->-3 fis( g\> fis) e-> e( fis e) |
  %% 44
  dis8-1\mf fis16( dis) dis( b-1) b( a) c8.( b16) fis8.( g16) |
  %% 45
  e16\f g,( c^>) g( b^>) g( ais^>) g( b^>) g( c^>) g( b^>) g( ais^>) g( |
  %% 46
  b8^>) g16( b e^>) e( g b e->-4) e\open( g b e8\flageolet) bes,,\downbow( |
  a8 b16 a) cis( b) d( cis) e( d) fis( e) g( fis) a( g) |
  %% 48
  b( a) cis( b) d( cis) e( d) cis( d) e\open fis g a-1 b cis |
  d8.( a16) d a d a d8.\upbow( bes16) d bes d bes |
  %% 50
  d->( c) c b c->( b) b a d->( c) c b c->( b) b a |
  %% 51
  c( a) a( g-4) g( ees) ees( c-2) ees( c) c( a) a( g) g( ees) |
  d8\downbow d'\upbow( ais-1) b-1( fis) g( d) b( |
  %% 53
  e-3) d4.\fermata_\rit d8 c4_1\fermata\glissando( a8-1) |
  g2^\aTempo r |
  R1*6
  \cueDuring #"pianoUpMovementI" #DOWN R1*2
  \bar "||" \time 2/4
  %% 63
  e''4-2\mf g,-1 | e'-2 gis,-1 | e'8-2( d) d-.( a-.\open) | d4-3 c |
  %% 67
  b16 c d b c d e-4 c | d-1 e f\< d e-2 f g e | f8-3( d'4\!) d16( c) |
  %% 70
  c16\>( b) b( a) a( g-4) g( f\!) | e4-2 g,-1 | e'-2 gis,-1 |
  %% 73
  e'8-2( d) d-.( a-.\open) | d4-3 c | b16 c d b c d e-4 c |
  %% 76
  d-1 e f d e-2 f g e | f-3\< e d e f g a b | d\f( c) c b c8 r |
  %% 79
  c,16-2 b a\open gis a-4 b c d | e8->-4 b \acciaccatura dis8 e-> b |
  %% 81
  e16-4 d c b c d-1 e f | g8->-4 d \acciaccatura fis8 g-> d |
  %% 83
  f16-3( d') d( f,) e-2 g f e | d-1( b') b( d,) c-2 e-4 d c |
  b16->( a) a8 a8\downbow dis,-1 | e-1( e'-4) e( d) |
  %% 87
  c16 b a\open gis a-4 b c d | e8->-4 b \acciaccatura dis8 e-> b |
  e16-4 d c b c d-1 e f | g8->-4 d \acciaccatura fis8 g-> d |
  g16->-2( fis g8) gis16( fisis gis8) |
  %% 92
  a16->\<( gis a8) ais16->( gisis ais8) | b4->\ff b,-> | c->\> c'->-3 |
  %% 95
  b16\mf c d b a( d) a8-. | g16-2 a b g fis( b) fis8-. |
  e16-2 fis g e d8-. d'-. | c,16-2 d e-4 c b8-. b'-. |
  b,16 c d b c d e c | cis d e cis d-1 e fis d |
  e-2( dis) e\upbow\< fis g a b cis |
  %% 102
  d8\upbow\f cis,,16\downbow([ e] d8) r |
  %% 103
  b''16-2\mf\downbow c d b a( d) a8-. | g16-2 a b g fis( b) fis8-. |
  %% 105
  e16-2 fis g e d8-. d'-. | c,16-2 d e c b8-. b'-. | a,16 b c b d c b a |
  g( fis) a-4( g) b( a\open) c( b) | b'8\< b, cis dis-1 |
  fis16-3\f( e) e( dis) e8-2 e'\flageolet |
  %% 111
  e,4-2\mf g,-1 | e'-2 gis,-1 | a16\open b-1 c b d c b a |
  %% 114
  bes a bes c d e\open f g | a4 c, | a' cis, | d16 e\open f g a g f e |
  %% 118
  f\< e f g a g a-1 b |
  \repeat volta 2 {
    %% 119
    c4->\f dis,,->-1 | e->-1 c'-> | d,16\open e f g a\open b c d-1 |
  }
  \alternative {
    %% 122
    { e f g a b c d b }
    %% 123
    { e, f g a b c d b }
  }
  %% 124
  c8\f c16( e,-2) d-1( b') b( d,) | d( bes') bes( d,) c-2( a') a( c,) |
  %% 126
  c( aes') aes( c,) bes( g') g( bes,) | b( g') g( b,) b( d-1) d( f-3) |
  %% 128
  e( c') c( e,) d( b') b( d,) | d( bes') bes( d,) c-2( a') a( c,) |
  %% 130
  c( aes') aes( c,) bes( g') g( bes,) | b( c) b a g( f) e d |
  c( b) c d-4 c( b) c d | c c d e f g a\open b |
  %% 134
  \repeat unfold 2 {c( b) c d} | c c d e\open f g a-1 b |
  %% 136
  << \repeat percent 3 \repeat unfold 2 {c( d) c b} s16\f >> \bar "||"
  %% 139
  \time 4/4 c4 c,,-1\downbow r2 |
  R1*5 |
  \cueDuring #"pianoUpMovementI" #UP {
    R1*2
    \tempo "Andante sostenuto." 4=96
    r2
  }
  r8. e'16\open\mf\<\upbow( fis gis a-1 b) |
  %% 148
  c8\f\downbow b\downbow c4~\downbow c8 b16 c d( c) b a |
  b8.-2( e,16\open) b'8.( e,16\open) b'8 b4( gis8-2) |
  %% 150
  a8\downbow gis\downbow a4~\downbow a8 gis16 a-1 b-2( a) g-4 f |
  e8.-2\>( dis16) e8.( c16-2) e8->-4 e,4. |
  g16\p( f e f g) g8. f16( e d e f) f8.( |
  %% 153
  \stemDown ees8^\f) <bes''~ bes, ees, g,>\downbow \stemNeutral bes16 fis( g->) d(
  ees->) a,( bes->) fis( g->) d( ees->) bes( |
  %% 154
  a f' d' a') a( d, f, a,) a4 <a f' d' a'>^"pizz." |
  %% 155
  a16^"arco"( e' d' a') a( d, e, a,) a4 <a e' cis' a'>^"pizz."
  \mark \markup {\normalsize\fermata} \bar "||" \key f \major
  \tempo "Allegro moderato." 4 = 111
  %% 156
  d16\open\downbow\mf^"arco" e f4 e16 f g16->( fis g) r bes( a bes) r |
  %% 157
  a32\upbow( d) r16 d4\downbow cis16( d) e-4 d cis d-1 f e d f |
  e-2\f( g a,\open) r d->( f a,) r cis->-2( e a,\open) r d->-1( f a,\open) r |
  e'8->-2 g16( e) e( cis-2) cis( a) e'-4\>( cis) cis( a) a( g) g( e) |
  d16\mf e f4 e16 f g->( fis g) r bes->( a bes) r |
  %% 161
  a32\upbow( d) r16 d4\downbow cis16( d) e d cis\< d-1 g-4 f e d |
  %% 162
  c->-4\f( bes a) r bes-3->( a g) r a_>\open( f'-3) f8 a,16_>\open( fis'-3) fis8 |
  %% 163
  g8->-4 g16( e) e( c-2) c( bes) bes\>( g) g( e) e( c) c( bes) |
  a16\mf bes c4 bes16 a g a bes4 a16 g |
  a bes c d\open e f g a-4 g e f\< g a\open b c d-1 |
  %% 166
  e-2\f f g4 f16 e d e f4 e16 d | e-2 g f e d f e d c-2 e-4 d c b d c b |
  c d e4-4 d16\> c b c d4\! c16 b |
  %% 169
  c16\mf e-4 d c b a\open g f e-> d c8 d16->-4 c b8 |
  %% 170
  a8\f a16( b c^>) c( e a\open c) c( e\open a-1 c8->) b16 a |
  %% 171
  b16( d) d( b) ais( cis) cis( ais) a( c) c( a) gis-2( b) b( gis) |
  %% 172
  a8 a,,16\f([ b] c^>) c( e a\open c) c( e\open a-1 c8->) b16 a |
  %% 173
  bes8 d16( c) bes a g-4 f e d c-4\< bes a g f-4 e |
  %% 174
  f-4\ff( c) c( des) des( g,) g( aes) aes( des) des( f) f( aes) aes( des) |
  des\>( f) f( aes-1) aes( des) des( aes\!) des8_\rit c( des) c( \bar "||"
  \key a \major \time 2/4
  %% 176
  cis4)^\aTempo e,-2\mf | cis' eis,-2 | cis'8( b) b-.( fis-.-1) | b4-4 a |
  %% 180
  gis16 a b gis a-1 b cis a | b16 cis d b cis\< b ais cis |
  b8 e,\open\! e'8\flageolet e,16\open( fis-1) |
  %% 183
  gis16\> a b a gis fis e\open d\! | cis4 e, | cis' eis, |
  %% 186
  cis'8( b) b-.( fis-.) | b4 a-4 | gis16 e fis gis a\open b cis a |
  %% 189
  b16 cis d b cis d e-4 cis | d\< cis b cis d e\open fis gis |
  %% 191
  b\f( a) a gis a8 r | g16\mf a g fis e\open fis e d |
  %% 193
  cis8 a\open \acciaccatura gis'8 a-> a,\open |
  %% 194
  a'16 b a g fis e\open d cis | d8 a\open a'16->-1( d) fis,8-3 |
  e16-2 fis g fis e->( cis') cis8 | d,16-1 e fis e d->( b') b8 |
  %% 198
  b,,4\sfz bis\sfz | cis16^>\f( d cis) r cis'->( d cis) r |
  << \repeat unfold 2 {a' b a gis} s16\mf >> |
  %% 201
  fis16->( gis a) r a->( gis fis) r | \repeat unfold 2 {gis a gis fis} |
  %% 203
  e->\open( fis gis) r gis->( fis e) r | d e d cis b( b') b( b,) |
  %% 205
  cis16 d cis b a( a') a( cis,) | b cis b a\open gis fis a-4 fis |
  %% 207
  e( cis') cis\<( a\open) b( gis') gis( e\open) |
  \repeat volta 2 {
    a4->\f c,-> |
    a'-> cis,-> | d8->-1 d( d'->) d,( | dis->) dis( dis'->) dis( |
    e\flageolet) e,16_\open( d') d( cis) cis( b) |
    b( a) a( gis-2) gis( fis) fis( e\open) |
  }
  \alternative {
    { d8 e,16( fis) gis a\open b cis | d cis b cis d e\open fis gis | }
    { d8 b'16( a) gis fis e\open d | cis b a\open gis fis e d\open b | }
  }
  \repeat volta 2 {
    a\f( cis e a\open) cis( e\open a-1 cis) | d16( cis b a) d8-> d,16( e |
    f8->-3) d,16-2( e f8->-4) b,16 cis | d8->-4 b16( cis d8->) cis16 b |
  }
  a16( cis e a\open) cis( e-4) cis b | a b cis d e\open fis gis a |
  \repeat unfold 2 {b( a) gis a} | b( a) gis a b( a) gis a-1 |
  \repeat percent 2 \repeat unfold 2 {cis( b) a b} |
  cis->( d cis b) a->( b a fis-3) | e->-2( fis e d) cis->-2( d cis b) |
  a->\open( b a fis) e->( fis e d) | cis->( d cis b) a->( b cis b) |
  a4 <a e' cis'>\downbow | a\downbow <a e' cis' a'>\downbow |
  a2~\downbow | a4 r \bar "|."
}

pianoUpMovementI = \new Voice \relative e' {
  \clef "alto"
  \set Timing.measurePosition = #(ly:make-moment -5/16)
  <e e,>16\f <fis fis,> <gis gis,> <a a,> <b b,> |
  %% 1
  <c c,>8 <b b,> <c c,>4~ <c c,>8 <b b,>16 <c c,> <d d,> <c c,> <b b,> <a a,> |
  <gis gis,>4 \clef "violin" <f' b, g>-> <e a, e>-> <d g, e>-> |
  %% 3
  <c a e>16-> <c a e>8. <cis a e>16-> <cis a e>8. <d a d,>8 <a' d, a>4 <a dis, a>8 |
  <gis e b>8. <b gis e>16 <b gis e>8. <e b gis e>16 <e b gis e>4 r4 |
  %% 5
  <c, a e>4\mf <c a e>2 <c a e>4 | <b gis d> <b gis d>2 <b gis d>4 |
  <a f c>4 <a f c>2 <a f c>4 | <g e c>4 <g e c>2 <e c g>4 |
  <e d gis,>\p <e d b> \repeat unfold 2 <e c a> |
  << \repeat unfold 2 <f b, a>2 s2\mf >> |
  %% 11
  << \repeat unfold 2 <e c a> {s2 s8.\> s16 s16*3 s16\!} >> |
  <e b gis>2 <d b gis>\p | r4\mf <c'' c,>8 <b b,> <c c,>4 r |
  r4 <d d,>8 <cis cis,> <d d,>4 r |
  %% 15
  <e,, c g>4:8\p <g e bes>:8 <f d a>:8 <a fis c>:8 |
  <g e b>:8 <gis e b>:8 <a e a,>:8 <b gis e>:8 |
  %% 17
  <c fis, dis>2:8 <c a dis,>:8\< | <c a fis>:8 <c a fis>4\! r |
  %% 19
  \repeat tremolo 8 {<a c>32\f( e)} \repeat tremolo 8 {<e a>( c)} |
  \repeat tremolo 8 {<f bes>32( bes,)} \repeat tremolo 8 {<bes f'>( f)} |
  %% 21
  <e' b gis>8->[ r16 <e b gis> ] <f c a>8->[ r16 <f c a> ]
  <fis cis ais>8-> [ r16 <fis cis ais> ] <g d b>8-> [ r16 <g d b> ] |
  %% 22
  << {<gis e d b>2. r4} {s2 s4\>} >> | <e d b gis>2.\p r4^\rit |
  %% 24
  <e d b gis>2^\moltoRit r \bar "||"
  %% 25
  << \repeat percent 2 {r8 <e c a> r <f c a> r <e c a> r <dis c a>}
     s8\mf >> |
  %% 27
  r8 <e c a>4 <e c a>8 r <f d a>4 <f d a>8 |
  r8 <e c a>4 <a e c>8 r <a e c>4 <c a e>8 |
  %% 29
  r8 <d gis, e> r <c a e> r <b gis e> r <c a e> |
  <b gis d>4 r  <e, d gis,> r |
  %% 31
  r8 <e c a>4 <e c a>8 r8 <f d a>4 <f d a>8 |
  r8 <e c a>4 <e c a>8 r8 <d c a> r <dis c a> |
  %% 33
  r8 <e c g> r <f b, g> r <e c g> r <e cis g> |
  <f d g,>4 r <f b, g> r |
  %% 35
  r8 g,( <c e> g) r g( <d' f> g,) |
  <e' c g>8 r <g e c> r <g d b> r <a fis d> r |
  %% 37
  r8 d,( <g b> d) r d( <a' c> d,) |
  <d g b>8 r <e a c> r <d g b> r <c fis a> r |
  r b( <e g> b) r a( <b fis'> a) |
  %% 40
  <g b e>8 r \change Staff="down" \voiceOne <e a c> r <e g b> r <b dis a' b> r |
  <e g b>8-> <e g c>-> <e g b>-> <e g ais>-> <e g b>-> <e g c>-> <e g b>-> <e g ais>-> |
  %% 42
  <e g b>4 \change Staff="up" \oneVoice \repeat unfold 2 <g b e> <b e g> |
  %% 43
  <c e fis>4 r \change Staff="down" \voiceOne <fis, c' e> r |
  <fis b dis> r <b a dis, b> r |
  %% 45
  <b g e>8-> <c g e>-> <b g e>-> <ais g e>-> <b g e>-> <c g e>-> <b g e>-> <ais g e>-> |
  %% 46
  \repeat unfold 2 <b g e>4 <e b e,>4 <e bes e,> |
  \repeat unfold 2 {<d a fis> r} |
  %% 48
  <cis a g e>4 r \change Staff="up" \oneVoice <cis e g a> r |
  %% 49
  <a' fis d>2:8\f <bes g d>:8 |
  \repeat unfold 2 { <b gis eis d>4:8 <c a fis d>:8 } |
  <c a g c,>8 <c a g c,>4. << { <ees, a, g>8 <ees a, g>4. } {s4. s16\>} >> |
  <d b g>1\mf | r4^\rit <d c a fis>2\p\fermata <f d c a>4\fermata |
  <g d b>4.^\aTempo\< <b b,>8 \repeat unfold 2 <d d,> <e e,> <fis fis,> |
  <g g,>\f <fis fis,> <g g,>2 <f f,>4 |
  <e e,>8 <dis dis,> <e e,>4~ <e e,>8 <e e,> <fis fis,> <gis gis,> |
  <a a,> <gis gis,> <a a,>2 <g g,>4 |
  <fis fis,>8 <eis eis,> <fis fis,>4~ <fis fis,>8\< <fis fis,> <g g,> <a a,> |
  <b b,>4:8\ff <a a,>:8 <g g,>:8 <fis fis,>:8 |
  <a a,>:8 <g g,>:8 <fis fis,>:8 <e e,>:8 |
  <fis fis,>8 <e e,> <d d,>\> <c c,> <b b,>4 <dis, b a> |
  <e b g>\mf \repeat unfold 3 { \acciaccatura dis8 e4-> } \bar "||"
  %% 63
  \repeat unfold 2 {r8 <e c g>} | \repeat unfold 2 {r8 <e c gis>} |
  \repeat percent 2 \repeat unfold 2 {r8 <d c a>} |
  r8 <d b g> r <e c g> | r <f d b g> r <e cis ais g> |
  r \repeat unfold 2 <f d b g> r | R2 | \repeat unfold 2 {r8 <e c g>} |
  \repeat unfold 2 {r <e c gis>} |
  \repeat unfold 3 {r8 <d c a>} r <a' d, c> | r8 <g d b> r <g e c> |
  r <g f d b> r <g e cis ais> | r8\< <g f d b> r <b g f d> |
  << \repeat unfold 2 {<c g e> r} s8\f >> |
  \change Staff="down" \voiceOne <c, a e>8^\mf <c a e>4 <c a e>8 |
  %% 80
  <b gis e>8-> r8 \change Staff="up" \oneVoice <e b gis>-> r |
  <e c g>8 <e c g>4 <e c g>8 | <d b g>-> r <g d b>-> r |
  %% 83
  r8 <f' d g,> <e c g> r | r <d b f> <c a e> r |
  %% 85
  r <a d, a>4 <dis, b a>8 | <e b gis> r <d b gis> r |
  %% 87
  \change Staff="down" \voiceOne <c a e>8 <c a e>4 <c a e>8 |
  %% 88
  <b gis e>8-> r \change Staff="up" \oneVoice <e b gis>-> r |
  %% 89
  <e c g>8 <e c g>4 <e c g>8 | <d b g>8-> r <g d b>-> r |
  %% 91
  \repeat unfold 2 <g e b>8 \once \override Hairpin.to-barline = ##f
  r8\< <gis e b> |
  %% 92
  <a e a,>\! <a e a,> r\< <ais fis e> |
  %% 93
  <b fis dis>8\f <b fis dis>4 <b fis dis>8 | <c fis, d>4 r |
  b16->-3\mf( a g8) a4->-2 | g16->-3( fis e8) fis4-2-> |
  e16->-3( d c8) d4->-2 | c16->-3( b a8) b4-> | r8 <b b'> r <c c'> |
  r\< <cis cis'> r <d d'> | r <e b' e> r <e g a cis>\! |
  <fis a d> r r\mf <c' c'> | <b b'> <d d'>4 <a a'>8 |
  <g g'>8 <b b'>4 <fis fis'>8 | <e e'>8 <g g'>4 <d d'>8 |
  <c c'>8 <e e'>4 <b b'>8 | r8 <c e a> r <fis e c> |
  %% 108
  r <g e b> r \once \override Hairpin.to-barline = ##f <e b g>\< |
  <dis b a>4\! r | <e b g>4\f r | r8\mf e16( f g8->) e-. |
  r8 e16( fis gis8->) e-. |
  %% 113
  c'16->( b a8) r4 | bes16->( a g8) r4 | r8 a16( bes c8->) a |
  %% 116
  r8 a16( b cis8->) a-. | f'16->( e d8) r4 | d16->( c b8) r4 |
  \repeat volta 2 {
    << \repeat unfold 2 <c a dis,>8 s8\f >> r8 <c a dis,> |
    << \repeat unfold 2 <c g e>8 s8\> >> r <c g e> |
    {<b f d>4\mf r}
  }
  \alternative {
    {<b f d>4 r}
    {<b g f>4 r}
  }
  %% 123
  <c g e> <b g d> | <bes f d> <a f c> |
  <aes ees c> <g ees bes> | <g d b> <b g f> | <c g e> <b g d> |
  <bes f d> <a f c> | <aes e c> <g ees b> | <g d b> r |
  %% 135
  \repeat unfold 2 { <e g>8( c) <dis fis>( c) | <e g>( c) <f a>( c)} |
  <c e g>8\< <c e g>4 <c e g>8 | <e g c>8\f <e g c>4 <e g c>8 |
  <g c e>8 <g c e>4 <g c e>8 \bar "||" \time 4/4
  <e g c>4 <c g e>-> r8 <g'' g,> <a a,> <b b,> |
  <c c,>\f <b b,> <c c,>2 <bes bes,>4 |
  <a a,>8 <gis gis,> <a a,>4~ \repeat unfold 2 <a a,>8 <b b,> <cis cis,> |
  <d d,> <cis cis,> <d d,>2 <c c,>4 |
  <b b,>8 <ais ais,> <b b,>4~ <b b,>8\< <b b,> <c c,> <d d,> |
  <e e,>4:8\ff <d d,>:8 <c c,>:8 <b b,>:8 |
  <d d,>4:8 <c c,>:8 <b b,>:8 <a a,>:8 |
  <b b,>8_\moltoRit <a a,> <g g,> <f f,> <g g,> <f f,> <e e,> <d d,> |
  <c c,> <e e,>4 <c a e>8 <b gis e>4 r |
  <c a e>4\mf <c a e>2 <c a e>4 | <b gis d>4 <b gis d>2 <b gis d>4 |
  %% 153
  <a f c>4 <a f c>2 <a f c>4 | <g e c>4 <g e c>2 <g e bes>4 |
  r4\p <g e a,> r <f d a> | << \repeat unfold 2 <ees bes g>2:8 s2\mf >> |
  <d a f>8 <d a f>4. r4 <f d a>4 |
  <e d a>8 <e d a>4. r4 <e cis a f> 4 \bar "||" \key f \major
  %% 159
  r8 <d a f>4 <d a f>8 r <d bes g>4 <g d bes>8 |
  \repeat unfold 2 {r8 <f d a>4 <f d a>8} |
  %% 161
  r8 <g cis, a> r <f d a> r <e cis a> r <f d a> |
  <e cis g>4 r <cis a g> r |
  r8 <d a f>4 <d a f>8 r <d bes g>4 <g d bes>8 |
  r8 <f d a>4 <f d a>8 r8 <f d g,>8 r8 <f d gis,> |
  r8 <f c a> r <e c bes> r <f c a> r <fis dis a> |
  <g e bes>4 r <bes e, c> r |
  %% 167
  r8 c,( <f a> c) r c( <g' bes> c,) |
  \repeat unfold 2 {<c f a> r} <c e g> r <b d f> r |
  r g( <c e> g) r g( <d' f> g,) |
  <g c e>8 r <a d f> r <g c e> r <f b d> r |
  \change Staff="down" \voiceOne r8 e( <a c> e) r e( <b' d> e,)
  \change Staff="up" \oneVoice |
  <a c>8 r <a b f'> r <a c e> r <b d e gis> r |
  <c e a>4 r <e a c> r |
  <gis b d>8( e) <g ais cis>( e) <fis a c>( dis) <f gis b>( d) |
  \repeat unfold 2 {<c e a>4 r} | <c e bes'>4 r <e' bes g> r |
  <f aes, f>8\f <f aes, f>4 <des aes f> <aes f des> <f des a>8 |
  <des aes f>4 r\> <f a d>\mf^\rit r4 \bar "||" \key a \major
  %% 179
  << \repeat unfold 2 {r8 <e a cis>} s8\mf^\aTempo >> |
  \repeat unfold 2 {r8 <eis a cis>} |
  \repeat percent 2 \repeat unfold 2 {r8 <fis a b>} |
  r8 <e gis b> r <e a cis> | r8 <e gis b d> r <e fisis ais cis> |
  <e gis b d>4 r | <d b gis>4 r | \change Staff="down" \voiceOne
  \repeat unfold 2 {r8 <cis a e>} | \repeat unfold 2 {r8 <cis a eis>} |
  \repeat unfold 3 {r8 <b a fis>} \change Staff="up" \oneVoice r8 <fis' b, a> |
  r8 <e b gis> r <e cis a> | r <e d b gis> r <e cis ais fisis> |
  %% 193
  r8\< <e d b gis> r <gis e d b>\! | \repeat unfold 2 {<a e cis> r} |
  <cis, a>8\mf^> <d b>^> <e cis>^> <fis d>^> | <g e cis>4 r |
  <fis d>8-> <g e>-> <a fis>-> <b g>-> | <a fis>4-> r |
  <ais g e>8 r <cis g e> r | <b fis d> r <d b fis> r |
  <b fis'>16\<( fis <b fis'> fis) <bis fis'>( fis <bis fis'> fis) |
  <gis cis eis>4\f\> r |
  %% 203
  r8\mf fis'16( eis fis8->) cis16( b | a8->) fis'-> a,-> fis'-> |
  r8 e16( dis e8->) b16( a | gis8->) e'-> gis,-> e'-> |
  r8 <gis, e d> r <b e, d> | \repeat unfold 2 { <a e cis> r } |
  \repeat unfold 2 <a fis b,>8 r <a fis bis,> |
  <a e cis> r <gis d b> r |
  \repeat volta 2 {
    r16\f a,( <c a'> a) r c( <f a> c) |
    r16 cis( <g' a> cis,) r cis( <e a> cis) |
    \repeat unfold 2 {r16 a( <d a'> a)} |
    r16 a( <dis a'> a) r c( <dis a'> c) | <cis e a>2\> |
    << \repeat unfold 2 {<cis e a>8 r} s8\mf >> |
  }
  \alternative {
    { \repeat percent 2 {<gis' d b>8 r r4} }
    { <gis d b>8 r r4 | <gis e d b>8 r r4 }
  }
  \repeat volta 2 {
    <cis cis'>4\f <e e,> | <fis fis,> <d d'> |
    <d d'>8 <cis cis'> <b b'> r | <f' f'> <e e'> <d d'> r |
  }
  <cis cis'>4\f <e e,> | <a a,> <cis, a fis> | <fis d a fis> <a, fis d> |
  <a f d> <b a f d> | <cis a e cis>8\f <cis a e cis>4. |
  <e cis a e>8 <e cis a e>4. | <a e cis a>4 <e cis a> |
  <cis a e>4\mf <a e cis> |
  <e cis a> \change Staff="down" \voiceOne <cis a e> |
  \repeat unfold 3 <a e cis> \repeat unfold 2 <cis a e>
  \change Staff="up" \oneVoice <e cis a> | <a e cis a>2~ |
  <a e cis a>4 r \bar "|."
}

\addQuote "pianoUpMovementI" \pianoUpMovementI

pianoDownMovementI = \new Voice \relative e, {
  \set Timing.measurePosition = #(ly:make-moment -5/16)
  <e e,>16\sustainOn <fis fis,> <gis gis,> <a a,> <b b,>\sustainOff |
  %% 1
  <c c,>8\sustainOn <b b,> <c c,>4~ <c c,>8 <b b,>16 <c c,> <d d,> <c c,> <b b,> <a a,>\sustainOff |
  <gis gis,>4\sustainOn <d' d,>-> <c c,>-> <b b,>->\sustainOff |
  %% 3
  <a a,>16^>\sustainOn <a a,>8. <g g,>16^> <g g,>8.
  << {<fis fis,>4 <fis' fis,>} {s8 s4 s8\sustainOff} >> |
  %% 4
  <e e,>8.\sustainOn <e e,>16 <e e,>8. <e e,>16 <e e,>4\sustainOff r4 |
  \repeat unfold 2 <a a,>2 | \repeat unfold 2 <e e,>2 |
  %% 7
  << \repeat unfold 2 <f f,>2 {s2\sustainOn s4.. s16\sustainOff} >> |
  %% 8
  \repeat unfold 2 <c c,>2 | <b b,>4 <gis gis,> <a a,>2 |
  %% 10
  \repeat unfold 2 <d d,>2 | \repeat percent 2 \repeat unfold 2 <e e,>2 |
  %% 13
  <a, a,>4\sustainOn \repeat unfold 2 <c' a e>4 r4\sustainOff |
  <g, g,>4\sustainOn \repeat unfold 2 <d'' b g>4 r4\sustainOff |
  %% 15
  <c, c,>4 <cis cis,> <d d,> <dis dis,> | <e e,> <d d,> <c c,> <b b,> |
  %% 17
  <a a,>2\sustainOn <fis fis,>4 <fis fis'>\sustainOff |
  %% 18
  << {<dis' dis,>2. r4} {s2\sustainOn s8 s16\sustainOff} >> |
  %% 19
  << {\repeat unfold 2 \repeat tremolo 8 {e,32( e')} }
     {s4\sustainOn s4*2 s4\sustainOff} >> |
  %% 20
  << {\repeat unfold 2 \repeat tremolo 8 {d,32( d')} }
     {s2\sustainOn s4.. s16\sustainOff} >> |
  %% 21
  << {\repeat unfold 2 \repeat tremolo 8 {e,32( e')} }
     {s4\sustainOn s8\sustainOff s8 s4\sustainOn s8\sustainOff} >> |
  %% 22
  << \repeat unfold 2 {<e e,>2. r4} {s2\sustainOn s4\sustainOff} >> |
  %% 24
  <e e,>2 r \bar "||"
  %% 25
  \repeat percent 4 {\repeat unfold 2 {a,,4 a'} } |
  %% 29
  \repeat unfold 2 {e e'} | \repeat unfold 2 {<e e,> r} |
  %% 31
  \repeat unfold 3 {a,, a'} \repeat unfold 2 fis |
  %% 33
  \repeat unfold 4 g | \repeat unfold 2 {g r} | c2 b |
  %% 36
  \repeat unfold 2 {c8 r} \repeat unfold 2 {d r} |
  %% 37
  g2 fis | g8 r c, r \repeat unfold 2 {d r} | e2 dis |
  %% 40
  e8 r \voiceTwo a, r b r b, r | e2 e | e1 | \oneVoice a4 r \voiceTwo a r |
  b r b, r | e2 e | e <g g,> |
  %% 47
  \repeat unfold 3 {<a a,>4 r} \oneVoice <a a,> r |
  %% 49
  \repeat percent 2 \repeat unfold 2
  << \repeat tremolo 8 {d,32( d')}
     {s8\sustainOn s4 s8\sustainOff} >>
  %% 51
  << {<ees ees,>8 <ees ees,>4. <c c,>8 <c c,>4.}
     {s2\sustainOn s4. s8\sustainOff} >> | <d d,>1 |
  r4 <d d,>2_\fermata <d d,>4_\fermata | <g g,>2 r |
  << { \repeat unfold 2 {<d b>16( g <d b> g)}
       \repeat unfold 2 {<f d b>( g <f d b> g)} }
     { s2\sustainOn s4. s8\sustainOff } >> |
  << { \repeat unfold 2 {<e c>16( g <e c> g)}
       \repeat unfold 2 {<e d b>( gis <e d b> gis)} }
     { s4\sustainOn s4 s16\sustainOff } >> |
  << { \repeat unfold 2 {<e c>16( a <e c> a)}
       \repeat unfold 2 { <g e cis>( a <g e cis> a) } }
     { s4\sustainOn s4 s16\sustainOff } >> |
  << { \repeat unfold 2 {<fis d>( a <fis d> a)}
       \repeat unfold 2 {<fis d c>( a <fis d c> a)} }
     { s2\sustainOn s4. s8\sustainOff } >> |
  << { <a fis dis b>4 r4 <b, b,> <b' a fis dis> }
     { s2\sustainOn s4. s8\sustainOff } >> |
  <e, e,>4\sustainOn <e g b> <g, g,> <g b e>\sustainOff |
  <a a,>\sustainOn <a c e fis> <b e g>\sustainOff <b b,> |
  <e e,> r r2 \bar "||"
  %% 63
  \repeat percent 2 {c,4 c'} | f, f' | fis, fis' |
  \repeat percent 2 {g, g} | g4~ g8 r | R2 |
  \repeat percent 2 {c,4 c'} | f, f' | fis, fis' |
  \repeat percent 2 {g, g'} | g, <g g'> |
  \repeat unfold 2 {<c c'>8 r} | \voiceTwo a8 a4 a8 |
  e r \oneVoice e' r | c8 c4 c8 | g r g' r | <b b,>4 <c c,>8 r |
  <gis gis,>4 <a a,>8 r | \repeat unfold 2 <f f,>4 |
  \repeat unfold 2 {<e e,>8 r} | \voiceTwo <a, a,>8 <a a,>4 <a a,>8 |
  <e e,>8 r \oneVoice <e e'> r | <c c'>8 <c c'>4 <c c'>8 |
  <g' g,> r <g g'> r | <e' e,>4 <d d,> | <cis cis,> <c c,> |
  << {<b b,> <b b'>} {s8\sustainOn s4 s8\sustainOff} >> | <a a'>4 r |
  << {\voiceOne g'8( <b d>) fis8( <a d>) | e8( <g b>) d( <fis b>) |
      c( <e g>) b( <d g>) | a( <c e>) g( <b e>) | gis( <d' f>) a( <c e>) |
      ais( <e' g>) b( <d fis>) }
     \new Voice {\voiceTwo g4 fis | e d | c b | a g | gis a | ais b } >> |
  \oneVoice <g' g,>4 <a a,> | <d d,>8 r
  << {\voiceOne fis,8( <a d>) | g8( <b d>) fis( <a d>) |
      e( <g b>) d( <fis b>) | c( <e g>) b( <d g>) | a( <c e>) g( <b e>) }
     \new Voice {\voiceTwo fis'4 | g fis | e d | c b | a g } >> |
  \oneVoice fis4 a | b b | b r | e r | \repeat unfold 2 {<e c>8( g)} |
  \repeat unfold 2 {<e d b>( gis)} |
  %% 113
  <a e a,>4 r | <bes e, c> r | \repeat unfold 2 {<a f>8( c)} |
  %% 116
  \repeat unfold 2 {<a g e>( cis)} | <d a d,>4 r | <f d g,> r |
  \repeat volta 2 {
    %% 119
    << \repeat unfold 2 <fis, fis,>4 {s8\sustainOn s4 s8\sustainOff} >> |
    %% 120
    \repeat unfold 2 <g g,>4 | <g g,>4 r
  }
  \alternative {
    %% 123
    { <g g,>4 r }
    { <g g,>4 r }
  }
  %% 127
  <c c,> <g g,>8 <a a,> | <bes bes,>4 <f f,>8 <g g,> |
  %% 129
  <aes aes,>4 <ees ees,>8 <f f,> | \repeat unfold 2 <g g,>4 |
  <c c,> <g g,>8 <a a,> | <bes bes,>4 <f f,>8 <g g,> |
  <aes aes,>4 <ees ees,>8 <f f,> | <g g,>4 r |
  %% 135
  \repeat percent 7 {c,,4 c'} \bar "||" <c c,> <c c,>-> r2 |
  %% 143
  << { \repeat unfold 2 {<g' e>16( c <g e> c)}
       \repeat unfold 2 {<bes g e>( c <bes g e> c) } }
     { s2\sustainOn s4.. s16\sustainOff } >> |
  %% 144
  << { \repeat unfold 2 {<a f>16( c <a f> c)}
       \repeat unfold 2 {<a g e>( cis <a g e> cis)} }
     { s2\sustainOn s16\sustainOff} >> |
  %% 145
  << { \repeat unfold 2 {<a f>( d <a f> d)}
       \repeat unfold 2 {<c a fis>( d <c a fis> d)} }
     { s2\sustainOn s16\sustainOff} >> |
  << { \repeat unfold 2 {<b g>( d <b g> d)}
       \repeat unfold 2 {<b g f>( d <b g f> d)} }
     { s2\sustainOn s4.. s16\sustainOff } >> |
  <d b gis e>4\sustainOn r4 <e, e,> <gis b d e>\sustainOff |
  <a a,>4\sustainOn <a c e> <c, c,> <c e a>\sustainOff |
  << \repeat unfold 2 { <d d,> <d f a b> }
     {s2..\sustainOn s8\sustainOff} >> |
  <e e,>4\sustainOn <e a c> <e b' d>\sustainOff r |
  \repeat unfold 2 <a a,>2 | \repeat unfold 2 <e e,> |
  %% 153
  << \repeat unfold 2 <f f,>2 {s2\sustainOn s4.. s16\sustainOff} >> |
  \repeat unfold 2 <c c,>2 | <cis cis,> <d d,> |
  \repeat unfold 2 <g, g,>2 |
  \repeat percent 2 {<a a,>2 r4 a} \bar "||" \key f \major
  \repeat percent 2 \repeat unfold 2 {d,4 d'} |
  \repeat unfold 2 {a,4 a'} | \repeat unfold 2 {<a a,>4 r} |
  \repeat unfold 3 {d,4 d'} b, bes' | \repeat unfold 2 {c,4 c'} |
  <c c,>4 r c r |
  %% 167
  f2 e | \repeat unfold 2 {f8 r} \repeat unfold 2 {g r} |
  c,2 b | c8 r f, r \repeat unfold 2 {g r} |
  \voiceTwo a2 gis \oneVoice |
  <e' a,>8 r <d d,> r \repeat unfold 2 {<e e,> r} |
  \repeat unfold 2 {<a a,>4 r} | \repeat unfold 2  <e e,>2 |
  \repeat unfold 2 {<a a,>4 r} | <g g,>4 r <c, c,> r |
  << \repeat unfold 2 \repeat tremolo 8 {des,32( des')}
     {s2\sustainOn s4.. s16\sustainOff} >> |
  <des des,>4\sustainOn r4\sustainOff <des des'> r \bar "||" \key a \major
  %% 179
  \repeat percent 2 {a4 a'} | d, d' | dis, dis' |
  \repeat percent 2 {e, e} | \repeat percent 2 {<e e,>4 r} |
  \voiceTwo \repeat unfold 2 {a,,4 a'} | d, d' | dis, dis' \oneVoice |
  \repeat percent 2 {e,4 e'} | e, <e e'> |
  \repeat unfold 2 {<a a'>8 r} | a2 | <a a'>4 r | d2 | <d d'>4 r |
  <cis cis'>8 r <ais ais'> r | \repeat unfold 2 {<b b'> r} |
  << \repeat unfold 2 <d d,>4 {s4..\sustainOn s16\sustainOff} >> |
  <cis cis,>4 r |
  %% 203
  \repeat unfold 3 {<fis a cis>8 r} <dis fis a b> r |
  %% 205
  \repeat unfold 3 {<e gis b>8 r} <cis e gis cis> r |
  %% 207
  <b' b,>4 <gis gis,> | <a a,>8 <gis gis,> <fis fis,> <e e,> |
  <d d,>4 <dis dis,> | \repeat unfold 2 {<e e,>8 r} |
  \repeat volta 2 {
    << \repeat unfold 2 <f f,>4 {s4..\sustainOn s16\sustainOff} >> |
    <e e,>4 <g g,> | \repeat unfold 2 <fis fis,> |
    \repeat unfold 2 <f f,> | <e e,>2 | \repeat unfold 2 {<e e,>8 r}
  }
  \alternative {
    \repeat percent 2 {<e e,>8 r r4}
    \repeat percent 2 {<e e,>8 r r4}
  }
  \repeat volta 2 {
    << \repeat unfold 2 <e cis a>4:8 {s4..\sustainOn s16\sustainOff} >> |
    << \repeat unfold 2 <fis d a>4:8 {s4..\sustainOn s16\sustainOff} >> |
    << \repeat unfold 2 <f d gis,>4:8 {s4..\sustainOn s16\sustainOff} >> |
    << \repeat unfold 2 <f d b gis>4:8 {s4..\sustainOn s16\sustainOff} >> |
  }
  \repeat unfold 2 <e cis a>4:8 |
  << \repeat unfold 2 <fis cis fis,>4:8 {s4..\sustainOn s16\sustainOff} >> |
  \repeat percent 2 << \repeat tremolo 8 {d,32( d')}
                       {s4..\sustainOn s16\sustainOff} >> |
  << \repeat percent 3 \repeat tremolo 8 {a,32( a')}
     {s1\sustainOn s4.. s16\sustainOff} >> |
  << \repeat tremolo 8 {a,32( a')} s2\sustainOn >> |
  \voiceTwo << \repeat unfold 4 \repeat tremolo 8 {a,32( a')}
               {s2*3 s4 s\sustainOff} >> \oneVoice |
  <a a,>2~ <a a,>4 r \bar "|."
}

%%% ------------

\include "composer.ily"

\header {
  arranger = ##f
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 21"
  source = "http://imslp.org/"
  title = "Concertino"
  subtitle = "in ungarischer Weise."
}

\include "paper.ily"

fileBaseName = "Oskar_Rieding-opus_21"

define(`Movements', `(I)')
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
        }
      \new PianoStaff \with {
        midiInstrument = #"acoustic grand"
      } <<
        \new Staff = "up" {
          \globalMovementI \pianoUpMovementI
        }
        \new Staff = "down" {
          \globalMovementI \pianoDownMovementI
        }
      >>
    >>
    \midi{}
  }
}
