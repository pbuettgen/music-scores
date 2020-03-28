%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2016-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

\version "2.20"

\include "lily-snippets.ily"

%%% ------------ Duo I ------------

titleduoImovementI = ##f

globalduoImovementI = {
  \time 4/4
  \tempo "Allegro moderato" 4 = 124
  \key c \major
}

violinIduoImovementI = \new Voice \relative c'' {
  \violinVoiceSettings

  \repeat volta 2 {
    g2\f\downbow c | b a | g4-- c-- d-- g-- | f2 (e4) c | a2 f |
    %% 6
    b4 d c e-4 | g f e\open c | b a g r | e\downbow g c e-4 | e2 d |
    %% 11
    \repeat unfold 2 { c4 a' fis c | b g' d b } | c2 d | b (c4) a |
    %% 17
    g\> b a fis | g2.\p d'4 | b2. g'4 | g (fis) a, (b) | c c c fis, |
    %% 22
    g <d b> <d b> <d b> | <d b> <d b> <d b> <d b> |
    %% 24
    <c d> <c d> <c d> <c d> | <a d> <a d> <a d> <a d> |
    %% 26
    <b d>\< r r <c d> | <b d> r r <c d> | <b d> r\! <g d'>2\f | <g d'> r
  }
  g'4\f\downbow b d b | g'2 b, | g4 c e-4 c | g'2 c, | a4 d f d | b2 e-4 |
  c4 f a f | d2 g | e4\open g f d | e-4 g, a b | c a f d | g2 f | e c |
  g' f | e4 c b g | a b c e | f2 d | g4 f e c | b d-4 c e | g d\open b g |
  c1 | b4\upbow d g b | d,1 | c4 e a c | a c f a | g e f d | b\> d g, b |
  c\p <c e> <c e> <c e> | <c e> <c e> <c e> <c e> |
  \repeat unfold 2 {<d f> <d f> <d f> <d f>} | <c e> c2\upbow g4\downbow |
  e'2.-4 c4\downbow | c (b) a g | f'-4 f f b,-1 | c\< e\open g b, | c e g b,\! |
  c r <g c>2\f | <g c> r \bar "|."
}

violinIIduoImovementI = \new Voice \relative c' {
  \violinVoiceSettings

  \repeat volta 2 {
    e2\f c | g' f | e4-- c-- b-- g-- | a-- b-- c-- e-- | f2 d | g4 f e c |
    b d-4 c e | g d\open b g | c1 ( | b4) d-- g-- b-- |
    \repeat unfold 2 { a fis d fis | g d b' g } | e a-4 fis d | g d e c |
    b\> d-4 c d | g,\p <b d> <b d> <b d> | <b d> <b d> <b d> <b d> |
    <c d> <c d> <c d> <c d> | <a d> <a d> <a d> <a d> | <b d> g' b d |
    g, b d g | g (fis) a, (b) | c c c fis, | g\< b d fis, | g b d fis, |
    g r\! <b g'>2\f | <b g'> r
  }
  R1 | g,4--\downbow\f b-- d-- g-- | e2 c | g4 c e g | f2 d | g4 e g b |
  a2-4 f | b4 g b d | c g a\open b | c g' f d | e-4 c a d | c b a g | g2 c |
  b a | g4 c d g | f2 (e4) c | a2 f' | b,4 d c e\open | g f e c | b a g r |
  e\downbow g c e-4 | e2 d | f,4 a d f | f2 e\open | f4 c a f | e g a-4 f |
  g\> f e d | c2.\p g4 | e'2. c4 | c (b) a (g) | g' g g b, |
  c <g e'> <g e'> <g e'> | <g e'> <g e'> <g e'> <g e'> |
  <g f'> <g f'> <g f'> <g f'> | <g d'> <g d'> <g d'> <g d'> |
  <g e'> r r <g f'> | <g e'>\< r r <g f'> | <c e>\! r <c e>2\f |
  <c e> r \bar "|."
}

titleduoImovementII = ##f

globalduoImovementII = {
  \time 3/4
  \tempo "Adagio" 4 = 64
  \key c \major
}

violinIduoImovementII = \new Voice \relative c'' {
  \violinVoiceSettings

  a8\p\downbow (c) c (b) a (c) | f2 e4-4 | d8 (c) b (a) gis (b) |
  e2-4 d4-- | c8\f (e-4) c (a gis b) | c (e) c (a gis b) |
  a (b) d (c) b (a) | c2 b4-- | a-- r r | a8\p (c) c (b) a (c) |
  f2 d4-- | b8 (d) d (c) b (d) | g4\f e-- d-- | g-- e-- d-- |
  c8 (cis d e) f (a) | g (f) d (e-4) c4-- | b2\upbow c4--\downbow |
  e8-4 (d) b (d) c4-- | gis2 a4\open | b8 (c e-4 d) c (b) | a4-4 (gis) e-- |
  a,-- r r | a8\p\upbow (c) c (b) a (c) | f2 e4-- | d8-4 (c) b (a) gis (b) |
  a4--\f c-- e-- | a,-- c-- e-- | f-- d-- e-- | a-4-- a,-- r \bar "|."
}

violinIIduoImovementII = \new Voice \relative c' {
  \violinVoiceSettings

  R2. | a8\p\downbow (c) c (b) a (c) | f2 e4 | d8-4 (c) b (a) gis (b) |
  a4--\f c-- e-- | a,-- c-- e-- | f2 d4 | e e2\> | a,8\p (c) c (b) a (c) |
  f2 e4 | b8 (d-4) d (c) b (d\open) | g2 f4 | e8\f (g) c-. g-. b-. g-. |
  e (g) c-. g-. b-. g-. | a-4 (g f e) d-4 (c) | b4 g c |
  g'8\upbow (f) d (e) e4 | gis2 a4-4 | e8 (d) b (d-4) c4 |
  d\open f d | e8 (f e) d'-. c-. b-. | a\p (c) c (b) a (c) | f2 e4\open |
  d8 (c) b (a) gis (b) | e2-4 d4 | c8\f (e-4) c (a gis b) |
  c (e-4) c (a gis b) | a (b) c (b) a-4 (gis) |
  a-4-. e-. c-. e-. a,4 \bar "|."
}

titleduoImovementIII = ##f

globalduoImovementIII = {
  \time 2/4
  \tempo "Allegro" 4 = 124
  \key c \major
}

violinIduoImovementIII = \new Voice \relative c'' {
  \violinVoiceSettings

  g8-.\f\downbow g-. c-. e-.\open | g-. g-. d4-- | g,8-. g-. c-. e-. |
  %% 4
  g-. g-. d4-- | e8-.-4 e-. e (d) | c c b (a) | g-. a-.-4 f-. g-. |
  %% 8
  e-. fis-. g-. r | e4\p\downbow c | b8-. g-. b-. d-. | e4 c |
  %% 12
  b8-. g-. b-. d-. | c-. c-. a'4-4 | fis8-. fis-. g4-- |
  %% 15
  e8-. c-. d-.-4 c-. | b-. g-. b-. d-.\open | g-.\f g-. b-. d-. |
  %% 18
  g-. g-. d4-- | g,8-. g-. c-. e-.\open | g-. g-. e4-- | c8-. c-. a'4-- |
  %% 23
  b,8-. b-. g'4-- | f8-.\> e-. d-. c-. | b-. c-. b-. a-. |
  %% 26
  gis-.\p gis-. b4-> |
  gis8-._\rit gis-. b4-> |
  g8-.\f^\aTempo g-. c-. e-. |
  %% 29
  g-. g-. d4-- | g,8-. g-. c-. e-. | g-. g-. d4-- | e8-.-4 e-. e (d) |
  %% 33
  c-. c-. b (a) | g-. a-.-4 f-. g-. | e-. fis-. g-. f-. | e4\p c |
  %% 37
  b8-. g-. b-. d-. | e4 c | b8-. g-. b-. d-. | c-. e-. g4-- |
  %% 41
  a8-.-4 e-. f-. a-. | g-.\< c-. a-. d-. | b-.\f b-. c-. r \bar "|."
}

violinIIduoImovementIII = \new Voice \relative c' {
  \violinVoiceSettings

  e4-.\f\downbow c-. | b8-. g-. b-. d-.\open | e4 c | b8 g b d |
  c-. e-. g4-- | a8-.-4 e-. f4-- | e8-. c-. d-.-4 b-. | c-. a-. b-. g-. |
  g'-.\p g-. c-. e-.\open | g-. g-. d4-- | g,8-. g-. c-. e-.\open |
  g-. g-. d4-- | e---4 c8-. c-. | d4-- b8-. b-. | c-. a-.\open fis-. a-.-4 |
  g-. b-. g-. r | R2 | g,8-.\f\downbow g-. b-. d-.\open | g4-- e8-. (c-.) |
  g-. g-. c-. e-. | a-.-4 g-. f-. a-. | g-. f-. e-. g-. |
  a-.-4\> g-. f-. e-. | d4 f | e\p b8 b |
  e4_\rit b8 b |
  e4\f^\aTempo c | b8-. g-. b-. d-. | e4 c |
  b8-. g-. b-. d-. | c-. e-. g4-- | a8-.-4 e-. f4-- | e8-. c-. d-.-4 b-. |
  c-. a-. b-. g-. | g'-.\p g-. c-. e-.\open | g-. g-. d4-- |
  g,8-. g-. c-. e-. | g-. g-. d4-- | e8-.-4 e-. e (d) | c-. b-. a-. f-. |
  e-.\< c-. f-. e-. | <g g,>-.\f <g, f'>-. <g e'>-. r \bar "|."
}

%%% ------------ Duo II ------------

titleduoIImovementI = ##f

globalduoIImovementI = {
  \time 3/4
  \tempo "Allegro" 4 = 128
  \key g \major
}

violinIduoIImovementI = \new Voice \relative g' {
  \violinVoiceSettings

  \repeat volta 2 {
    b4\f\downbow b b | d8 (e fis g d b) | g4 g-- (g--) |
    %% 4
    fis8 (g a b) c4 | a'4 g8 (fis e d) | g4 (d b) | c\upbow c b |
    %% 8
    <g b>2-> <fis a>4 | <g, d'> <g d'> <g d'> | <b d>2 <g d'>4 |
    %% 11
    <b d> <b d> <b d> | <g d'>2. | fis'8-. g-. a-.-4 fis-. d-. fis-. |
    %% 14
    g-. g,-. b-. d-.\open g-. b-. | <a g'>4 <a g'> <a g'> | <a fis'>2. |
    %% 17
    b'8\upbow (a g fis e d) | cis (d e fis) g4 |
    %% 19
    fis8-. a-. d,-. fis-. e-. cis-. | d4 <fis, a>\p <fis a> |
    <fis a> <fis a> <fis a> | <g a> <g a> <g a> | <a g'> <a g'> <a g'> |
    <a fis'> r d-. | d (cis) d-. | e-4 (cis) a |
    a'8-.\> g-. e-. cis-. a-. cis-.\! | d4-.\f d,-. r
  }
  d'4\f d d | cis8 (d e-4 cis b a) | c4 c c | b8 (c d b a g) |
  c-. b-. c-. d-. e-. fis-. | g4-. d-. (b-.) |
  c8-. d-. c-. d-. e-. a-. | b-. g-. e4-.\open g8-. e-. |
  c4-. e8-.-4 c-. a4-. | c8-.\downbow b-. a-. b-. a-. g-. |
  fis-. a-. d4-. d-. | cis8-. e-. g4-. g-. | c,8-. fis-. a4-. a-. |
  a8 (fis) d (c a fis) | d4-. cis8 (c b a) | <g d'>4 <g d'> <g d'> |
  <b d>2 (<g d'>4) | <b d> <b d> <b d> | <a d>2. | <c d>4 <c d> <c d> |
  <b d>2 (<g d'>4) | <a d> <a d> <g d'> | d'2.-> | b'4 b b |
  d8 (e fis g d b) | g4 g-- (g--) | fis8 (g a b) c4 |
  <d, c'> <d c'>-- (<d c'>--) | <d b'>8-. g,-. b-. d-. g-. a-. |
  b-. c-. d-. b-. g-. b-. | c4-. c,-. r | c-.\downbow a-. (c-.) |
  b8-. a-. g-. a-. b-. d-. | c-. e-. a, e'-. c-. d-. | b4 <b d>\p <b d> |
  <b d> <b d> <b d> | \repeat unfold 2 { <c d> <c d> <c d> } |
  <b d>-. g-. g''-.\downbow | g\< \( (fis) g-. \) | a (fis) d-. |
  \repeat tremolo 6 { <a fis'>8 \f } | <b g'>4 r r |
  \repeat tremolo 6 { <fis a>8 \p } | g4-.\< b-. d-. |
  g-. <g, b,>\f <g b,> | <g b,> r r \bar "|."
}

violinIIduoIImovementI = \new Voice \relative g {
  \violinVoiceSettings

  \repeat volta 2 {
    <g d'>\f\downbow <g d'> <g d'> | <b d>2 (<g d'>4) |
    %% 3
    <b d> <b d> <b d> | <a d>2. | <c d>4 <c d> <c d> |
    %% 6
    <b d>2 (<g d'>4) | <a d> <a d> <g d'> | d'2.-> |
    %% 9
    b'4 b b | d8 (e fis g d b) | g4 g g | fis8 (g a b c4 ) |
    %% 13
    <d, c'> <d c'> <d c'> | <d b'>2. | cis'8-. a-. e-. cis-. a-. cis-. |
    %% 16
    d-.-4 a-. d-.\open fis-. a-. d-. | g,4 b8 (a g fis) | e (d cis b a cis) |
    %% 19
    d4 fis8-. a-.-4 g-. a-. | fis4 r d-4\p | d (cis) d-.\open | e (cis) a-. |
    %% 23
    cis8-. e-. a-.\open cis-. e-.-4 cis-. | d4-. d,-. <a fis'>\upbow |
    %% 25
    <a fis'> <a fis'> <a fis'> | <a g'> <a g'> <a g'> |
    %% 27
    <a g'>\< <a g'> <a g'> | <a fis'>\f d'-. r
  }
  %% 29
  R2. | g,4\f\downbow g g | fis8 (g a-4 fis e d) | f4 f f | e-. c-. a-. |
  %% 34
  b8-. c-. d-. e-. fis-. g-. | a4-.-4 fis-. d-. | g b8-. g-. e4-. |
  %% 37
  g8-. e-. c4-. e8-. c-. | a b c4 cis | d4.\open fis8-. a-.-4 fis-. |
  %% 40
  d4. g8-. bes-. g-. | d4. a'8-. c-. a-. | <d, c'>4 r2 |
  %% 43
  r8 d\upbow (e fis g a) | b4 b b | d8 (e fis g d b) | g4 g g |
  %% 47
  fis8 (g a b c4) | a' g8 (fis e d) | g4 (d) b-. | c-. c-. b-. |
  %% 51
  <g b>2-> (<fis a>4) | <g, d'> <g d'> <g d'> |
  %% 53
  <b d>2 (<g d'>4) | <b d> <b d> <b d> | <a d>2. |
  %% 56
  fis'8-. g-. a-.-4 fis-. d-. fis-. | g4-. g,-. r |
  %% 58
  <g f'> <g f'>-. (<g f'>-.) | <g e'>8-. c-. e-. g-. c-. d-. |
  %% 60
  e-.-4 d-. c-. b-. a4 | d-. b-. g-. | a (c) fis,-. | g-. r g-.\p |
  %% 64
  g (fis) g-. | a-4 (fis) d-. | fis8-. a-. d-. fis-. a-. fis-. |
  %% 67
  g4-. g,-. (<d b'>-.) | <d b'>\< <d b'> <d b'> | <d c'> <d c'> <d c'> |
  %% 70
  \repeat tremolo 6 {<d c'>8 \f} | <d b'>4 r r |
  \repeat tremolo 6 {<c d>8 \p\downbow} |
  <b d>4-.\< <g d'>-. <b d> | <b d>-. <g d'>\f <g d'> |
  <g d'> r r \bar "|."
}

titleduoIImovementII = ##f

globalduoIImovementII = {
  \time 2/4
  \tempo "Allegretto" 4 = 108
  \key g \major
}

violinIduoIImovementII = \new Voice \relative g' {
  \violinVoiceSettings

  <g b>8\f\downbow <g b> <g b>4 | <g b>8 <g b> <g b>4 |
  %% 3
  \repeat unfold 2 { <e c'>8 <e c'> <e c'>4 } |
  %% 5
  <fis b>8\p <fis b> <fis b> <fis b> | <g b>4 e |
  c8\< (b) a-. c-. | b2\> | <b g'>8\p <b g'> <b g'> <b g'> |
  <d a'>4 <d a'> | <d a'>8 <d a'> <d a'> <d a'> | <e c'>4 <e c'> |
  <c' e>8\< <c e> <c e> <c e> | <b e>4 <b g'> |
  <g b>8\p <g b> <a b> <a b> | <g b>4 <b, g'> |
  <b g'>8\< <b g'> <b fis'> <b fis'>\! |
  <b g'>4 <g e'>8-.\> (<g e'>-.) | <a e'>4 <a e'>\! |
  <g e'>2\fermata \bar "|."
}

violinIIduoIImovementII = \new Voice \relative g' {
  \violinVoiceSettings

  e8-.\downbow e-. e4 | e'8-.-4 e-. e4 | a,,8-. a-. a4 | a'8-.-4 a a4 |
  dis,8-.\p dis-. dis-. dis-. | e4-. e'-.-4 | e,8\< (g) fis-. e-. |
  dis2\> | e8\p e e e | fis4 fis | f8 f f f | a4-4 a, |
  a'8-4\< a a a | g4 e | e8-.\p b-. fis'-. b,-. | e4 e |
  e8-.\< e-. dis-. dis-.\! | e4 b8--\> (b--) | c4 c\! |
  b2\fermata \bar "|."
}

titleduoIImovementIII = ##f

globalduoIImovementIII = {
  \time 3/8
  \tempo "Andantino" 8 = 119
  \key g \major
}

violinIduoIImovementIII = \new Voice \relative g' {
  \violinVoiceSettings

  b8-.\f\downbow d-. g-. | d4 (b8) | d-. c-. a-. | fis4 r8 |
  %% 5
  c'8-. fis-. a-. | fis4 (c8) | e8-.-4 d-. b-. | g4 r8 |
  %% 9
  b8-. d-. g-. | fis4-> (c8) | b8-. d-. g-. | fis4-> (c8) |
  %% 13
  b8-. g-. b-. | d-. c-. b-. | <d, a'> <d a'> <d a'> | <d a'>4 r8 |
  %% 17
  g,8-. b-. d-.-4 | g,-. b-. d-. | \repeat unfold 2 { a-. c-. d-. } |
  %% 21
  a-. d-.\open fis-. | a,-. d-. fis-. | \repeat unfold 2 { b,-. d-. g-. } |
  %% 25
  g,-. r r | b-.\upbow d-. g-. | b-. a-. g-. | g-. fis-. e-. |
  %% 29
  fis-. d-. a'-.-4 | fis-. d-. a-. | <a fis'> <a g'> <a fis'> |
  %% 32
  d\> d d | a'-.\open\p d,-. d-. | b'-. d,-. d-. | c'-. d,-. e'-.-4 |
  %% 36
  d-. d,-. b'-. | a-. d,-. d-. | b'-. d,-. d-. | cis'-. d,-. e'-.-4 |
  %% 40
  d4 r8 | fis,4.\downbow | g | a4\open (c8) | b4 (g8) | fis4. | g |
  %% 47
  e4 (g8) | fis4 (d'8) | cis8-. d,-. e'-.-4 | d-. a'-. fis-. | d4 r8 |
  %% 52
  r c-.\upbow a-. | fis4 r8 | r8 d-.\upbow a'-. | c-. d,-. a'-. |
  %% 56
  c-. a-. fis-. | d-.\< c-. a-. | g-.\f b-. d-.-4 | g,-. b-. d-. |
  %% 60
  \repeat unfold 2 { a-. c-. d-. } | a-. d-.\open fis-. | a,-. d-. fis-. |
  %% 64
  \repeat unfold 2 { b,-. d-. g-. } | g,-. b-. d-.-4 | a-. c-. d-. |
  %% 68
  g,-. b-. d-. | a-. c-. d-. | g,4 r8 | g8-.\upbow b-. d-.\open |
  %% 72
  b-. d-. g-. | <d b'> <d c'> <d a'> | <d d'>4 r8 |
  %% 75
  b''8-.\p\upbow g-. d-. | g-. d-. b-. | g4. |
  %% 78
  <fis a>8 <fis b> <fis a> | g4 r8 | <b g'>8\f\upbow <b g'> <b g'> |
  %% 81
  <b g'>4 r8 | <b, g'>4 r8 | <b g'>4.\fermata \bar "|."
}

violinIIduoIImovementIII = \new Voice \relative g {
  \violinVoiceSettings

  g8-.\f\downbow b-. d-.-4 |
  %% 2
  g,_\markup {\italic "sempre staccato."} b d |
  %% 3
  \repeat unfold 2 { a c d } | a d\open fis | a, d fis |
  %% 7
  \repeat unfold 2 { b, d g } | g, b d-4 | a c d | g, b d | a c d |
  %% 13
  g, b d | b d\open g | fis fis fis | fis4 r8 | b8 d g | d4 (b8) |
  %% 19
  d8 c a | fis4 r8 | c' fis a | fis4 (c8) | e-4 d b | g4 r8 |
  %% 25
  b d g | b a g | g fis e | e-4 d cis | d a' fis | d a fis | d e cis |
  %% 32
  d4-4 r8 | fis4. | g | a4\open (c8) | b4 (g8) | fis4. | g | e4 (g8) |
  %% 40
  fis d d | a' d, d | b' d, d | c' d, e'-4 | d d, b' | a d, d |
  %% 46
  b' d, d | cis' d, e'-4 | d d, fis | e4 (g8) | fis4 r8 |
  %% 51
  r a-4\upbow fis | d4 r8 | r c\upbow a | fis'4 r8 | <fis a>4 r8 |
  %% 56
  <d a'>4 r8 | r d\<\downbow d | b'\f d g | d4 (b8) | d c a | fis4 r8 |
  %% 62
  c' fis a | fis4 (c8) | e-4 d b | g4 r8 |
  %% 66
  \repeat unfold 2 { b d g | fis4-> (c8) } | b d g | b g d | g d b |
  %% 73
  g a-4 fis | b4 r8 | g,\p\downbow b d | b d g | b,4. |
  %% 78
  <c d>8 <c d> <c d> | <b d>4 r8 | <g d'>\f\upbow <g d'> <g d'> |
  \repeat unfold 2 { <g d'>4 r8 } | <g d'>4.\fermata \bar "|."
}

%%% ------------ Duo III ------------

titleduoIIImovementI = #f

globalduoIIImovementI = {
  \time  4/4
  \tempo "Allegro" 4 = 140
  \key d \major
}

violinIduoIIImovementI = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    fis4-.\f\downbow a-.\open d-. fis-. | a4.-> (a,8) a2 |
    %% 3
    fis8 (g a b) a (b cis d) | cis (d e fis) g4-. r |
    %% 5
    cis,,-. e-. a-. cis-. | e4.---4 (e,8-.) e2 | cis4-. a-. e'-. a,-. |
    %% 8
    d8 (e fis g) fis4-. r | fis-. a-. d-. fis-. | fis4.-> (e8) e2 |
    %% 11
    e,4-. gis-. b-. d-. | d4.-> (cis8-.) cis2 | b4-. fis'-. d-. b-. |
    %% 14
    gis2 a-4 | fis4 d'-. cis8 (b a gis) | a4-.\p\upbow cis-. e-.\open a-. |
    %% 17
    e2-4 cis4 a | d-. d-. d-. b-. | gis-. gis-. gis-. b-. |
    %% 20
    a8-. e'-.-4 cis-. e-. cis-. e-. cis-. e-. |
    %% 21
    \repeat unfold 2 { cis e cis e } |
    %% 22
    b-. e-. b-. e-. b-. e-. d-. e-. |
    %% 23
    \repeat unfold 2 { d e d e } |
    %% 24
    cis-.\f e-.\open a-. e-. fis4-. d-. | cis8-. e-. a-. e-. fis4-. d-.
    %% 26
    cis-. e-. a-. e | e4.-- (d8-.) cis2 | cis4. (b8-.) a2 |
    %% 29
    fis4-. d'-. cis8 (b a gis) | a2.-4 r4
  }
  %% 31
  cis-.\downbow a-. e-. cis-. | cis4. (a8-.) a2 | e''4-.-4 cis-. g-. e-.
  %% 34
  e4.-- (cis8-.) cis2 | d4-.-4\p a-. fis'-. a,-. |
  %% 36
  g'-. a,-. cis-. e8 (g) | fis8 (g a\open b) a (b cis d) |
  %% 38
  e-4 (d cis b) a4-.-4 (g-.) | fis8\< (g a\open b) c4-. (c-.) |
  %% 40
  b8-.\! d-. g-. fis-. e4->-4 cis8-. b-. |
  %% 41
  a-.\upbow cis-. fis-. e-. d4-> b8-. a-. |
  %% 42
  g8-. b-. e-.-4 d-. cis4-> a8-. (g-.) | fis4-. a-.\open d-. fis-. |
  %% 44
  a4. (a,8-.) a2 | a4.---4\p (fis8-.) fis2 | b4-.\< g-. e-. cis'-. |
  %% 47
  d-. b-. g-. e'-. | fis-. d-. b-. e-.-4 | cis-.\f e-. b-. e-. |
  %% 50
  cis-. e8-. e-. b4-. e8-. e-. |
  %% 51
  cis-. b-. a-. gis-. a-.-4 gis-. a-.\open b-. |
  %% 52
  cis-. b-. a-. g-. fis-. e-. d-. cis-. | d4-. fis-. a-. d-. |
  %% 54
  fis4.-- (fis,8-.) fis2 | d4-. a-. fis'-. a, |
  %% 56
  g'8 (fis e d) cis4-. r | e-. a-.\open cis-. e-. | g4.-- (g,8-.) g2 |
  %% 59
  e'8-4 (d cis b) cis (b a g) | fis (g a b) a4 r |
  %% 61
  fis-. a-.\open d-. fis-. | fis4.-> (e8-.) e2 | d,4-. fis-. b-. d-. |
  %% 64
  d4.-> (cis8-.) cis2 | b,4-. d-. g-. b-. | a-. g'-. fis-. d-. |
  %% 67
  b-. e-.-4 d8 (cis b a) | d4-.\p (<d fis>-.) <d fis> <d fis> |
  %% 69
  <d fis> <d fis> <d fis> <d fis> | <a e'> <a e'> <a e'> <a e'> |
  %% 71
  <a g'> <a g'> <a g'> <a g'> | <a fis> a-. d-. fis-. | a2 fis4-. (d-.) |
  %% 74
  g-. g-. g-. e-. | cis-. cis-. cis-. e-.-4 | d-. fis,-.\f a-. d-. |
  %% 77
  fis4.-- (e8-.) d2 | a4.--\p (g8-.) fis2 |
  %% 79
  b4-.\< (g'-.) fis8 (e d cis) | d4-.\f d,-. <d d'>-. r \bar "|."
}

violinIIduoIIImovementI = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    d4-.\f\downbow fis-. a-. d-. | fis4. (fis,8-.) fis2 |
    %% 3
    d4-. a-. fis'-. a,-. | g'8 (fis e d) cis4 r | e-. a-.\open cis-. e-. |
    %% 6
    g4.-- (g,8-.) g2 | e'8-4 (d cis b) cis (b a g) | fis (g a b) a4 r |
    %% 9
    d,-. a'-.-4 fis-. d-. | cis-. e-. a-.\open cis-. | cis4.->-- (b8-.) b2 |
    %% 12
    a,4-. cis-. e-. a-.-4 | d,1 ( | b4) e-. cis-. a-. | d-.-4 b-. e-. e-. |
    %% 16
    cis8-.\p e-. cis-. e-. cis-. e-. cis-. e-. |
    %% 17
    cis e cis e cis e cis e | b e b e b e b e | d-4 e d e d e d e |
    %% 20
    cis4-. e-. e-. a-.-4 | e2 (cis4) a-. | d-. d-. d-. b-. |
    %% 23
    gis-. gis-. gis-. b | a-.\f cis-. d8-. a'-.-4 fis-. d-. |
    %% 25
    a4-. cis-. d8-. a'-. fis-. d-. | a4-. cis-. d-. a'-.\open |
    %% 27
    cis4.-- (b8-.) a2 | e4. (d8-.) cis2 | d4-.-4 b-. e-. e-. |
    %% 30
    a,8 cis-. e-. cis-. a4 r
  }
  %% 31
  e''-.-4 cis-. a-. e-. | e4.-- (cis8-.) cis2 | g''4-. e-. cis-. g-. |
  %% 34
  g4.-- (e8-.) e2 | fis8 (g a b) a (b cis d) |
  %% 36
  e-4 (d cis b) a4-4 (g8 e) | d4-.-4 a-. fis'-. a,-. |
  %% 38
  g'-. a,-. cis-. e-. | d2\open\< e8 (g) fis a-4 |
  %% 40
  g4->\f\upbow e8-. d-. cis-. e-. a-.-4 g-. |
  %% 41
  fis4-> d8-. cis-. b-. d-. g-. fis-. |
  %% 42
  e4-> cis8-. b-. a-. cis-. fis-. e-. | d4-. fis-. a-. d-. |
  %% 44
  fis4.-- (fis,8-.) fis2 | fis4.--\p (d8-.) d2 |
  %% 46
  g,4-.\< b-. cis-. a-. | b-. d-. e-. cis-. | d-. fis-. gis-. e-. |
  %% 49
  a-.-4\f e-. gis-. e-. | a-. e8-. e-. gis4-. e8-. e-. |
  %% 51
  a8-.-4 gis-. a-.\open b-. cis-. b-. cis-. d-. |
  %% 52
  e8-.-4 d-. cis-. b-. a-.\open g-. fis-. e-. | fis4-. a-. d-. fis-. |
  %% 54
  a4.-- (a,8-.) a2 | fis8 (g a b) a (b cis d) | cis (d e fis) g4-. r |
  %% 57
  cis,,4-. e-. a-. cis-. | e4.---4 (e,8-.) e2 | cis4-. a-. e'-. a,-. |
  %% 60
  d8 (e fis g) fis4-. r | d4-. a'-.-4 fis-. d | cis-. e-. a-.\open cis-. |
  %% 63
  cis4.->-- (b8-.) b2 | a,4-. cis-. fis-. a-.-4 | a4.->-- (g8-.) g2 |
  %% 66
  fis4-. e-. d-. fis-. | g-. e-. a-.-4 g-. | fis-.\p a,-. d-. fis-. |
  %% 69
  a2-4 fis4-. (d-.) | g-. g-. g-. e-. | cis-. cis-. cis-. e-. |
  %% 72
  d8-. a'-.-4 fis-. a-. d, a' fis a | d, a' fis a d, a' fis a |
  %% 74
  \repeat unfold 4 {e8 a g a} | fis4\f d fis a | d4.-- (a8) fis2 |
  %% 78
  fis4.-- (e8-.) d2 | g4-.\< e-. a-.-4 a,-. |
  %% 80
  d8-.\! fis-. a-.-4 fis-. d4-. r \bar "|."
}

titleduoIIImovementII = ##f

globalduoIIImovementII = {
  \time 6/8
  \tempo "Allegretto" 4 = 120
  \key d \major
}

violinIduoIIImovementII = \new Voice \relative d'' {
  \violinVoiceSettings

  %% 1
  d8-.\p\downbow b-. fis-. g \( (fis) fis-. \) |
  %% 2
  fis-. ais-.-4 cis-. fis4-. r8 |
  %% 3
  e8-.-4 cis-. fis,-. g \( (fis) fis-. \) |
  %% 4
  fis-. b-. d-. fis4-. r8 | d8-.\f e-.\open fis-. g4. |
  %% 6
  cis,8-. d-. e-. fis4. | b,8-. cis-. d-. g,-. a-. b-. |
  %% 8
  e,-.\> fis-. g-. fis-. e-. cis-. | b8-.\p r4 d4---4 (b8-.) |
  %% 10
  c4. a8-. c-. fis-. | a8-.-4 r4 c,4-- (a8-.) | b4. g8-. b-. d-. |
  %% 13
  g4. e8-. a-.-4 g-. | fis4. d8-. g-. fis-. | e4. cis8-. e-. g-. |
  %% 16
  fis-.\< a-. d-. fis-. e-. d-. | cis-.\f d-. g-. b-. a-. g-. |
  %% 18
  fis-. g-. a-. e4.-4 | e8-.\open fis-. g-. d4. |
  d8-. e-. fis-. e-. d-. cis-. | b4.\> ais-1 |
  b-1\!_\dolce fis' |
  g8-. fis-. e-. e-.-4 d-. cis-. | b4. fis' |
  g8-. fis-. e-. e-.-4 d-. cis-. | b-. d-. fis-. b4-- (fis8-.) |
  b,4 r2 \bar "|."
}

violinIIduoIIImovementII = \new Voice \relative d' {
  \violinVoiceSettings

  b8\p\downbow r4 d4---4 (b8-.) | ais4. ais8-. cis-. fis-. |
  %% 3
  fis8 r4 e4-- (cis8-.) | d4.-4 b8-.\< d-.\open fis-. |
  %% 5
  b4.\f e,8-. fis-. g-. | a4.-4 d,8-. e-. fis-. |
  %% 7
  g4-- (fis8-.) e4-- (d8-.) | cis4--\> (b8-.) ais-. cis-. fis-. |
  %% 9
  d'-.\p b-. fis-. g \( (fis) fis-. \) | fis-. a-. e'-.-4 d4 r8 |
  %% 11
  c8-. a-. d, e \( (d) d-. \) | g-. b-. e-.-4 d4 r8 |
  %% 13
  b8-. e-.-4 d-. cis4. | a8-. d-. cis-. b4. |
  %% 15
  g8-. cis-. b-. a-.-4 g-. e-. | d4. b8-.\< e-. gis-. |
  %% 17
  a4.-4\f e8-. a-.\open cis-. | d4. cis8-. b-. a-. | c4. b8-. a-. g-. |
  %% 20
  fis4. g8-. fis-. e-. | d-.\> e-. fis-. e-. d-. cis-. |
  <b d>\!_\dolce <b d> <b d> \repeat tremolo 3 {<b d>8} |
  \repeat unfold 2 {\repeat tremolo 3 {<b e>8}} |
  \repeat unfold 2 {\repeat tremolo 3 {<b d>8}} |
  \repeat unfold 2 {\repeat tremolo 3 {<b e>8}} |
  <b d>4 r8 b8-. d-. fis-. | b4 r2 \bar "|."
}

titleduoIIImovementIII = ##f

globalduoIIImovementIII = {
  \time 2/4
  \tempo "Allego" 4 = 140
  \key d \major
}

violinIduoIIImovementIII = \new Voice \relative a' {
  \violinVoiceSettings

  a8-.\f\downbow d-. d-. d-. |
  %% 2
  b_\markup\whiteout{
    \override #'(style . outline)
    \override #'(thickness . 3)
    \italic "sempre staccato."} e-4 e e | cis e\open a g |
  %% 4
  fis d b cis | a d d d | a e'-4 e e | cis a' b, gis' |
  %% 8
  a e\open cis a | a' c, c c | b d e fis | g b, b b | a cis d  e|
  %% 13
  fis a, a a | g b cis d | e-4 g, g g | g4\< (fis) |
  %% 17
  gis8-.\upbow b\downbow (e\open) gis-. | a4\f <cis, e> |
  %% 19
  <d e> <d e> | <cis e> <cis a'>8\downbow <cis a'> |
  %% 21
  <b a'> <b a'> <b gis'> <b gis'> | <a a'> r4. |
  %% 23
  e8\downbow a-4 a a | g4-> g-> | fis8 b b b | g4-> g-> |
  %% 27
  e8 a-4 a a | fis4-> fis-> | e8 a-4 d, a'-4 | cis,4-> a-> |
  %% 31
  a  a'8-.-4 (a-.) | \repeat unfold 2 { a4-. a8-. (a-.) } |
  %% 34
  a8-.\open d-. d-. d-. |
  %% 35
  b_\markup\whiteout{
    \override #'(style . outline)
    \override #'(thickness . 3)
    \italic "sempre staccato."} e\open e e |
  %% 36
  cis e\open a g | fis d b cis | a d d d | b e-4 e e |
  %% 40
  cis a' b, gis' | a e\open cis a | d,\p fis g a-4 | g fis  e d |
  %% 44
  cis e fis g | fis\< e d cis | d4\f <fis a>8-. (<fis a>-.) |
  %% 47
  <g a>4 <g a> | <fis a>8 a-4 fis d | cis e a, cis |
  %% 50
  d4-4 b8-. (b-.) | g g b b | d\open\p fis a\open d |
  %% 53
  fis <a, a'> <a a'> <a a'> | <a a'>4 <a g'>8-. (<a g'>-.) |
  %% 55
  <a fis'>4 <a e'>8-. (<a e'>-.) | <a a'>4 <a g'>8-. (<a g'>-.) |
  %% 57
  <a fis'>4 <a e'>8-. (<a e'>-.) | <a a'>4 <a a'>8-. (<a a'>-.) |
  %% 59
  <a fis'>4\< d8-. d,-. | d' d, <d a'> <d b'> | <d a'>4\! r |
  %% 62
  a'8\p\downbow  d d d | b e-4 e e | cis\f e-4 a, cis |
  %% 65
  d4 r \bar "|."
}

violinIIduoIIImovementIII = \new Voice \relative d' {
  \violinVoiceSettings

  fis8-.\f\downbow d-. e-. fis-. |
  %% 2
  g_\markup{\italic "sempre staccato."} e fis g | a-4 g fis e |
  %% 4
  d fis g e | fis d e fis | g e fis gis | a-4 fis d e |
  %% 8
  a, cis e a-4 | d,\p fis g a-4 | g fis e d | cis e fis g |
  %% 12
  fis e d cis | b d e fis | e d cis b | cis4 a | a8\< d-4 d d |
  %% 17
  d4 b | a8\f cis e a-4 | gis b e, gis | a4-4 (fis8) fis-. |
  %% 21
  d d e e | a, a'\open a a | c4-> c-> | b8 e-4 e e | dis4-> dis-> |
  %% 26
  e8\open b' b b | cis,4-> cis-> | d8 a' a a | g4-> fis-> | e8-4 a, d a |
  %% 31
  cis a, b cis | d-4 b cis d | e cis d\open e | fis-. d-. e-. fis-. |
  %% 35
  g_\markup{\italic "sempre staccato."} e fis g | a-4 g fis e |
  %% 37
  d fis g e | fis d e  fis | g e fis gis | a-4 fis d e |
  %% 41
  a, cis e a\open | a'\p c, c c | b d e\open fis | g b, b b |
  %% 45
  a\< cis d e\open | fis\f a fis d | cis e-4 a, cis |
  %% 48
  d4 <a fis'>8 <a fis'> | <a g'>4 <a g'> |
  %% 50
  <a fis'> <d fis>8-. <d fis>-. | <d e> <d e> <cis e> <cis e> |
  %% 52
  d4 r | R2 | fis,8\p\downbow d' e, cis' | d, d' cis g |
  %% 56
  fis d' e, cis' | d, d' cis a | d d, d' d, |
  %% 59
  d'\< d, <fis a> <fis a> | <fis a>4 fis8 g | fis4\! r |
  %% 62
  fis8\downbow d e fis | g e fis g | a-4\f g fis e | d4 r \bar "|."
}

%%% --- Output ---

\include "../composer.ily"

\header {
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 178"
  source = "http://imslp.org/"
  title = "Three Easy Duos."
}

\include "paper.ily"

#(define fileBaseName "Johann_Wenzel_Kalliwoda-opus_178")

define(`AllDuetts', `(I, II, III)')
define(`Movements', `(I, II, III)')
define(`AllViolins', `(I, II)')

include(`output-duos.ily')
