%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2016 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\version "2.18.2"

\include "lily-snippets.ily"

titleduoImovementI = ##f

globalduoImovementI = {
  \time 4/4
  \tempo "Allegro maëstoso." 4 = 132
  \key c \major
}

violinIduoImovementI = \new Voice \relative c'' {
  \violinVoiceSettings
  
  \repeat volta 2 {
    c2\f\downbow g | e2. c4-- | e4-- g-- c-- e---0 | g4. (f8) e4---0 r |
    %% 5
    f2 e-0 | a,2. b4-- | c-- d-- e---0 g8 (f) | e2-4\> (d4\!) r |
    %% 9
    c,2\f g | c2. g4 | c e g c | b g c r | a-0\downbow b c cis |
    %% 14
    d b c c, | a f' e d-0 | c \breathe e'-4\p e e-0 | g2. f4 | e-0 c c c |
    %% 19
    e2.-4 d4 | c2 b | a2.-0 b4 | c d e-0 a | g2 (fis4) r |
    %% 24
    r2 r4 d,4-0\f\upbow | g2 b | c a-0 | fis\> c | b4\p (d-0) b4 (d-0) |
    %% 29
    c-. e-. c-. a-. | g (b) d-0 (fis) | a-4\> (fis) g-.\! r |
    %% 32
    g'2\downbow b4 (g) | e-.-0 g-. e-. c-. | b (d) c (a-0) |
    %% 35
    g-. b8-- c-- d2~ | d4 a8-0--\cresc b--\! c2 ( | b4) b8-- c-- d4-. (g-.) |
    %% 38
    e-.-0\f c-. a-.-0 fis-. | g-. r r g-.\p\upbow |
    %% 40
    fis-. r r fis-.\upbow | g-. g8--\cresc a-4--\! b4-. (b,-.) |
    %% 42
    c2 d-4 | g, d'-4\f | b2. r4
  }
  %% 45
  g''2\f\downbow d | b2. g4-- | b-- d-- g-- b-- | b4. (a8) g4-- r |
  %% 49
  a2 fis | c2. a4-0-- | c-- fis-- a-- c-- | c4. (b8-4) a4-- r | b2 g |
  %% 54
  fis2. g8 (a) | g2 e-4 | dis2. e8-0 (fis) | e2.-0 e4-. |
  %% 58
  f4\pDolce (a g) f-. | e-0 (c'-4) g2-2 |
  %% 60
  f4 (a g) f-. | e-0-. g-. a-. g-. | g (f) f (e-0) | d (g) fis2 |
  %% 64
  g2 fis | g2. fis4-. | f-.\cresc d--\! b-- g-- | c2\f g | e2. c4-- |
  %% 69
  e-- g-- c-- e-0-- | g4. (f8) e4-0-- r | f2 e-0 | a,2.-0 b4-- |
  %% 73
  c-- d-- e-0-- g8 (f) | e2-4\> (d4\!) r | c,2\f\downbow g | c2. g4 |
  %% 77
  c e g c | b g c r | a-0\downbow b c cis | d b c c, | a f' e d-0 |
  %% 82
  c r r c'-.\p\upbow | b-. r r b-.\upbow\cresc | c-. c8-- d-- e4-4-. (e,-.) |
  %% 85
  f2\f g | c4-. e8---0\p f-- g2~ |
  %% 87
  g4 d8-- e---4 f2 ( | e4-0\cresc) f-- g-- gis-- | a--\f r b,--\downbow r |
  %% 90
  c2\downbow \acciaccatura d8 c8 (b c d) | ees2 fis, | g1 |
  %% 93
  << {\slashedGrace c8 {b1->\trill_( }} {s2 s4. \grace {a16 b)}} >> |
  %% 94
  \repeat unfold 2 {c4-. g'2-> b,4-.} | c2 e-4-> | c-> r \bar "|."
}

violinIIduoImovementI = \new Voice \relative c' {
  \violinVoiceSettings

  \repeat volta 2 {
    c2\f\downbow g | c2. g4-- | c-- e-- g-- c-- | b-- g-- c-- r |
    %% 5
    a-0--\downbow b-- c-- c,-- | f-- a-4-- f-- d-0-- |
    %% 7
    e-- b'-- c-- e8-4 (d) | c2\> (b8\!) g (a-4 b) | c2\f g | e2. c4 |
    %% 11
    e g c e-0 | g4. (f8) e2-0 | a g | f e-0 | f4 a,8-0 (d) c4 b |
    %% 16
    c \breathe e,\p d-0 c | b g a b | c c' b a-0 | gis e fis gis |
    %% 20
    a-4 fis g g, | c e'-4 c gis | a-4 b c cis | d d,-0 d' \breathe d\f |
    %% 24
    g2 d | b g | fis4 g a-0 b | c\> d e-0 fis |
    %% 28
    g2\pDolce b4 (g) | e-.-0 g-. e-.-0 c-. |
    %% 30
    b (d) a-0 (d) | c2\> (b4\!) d,-.-0 | b (d-0) b (d-0) |
    %% 33
    c-. e-. c-. a-. | d2-0 fis | g r4 g-.\upbow |
    %% 36
    fis-.\cresc r\! r fis-.\upbow | g-. g8-- a-4-- b4-. (b,-.) | c2\f d-4 |
    %% 39
    g,4-. b'8--\p c-- d2~ | d4 a8-0-- b-- c2 ( |
    %% 41
    b4) b8--\cresc c--\! d4-. (g-.) | e-.-0 c-. a-.-0 fis-. | g2 b\f | g2. r4 
  }
  %% 45
  g2\f\downbow d-0 | b2. b4-- | d-0-- g-- b-- d-- |
  %% 48
  << {\voiceOne d4. (c8)}
     \new Voice {\voiceTwo d,2} >> \oneVoice <d b'>4-- r |
  %% 49
  a'2-4 fis | c2. fis4-- | a-0-- c-- fis-- a-- | a4. (g8) fis4-- r |
  %% 53
  g,,2 b | d-0 dis-1 | e-1 g | b a-0 | g4-. b-. g-. e-. | d2-0\p b |
  %% 59
  c4-. g-. c-. e-. | d2-0 b | c4-. e-. f-. e-. | e (d-0) d-4 (c) |
  %% 63
  b (d-0) ees (c) | b (d-0) ees (c) | b-. g-. b-. d-.-0 | <g, f'>2 r |
  %% 67
  c2\f\downbow g | c2. g4-- | c-- e-- g-- c-- | b-- g-- c-- r |
  %% 71
  a---0\downbow b-- c-- c,-- | f-- a---4 f-- d---0 |
  %% 73
  e-- b'-- c-- e8-4 (d) | c2\> (b8\!) g (a-4 b) | c2\f g | e2. c4 |
  %% 77
  e g c e-0 | g4. (f8) e2-0 | a g | f e-0 | f4 a,8-0 (d) c4-. b-. |
  %% 82
  c-. e8---0\p f-- g2~ |
  %% 83
  g4 d8-- e---4 f2\cresc ( | e4-0) e8-- f-- g4-. (c-.-4) |
  %% 85
  a-.-3\f f-. d-. b-. | c-. r r c-.\p\upbow | b-. r r b,-.\upbow |
  %% 88
  c-.\cresc d---0 ees-- e-- | f--\f r <g, g'>\downbow r |
  <fis' a>2-0\downbow ees | c aes | g4-. c-. e-. g-. |
  f-. d-.-0 b-. g-. | c-. e-. g-. f-. | e-. c-. g-. <g f'>-. |
  <c e>2 g'-> | <c, e> r \bar "|."
}

titleduoImovementII = "Romance."

globalduoImovementII = {
  \time 4/4
  \tempo "Andante." 4 = 92
  \key f \major
}

violinIduoImovementII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 2 a4---0\upbow\pDolce (bes--) |
  %% 1
  c2 f4. (e8-0) | e4-4 (d) g,-- (a---4) |
  %% 3
  bes4\< (c16 bes a-0 bes\!) d4.-> (c8) | c8. (bes16 a4-0) a-- (b--) |
  %% 5
  c2 d8 (e-4 f g) | f4 (e-0) g--\< (c,--\!) | a'2-> c,8 (b a-0 b) |
  %% 8
  c2 \breathe f,4--\p (g--) | a---0 c-- a-- f-- | bes---4 bes,---2 e-- f-- |
  %% 11
  g bes-4 g-3 e | f f'-4 f,-2 d-0 | e (c) b g | c\upbow c' e,2 | f g |
  %% 16
  c, \breathe e'4---0_\dolce (f--) | g2 bes,4 (d8. c16) |
  %% 18
  bes4 (a-0) f'--\< (f--) | a2\> f8 (c) c (a-0\!) | g2 a4---0 bes-- |
  %% 21
  c2 f4.\fz (f8--) | ees4\> (d\!) b-- (c--) | d2 g4.\fz (g8--) |
  %% 24
  f4\> (e-0\!) e--\< (f--) | g2 bes8 (g f e-0\!) |
  %% 26
  g4-> (f) e8-4 (d c bes) | a4-0 (c) bes (g) | f2 \breathe c4--\p (d---4) |
  %% 29
  e-- f-- g-- e-- | g (f) a---4 (f--) | c-- a-- c-- f-- | e c f g |
  %% 33
  a-4 f g a-0 | c\> (bes\!) g-- (a-4--) | b g a-4 b |
  %% 36
  d\> (c\!) c,--\< (d---4) | e (g) c4. (bes8\!) | a2-0-> c8 (bes a g) |
  %% 39
  f4 (a-4) g-- (c,--) | a2 a'-0\fz\>\downbow ( |
  %% 41
  << {s8 s\!} {bes4)} >> c-- d-- e---0 |
  %% 42
  g (f) f (d) | c2 \acciaccatura c8 bes8 (a-0 bes c) |
  %% 44
  a4. r8 a2\fz\downbow\> ( | << {s8 s\!} {bes4)} >> c--\< d-- e---0\! |
  g4 (f) d-- (b--) |
  %% 47
  c2\> e,8 (f g e) | f4--\p a---0 c (e,) | f-- d'-- c (e,) |
  %% 50
  f1~ | f2 r \bar "|."
}

violinIIduoImovementII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 2 f4--\p\upbow (g--) |
  %% 1
  a---0 c-- a-- f-- | bes---4 bes,---2 e-- f-- |
  %% 3
  g bes-4 g-3 e | f f'-4 f,-2 d-0 | e c b g | c c' e,2 ( | f) g |
  %% 8
  c, \breathe a'4---0_\dolce (bes--) | c2 f4. (e8-0) |
  %% 10
  e4-4 (d) g,-- (a---4) | bes\<( c16 bes a-0 bes) d4.\> (c8\!) |
  %% 12
  c8. (bes16 a4-0) a4-- (b--) | c2 d8 (e-4 f g) |
  %% 14
  f4 (e-0) g--\< (c,--) | a'2\> c,8\! (b a b) | c2 \breathe c,4--\p (d---4) |
  %% 17
  e-- f-- g-- e-- | g (f) a---4 (f--) | c-- a-- c-- f-- |
  %% 20
  e c f g | a-4 f g a-0 | c\> (bes\!) g-- (a---4) | b-! g-! a-4-! b-! |
  %% 24
  d\> (c\!) c,--\< (d---4) | e (g) c4. (bes8\!) | a2->-0 c8 (bes a g) |
  %% 27
  f4 (a-4) g (c,) | a2 \breathe e''4---0 (f--) | g2 bes,4 (d8. c16) |
  %% 30
  bes4 (a-0) f'--\< (f--) | a2\> f8 (c) c (a-0\!) | g2 a4---0 bes-- |
  %% 33
  c2 f4.\fz (f8--) | ees4\> (d\!) b-- (c--) | d2 g4.\fz (g8--) |
  %% 36
  f4\> (e-0\!) e--\< (f--) | g2 bes8 (g f e) | g4\> (f\!) e8-4 (d c bes) |
  %% 39
  a4-0 (c) bes-- (g--) | f2 ees\downbow\fz\>( |
  %% 41
  << {s8 s\!} {d4-0)} >> c-- b-- bes-- | a2 bes | c e |
  %% 44
  f4. r8 ees2\fz\> ( | << {s8 s\!} {d4-0)} >> c--\< b-- bes--\! |
  %% 46
  a2 b4-- (d---4) | c2\> bes | a\p (bes) | a (bes) | a1~ | a2 r \bar "|."
}

titleduoImovementIII = "Rondo."

globalduoImovementIII = {
  \time 6/8
  \tempo "Allegretto." 8 = 132
  \key c \major
}

violinIduoImovementIII = \new Voice \relative g' {
  \violinVoiceSettings

  \partial 8 g8-.\f\upbow | g4. c8-. b-. c-. | cis4.\> (d4\!) g,8-. |
  %% 3
  g4. d'8-. c-. d-. | dis4.\> (e4-4\!) g,8-. | g4. c8-- e---0 g-- |
  %% 6
  g (f) f-- f (e-0) e-- | e-4 (d) d-- d (c) c-- |
  %% 8
  b4. \acciaccatura d8 c8-. b-. c-. | d-. d,-.-0 e-. f-. e-. d-. |
  %% 10
  \repeat unfold 3 {<g, e'>8-.} \repeat tremolo 3 {<g e'>8-.} |
  %% 11
  \repeat unfold 4 {\repeat tremolo 3 {<g f'>8-.}} |
  %% 13
  \repeat unfold 2 {\repeat tremolo 3 {<g g'>8-.}} |
  %% 14
  e'8-- g,-- c-- e-- f-- g-- | a4.-4 g | f e | f d-0 |
  %% 18
  << {\voiceOne f8 (g f) } \new Voice {\voiceTwo g,4.} >>
  \oneVoice <g e'>4 \breathe g'8-.\p\upbow |
  %% 19
  g4. e'8-.-4 d-. c-. | cis4. (d4) g,8-. | g4. d'8-. c-. b-. |
  %% 22
  d (c) c-- c (b) b-- | a4-0 (b8) c-. d-. e-.-4 |
  %% 24
  g,4.\> (fis4\!) \breathe d8-.-0_\dolce |
  %% 25
  b'4. \acciaccatura d8 c8-. b-. c-. | cis4.\> (d4\!) d,8-.-0 |
  %% 27
  a'4.-0 \acciaccatura c8 b8-. a-. b-. | b4.\> (c4\!) d,8---0\f |
  %% 29
  \repeat unfold 2 {d'8-- b-- g-- fis (e'-4 d)} |
  %% 31
  d-- e---0 fis-- g-- d-- b-- | a4-0 r8 r4. |
  %% 33
  g,8-.\p\downbow d'-.-0 d-. a-. d-.-0 d-. |
  %% 34
  \repeat unfold 2 {b-. d-. d-.} | fis-. d-. d-. g-. d-. d-. |
  %% 36
  gis-. d-. d-. a'-.-4 d,-. d-. |
  %% 37
  <b d>-.\f <b d>-. <b d>-. \repeat tremolo 3 {<c d>-.} |
  %% 38
  \repeat tremolo 3 {<b d>-.} \repeat tremolo 3 {<c d>-.} |
  %% 39
  <b d>-- g-- b-- c-- e-- c-- | d---0 g-- b-- d4 (c8-.) |
  %% 41
  b4\dim (cis8-.\!) d4 (b8-.) |
  %% 42
  c8-. a-.-0 g-. g-. g-. \breathe g-. | g4.\p c8-. b-. c-. |
  %% 44
  cis4.\> (d4\!) g,8-. | g4. d'8-. c-. d-. | dis4.\> (e4-4\!) g,8-. |
  %% 47
  g4. c8-. e-.-0 g-. | g (f) f-- f (e-0) e-- | e-4 (d) d-- d (c) c-- |
  %% 50
  b4. \acciaccatura d8 c8-. b-. c-. | d-. d,-.-0 e-. f-. e-. d-. |
  %% 52
  \repeat unfold 3 {<g, e'>8-.} \repeat tremolo 3 {<g e'>8-.} |
  %% 53
  \repeat unfold 4 {\repeat tremolo 3 {<g f'>-.}} |
  %% 55
  \repeat unfold 2 {\repeat tremolo 3 {<g g'>-.}} |
  %% 56
  e'-- g,-- c-- e-- f-- g-- | a4.-4 g | f e | f d-0 |
  %% 60
  << {\voiceOne f8 (g f)} \new Voice {\voiceTwo g,4.} >>
  \oneVoice <g e'>4 \breathe c'8-.\upbow |
  %% 61
  bes'4.\f\> g8-. e-. c-.\! | bes4. (a8-0) f' (e-0) |
  %% 63
  d-.\p a'-. g-. f-. d-. b-. | c4 r8 r4. |
  %% 65
  <g, e'>8-.\f\downbow <g e'>-.\> <g e'> \repeat tremolo 3 {<g e'>-.\!} |
  %% 66
  \repeat tremolo 3 {<g e'>-.} \repeat tremolo 3 {<a f'>-.} |
  %% 67
  <g f'>4.\p b8-. d-.-0 f-. | e4_\dolce (e'8-4) e-.-0 f-. e-. |
  %% 69
  e4-4 (d8) d-. e-. d-. |
  %% 70
  c4 (g8\dim) g-.\! a-.-4 g-. |
  g4 (f8) f-. g-. f-. | e4 (g8) b4 (g8) | c4 (g8) b4 (g8) |
  c4.~ c4 r8 | c4\f\downbow r8 e4-4\downbow r8 |
  c4.~\downbow c4 r8 \bar "|."
}

violinIIduoImovementIII = \new Voice \relative g {
  \violinVoiceSettings

  \partial 8 r8 |
  %% 1
  <g e'>8-.\f\downbow <g e'>-. <g e'>-. \repeat tremolo 3 {<g e'>-.} |
  %% 2
  \repeat unfold 4 {\repeat tremolo 3 {<g f'>-.}} |
  %% 4
  \repeat unfold 2 {\repeat tremolo 3 {<g g'>-.}} |
  %% 5
  e'-- e'---4 c-- g-- e-- c-- | a'4.-4 g | f e |
  %% 8
  d8-.-0 g-. f-. e-. d-. c-. | g-. g'-. g-. g-. g-. \breathe g-. |
  %% 10
  g4. c8-. b-. c-. | cis4.\> (d4\!) g,8-. | g4. d'8-. c-. d-. |
  %% 13
  dis4.\> (e4-4\!) g,8-. | g4. c8-- d-- e---4 |
  %% 15
  g (f) f-- f (e-0) e-- | e-4 (d) d-- d (c) c-- |
  %% 17
  cis (d) e---0 f-- d-- b-- | d4.\> (c4\!) r8 |
  %% 19
  c,8\p\downbow e-. g-. c,-. e-. g-. | b,-. d-.-0 g-. b,-. d-. g-. |
  %% 21
  b,-. d-. g-. b,-. a-. g-. | <a fis'>4. <g g'> | <c e> a |
  %% 24
  d8-. g-. b-. d4 r8 | g,,8-.\downbow d'-.-0 d-. a-. d-.-0 d-. |
  %% 26
  \repeat unfold 2 {b-. d-. d-. } | fis-. d-. d-. g-. d-. d-. |
  %% 28
  gis-. d-. d-. a'-.-4 d,-. d-. |
  %% 29
  <b d>8-.\f <b d>-. <b d>-. \repeat tremolo 3 {<c d>-.} |
  %% 30
  \repeat tremolo 3 {<b d>-.} \repeat tremolo 3 {<c d>-.} |
  %% 31
  <b d>-- c-- a-- b4 (g8) | d'8---4\> d---0 e-- fis-- g-- a---0 |
  %% 33
  b4.\pDolce \acciaccatura d8 c8-. b-. c-. | cis4.\> (d4\!) d,8-.-0 |
  %% 35
  a'4.-0 \acciaccatura c8 b8-. a-. b-. | b4.\> (c4\!) d,8---0\f |
  %% 37
  \repeat unfold 2 {d'8-- b-- g-- fis (e'-4 d)} |
  %% 39
  d-- b'-- g-- e---0 c-- a---0 | d4. fis, |
  %% 41
  g8\dim (a-4\!) e-- f (g) d---0 |
  %% 42
  e-. a-.-4 g-. f-. e-. d-.-0 |
  %% 43
  c-.\p <g e'>-. <g e'>-. \repeat tremolo 3 {<g e'>-.} |
  %% 44
  \repeat unfold 4 {\repeat tremolo 3 {<g f'>8-.}} |
  %% 46
  \repeat unfold 2 {\repeat tremolo 3 {<g g'>8-.}} |
  %% 47
  e'-- e'---4 c-- g-- e-- c-- | a'4.-4 g | f e |
  %% 50
  d8-.-0 g-. f-. e-. d-.-0 c-. | g-. g'-. g-. g-. g-. \breathe g-. |
  %% 52
  g4. c8-. b-. c-. | cis4.\> (d4\!) g,8-. | g4. d'8-. c-. d-. |
  %% 55
  dis4.\> (e4-4\!) g,8-. | g4. c8-- d-- e---4 |
  %% 57
  g (f) f-- f (e-0) e-- | e-4 (d) d-- d (c) c-- |
  %% 59
  cis (d) e---0 f-- d-- b-- | d4.\> (c4\!) r8 |
  %% 61
  <g, e'>8-.\downbow\f\> <g e'>-. <g e'>-. \repeat tremolo 3 {<g e'>-.\!} |
  %% 62
  \repeat tremolo 3 {<g e'>-.} \repeat tremolo 3 {<a f'>-.} |
  %% 63
  \repeat unfold 2 {\repeat tremolo 3 {<g g'>-.}} |
  %% 64
  <g e'>-. e''---0\< f-- fis-- g-- a-- | bes4.\f\> g8-. e-.-0 c-.\! |
  %% 66
  bes4. (a8-0) f' (e) | d-.\p a'-. g-. f-. d-. b-. |
  %% 68
  c4_\dolce (g8) g-. a-.-4 g-. | g4 (f8) f-. g-. f-. |
  e4 (e8-.\dim) e-.\! f-. e-. |
  e4 (d8-0) d-. e-. d-. |
  c4 (e8) << {\voiceOne f4. (e f)}
	     \new Voice {\voiceTwo g,4.~ g2.} >> \oneVoice |
  <g e'>4.~ <g e'>4 r8 | e'4\f\downbow r8 <g, g'>4\downbow r8 |
  <c e>4.~\downbow  <c e>4 r8 \bar "|."
}

%%% ------------ Duo II ------------

titleduoIImovementI = ##f

globalduoIImovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4 = 123
  \key g \major
}

violinIduoIImovementI = \new Voice \relative g' {
  \violinVoiceSettings

  \repeat volta 2 {
    b2\downbow\pDolce \acciaccatura d8 c8 (b c a-0) | d2. g,4 |
    %% 3
    fis a-0 c e-4 | d4. (c8) b4 r | g'2\downbow\> (fis4\!) b, |
    %% 6
    e2-4\> (d4\!) g, | fis4 a-0 c b | b2\> (a4-0\!) r |
    %% 9
    g,4\p\downbow d'-0 a d-0 | b d-0 g b | d fis, a-0 c | b fis g g, |
    %% 13
    e' cis (d-4) g | c ais-1 (b-1) b, | c a d-4 d-0 |
    %% 16
    g4.\f b8-- d-- g-- b-- a-- | g (fis) e---4 d-- d4. (c8) |
    %% 18
    b4-. e,-. g-. e-. | a-.-4 a,-. b-. cis-. |
    %% 20
    d4.-0 a'8---0 d-- fis-- b-- a-- | a (g) g (fis) fis (e-0) e-4 (d) |
    %% 22
    cis--\f e-0-- a-- g-- fis-- a-- fis-- d-- |
    %% 23
    cis-- e---0 a-- g-- fis-- a-- fis-- d-- | a4-0 r r2 |
    %% 25
    fis4-.\p\downbow d-.-0 e-. cis-. | d-.-4 b-. g-. g'-. |
    %% 27
    fis8-- a---4 fis-- d---0 e4-. a,-. |
    %% 28
    d8-.-0 \breathe a'---0\< b-- cis-- d-- e---4 fis-- g--\! |
    %% 29
    a2_\dolce g | fis g8 (b g e-0) | d2 cis8 (d e-4 cis) |
    %% 32
    d4 e8---0\< fis-- g2\> | fis8\! (d) b-- g-- fis (a-4) g-- e-- |
    %% 34
    d4-0 r a--\upbow\< b8-- cis-- | d4-4\f g,-. a-. a-. |
    %% 36
    d-.-0 fis-. d-.-0 r
  }
  %% 37
  a''2\f\downbow (fis4) d-- | a2.-0 a4-- | a'2 (g4) e-0-- |
  %% 40
  cis2. a4---0\p | fis'2_\dolce g8 (fis e-4 d) | cis2 (b4) b-- |
  %% 43
  g'2\cresc a8\! (g fis e-0) | d2 (cis4) a-0-- | a'2 gis | g fis |
  %% 47
  e4.-0 (fis8) g (b g e-0) | d (cis) b (a-0) a4-. \breathe a4-4\f |
  %% 49
  a2 (fis4) d-0-- | a8-. \repeat unfold 3 {<d a'>-. <fis a>-.} d-. |
  %% 51
  a'2-4 (g4) e-- |
  %% 52
  cis8-. \repeat unfold 2 {<e a>-. <g a>-.} <e a>-. <g a>-.\p e-. |
  %% 53
  <d a'>4-. d (e) fis-. | g-.\upbow g,-. g'-. fis-. |
  %% 55
  e-.\cresc e\! (fis) g-. | a-4-. a,-. a'-.-4\! r |
  %% 57
  r2 r4 d,---0\downbow\p | fis4. (g8) fis (g fis g) |
  %% 59
  fis4 (d8-0\<) e-- fis-- g-- a---0 b--\! |
  %% 60
  c (b) a---0 b-- c\> (e-4 d c\!) |
  %% 61
  b2_\dolce \acciaccatura d8 c8 (b c a-0) | d2. g,4 | fis a-0 c e-4 |
  %% 64
  d4. (c8) b4 r | g'2\>\downbow (fis4\!) b, | e2-4\> (d4\!) g, |
  %% 67
  fis a-0 c b | b2\> (a4-0\!) r | g,4\p\downbow d'-0 a d-0 | b d-0 g b |
  %% 71
  d fis, a-0 c | b fis g g, | R1 | a'2-4\downbow\> e4 (fis\!) |
  %% 75
  g (f) e (c) | b a8-- c-- d4---4 (d--) | g, r4 r2 |
  %% 78
  b'4-.\downbow\mf  gis-. a-.-4 fis-. | g-. e-. c-.\dim a-. |
  %% 80
  d-.-4\p b-. a-. fis'-. | g8--\< d-- e-- fis-- g-- a---4 b-- c-- |
  %% 82
  d2\mf c | b8--_\cresc a-0-- b-- c-- d-- e---4 fis-- g-- |
  %% 84
  a4\f r <d,, a' fis'>\downbow r |
  <b' g'>\downbow r d,-0\pDolce\upbow e8-- fis-- | g4 b (d c) |
  b a8-0-- b-- c2 | b8 (d) b-- g-- d4-0 (fis) | g r b\upbow\pp r |
  g2.\downbow r4 \bar "|."
}

violinIIduoIImovementI = \new Voice \relative g {
  \violinVoiceSettings

  \repeat volta 2 {
    g4\p\downbow d'-0 a d-0 | b d-0 g b | d fis, a-0 c | b fis g g, |
    %% 5
    e' cis (d-4) g | c ais-1 (b-1) b, | a2 fis'4-- (g--) |
    %% 8
    d-.-0 d'-. d,8-0 \breathe a'-0_\dolce (d c) |
    %% 9
    b2 \acciaccatura d8 c8 (b c a-0) | d2. g,4 | fis a-0 c e-4 |
    %% 12
    d4. (c8) b4 r | g'2\>\downbow (fis4\!) b, | e2-4\> (d4\!) g, |
    %% 15
    fis8 (e) c'-- a---0 g4 (fis) | <g, g'>-.\f g-. <b d>-. <g d'>-. |
    %% 17
    <a d>-. d-. e-. fis-. | g4. g8-- b-- e---0 g-- e-- |
    %% 19
    d (cis) b-- a---0 a4.-4 (g8) | fis4-. a-.-4 fis-. d-.-0 |
    %% 21
    b'-. a-.-0 g-. gis-. |
    %% 22
    a8-.-4\f \repeat unfold 3 {<a, e'>8-.} \repeat tremolo 4 {<a fis'>8-.} |
    %% 23
    \repeat tremolo 4 {<a e'>8-.} \repeat tremolo 4 {<a fis'>8-.} |
    %% 24
    <a e'>-. \breathe a'---0\dim b-- cis-- d-- e---4 fis-- g--\! |
    %% 25
    a2_\dolce g | fis e4-0 (fis8 g) | d2 cis8 (e-0 a g) | fis4 r r2 |
    %% 29
    fis,4-.\p\downbow d-.-0 e-. cis-. | d-.-4 fis-. g-. e-. |
    %% 31
    fis8 (a-4 fis d-0) a'4-.-0 (a,-.) |
    %% 32
    d-.-4 r a'-.-0\upbow\< b8-- cis-- | << {s16 s\! s8} d4-.>> g,-. a-.-4 a,-. |
    %% 34
    d'-. e8---0\<  fis-- g2\! | fis8\f (d) b-- g-- fis (a-4) g-- e-- |
    %% 36
    d4-.-0 d'-. d,-.-0 r
  }
  %% 37
  a'2-4\f\downbow (fis4) d---0 |
  %% 38
  a8-. \repeat unfold 3 {<d a'>-. <fis a>-.} d-. | a'2-4 (g4) e-- |
  %% 40
  cis8-. \repeat unfold 2 {<e a>-. <g a>-.} <e a>-. <g a>-.\p <e a>-. |
  %% 41
  <d a'>4-. d (e) fis-. | g-.\upbow g,-. g'-. fis-. |
  %% 43
  e-.\cresc e (fis) g-.\! | a-.-4 a,-. a'-. g-. | fis-. a-0 (b d) |
  %% 46
  cis (e-4 d) d,-.-0 | g-. dis-.-1 e-.-1 g-. |
  %% 48
  a-.-4 a,-. a'-.-4 \breathe a-0\f | a'2 (fis4) d-- | a2.-0 a4-- |
  %% 51
  a'2 (g4) e---0 | cis2. a4--\p | fis'2 g8 (fis) e---4 d-- |
  %% 54
  cis2 (b4) b-- | g'2\cresc a8 (g) fis-- e---0 | d2 (cis4) a---0\! |
  %% 57
  a'2\rf g8 (fis) e---4 d-- |
  %% 58
  c4.\p (b8) c (b c b) | c4 r r2 | R1 | g,4\p\downbow d'-0 a d-0 |
  %% 62
  b d-0 g b | d fis, a-0 c | b fis g g, | e' cis (d-4) g |
  %% 66
  c ais-1 (b-1) b, | a fis' a-4 g |
  %% 68
  d-.-0 d'-. d,8-. \breathe a'-0_\dolce (d c) |
  %% 69
  b2 \acciaccatura d8 c8 (b c a-0) | d2. g,4 | fis a-0 c e-4 |
  %% 72
  d4. (c8) b4 r | g'2\< fis4 (a) | c,2.\> c4--\! | b2 c4 (e-4) |
  %% 76
  d8 (b) c-- a---0 g4 (fis) | g8--\< d---0 e-- fis-- g-- a---4 b-- c-- |
  %% 78
  d2\mf c | b a8-0\dim (e'-4 c a-0) | g2\p fis8 (a-0 d c) | b4 r r2 |
  %% 82
  b4-.\mf\downbow gis-. a-.-4 fis-. |
  %% 83
  g8--\cresc fis-- g-- a---4 b-- c-- a---0 b-- |
  %% 84
  <c e-0>4\f r <d, c'>\downbow r |
  %% 85
  <g, d' b'>\downbow a'8---0_\dolce b-- c2 | b8 (d) b-- g-- d4-0 (fis) |
  %% 87
  g r d---0\upbow e8-- fis-- | g4 b (d c) | b r d,-0\pp\upbow r |
  %% 90
  b2.\downbow r4 \bar "|."
}

titleduoIImovementII = ##f

globalduoIImovementII = {
  \time 3/4
  \tempo "Tempo di Minuetto." 4 = 111
  \key d \major
}

violinIduoIImovementII = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    d4-0\f\downbow (fis) a---0 | d2 cis8 (d) | e4-4( a,-0) a-- |
    %% 4
    fis'2 d4-- | fis,4 (a-4) d-- | fis2 e8-0 (fis) | g4( e-0) cis-- |
    %% 8
    a'2 fis4-- | fis4 (gis) a-- | e2-0 fis8. (e16) |
    %% 11
    e4-4 (d) e8.-4 (d16) | d4( cis8[\dim) cis8( d8. cis16]) |
    %% 13
    cis4( b8[) b( cis8. b16]) | b4 (a-0\!) \breathe e'-.-4\fz |
    %% 15
    e,2\p fis8-- gis-- | a---0 b-- cis-- d-- e4---4 |
    %% 17
    fis8\> (d16\!) r d8\> \( (b16\!) r b8\> (gis16\!) \) r |
    %% 18
    gis8 (a-4 cis a-0) e4-- | d-.-0 b-. d-.-4 |
    %% 20
    cis8--\upbow gis'-- a---0 b-- cis4-- | d,-.-0 b-. e-. |
    %% 22
    a,-. a'8-4\f\> (fis16\!) r g8\> (e16\!) r
  }
  %% 23
  d4-0\f (fis) a---0 | c2 fis8-- g-- | a4 (c,) c-- | c2 (b4) |
  %% 27
  d,4-0 (g) b-- | d2 g8-- a-- | b4 (d,) d-- |
  %% 30
  d (cis) e8---0\downbow fis-- | g4-. g,-. g-. | g (fis) a8-0 (d) |
  %% 33
  a8-0 (b16 a) g4-. fis-. | e8--\dim fis-- g4-. fis-. |
  %% 35
  e8-- fis-- g4-. fis-. | e-. g'8\< (fis) e---0 d-- |
  %% 37
  cis-- b-- a---0 g-- fis-- e-- | d4---0\f fis-- a---0 |
  %% 39
  d2 cis8-- d-- | e4-4 (a,-0) a-- | fis'2 e8---0 fis-- |
  %% 42
  g4 \( (e) cis-- \) | a'2 b8. (a16) | a4 (g) a8. (g16) |
  %% 45
  g4( fis8[) fis\dim (g8. fis16]) | fis4 (e8-0[) e8 (fis8. e16-0]) |
  %% 47
  e4-4 (d\!) \breathe a'-.\fz | a,2-0\p b8-- cis-- |
  %% 49
  d-- e---4 fis-- g-- a4-- |
  %% 50
  b8\> (g16\!) r g8\> \( (e16-0\!) r e8-4\> (cis16\!) \) r |
  %% 51
  cis8 (d fis d) a4---0 | <a g'>4-.\f <a e'-0>-. <a g'>-. |
  %% 53
  <a fis'>8--\upbow cis-- d-- e---0 fis4-- |
  %% 54
  g,8\> (b16\!) r b8\> \( (e16-4\!) r e8-0\> (g16\!) \) r |
  %% 55
  fis8--\dim g-- a4-. g-. | fis8-- g-- a4-. g-. | fis8-- g-- a4-. g-. |
  %% 58
  <a, g'>2.\p ( | <a fis'>2\fermata) r4 \bar "|."
}

violinIIduoIImovementII = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    R2. | d4-0\f\downbow (fis) d-- | a (g') e-- |
    %% 4
    d8 (fis) a---0 d-- fis4-- | d,-0 (fis) a---0 | d2 cis8 (d) |
    %% 7
    e4-4 (cis) a---0 | fis'8 (d) a---0 fis-- d4---0 | d' (d,) d'-- |
    %% 10
    cis2 d8. (cis16) | cis4 (b) cis8. (b16) |
    %% 12
    b4 (a8-0[\dim) e (fis8. e16]) | e4 (d8-0[) d (e8. d16]) | d4-4 (cis\!) r |
    %% 15
    d-4\p\downbow (b) d---4 | cis8 (gis') a---0 b-- cis4-- |
    %% 17
    d-. d,-.-0 d'-. | cis-. r e-.-4\fz\upbow | e,2\p fis8-- gis-- |
    %% 20
    a---0 b-- cis-- d-- e4---4 |
    %% 21
    fis8\> (d16\!) r d8\> \( (b16\!) r b8\> (gis16\!) \) r | a4-4 r r
  }
  %% 23
  fis'4\f\downbow (d) a-0 | fis-- d8---4 cis-- d---0 e-- |
  %% 25
  fis (g) a---4 d,---0 e-- fis-- | fis (a-0) c-- fis-- g4-- |
  %% 27
  b (g) d-- | b8-- c-- b-- a---0 g-- fis-- |
  %% 29
  g-- g,-- b-- d---0 g-- b-- | a4-.-0 a,-. cis'8--\downbow d-- |
  %% 31
  e4-.-4 e,-. e-. | e (d-0) fis8 (a-4) | fis (g16 fis) e4-. d-.-0 |
  %% 34
  cis8--\dim d---4 e4-. d-.-0 | cis8-- d---4 e4-. d-.-0 |
  %% 36
  cis-. e'8-4\< (d) cis-- b-- | a---0 g-- fis-- e-- d---0 cis-- |
  %% 38
  d4-4\f r r | d---0\f\upbow fis-- d-- | a2. |
  %% 41
  d4-.-0 d'-. cis8-- d-- | e4-4 (cis) a---0 | fis'2 g8. (fis16) |
  %% 44
  fis4 (e-0) fis8. (e16-0) | e4-4 (d8[) a-0\dim (b8. a16]) |
  %% 46
  a4-4 (g8[) g (a8.-4 g16]) | g4 (fis\!) r |
  %% 48
  << {\voiceOne g4\downbow\p (e)}
     \new Voice {\voiceTwo a,2} >> \oneVoice <a g'>4-. |
  %% 49
  <a fis'>8 (cis) d---4 e-- fis4-- | g-. e-. a-.-4 |
  %% 51
  fis-. r a-.\f\upbow | a,2 b8-- cis-- | d---0 e-- fis-- g-- a4---4 |
  %% 54
  b8\> (g16\!) r g8\> \( (e16\!) r e8\> (cis16\!) \) r |
  %% 55
  d8---0\dim e fis4-. e-. | \repeat unfold 2 {d8-- e-- fis4-. e-.} |
  %% 57
  <e cis'>2.\p ( | <d d'>2\fermata) r4 \bar "|."
}

titleduoIImovementIII = "Rondo."

globalduoIImovementIII = {
  \time 2/4
  \tempo "Allegretto." 4 = 123
  \key g \major
}

violinIduoIImovementIII = \new Voice \relative d'' {
  \violinVoiceSettings

  \partial 4 d8-.\p\upbow (d-.) | g-. g-. b,-. b-. |
  %% 2
  e4-4 a,8-0 (b16 c) | <<d8-.-3 s8-3>> g,-. c-. b-. |
  %% 4
  b (a-0) d-. (d-.) | g-. g-. b,-. b-. | e4-4  fis8 (g16 a) |
  %% 7
  b8-. g-. e-.-0 cis-. | e-4 (d) r4 | b,8-.\downbow b-. g-. g-. |
  %% 10
  c-. a-. d-.-4 c-. | b-. d-.-0 fis-. g-. | g (fis) r4 |
  %% 13
  b,8-.\downbow b-. g-. g-. | g'-. e-. d-0 (e16 fis |
  %% 15
  g8) e-. a-.-4 a,-. | d4-0 \breathe d'8-.\upbow (d,-.-0) |
  %% 17
  cis'-. d,-. c'-. d,-. | b'-. d,-. d' (e16-0 fis |
  %% 19
  g8 ) d-. c-. b-. | b (a-0) d-. r | e-.-0 r fis-. r |
  %% 22
  g-. r c,-.\upbow\<( a-.-0) | bes-. a-. g4 |
  %% 24
  << {\voiceOne a2~\upbow\f | a8}
     \new Voice {\voiceTwo fis4 (g | fis8)} >>
  \oneVoice a8-.-4\fz a, (b16 cis | d8-4) r <g a>4\downbow\> ( |
  %% 27
  <fis a>8) a8-.-4\fz a,8 (b16 cis | d4-4) r |
  %% 29
  b8-.\downbow\p b-. g-. g-. | c-. a-. d-.-4 c-. |
  %% 31
  b-. d-.-0 fis-. g-. | g (fis) d'-. (d-.) |
  %% 33
  g-. g-. b (a16 g | e8-0) e-. g (fis16 e | d8) d-. fis,-. fis-. |
  %% 36
  g4-. \breathe e8-. (fis-.) | g-. fis-. g-. e-. |
  %% 38
  fis4-> fis8-. (g-.) | a-.-4 g-. a-. fis-. | g4-> e8-. (fis-.) |
  %% 41
  \fingerNumberSpanner "3"
  g-.\startTextSpan b-. g-.\stopTextSpan e-. | c'-. e-.-4 b-. e-.-4 |
  %% 43
  a,-.-0 a-. ais-.-1 ais-. | << {s8\> s\!} b4-1 >> b8-. (b-.) | b-. b-. b-. e-.-4 |
  %% 46
  e\> (dis\!) b-. (b-.) | b-. b-. b-. fis'-. |
  %% 48
  fis\> (e-0\!) b-. (b-.) | b-. e-.-0 g-. b-. | b (c,) fis-. (a-.) |
  %% 51
  g-. e-.-0 b-. dis-. | e4-4 \breathe e8-. (e-.) | e (d) d (c) |
  %% 54
  c (b) bes-. (bes-.) | a-.-0 a-. g-. g-. | fis (d) bes' (g) |
  %% 57
  fis\cresc (d) bes' (g) | \repeat percent 2 {fis (d) bes' (g)} |
  %% 60
  fis4\f\fermata \breathe  d'8-.\p\upbow (d-.) | g-. g-. b,-. b-. |
  %% 62
  e4-4 a,8-0 (b16 c) | <<d8-.-3 s-3 >> g,-. c-. b-. |
  %% 64
  b (a-0) d-. (d-.) | g-. g-. b-. b-. | e,4-0 g8 (fis16 e) |
  %% 67
  d8-. d-. fis,-. fis-. | g4 \breathe b8-. (b-.) |
  %% 69
  c-. c-. e-.-4 e-. | d4 g8\> (fis16 e-0\!) | d8-. b-. a-.-0 d-. |
  %% 72
  c (b) g-.\< (g-.) | c-. c-. e-.-4 e-. | d4 <b g'>8\f\downbow r |
  %% 75
  <c a'>\downbow r <d, c' fis>\downbow r |
  %% 76
  <g, d' b' g'>4\downbow r \bar "|."
}

violinIIduoIImovementIII = \new Voice \relative b {
  \violinVoiceSettings

  \partial 4 r4 | b8-.\downbow\p b-. g-. g-. | c-. a-. d-.-4 c-. |
  %% 3
  b-. d-.-0 fis-. g-. | g (fis) r4 | b,8-.\downbow b-. g-. g-. |
  %% 6
  g'-. e-. d-0 (e16 fis | g8) e-. a-.-4 a,-. |
  %% 8
  d4-0 \breathe d'8-. (d-.) | g-. g-. b,-. b-. | e4-4 a,8-0 (b16 c) |
  %% 11
  <<d8-.-3 s-3>> g,-. c-. b-. | b (a-0) d-. (d-.) | g-. g-. b,-. b-. |
  %% 14
  e4-4 fis8 (g16 a) | b8-. g-. e-.-0 cis-. | e-4 (d) \breathe b-. r |
  %% 17
  ais-.-1 r a-.-0 r | g-. r c-. (a-.-0) | b-. d,-.-0 fis-. g-. |
  %% 20
  g (fis) d'-. (d,-.) | cis'-. d,-. c'-. d,-. |
  %% 22
  b'-.  d,-. d' (e16-0 fis | g8) a-. bes-. cis,-. |
  %% 24
  <<d-.-3\f s-3>> a'-.\fz a,-0 (b16 cis | d8) r <g, a>4\fz\upbow ( |
  %% 26
  <fis a>8) a'-.\fz a,-0 (b16 cis | d8) r <g, a>4\fz\downbow ( |
  %% 28
  <fis a>4) \breathe d'8-.\p (d-.) | g-. g-. b,-. b-. |
  %% 30
  e4-4 a,8-0 (b16 c) | <<d8-.-3 s-3>> g,-. c-. b-. | b (a-0) r4 |
  %% 33
  b,8-.\downbow b-. g-. g-. | c-. c-. e (d16-0 c | b8) b-. a-. a-. |
  %% 36
  g4 \breathe d''8-. (d-.) | b-. b-. b-. e-.-4 | e-> (dis) b-. (b-.) |
  %% 39
  b-. b-. b-. fis'-. | fis-> (e) b-. (b-.) | c-. e-.-0 g-. b-. |
  %% 42
  b (a) a (g) | g (fis) g-. (e-.-0) | e-4\> (dis\!) e,-. (fis-.) |
  %% 45
  g-. fis-. g-. e-. | fis4-> fis8-. (g-.) | a-.-4 g-. a-. fis-. |
  %% 48
  g4-> e8-. (fis-.) |
  \fingerNumberSpanner "3" g-.\startTextSpan b-. g-.\stopTextSpan e-. |
  c'4 a8-.-4 (fis-.) |
  %% 51
  e-. g-. b-. b,-. | e4 \breathe e-.\p | fis2 ( | g4) g,-. |
  %% 55
  c-. cis-. | d4---4 g,8 (bes) | d4---4\cresc g,8 (bes) |
  %% 58
  \repeat percent 2 {d4---4 g,8 (bes)} | d4-4\f\fermata r4 |
  %% 61
  b8-.\p\downbow b-. g-. g-. | c-. g-. d'-.-4 c-. |
  %% 63
  b-. d-.-0 fis-. g-. | g (fis) r4 | b,8-.\downbow b-. g-. g-. |
  %% 66
  c-. c-. e (d16-0 c | b8) b-. a-. a-. | g4 \breathe f'8-. (g,-.) |
  %% 69
  e'-. g,-. fis'-. g,-. | g'-. g,-. c-. e-. | g-. d-.-0 fis-. d-.-0 |
  %% 72
  a'-4 (g) f\< (g,-.) | e'-. g,-. fis'-. g,-. | g'4 e8\f\downbow r |
  %% 75
  c\downbow r d-4\downbow r | <g, d'>4\downbow r \bar "|."
}

%%% ----------- Duo III ------------

titleduoIIImovementI = ##f

globalduoIIImovementI = {
  \time 4/4
  \tempo "Allegro." 4 = 123
  \key d \major
}

violinIduoIIImovementI = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 2 a4---0\mf\downbow d-- | fis2 e8-4 (d) cis-- b-- |
    %% 2
    b4 (a-0) d-- (fis,--) | g4. (fis8) e (fis) g-- a---4 |
    %% 4
    g4 (fis8) r b4.\> (a8-0\!) |
    %% 5
    a8-4 (gis) fis-- e-- e'4.-4\> (d8\!) |
    %% 6
    d4 \( (cis8) d-- \) e4-0\< (eis-1) |
    %% 7
    gis8\> (fis) d-- b--\! a4-4 (gis) | a2-4 r |
    %% 9
    d,4-.-0\mf\downbow <fis a>-. d-. g-. | d-.-0 fis-. d-. dis-.-1 |
    %% 11
    e-. d-.-0 cis-. a-. | cis (d8-4) r <fis a>4-.\p\downbow d-.-0 |
    %% 13
    g-. g,-. <gis' b>-.\cresc e-.\! | a-.-4 a,-. cis'-. a-.-0 |
    %% 15
    d8-. r g,-. r a-.-4 r a,-. r | d2-0\f fis' | e-0 a,-0 | gis d' |
    %% 19
    cis a' | b,4. cis8-- d-- e---0 fis-- gis-- |
    %% 21
    b (a) e-.-4 cis-. gis' (fis) d-. b-. |
    %% 22
    a-0 (cis) fis-. e-.-0 e4.-4 (gis,8) |
    %% 23
    a---0\f b-- cis-- d-- e---0 fis-- gis-- a-- |
    %% 24
    gis-- b-- gis-- e---0 d-- b-- e,-- d'-- |
    %% 25
    cis-- a'-- fis-- d-- cis-- b-- e---4 d-- | <cis e>2-0 <a e'> |
    %% 27
    <b e> <gis b> | a4-.-0 <fis a>-. <e a>-. d-.-0 |
    %% 29
    cis8-. r cis'4\pDolce\upbow (gis b) | a-0 fis8-- d---0 cis4 (b) |
    %% 31
    cis8 r e'4-4 (b d) | cis8 (a') fis-- dis-- e4-4 (gis,) | a-.-4 a,-.
  }
  r2 | a4-.\mf\downbow cis-. e-. a8---0 cis-- | cis4 (d) r2 |
  %% 36
  gis,,4-.\downbow b-. e-. fis8-- gis-- |
  %% 37
  gis4 (a-4) \breathe cis--\p fis-- | a2 b8 (a) gis-- fis-- |
  %% 39
  fis4 (eis-1) cis-- (gis'--) | b2 a8 (gis) fis-- eis---1 |
  %% 41
  eis4 (fis-1\cresc) fis-- (fis--) |
  %% 42
  g8--\f e---0 cis-- a---0 g-- e-- a,-- g'-- |
  %% 43
  fis (a-0) d-. fis-. a-> (a,-0) a-. a-. |
  %% 44
  g'-> (a,-0) a-. a-. fis'-> (a,-0) a-. a-. |
  %% 45
  e'-0 (a,-0) cis-. d-. e4-0_\dolce (g) | g8 (f) e---4 d-- cis2 |
  %% 47
  d\< e4-0 (g) | g8 (f) e---4 d-- d4 (e8-4 d) | cis4\f a'-- f-- d-- |
  %% 50
  cis-- a---0 f-- d---0 |
  %% 51
  a2\fermata a'4---0\mf\downbow d-- | fis2 e8-4 (d) cis-- b-- |
  %% 53
  b4 (a-0) d-- (fis,--) | g4. (fis8) e (fis) g-- a---4 |
  %% 55
  g4 (fis8) r b4.\> (a8-0\!) | a-4 (gis) fis-- e-- e'4.-4\> (d8\!) |
  %% 57
  d4 \( (cis8) d-- \) e4-0\< (eis-1) |
  %% 58
  gis8\> (fis) d-- b--\! a4-0 (gis) | a2-4 r |
  %% 60
  d,4-.-0\mf\downbow <fis a>-. d-. g-. | d-.-0 fis-. d-. dis-.-1 |
  %% 62
  e-. d-.-0 cis-. a-. | cis (d8-4) r fis2\p\upbow | g b8 (b') a-- g-- |
  %% 65
  fis4\cresc (e-0\!) fis4. (a8) | a (g) fis-. g-. ais (b) g-. e-.-0 |
  %% 67
  d8 (cis) g'2\> (fis4\!) | fis8 (e-0) g-. b-. d,4 (cis) |
  %% 69
  <a a'>2\f <fis a-0> | <e a> <cis e> |
  %% 71
  d8-.-0 r g-. r a-.-0 r cis-. r |
  %% 72
  d-- e---4 fis-- g-- gis (a) fis-- d-- |
  %% 73
  cis\upbow (a') g-- e---0 cis-- e---4 a,---0 g'-- |
  %% 74
  fis (d) b-- g-- fis (a-4) g-- e-- | d-0 r a''4\pDolce\upbow (e-0 g) |
  %% 76
  fis8 (d) b-- e---4 d4 (cis) | d8 r a4-4 (e g) |
  %% 78
  fis8 (d') b-- gis-- a4-4 (cis,) | cis1 ( | d4-4) r fis\upbow\pp r |
  %% 81
  d2-0\downbow \bar "|."
}

violinIIduoIIImovementI = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 2 r2 | d4-.-0\mf\downbow <fis a>-. d-. g-. |
    %% 2
    d-.-0 fis-. d-. dis-.-1 | e-. d-.-0 cis-. a-. |
    %% 4
    cis (d8-4) r d4-0\> (dis-1\!) | e-1 r e\upbow\> (gis\!) |
    %% 6
    b (a8-0) b-- cis4-. cis,-. | d2-4 e8 (b' e-4 d) |
    %% 8
    d\> (cis) b-- a---0 a4--\mf (d--) | fis2 e8-4 (d) cis-- b-- |
    %% 10
    b4 (a-0) d-- (fis,--) | g4. (fis8) e (fis) g-- a---4 |
    %% 12
    g4 (fis) a4.-0\p (c8) | c (b) a---4 g-- b4.\cresc (d8\!) |
    %% 14
    d (cis) b-- a---0 e'4.-0 (g8) | fis (d) b-. g-. fis (a-4) g-. e-. |
    %% 16
    d--\f fis-- a---4 fis-- d-- fis-- a-- fis-- |
    %% 17
    \repeat percent 2 {cis-- e-- a---4 e--} |
    %% 18
    \repeat percent 2 {b-- e-- gis-- e--} |
    %% 19
    a,-- cis-- e-- a---0 cis-- e---4 cis-- a---0 |
    %% 20
    d-- b-- gis-- a---4 b-- cis-- d-- b-- |
    %% 21
    <cis e>4-. cis,-. d-.-0 <d' fis>-. |
    %% 22
    <cis e>-- (a---0) gis8 (b e-4 d) |
    %% 23
    <cis e>2-0\f <a e'> | <b e> <gis b> | a4-.-0 d,-.-0 e-. gis-. |
    %% 26
    a8---0 b-- cis-- d-- e---0 fis-- gis-- a-- |
    %% 27
    gis-- b-- gis-- e---0 d-- b-- e,-- d'-- |
    %% 28
    cis (a') fis-- dis-- e4-4 (gis,) |
    %% 29
    a8-4 r e'4-4\pDolce\upbow (b d) |
    %% 30
    cis8 (a-0) fis-- b-- a4-4 (gis) | a8-4 r cis4 (gis b) |
    %% 32
    a4-0 fis8-- dis---1 e4 (<d-4 e>) | <cis e>-. <cis e>-.
  }
  a'4---0\mf cis-- | e2-4 fis8 (e-0) cis-- a---0 |
  %% 35
  a4-4 (gis) gis-- (b--) | e2-4 fis8 (e-0) d-- b-- | bis4 (cis) r2 |
  %% 38
  fis,4--\p\downbow a---4 cis-- b8-- a---0 | a4-4 (gis) r2 |
  %% 40
  eis4--\downbow gis-- b-- a8---4 gis-- | gis4 (a) r2 |
  %% 42
  <a, e'>8-.\f\downbow \repeat unfold 3 {<a e'>8-.}
  \repeat tremolo 4 {<cis e>8-.} |
  %% 43
  d8-0 (fis) a-.-0 d-. fis-> (a,-0) a-. a-. |
  %% 44
  e'->-0 (a,-0) a-. a-. d-> (a-0) a-. a-. | cis4 r cis,2\p\upbow |
  %% 46
  d-4 e4 (g) | g8 (f) e-- d---0 cis2\< | d2-4 gis |
  %% 49
  a4-4\f cis-- d-- f-- | a-- cis,,-- d---4 f-- | a2-4\fermata r2 |
  %% 52
  d,4-.-0\mf\downbow <fis a>-. d-. g-. | d-.-0 fis-. d-. dis-.-1 |
  %% 54
  e-.-1 d-.-0 cis-. a-. | cis (d8-4) r d4-0\> (dis-1\!) |
  %% 56
  e4-1 r e\>\upbow (gis\!) | b (a8-0) b-- cis4-. cis,-. |
  %% 58
  d2-4 e8 (b' e-4 d) | d (cis) b-- a---0 a4-- (d--) |
  %% 60
  fis2 e8-4 (d) cis-- b-- | b4 (a-0) d-- (fis,--) |
  %% 62
  g4. (fis8) e (fis) g-- a---4 | g4 (fis8) r a4.-0\p (c8) |
  %% 64
  c (b ais-1 b-1) a' (g) fis-- e---0 | d4\cresc (cis\!) c2 | b g |
  %% 67
  a4---4 a, (cis d-4) | g-. e-. a-.-4 a,-. |
  %% 69
  d8---0\f e-- fis-- g-- a---0 b-- cis-- d-- |
  %% 70
  cis-- e---4 cis-- a---0 g-- e-- a,-- g'-- |
  %% 71
  fis-- d'-- b-- g-- fis-- e-- a---4 g-- | <fis a-0>2 <d a'> |
  %% 73
  <e a> a,4 (cis) | d8-.-4 r g-. r a-.-4 r a,-. r |
  %% 75
  d-0 r fis4\pDolce\upbow (a-4 cis) | d b8-- g-- fis4 (e) |
  %% 77
  d8-0 r fis4 (cis e) | d-0 b8-- gis-- a4-1 (g') |
  %% 79
  g-- <a e'-0> (<a a'> <a g'> | <a fis'>) r <a a'>\pp r |
  %% 81
  <a fis'>2\downbow \bar "|."
}

titleduoIIImovementII = "Romance."

globalduoIIImovementII = {
  \time 4/4
  \tempo "Andante." 4 = 77
  \key a \major
}

violinIduoIIImovementII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 4 a4---0_\dolce\upbow | cis2 e-4 | b2. cis4-- |
  %% 3
  d2 fis4. (e8-0) | d2 (cis4) e---0 | a2 gis | fis e4.-0 (fis8) |
  %% 7
  e4-4 (d) d (cis) | cis2\> (b4\!) r |
  %% 9
  a,4--\p\downbow a'---4 cis-- a---0 | gis-- e-- gis-- a---4 |
  %% 11
  b-- a---0 gis-- e-- | b'-- gis-- a---4 cis-- | fis (dis e-4) e,-- |
  %% 14
  e'-4 (cis d) a---0 | cis (b) gis (e) |
  %% 16
  d-0 (e cis) \breathe e--\f \bar "||" \key c \major c'2 b4. (a8-0) |
  %% 18
  a2 r4 e-- | d'2 c4. (b8) | b2 r4 e,-- | e'-4 (a) gis (b) |
  %% 22
  a-- e---0 c-- a-- | e'-4 (d) d (c) | c2\> (b4\!) r |
  %% 25
  a,4--\f\downbow e'-- b-- e-- | c-- e-- c-- a-- | b-- e-- a,-- e'-- |
  %% 28
  gis,---1 b'---1 gis-- e-- | <a, e'>2 <b e> | <c e>4-- a'---4 f-- e-- |
  %% 31
  dis2->-1 a-2 | gis-1\fermata r4_\dolce a'4-0\upbow \bar "||"
  %% 33
  \key a \major cis2 e-4 | b2. cis4-- | d2 fis4. (e8-0) |
  %% 36
  d2 (cis4) e---0 | a2 (gis4) b,-- | fis'2 (e4-0) a,---0 | cis2 d4. (b8) |
  %% 40
  a2-0 r | d2.\p\downbow (e8-4 d) | cis2 r |
  e,2.^\rall\pp\downbow (fis8 gis) |
  a2.-4\fermata r4 \bar "|."
}

violinIIduoIIImovementII = \new Voice \relative a {
  \violinVoiceSettings

  \partial 4 r4 | a--\downbow\p a'---0 cis-- a-- |
  %% 2
  gis-- e-- gis-- a---4 | b-- a---0 gis-- e-- |
  %% 4
  b'-- gis-- a---4 cis-- | fis (dis e-4) e,-- | d' (bis cis) a---0 |
  %% 7
  gis (b) b (a-0) | a, (cis e) \breathe a---0_\dolce | cis2 e-4 |
  %% 10
  b2. cis4-- | d2 fis4. (e8-0) | d2 (cis4) e---0 | a2 gis |
  %% 14
  g (fis4) a-- | e-4 (d) b (gis) | b2\> (a4-0\!) r \bar "||"
  %% 17
  \key c \major a,4--\f\downbow e'-- b-- e-- | c-- e-- c-- a-- |
  %% 19
  b-- e-- a,-- e'-- | gis,---1 b'---1 gis-- e-- | <a, e'>2 <b e> |
  %% 22
  <c e>4-- e-- a---0 c-- | c (b) b (a-0) |
  %% 24
  a-4 (e gis) \breathe e--\f | c'2 b4. (a8-0) | a2 r4 e-- |
  %% 27
  d'2 c4. (b8) | b2 r4 e,-- | e'-4 (a) gis (b) | a a,---0 (a-- a--) |
  %% 31
  \acciaccatura {a16 b} c2-> dis,-1 | e-1\fermata r \bar "||"
  %% 33
  \key a \major a,4--\p\downbow a'---4 cis (a-0) |
  %% 34
  gis (e) gis-- a---4 | b-- a---0 gis-- e-- | b' (gis a-4) cis-- |
  %% 37
  fis (dis e-4) gis,-- | d'-2 (bis-1 cis) dis,---1 |
  %% 39
  e-1 (a-4) gis (d-0) | cis-- e'---4 cis-- a---0 | e2\p (gis |
  %% 42
  a4-4) e-- cis-- a-- | e'2^\rall\pp (d-0) | <cis e>2.\fermata r4 \bar "|."
}

titleduoIIImovementIII = "Rondo."

globalduoIIImovementIII = {
  \time 2/4
  \tempo "Allegretto." 4 = 123
  \key d \major
}

violinIduoIIImovementIII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 8 a16-0\p\upbow (b) |
  %% 1
  a8-. [fis-. d-.-0] a'16-0 (b) | a8-. [g-. e-.] a16-0 (b) |
  %% 3
  a8-. d-. cis-. d-. | fis4\> (e8-0\!) a,16-0 [ (b) ] |
  %% 5
  a8-. [ fis-. d-.-0 ] a'16-0 (b) | a8-. [g-. e-.] a16-0 (b) |
  %% 7
  a8-. fis' [ (g) ] cis,-.-2 | e4-4\> (d8\!) r |
  %% 9
  <a, fis'>8-.\p\downbow \repeat unfold 3 {<a fis'>-.} |
  %% 10
  \repeat tremolo 4 {<a g'>8-.} |
  %% 11
  \repeat unfold 2 {<a fis'>} <a e'> d-.-0 | cis-. e-. a-.-4 g-. |
  %% 13
  \repeat tremolo 4 {<a, fis'>8-.} | \repeat tremolo 4 {<a g'>-.} |
  %% 15
  <a fis'>-. d-.-0 cis-. e-. |
  %% 16
  <g a>4\> (<fis a>8\!) \breathe e'16-0 (fis) |
  %% 17
  e8-. [cis-. a-.-0] fis'16 (g) | fis8-. [d-. a-.-0] g'16 (a) |
  %% 19
  g8-. e16-0 (fis) e8-. cis16 (d) | cis8-. a16-0 (b) a8-. a16 (b) |
  %% 21
  a8-. [fis-. d-.-0] b'16 (c) | b8-. [g-. e-.] g'16 (e-0) |
  %% 23
  d8-. fis-. a,-.-0 cis-. | e4-4\> (d8\!) r |
  %% 25
  cis,-.\downbow [e-. a-.-4] r | d,-.-0\upbow [fis-. a-.-4] r |
  %% 27
  <a, e'>-.\downbow r cis-. r | e-. r <g a-0>-. r | fis-. [a-.-0 d-.] r |
  %% 30
  g,8-.\upbow\cresc [b-. e-.-4\!] r |
  %% 31
  fis,-.\downbow d-.-0 cis-. <g' a-0>-. |
  %% 32
  <fis a>-.\f a16 (b) a8-. fis'-. | d4-- a---0 |
  %% 34
  r8 a16\upbow (b) a8-. g'-. | e4---0 a,---0 |
  %% 36
  fis'8-. d16 (cis) b8-. fis'-. | e-.-0 cis16 (b) a8-.-0 a'-. |
  %% 38
  b,-. fis'-. e-.-4 gis,-. | a-.-4 <g a-0>-. <fis a>-. <e a>-. |
  %% 40
  <d a'>-. \repeat unfold 3 {<a fis'>-.} |
  %% 41
  \repeat tremolo 4 {<a fis'>-.} | \repeat tremolo 4 {<a g'>-.} |
  %% 43
  \repeat unfold 2 {<a g'>-.} <a fis'>-. <a e'>-. |
  %% 44
  d-.-4 b-. d-.-0 gis-. | a-.-4 e-. cis-. a-. | d-.-4 b-. e-. d-.-0 |
  %% 47
  cis-. r r c'16\p\upbow (d) | c8-. [a-.-0 f-.] c'16 (d) |
  %% 49
  c8-. [bes-. g-.] c16 (d) | c8-. f-. e-.-0 f-. | a4\> (g8\!) r |
  %% 52
  <a,, f'>-.\downbow \repeat unfold 3 {<a f'>-.} |
  %% 53
  \repeat tremolo 4 {<a g'>-.} | <a f'>-. f'-. e-. d-.-0 |
  %% 55
  a-. [a'-.-4 a,-.] \breathe e''16-0 (fis) | e8-. [d-. b-.] e16-0 (fis)|
  %% 57
  e8-. [cis-. a-.-0] gis'16 (a) | b,8-. fis'-. e-.-4 gis,-. |
  %% 59
  a-.-4 a16-0 (b) cis4-- | r8 b16\upbow (cis) d4-- |
  %% 61
  r8 cis16\upbow (d) e4---4 | r8 d16\upbow (e-4) fis8-.\cresc a,-.-0 |
  %% 63
  cis-. d-. e-.-0 fis-. | g4.\f\fermata \breathe a,16-0\p (b) |
  %% 65
  a8-. [fis-. d-.-0] a'16-0 (b) | a8-. [g-. e-.] a16-0 (b) |
  %% 67
  a8-. d-. cis-. d-. |
  %% 68
  fis4\> (e8-0\!) a,16-0 [ (b) ] | a8-. [fis-. d-.-0] d'16\cresc (e-4) |
  %% 70
  d8-. [b-. g-.] g'16 (e-0) | a8-. fis16 (d) a8-.-0 cis-.\f |
  %% 72
  d-. dis-. e-.-4 fis-. | g-. [a-. b-.] r |
  %% 74
  a,-0\downbow d16 (e) a8-. cis,-. | d-. a16-0\p (b) a8-. a16 (b) |
  %% 76
  a8-. a16 (b) a8-. <a g'>-.\f | <a fis'>-. a16-0\p (b) a8-. a16 (b) |
  %% 78
  a8-. a16 (b) a8-. <a g'>-.\f | <a fis'>-. a'16\f (b) a8-. a16 (b) |
  %% 80
  a8-. a16 (b) a8-. cis,-. | d-. a16-0\dim (b) a8-. cis-. |
  %% 82
  d-. a16 (b) a8-. cis-. | d-.\! r r4 |
  %% 84
  <d, d'>8\f\downbow r8 <d a' fis'>\downbow r | <d d'>2\downbow \bar "|."
}

violinIIduoIIImovementIII = \new Voice \relative a {
  \violinVoiceSettings

  \partial 8 r8 |
  %% 1
  <a fis'>8-.\p\downbow \repeat unfold 3 {<a fis'>-.} |
  %% 2
  \repeat tremolo 4 {<a g'>8-.} |
  %% 3
  \repeat unfold 2 {<a fis'>-.} <a e'>-. d-.-0 | cis-. e-. a-.-4 g-. |
  %% 5
  \repeat tremolo 4 {<a, fis'>8-.} | \repeat tremolo 4 {<a g'>-.} |
  %% 7
  <a fis'>-. d-.-0 cis-. e-. |
  %% 8
  <g a>4\> (<fis a>8\!) \breathe a16-0 (b) |
  %% 9
  a8-. [fis-. d-.-0] a'16 (b) | a8-. [g-. e-.] a16-0 (b) |
  %% 11
  a8-. d-. cis-. d-. | fis4\> (e8-0\!) a,16-0 [ (b) ] |
  %% 13
  a8-. [fis-. d-.-0] a'16-0 (b) | a8-. [g-. e-.] a16-0 (b) |
  %% 15
  a8-. fis' [ (g) ] cis,-.-2 | e4-4\> (d8\!) r |
  %% 17
  cis,-.\downbow [e-. a-.-4] r | d,-.-0\upbow [fis-. a-.-4] r |
  %% 19
  <a, e'>8-.\downbow r cis-. r | e-. r <g a-0>-. r |
  %% 21
  fis-. [a-.-0 d-.] r | g,-.\upbow [b-. e-.-4] r |
  %% 23
  fis,-.\downbow d-.-0 cis-. e-. |
  %% 24
  <g a-0>4\> (<fis a>8\!) \breathe e'16-0 (fis) |
  %% 25
  e8-. [cis-. a-.-0] fis'16 (g) | fis8-. [d-. a-.-0] g'16 (a) |
  %% 27
  g8-. e16-0 (fis) e8-. cis16 (d) | cis8-. a16-0 (b) a8-. a16 (b) |
  %% 29
  a8-. [fis-. d-.-0] b'16\cresc (c\!) | b8-. [g-. e-.] g'16 (e-0) |
  %% 31
  d8-. fis-. a,-.-0 cis-. | d-.\f \repeat unfold 3 {<a, fis'>-.} |
  %% 33
  \repeat tremolo 4 {<a fis'>8-.} | \repeat tremolo 4 {<a g'>8-.} |
  %% 35
  \repeat unfold 2 {<a g'>-.} <a fis'>-. <a e'>-. |
  %% 36
  d-.-4 b-. d-.-0 gis-. | a-.-4 e-. cis-. cis'-. |
  %% 38
  d-. d,-.-0 cis-. b-. | a-. r r4 | r8 a'16-0\upbow (b) a8-. fis'-. |
  %% 41
  d4-- a---0 | r8 a16\upbow (b) a8-. g'-. | e4---0 a,---0 |
  %% 44
  fis'8-. d16 (cis) b8-. fis'-. | e8-.-0 cis16 (b) a8-.-0 a'-. |
  %% 46
  fis-. d-. b-. gis-. | a-.-4 a-0\dim (bes g) | f-.\p c-. f-. c-. |
  %% 49
  e-. c-. e-. c-. | f-. a-.-4 g-. f-. |
  %% 51
  c-. [c'-. c,-.] \breathe a'16-0 (bes) | a8-. [f-. d-.-0] a'16-0 (bes) |
  %% 53
  a8-. [g-. e-.] a16-0 (bes) | a8-. d-. cis-. d-. | f4\> (e8-0\!) r |
  %% 56
  gis,-.\downbow e-. gis-. e-. | a-.-4 e-. cis-. a-. |
  %% 58
  d-.-4 b-. e-. <d' e>-. | <cis e>-. r r a-.-4 | gis4. gis8-. |
  %% 61
  g4. g8-. | fis4.\cresc fis8-. | g-. fis-. e-. d-.-0 |
  %% 64
  <cis e>4.\f\fermata r8 |
  %% 65
  <a fis'>8-.\p\downbow \repeat unfold 3 {<a fis'>-.} |
  %% 66
  \repeat tremolo 4 {<a g'>-.} |
  %% 67
  \repeat unfold 2 {<a fis'>-.} <a e'>-. d-.-0 | cis-. e-. a-.-4 g-. |
  %% 69
  \repeat unfold 2 {<a, fis'>-.} <a fis'>-.\cresc <a fis'>-. |
  %% 70
  \repeat tremolo 4 {<b g'>-.} |
  %% 71
  <a fis'>-. d16-0 (fis) a8-.-4 <g a-0>-.\f | <fis a>-. c'-. b-. a-.-0 |
  %% 73
  <g b>-. [<fis b>-. <e b'>-.] r |
  %% 74
  a,8\downbow d16-0 (fis) a8-.-4 <g a-0>-. |
  %% 75
  <fis a>-. a-.-4\p gis-. g-. | fis-. f-. e-. cis-.\f |
  %% 77
  d-.-0 a'-.-4\p gis-. g-. | fis-. f-. e-. cis-.\f |
  %% 79
  d-.-4 a-.\f cis-. d-.-4 | e-. fis-. g-. <e a-0>-. |
  %% 81
  <d a'>-. <fis a>-.\dim <g a>-. <e a>-. |
  %% 82
  <d a'>-. <fis a>-. <g a>-. <e a>-. | <d a'>-.\! r r4 |
  %% 84
  <fis a>8\f\downbow r <fis a>\downbow r | <fis a>2\downbow \bar "|."
}

%%% ------------ Duo IV ------------

titleduoIVmovementI = ##f

globalduoIVmovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4 = 123
  \key a \major
}

violinIduoIVmovementI = \new Voice \relative a'' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 gis16\mf\upbow (a b a) |
    %% 1
    e8-.-0 r cis-. r a-.-0 r e8.\< (fis16) |
    %% 2
    e2\> (d4-0\!) cis'16 (d e-4 d) | b8-. r gis-. r e-. r d8.-0\< (e16) |
    %% 4
    d2-4\> cis4 \breathe e8\p (a-4) | gis (a-4) b-- cis-- d2 |
    %% 6
    cis8\< (d) e---0 fis-- g2\! |
    %% 7
    eis8-1\> (fis-1\!) cis\> (d\!) ais-1\> (b-1\!) fis\> (b\!) |
    %% 8
    a-4 (gis fis e) e4 a,8-.\mf\upbow r |
    %% 9
    cis-.\downbow r e-. r a-.-4 r cis,8. (d16-4) |
    %% 10
    cis4\> (ais b\!) e8-. r | gis-. r b-. r e-.-4 r b,8.\< (cis16) |
    %% 12
    b4\> (gis a\!) \breathe <cis e>--\p | <d e>2 b4 (gis) |
    %% 14
    a8\< (b) cis-- d---4 e4 (cis\!) |
    %% 15
    cis8\> (d-4\!) fis\> (d-0\!) cis\> (e\!) d-4\> (b\!) |
    %% 16
    a4 cis'8-.\f d-. e-0 (fis) gis-. a-. | a (gis) b-. gis-. e4.-4 (d8) |
    %% 18
    cis4-- fis,8-. r a-.-4 r fis-. r | b-. r b,4 (cis dis-4) |
    %% 20
    e-- b'8-. e-.-0 gis (b) a-. gis-. | gis8 (fis) gis-. a-. e4-4\> (dis\!) |
    %% 22
    e2\pDolce dis4-- (e---4) | fis4. (gis16 fis) e8-4 (dis) cis-- b-- |
    %% 24
    gis'4. (a16 gis) fis4-- (gis--) | a4. (b16 a) gis8 (fis) e---4 dis-- |
    %% 26
    b'8-. fisis-- (gis) dis-- (e-4) b-. a-.-4 gis-. |
    %% 27
    gis (fis) a-.-0 cis-. fis\< (a) gis-. fis-. | e2-4\> (dis4\!) r |
    %% 29
    gis,8-.\p b-. gis-. b-. fis-. b-. gis-. b-. |
    %% 30
    a-.-4 b-. a-. b-. fis-. b-. fis-. b-. |
    %% 31
    e,-. b'-. e-.-4 b-. dis-. b-. e-.-4 b-. |
    %% 32
    fis'-. b,-. fis'-. b,-. dis-. b-. fis-. b-. |
    gis-. r gis-. r gis-. r e-. r |
    %% 34
    a-4  (gis) fis-. eis-. fis (gis) a-.-4 fis-. |
    gis-. r a-.-4 r b-. r b,-. r |
    %% 36
    e-. \breathe b'-.\f e-.-0 gis-. b4. a8-. |
    gis-. e4-4-> cis8-. b (gis) fis-. a-.-4 |
    %% 38
    gis-. \breathe b-. e-.-0 gis-. b4. a8-. |
    gis-. e4-4-> cis8-. b (b') a-. fis-. |
    %% 40
    e-.-0 r <e, b' fis'>\downbow r <e b' e>\downbow r
  }
  e'16-0\f\upbow (b' gis e) | b8-. r gis-. r e-. r b8. (cis16) |
  %% 42
  b2 (a4) a'16-0 (a' fis dis) | a8-.-0 r fis-. r dis-.-4 r a8. (b16) |
  %% 44
  a2 (gis4) \breathe b8\mf (e) | dis-1 (e-1) fis-- gis-- a2-4 |
  %% 46
  gis8 (a-4) b-- cis-- d2 |
  %% 47
  <f, c'>8-.\p \repeat unfold 3 {<f a>-.} \repeat tremolo 4 {<f a>8-.} |
  %% 48
  \repeat tremolo 4 {<e-2 bes'-1>8-.} \repeat tremolo 4 {<e bes'>-.} |
  <f-2 a-0>8 (c' f a) g (f) e---4 d-- |
  %% 50
  \repeat unfold 2 {\repeat tremolo 2 {d\> (c\!)}} |
  c-. \repeat unfold 5 {<f, a>-.} \repeat unfold 2 {<fis a>-.} |
  %% 52
  \repeat tremolo 4 {<g, g'>-.} \repeat tremolo 4 {<g f'>-.} |
  \repeat tremolo 4 {<g e'>-.} \repeat tremolo 4 {b-.} |
  %% 54
  c (a) b-. c-. d4-0 (dis-1) |
  e8-.-1\f \repeat unfold 3 {<b e>-.} \repeat tremolo 4 {<c e>-.} |
  %% 56
  \repeat tremolo 4 {<d e>-.} \repeat tremolo 4 {<c e>-.} |
  <b e>-. b'-. e4-4-> c8-. e-.-0 a4-> |
  %% 58
  gis8-. b-. e,4-0-> a8-. (e-.) c-. a-.-0 |
  %% 59
  \repeat percent 2 { gis-. e-. e'-.-4 d-. c-. e-.-4 c-. a-.-0 } |
  %% 61
  gis4-. <gis b e>-.\downbow r a,8-.\mf\upbow r |
  %% 62
  cis8-. r e-. r a-.-0 r cis8.\< (d16) | cis4\> (ais-1 b-1\!) gis,8-. r |
  %% 64
  b-. r e-. r gis r b8.\< (cis16) |
  b4\> (gis a-4\!) \breathe a'8.\f (b16) |
  %% 66
  a8 (g) e-.-4 cis-. a-4 (g) e-. g-. |
  fis-. b4-> a8-.-0 gis-. cis4-> b8-. |
  %% 68
  a-.-0 d4-> cis8-.  b-. e-0 (fis) gis-. |
  b (a) fis-. d-. cis\> (e-4) d-. b-. |
  %% 70
  cis,-.\p e-. cis-. e-. b-. e-. cis-. e-. |
  d-.-4 e-. d-. e-. b-. e-. b-. e-. |
  %% 72
  a,-. e'-. a-.-4 e-. gis-. e-. a-. e-. |
  b'-. e,-. b'-. e,-. gis-. e-. b-. e-. |
  %% 74
  a,4-. r cis-.\upbow r | d-.-4\downbow r b8\upbow (fis') e-. d-.-0 |
  %% 76
  cis4-- dis---4 e8-.-1 e\< (fis gis\!) |
  << {a2-0_\dolce(} {s4. s128 \grace {b16 a)}} >> gis4-- (a---4) |
  %% 78
  b4. (cis16 b) a8-4 (gis) fis-- e-- |
  << {cis'2_(} {s4. s128 \grace {d16 cis)}} >> b4-- (cis--) |
  %% 80
  d4. (e16-4 d) cis8 (b) a---4 gis-- |
  e'-.-4 a-- (cis,) e---4 (a,-0)  cis-. e,-. g-. |
  %% 82
  fis (a-4) d-. fis-. b (a) gis-. fis-. |
  e-4 (cis) b-. d-. a4-0 (cis8. b16) |
  %% 84
  a8-.-0 \breathe e-.\f a-.-0 cis-. e4.-4 d8-. |
  cis-. a4-4-> fis8-. e (cis) b-. d-.-4 |
  %% 86
  cis-. \breathe e-. a-.-0 cis-. e4.-4 d8-. |
  cis-. a'4-> fis8-. e-4 (e,) fis-. gis-. |
  %% 88
  \repeat percent 2 {\repeat percent 2 {a8-.-0 e'-.-4 e,-. gis-.}} |
  a4-.-0 a'-. a,-. r \bar "|."
}

violinIIduoIVmovementI = \new Voice \relative a {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 a8-.\upbow\mf r | cis-. r e-. r a-.-4 r cis,8.\< (d16-4) |
    %% 2
    cis4\> (ais b\!) e8-. r | gis-. r b-. r e-.-4 r b,8.\< (cis16) |
    %% 4
    b4\> (gis a\!) \breathe <cis e>4\p | <d e>2 b4 (gis) |
    %% 6
    a8 (b) cis-- d---4 e4 (cis) | d8-.-4 r d-.-0 r d-. r dis-.-1 r |
    %% 8
    e4-.-1 r r gis'16\mf\upbow (a b a) |
    %% 9
    e8-.-0 r cis-. r a-.-0 r e8.\< (fis16) |
    %% 10
    e2\> (d4-0\!) cis'16 (d e-4 d) |
    %% 11
    b8-. r gis-. r e-. r d8.-0\< (e16) |
    %% 12
    d2-4\> (cis4\!) \breathe e8_\dolce (a-4) | gis (a-4) b-- cis-- d2 |
    %% 14
    cis8\< (d) e---0 fis-- g2\! |
    %% 15
    eis8-1\> (fis\!) d\> (b\!) a-0\> (cis\!) e,\> (gis\!) |
    %% 16
    a4---4 a,8-.\f r cis-. r a-. r | b-. r e4 (fis gis) |
    %% 18
    a---4 a8-.-0 b-. cis (a') gis-. fis-. |
    %% 19
    e-4 (dis) fis-. dis-. b4. (a8-0) | gis4-- gis8-. r e-. r gis-. r |
    %% 21
    a4---0 b8-. cis-. gis4\> (fis\!) |
    %% 22
    gis8-.\p b-. gis-. b-. fis-. b-. gis-. b-. |
    a-.-4 b-. a-. b-. fis-. b-. fis-. b-. |
    %% 24
    e,-. b'-. e-.-4 b-. dis-. b-. e-.-4 b-. |
    fis'-. b,-. fis'-. b,-. dis-. b-. fis-. b-. |
    %% 26
    gis-. r gis-. r gis-. r e-. r |
    a,4-- cis8-. fis-. a-0 (cis) b-. a-. |
    %% 28
    gis4-- ais---4 b8-.-1 b\< (cis dis\!) | e2-4_\dolce dis4 (e-4) |
    %% 30
    fis4. (gis16 fis) e8-4 (dis) cis-- b-- |
    %% 31
    gis'4. (a16 gis) fis4 (gis) | a4. (b16 a) gis8 (fis) e---4 dis-- |
    %% 33
    b'-. fisis-- (gis) dis-- (e-4) b-. a-.-4 gis-. |
    %% 34
    fis (dis) fis-. gis-. a-0 (b) cis-. dis-. |
    fis (e-0) cis-. a-.-0 gis (b) a-.-4 fis-. |
    %% 36
    e4 r r8 b'-.\f\upbow dis-. fis-. |
    e8-.-0 cis4-> a8-.-0 gis (e) dis-.-1 fis-.-2 |
    %% 38
    e4 r b8-.->\downbow b'-. dis-. fis-. |
    e-.-0 cis4-> a8-.-0 gis (e) b-. dis-.-4 |
    %% 40
    e-.-1 r <b' gis'>\downbow r <gis b e>\downbow r
  }
  e8-.\f\upbow r | gis-. r b-. r e-.-0 r gis8. (a16) |
  %% 42
  gis4 (eis-1 fis-1) b,,8-. r |
  dis-.-1 r fis-.-2 r a-.-0 r fis'8. (gis16) | fis4 (dis e-4) r |
  %% 45
  r2 r8 b,-.\mf\upbow cis-. dis-.-4 |
  %% 46
  e4---1 r r8 e-.\upbow fis-. gis-. |
  a8-0\pDolce (c f a) g (f) e---4 d-- |
  %% 48
  \repeat unfold 2 {\repeat tremolo 2 {d\> (c\!)}} |
  c8-. \repeat unfold 3 {<f, a>8-.} \repeat tremolo 4 {<f a>-.} |
  %% 50
  \repeat tremolo 4 {<e-2 bes'-1>-.} \repeat tremolo 4 {<e bes'>-.} |
  <f-2 a-0>-. c' (a') g-. f (e-0) d-. c-. |
  %% 52
  \repeat tremolo 2 {c\>( b\!)} c\>( b\!) a-0\> (b\!) |
  d\> (c\!) b-. c-. e-.-4\> (d\!) cis-. d-. |
  %% 54
  f (e-0) d-. c-. c (b) b-. a-.-0 |
  gis-.\f b-. e4->-4 c8-. e-.-0 a4-> |
  %% 56
  gis8-. b-. e,4->-0 a8-. (e-.) c-. a-.-0 |
  gis8-. \repeat unfold 3 {<b, e>-.} \repeat tremolo 4 {<c e>-.} |
  %% 58
  \repeat tremolo 4 {<d e>-.} \repeat tremolo 4 {<c e>-.} |
  %% 59
  \repeat percent 2 {
    \repeat tremolo 4 {<b e>-.}
    \repeat unfold 2 {<a e'>-.} \repeat unfold 2 {<c e>-.}
  }
  %% 61
  <b e>4-. e-. r gis'16\mf\upbow (a b a) |
  e8-.-0 r cis-. r a-.-0 r e8.\< (fis16) |
  %% 63
  e2\> (d4-0\!) cis'16 (d e d) | b8-. r gis-. r e-. r d8.-0\< (e16) |
  %% 65
  d2-4\> (cis4\!) \breathe a-.\f | cis4-. e-. a-.-0 cis-. |
  %% 67
  <d, d'> dis-1-> e-.-1 eis-2-> |
  %% 68
  fis-. fis-> gis8-. e-. dis-.-1  d-.-0 |
  cis-. r d-.-4 r e-.\> r gis-.\! r |
  %% 70
  << {a2-0\pDolce(} {s4. s128 \grace {b16 a)}} >> gis4-- (a---4) |
  b4. (cis16 b) a8-4 (gis) fis-- e-- |
  %% 72
  << {cis'2_( } {s4. s128 \grace{d16 cis)}} >> b4-- (cis--) |
  d4. (e16-4 d) cis8 (b) a---4 gis-- |
  %% 74
  e'8-.-4 bis-- (cis) gis-- (a) e-. d-.-4 cis-. |
  cis (b) d-.-0 fis-. b (d) cis-. b-. | a2-4\>( gis4\!) r |
  cis,8-.\p\downbow e-. cis-. e-. b-. e-. cis-. e-. |
  %% 78
  d-.-4 e-. d-. e-. b-. e-. b-. e-. |
  a,-. e'-. a-.-4 e-. gis-. e-. a-. e-. |
  %% 80
  b'-. e,-. b'-. e,-. gis-. e-. b-. e-. |
  \repeat unfold 4 {<cis e>4-.} |
  %% 82
  d8-0 (fis) a-.-0 d-. gis (fis) e-.-4 d-. |
  cis (a-0) fis-. d-.-0 cis4 (e8. d16-0) |
  %% 84
  cis8-. e-.\f cis-. b-. gis-. \breathe b-. e-. gis-. |
  a-.-4 e (fis) d-.-0 cis (a) gis-. b-. |
  %% 86
  a-. e'-. cis-. a-. gis-. \breathe b-. e-. gis-. |
  a-.-0 e'-0 (fis) d-. cis (e-4) d-. b-. |
  %% 88
  a-.-0 e-. \repeat unfold 2 {<d e>-.} \repeat unfold 2 {<cis e>-.}
  \repeat unfold 2 {<d e>-.} |
  %% 89
  \repeat percent 2 {
    \repeat unfold 2 {<cis e>-.} \repeat unfold 2 {<d e>-.} } |
  \repeat unfold 3 {<cis e>4-.} r \bar "|."
}

%%% ------

titleduoIVmovementII = ##f

globalduoIVmovementII = {
  \time 3/4
  \tempo "Andantino grazioso." 4 = 88
  \key d \major
}

violinIduoIVmovementII = \new Voice \relative d' {
  \violinVoiceSettings

  \partial 4 fis8\upbow\pDolce (g) | a-0\< (b) cis-- d-- fis (e-0) |
  %% 2
  d4\> (cis\!) e,8 (fis) | \acciaccatura {a8-4} g8 (fis g) b (a-0 e) |
  %% 4
  g4 (fis) fis8 (g) | a-0\< (b) cis-- d-- e-0 (fis) |
  %% 6
  fis4\> (b,\!) fis'8 (e-0) | e-4\> (d\!) d\> \( (cis\!) cis\> (b\!) \) |
  %% 8
  b4 (a-0) \breathe d,8-0 (e) | <fis a>\< r <fis a> r <d a'> r |
  %% 10
  <g a>\> r <e a>\! r cis8\upbow (d-4) |
  %% 11
  <a e'> r <a e'>-._( r <cis e>-.) r | e4 (d-0) d8 (e) |
  %% 13
  <fis a>\< r <fis a>-.( r <d a'>-.) r | <gis b>4\>( d-0\!) <cis e>8 r |
  %% 15
  d-0 r e-._( r e-.) r | a,\< (cis) e-- a---4\! \breathe cis_\dolce (d) |
  %% 17
  e-0 (fis) g-- e-- b (cis) | e4-4 (d) a'8\> (fis\!) |
  %% 19
  fis\> (d\!) d\> \( (b\!) b\> (g\!)\) |
  %% 20
  << {\voiceOne fis4 (e)}
     \new Voice {\voiceTwo a,2} >> \oneVoice fis'8 (g) |
  %% 21
  a-0 (b) cis-- d-- e-4 (d) | cis4 (b) b'8 (g) |
  %% 23
  fis (a) fis-- d-- a-0 (cis) | e4-4 (d) \breathe a,8 (b) |
  %% 25
  cis ([d-4]) <a e'>-._( r <a g'>-.) r |
  %% 26
  << {\voiceOne g'4 (fis) }
     \new Voice {\voiceTwo a,2} >> \oneVoice fis''8\> (d\!) |
  %% 27
  d\> (b\!) b\> \( (g\!) g\> (e\!) \) | d4-4 (cis) d8-0 (e) |
  %% 29
  <fis a>\< r <fis a>-._( r <d a'>-.\!) r |
  %% 30
  << {\voiceOne a'4-4 (g) }
     \new Voice {\voiceTwo g,2} >> \oneVoice g8 (b) |
  %% 31
  d-0\> (fis) a4-4-- <a, g'>--\! | fis'8 (d-0 fis g a-0 b) |
  %% 33
  c2 c4-- | b4.\< e8-0 (g b) | gis\> (a) fis-- d-- a-0 (cis\!) |
  %% 36
  d2 r4 | r8 d,-0\upbow\< (ees e f fis\!) |
  %% 38
  g (b, e) \fingerNumberSpanner "3" g\startTextSpan (b g\stopTextSpan) |
  %% 39
  fis4 d8---0 fis-- a-4 (g) | fis (a-0) a' (a,-0 g' a,-0) |
  %% 41
  fis' (a,) a' (a, g' a,) | fis'\dim (a,) a' (a, g' a,) |
  %% 43
  fis' (a,) a' (a, g' a,) |  <a fis'>4 <a fis'>--\p (<a fis'>--) |
  %% 45
  <a fis'>2.\fermata \bar "|."
}

violinIIduoIVmovementII = \new Voice \relative d' {
  \violinVoiceSettings

  \partial 4 d8-0\p\upbow (e) | <fis a>\< r <fis a> r <d a'> r |
  %% 2
  <g a>\> r <e a>\! r cis\upbow (d-4) |
  <a e'> r <a e'>-._( r <cis e>-.) r | e4 (d-0) d8 (e) |
  %% 5
  <fis a>\< r <fis a>-._( r <d a'>-.\!) r |
  %% 6
  <gis b>4\> ( d-0\!) <cis e>8 r | d-0 r e-._( r e-.) r |
  %% 8
  a, (cis) d---0 e-- \breathe fis_\dolce (g) |
  %% 9
  a-0\< (b) cis-- d-- fis (e-0) | d4\> (cis\!) e,8 (fis) |
  %% 11
  \acciaccatura a8-4 g8 (fis g) b (a-0 e) | g4 (fis) fis8 (g) |
  %% 13
  a\<-0 (b) cis-- d-- e-0 (fis\!) | fis4\> (b,\!) fis'8\> (e-0\!) |
  %% 15
  e-4\> (d\!) d\> \( (cis\!) cis\> (b\!) \) |
  %% 16
  b4 (a-0) \breathe a,8 (b) | cis ([d-4]) <a e'>-._( r <a g'>-.) r |
  %% 18
  << {\voiceOne g'4 (fis)}
     \new Voice {\voiceTwo a,2} >> \oneVoice fis''8\> (d\!) |
  %% 19
  d\> (b\!) b\> \( (g\!) g\> (e\!) \) | d4-4 (cis) d8-0 (e) |
  %% 21
  <fis a> r <fis a>-._( r <d a'>-.) r |
  %% 22
  << {\voiceOne a'4-4 (g)}
     \new Voice {\voiceTwo g,2} >> \oneVoice g8 (b) |
  %% 23
  d-0 (fis a4-4) <a, g'> |
  %% 24
  << {\voiceOne g'4 (fis)}
     \new Voice {\voiceTwo a,2} >> \oneVoice \breathe cis'8 (d) |
  %% 25
  e-0 (fis) g-- e-- b (cis) | e4-4 (d) a'8\> (fis\!) |
  %% 27
  fis\> (d\!) d\> \( (b\!) b\> (g\!) \) |
  %% 28
  << {fis4^( e)}
     \new Voice {\voiceTwo a,2} >> \oneVoice fis'8 (g) |
  %% 29
  a-0\< (b) cis-- d-- e-4 (d\!) | cis4 (b) b'8 (g) |
  %% 31
  fis\> (g) fis-- d-- a-0 (cis\!) | d2 r4 |
  %% 33
  r8 d,8-0\upbow\< (ees e f fis\!) |
  %% 34
  g (b, e) \fingerNumberSpanner "3" g\startTextSpan (b g\stopTextSpan) |
  %% 35
  fis4 d8---0 fis-- a-4 (g) | fis (d-0) fis (g a-0 b) | c2 c4 |
  %% 38
  b4.\< e8-0 (g b) | gis\> (a) fis-- d-- a-0 (cis\!) |
  %% 40
  \repeat percent 2 {d4 (a-0) cis--} | d4-- a,\dim (cis) |
  %% 43
  d---4 a (cis) | d---4 <d d'>--\p (<d d'>--) |
  %% 45
  <d d'>2.\fermata \bar "|."
}

%%% ------

titleduoIVmovementIII = "Rondo."

globalduoIVmovementIII = {
  \time 6/8
  \tempo "Allegretto." 8 = 123
  \key a \major
}

violinIduoIVmovementIII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 8 cis8-.\pDolce\upbow |
  %% 1
  cis4 (cis8-.\<) \acciaccatura d8 cis8-. bis-. cis-. |
  %% 2
  e4-4\> (d8) cis4.\! | b4 (cis8) d-. e-.-0 fis-. |
  %% 4
  a,-.-0 gis-. fis-. e-. e'-.-4 d-. |
  %% 5
  cis4\< (cis8-.) \acciaccatura d8 cis8-. bis-. cis-. |
  %% 6
  e4-4\> (d8) cis4.\! | b8 (fis' e-0) d-. b-. gis-. |
  %% 8
  b4. (a4-0) \breathe e8-. | \repeat percent 2 {gis-. e-. e-.} |
  %% 10
  a-.-4\< e-. b'-. cis-. e,-. e-. | b'-.\> e,-. e-. a-.-4 e-. e-.\! |
  %% 12
  \fingerNumberSpanner "3"
  gis-.\startTextSpan b-. gis-.\stopTextSpan e (gis a-4) |
  %% 13
  b4_\dolce (b8-.) \acciaccatura c8 b8-. a-.-0 b-. | c4 (d8) e4.-4 |
  %% 15
  \repeat unfold 2 {dis4 (dis8--)} | e4.-4 (e8) dis (d) |
  %% 17
  cis4\< (cis8-.) \acciaccatura d8 cis8-. bis-. cis-. |
  %% 18
  e4-4\> (d8) cis4.\! | b4 (cis8) d-. e-.-0 fis-. |
  %% 20
  a,-.-0 gis-. fis-. e-. e'-.-4 d-. |
  %% 21
  cis4\< (cis8-.) \acciaccatura d8 cis8-. b-. cis-. |
  %% 22
  d4 (e8-4) fis4. | e8-.-0\> cis-. a-.-0 e-. fis-. gis-.\! |
  %% 24
  b4. (a4-0) \breathe e8-. |
  %% 25
  b'4 (b8-.) \acciaccatura cis8 b8-. a-.-0 b-. |
  %% 26
  cis4\< (d8) e4.-4 | d8-.\> b'-. d,-. cis-. a'-. cis,-.\! |
  %% 28
  b (dis e-4) e,4 r8 | gis-.\downbow e-. e-. gis-. e-. e-. |
  %% 30
  a-.-4 e-. b'-. c-. a-.-0 g-. | f (a-0 b) c (b a-0) |
  %% 32
  \fingerNumberSpanner "3"
  gis-.\startTextSpan b-. gis-.\stopTextSpan e-. fis-. gis-. |
  a-.-4 e-. cis-. a-. cis-. e-. |
  %% 34
  gis,-1 b-.-3 e-.-2 a,-.-1 cis-. e-. |
  %% 35
  d-.-0 fis-. e-. d-.-4 cis-. b-. | e4 r8 e-.\upbow fis-. gis-. |
  %% 37
  a,-. cis-. e-. a, e'-. g-. | fis-. a-.-4 cis-. d4 (dis8) |
  %% 39
  e4-4 (e,8) gis,-. b-. d-.-4 | d-0 (e d) cis4 a'8---0\f\upbow |
  %% 41
  fis'4 (d8-.) a8---0 fis-- d---0 | a4.~ a4 a'8---0 |
  %% 43
  g'8-- e---0 cis-- a---0 g-- e-- |
  %% 44
  cis4.~ cis4 a'8---0\pDolce |
  %% 45
  fis'4 (fis8-.) \acciaccatura g8 fis-. e-.-0 fis-. | a4 (g8) fis4. |
  %% 47
  e8 (b' a) g-. fis-. e-. | d-. cis-. b-. a-.-0 g-. e-. |
  %% 49
  d---0\f \repeat unfold 6 {<a fis'>--} a'---4 g-- fis-- e-- d---0 |
  %% 51
  cis-- \repeat unfold 6 {<a e'>--} b'-- a---0 g-- fis-- e-- |
  %% 53
  d-.-0\p fis-. a-.-4 c,-. fis-. a-.-4 |
  %% 54
  b,-. d-.-0 fis-. g-. b-. gis-. | a-.-0 d-. fis-. a4 (g8) |
  %% 56
  fis4 r8 r4. | r8 b--\f\upbow gis-- e---0 fis-- d-- |
  %% 58
  cis-- a'-- e---0 \acciaccatura fis8 e8-- d-- cis-- |
  %% 59
  cis (b) b-. b (a-0) a-. | gis-. b-. e-.-4 dis4.-> |
  %% 61
  e8-.-4 b-. e-. dis4.-> | e8-.-4 e,\p (fis) gis-. gis (a-4) |
  %% 63
  b-.\< gis (a-4) b-. b (cis\!) | d (b') a-. a (gis) fis-. |
  %% 65
  fis\> (e-0) dis-. fis (e-0) \breathe d-. |
  %% 66
  cis4_\dolce\< (cis8-.) \acciaccatura d8 cis8-. bis-. cis-. |
  %% 67
  e4-4\> (d8) cis4.\! | b4 (cis8) d-. e-.-0 fis-. |
  %% 69
  a,-.-0 gis-. fis-. e-. fis-. gis-. |
  %% 70
  a-.-4\< e-. cis-. a-. e'-. g-. | fis-. a-.-4 cis-. d4 (dis8\!) |
  %% 72
  e4-4\f r8 <d, e>4\upbow r8 |
  %% 73
  <cis e>8-.\> e-. gis-. a-.-0 b-. cis-.\! |
  %% 74
  d4_\dolce (d8--) d (e-4 d) | cis4 (a'8) e4.-0 |
  %% 76
  d4 (d8--) d (e-4 d) | cis-. a'-. gis-. fis-. e-.-0 dis-. |
  %% 78
  e-4 (cis a-0) e-. fis-. gis-. | a4-4 r8 r4. |
  %% 80
  gis,8-.-1\p\downbow b-.-3 e-.-2 gis,-. b-. e-. |
  %% 81
  a,-.-1 cis-. e-. a,-. cis-. e-. | gis,-.-1 b-.-3 e-.-2 gis,-. b-. e-. |
  %% 83
  a,4-1 (cis8-.) d-.-0 e-. fis-. | e4 r8 <d e>4 r8 |
  %% 85
  <cis e>4 (e'8-.-4\f) e,-- fis-- gis-- |
  %% 86
  a---0 cis-- d-- e---0 fis-- gis-- | a-- e---0 cis-- fis-- d-- b-- |
  %% 88
  e---4 cis-- a---0 gis-- e'---4 d-- |
  %% 89
  cis4 (e8-.-4) e,-- fis-- gis-- | a---0 cis-- d-- e---0 fis-- gis-- |
  %% 91
  a-- e---0 cis-- fis-- d-- b-- | e---4 cis-- a-- e'---4 d-- b-- |
  %% 93
  a4-0( \breathe cis8-.\p) e4.-4~ | e \acciaccatura e8 d8 (cis d) |
  %% 95
  cis4. b8\f (d fis) | e4-0 r8 <b, gis'>4\downbow r8 |
  %% 97
  <a e' a>\downbow r8 r4. \bar "|."
}

violinIIduoIVmovementIII = \new Voice \relative a {
  \violinVoiceSettings

  \partial 8 r8 | a8-.\p\downbow\< cis-. e-. a,-. cis-. e-. |
  %% 2
  gis,-.-1\> b-.-3 e-.-2 a,-.-1 cis-. e-.\! |
  %% 3
  d-.-0 fis-. e-. d-.-4 cis-. b-. | e4 r8 e-.\upbow fis-. gis-. |
  %% 5
  a,-.\< cis-. e-. a,-. cis-. e-. |
  %% 6
  gis,-.-1\> b-.-3 e-.-2 a,-.-1 b-. cis-.\! | d4-4 r8 e4 r8 |
  %% 8
  a,8 (cis e) a4-4 \breathe b8-._\dolce\upbow |
  %% 9
  b4 (b8-.) \acciaccatura cis8 b8-. a-.-0 b-. |
  %% 10
  cis4\< (d8) e4.-4 | d8-.\> b'-. d,-. cis-. a'-. cis,-.\! |
  %% 12
  b (dis e-4) e,4 r8 | gis8-.\downbow e-. e-. gis-. e-. e-. |
  %% 14
  a-.-4 e-. b'-. c-. a-.-0 g-. | f (a-0 b) c (b a-0) |
  %% 16
  \fingerNumberSpanner "3"
  gis-.\startTextSpan b-. gis-.\stopTextSpan e-. fis-. gis-. |
  a,-.\< cis-. e-. a,-. cis-. e-. |
  %% 18
  gis,-.-1\> b-.-3 e-.-2 a,-.-1 cis-. e-.\! |
  %% 19
  d-.-0 fis-. e-. d-.-4 cis-. b-. | e4 r8 e-.\upbow fis-. gis-. |
  %% 21
  a,-.\< cis-. e-. a,-. e'-. g-. |
  %% 22
  fis-. a-.-4 cis-. d-. fis,-. d-.-0 |
  %% 23
  e-.\> a-.-4 cis-. e4-4 (d8\!) | d4. (cis4) r8 |
  %% 25
  gis8-.\downbow e-. e-. gis-. e-. e-. |
  %% 26
  a-.-4\< e-. b'-. cis-. e,-. e-. | b'-.\> e,-. e-. a-.-4 e-. e-.\! |
  %% 28
  \fingerNumberSpanner "3"
  gis-.\startTextSpan b-. gis-.\stopTextSpan e (fis a-4) |
  %% 29
  b4_\dolce (b8-.) \acciaccatura c8 b-. a-.-0 b-. | c4 (d8) e4.-4 |
  %% 31
  \repeat unfold 2 {dis4 (dis8--)} | e4.-4 (e8) dis (d) |
  %% 33
  cis4-.\< (cis8-.) \acciaccatura d8 cis-. bis-. cis-. |
  %% 34
  e4-4\> (d8) cis4.\! | b4 (cis8) d-. e-.-0 fis-. |
  %% 36
  a,-.-0 gis-. fis-. e-. e'-.-4 d-. |
  %% 37
  cis4\< (cis8-.) \acciaccatura d8 cis8-. b-. cis-. |
  %% 38
  d4 (e8-4) fis (gis a) | a\> \( (e-0) cis-.\) e-4 \( (d) b-.\!\) |
  %% 40
  b4. (a4-0) r8 |
  %% 41
  <a, fis'>--\f\downbow \repeat unfold 2 {<a fis'>--}
  \repeat tremolo 3 {<a fis'>--} |
  %% 42
  <a fis'> a'---4 g-- fis-- e-- d---0 |
  %% 43
  \repeat unfold 2 {\repeat tremolo 3 {<a e'>--}} |
  %% 44
  <a g'>-- b'-- a---0 g-- fis-- e-- |
  %% 45
  d-.-0\p fis-. a-.-4 d,-. fis-. a-. |
  %% 46
  cis,-. e-. a-.-4 d,-.-0 e-. fis-. | g4 (dis8-.-1) e-.-1 fis-. g-. |
  %% 48
  a4.-4 r4 a8---0\f\upbow | fis'4 (d8-.) a---0 fis-- d---0 |
  %% 50
  a4.~ a4 a'8---0 | g'-- e---0 d-- a---0 g-- e-- |
  %% 52
  cis4.~ cis4 a'8---0\p |
  %% 53
  fis'4 (fis8-.) \acciaccatura g8 fis8-. e-.-0 fis-. | g4 (a8) b4. |
  %% 55
  a8-. fis-. d-. a-.-0 b-. cis-. |
  %% 56
  d-. \breathe fis--\f d-- b-- d-- b-- | gis4 r8 <gis b>4.\upbow |
  %% 58
  a4-4 (cis,8) cis-- b-- a-- | d4.-0 dis-1 | e4-1 (gis8) a-0->( c a) |
  %% 61
  gis4. a8-0-> (c a) | gis4 r8 r4. |
  %% 63
  r8 e8\p\upbow\< (fis) gis-. gis (a-4\!) | b4 r8 e,4\upbow (fis8) |
  %% 65
  gis4\> r8 e4\! r8 | a,8-.\p\downbow\< cis-. e-. a,-. cis-. e-. |
  %% 67
  gis,-.-1\> b-.-3 e-.-2 a,-.-1 cis-. e-.\! |
  %% 68
  d-.-0 fis-. e-. d-.-4 cis-. b-. | e4 r8 e8-.\upbow e'-.-4 d-. |
  %% 70
  cis4\< (cis8-.) \acciaccatura d8 cis8-. b-. cis-. |
  %% 71
  d4 (e8-4) fis-. gis-. a-. |
  %% 72
  a\f \( (e-0) cis-. \) e-4 \( (d) b-. \) | a4-0 r8 r4. |
  %% 74
  gis,8-.-1\p\downbow b-.-3 e-.-2 gis,-. b-. e-. |
  %% 75
  a,-.-1 cis-. e-. a,-. cis-. e-. |
  %% 76
  gis,-.-1 b-.-3 e-.-2 gis,-. b-. e-. |
  %% 77
  a,4-1 (cis8-.) d-.-0 e-. fis-. | e (a-4 cis) e4-4 (d8) |
  %% 79
  cis-. e,-. gis-. a-.-0 b-. cis-. | d4_\dolce (d8--)d (e-4 d) |
  %% 81
  cis4 (a'8) e4.-0 | d4 (d8--) d (e-4 d) |
  %% 83
  cis-. a'-. gis-. fis-. e-.-0 dis-. |
  %% 84
  fis \( (e-0) cis-.\) e-4 \( (d) b-.\) | a4-0 r8 <d, e>4\f\upbow r8 |
  %% 86
  <cis e>4\downbow r8 <b e>4 r8 | <a e'>4 r8 d4-0 r8 |
  %% 88
  e4 r8 <e b'>4 r8 | a4-0 (<cis, e>8-.) \repeat tremolo 3 {<d e>8--} |
  %% 90
  \repeat tremolo 3 {<cis e>8--} \repeat tremolo 3 {<b e>--} |
  %% 91
  \repeat tremolo 3 {<a e'>--} d---0 fis-- d-- |
  %% 92
  \repeat tremolo 3 {<e cis'>8--} \repeat tremolo 3 {<e d'>8--} |
  %% 93
  <e cis'>4 r8 r4 a8-.-4\p\upbow | gis4. (e) | a-4 fis8\f (d-4 b) |
  %% 96
  e4 r8 <d e>4\downbow r8 | <cis e>\downbow r8 r4. \bar "|."
}

%%% ------------ Duo V ------------

titleduoVmovementI = ##f

globalduoVmovementI = {
  \time 4/4
  \tempo "Moderato" 4 = 111
  \key f \major
}

violinIduoVmovementI = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 a8.-0\pDolce\upbow (bes16) | c4 d8-- e---4 f4\< (fis\!) |
    %% 2
    a8 (g) bes4~\> \( bes8 a\) g-- f--\! |
    %% 3
    \acciaccatura g8 f8 (e-0) e-4 (d) d (c) c (bes) |
    %% 4
    bes (a-0 d c) c4 \( a8.-0 (bes16) \) | c4 d8-- e---4 f4\< (fis\!) |
    %% 6
    a8 (g) bes4~\> \( bes8 a\) g-- f--\! |
    %% 7
    f8 (e-0) d-- c-- b (c d e-4) | g2 (f4) \breathe f,8. (g16) |
    %% 9
    a4-4 bes8---4 g---3 a4-4\< (c\!) | bes4 g8-- a---4 bes4-1\> (b\!) |
    %% 11
    c-. bes-. a-.-0 e-. | g8 (f bes a-0) a4 \( f8. (g16)\) |
    %% 13
    a4-4 bes8---4 g---3 a4-4 (f) | dis4-1 (e8-1) f-. g-. a-.-4 b-. c-. |
    %% 15
    <f, a-0>4-. <f a>-. <f a>-. d-.-0 |
    %% 16
    e8-. g-. e-. c-. g4-. \breathe g'--\f | g'4. e8-.-0 c-. g-. e-. c-. |
    %% 18
    c2 (b4) g'-- | g'4. f8-. d-. b-. g-. f-. |
    %% 20
    f2 (e8) c' (d c) | b-. bes (c bes) a-.-0 d (e-4 d) |
    %% 22
    cis-. c( d c) b-.\< d \( (f-4) f-.\) |
    %% 23
    \repeat percent 2 {f4.\rf\> (d8-3) b8\< \( (d f-4) f-.\!\)} |
    %% 25
    f2.\rf\> d4---3 | c\p (b2\fermata) r4 |
    %% 27
    c,8-.\downbow g-. c-. g-. d'-.-4 g,-. d'-. g,-. | e' r c r f r d-0 r |
    %% 29
    e r c r g r g' r | e'2-4 g8 (f e-0 f) | g4. (gis8) b8 (a) f-. d-. |
    %% 32
    a' (g) e-.-4 c-. b-. (g) f-. d-.-0 |
    %% 33
    c--\f d---4 e-- f-- g-- a---4 b-- c-- |
    %% 34
    b-- c-- d-- e---4 f-- a-- g-- f-- |
    e8---0 f-- g-- a-- b---4 c---4 a---3 f-- |
    %% 36
    f (e-0) a-- g-- g (f) d-- b-- |
    c4 c,8--\downbow d---4 e-- f-- d---0 e-- |
    %% 38
    <g, f'>4-. d'-.-0 b-. <g f'>-. |
    <g e'>8-- g'-- e-- c-- <f a>4-.-0 <g, f'>-. | <g e'>-. c'-. c,-.
  }
  e8.\pDolce (f16) | g4 a8---0 b-- c4\< (cis\!) |
  %% 42
  e8-4 (d) f4~\> \( f8 e-0\) d-- c--\! |
  %% 43
  c (b) a' (g) \repeat tremolo 2 {a (g)} | g4. (f8 e4-0) e,8. (f16) |
  %% 45
  g4 a8---0 b-- c4\< (cis\!) |
  %% 46
  e8-4\mf (d) b'4~ \( \tuplet 3/2 {b8 a g} \tuplet 3/2 {fis e-0 d\)} |
  d8 (c) a'4~ \( \tuplet 3/2 {a8 g fis} \tuplet 3/2 {e-0 d c\)} |
  %% 48
  b (g') e---0 cis-- e-4 (d) c-- a---0 |
  g (a-4) f--\dim d---0 b-- g-- \breathe c8.\p (d16-4) |
  %% 50
  e4 f8-- d---0 e4 (g) | f d8---0 e-- f4 (fis) |
  %% 52
  g \repeat unfold 3 {<g, f'>8 r} |
  %% 53
  <g e'> (c) b (d-4) c (g) c8. (d16-4) | e4 f8-- d---0 e4 (fis) |
  %% 55
  g8 r c, r e r c r | f r a, r c r f r |
  %% 57
  \repeat unfold 3 {<bes, d>8 r8} <b d> r |
  %% 58
  <c e>4 r <e c'>8-.\f\downbow \repeat unfold 3 {<e c'>-.} |
  \repeat unfold 3 {<f c'>-.} g-.
  \fingerNumberSpanner "4"
  aes-.\startTextSpan c-. aes-.\stopTextSpan f-. |
  %% 60
  c-. c'\f (b c) bes'4. g8-. | aes4. e8-.-0 f-. c-. aes-. f-. |
  %% 62
  c-. e\p (g c) b4. b8-. | c-.\< e-0 (f g\!) aes4-.\rf b,-. |
  %% 64
  c-. r f,8\p\upbow (aes g f) | e-. c'\< (d e-4) f4-4\rf <g,, f'> |
  %% 66
  <g e'> \breathe c8--\p d---4 e\< (f g8.\> f16\!) |
  f8 (e) e-- f-- g\< (a-4 bes8.\> a16-0\!) |
  %% 68
  a8-4 (g) e-- f-- g-- (a---4 bes-- b--) | c4 d8-- e---4 f4\< (fis\!) |
  %% 70
  a8 (g) bes4~\> \( bes8 a\) g-- f-- |
  f\dim (e-0\!) e-4 (d) d (c) c (bes) | bes (a-0 d c) c4 a8---0 bes-- |
  c4 d8-- e---4 f4\< (ees) |
  %% 74
  ees8\mf (d) bes'4~ \( \tuplet 3/2 {bes8 a g} \tuplet 3/2 {f e-0 d\)} |
  d8 (c) a'4~ \( \tuplet 3/2 {a8 g f} \tuplet 3/2 {e d c\)} |
  %% 76
  c8 (b) g'4~\( \tuplet 3/2 {g8 f e-0} \tuplet 3/2 {d c bes\)} |
  a2-0\pDolce c8 (bes a-0 bes) | c4. (cis8) e-4 (d) bes-. g-. |
  d' (c) a-.-0 f-. e (c d-4 e) |
  %% 80
  \repeat tremolo 2 {f8-. c-.} \repeat tremolo 2 {g'-. c,-.} |
  a'-4 f g a-0  bes r g r | a4---4 f8-. a-.-0 c4 (bes) |
  a8---0\f e-- f-- g-- a---0 bes-- g-- a---4 | bes r g r e r bes r |
  a r bes r c r e r | f--\f g-- a---0 bes-- c-- d-- e---0 f-- |
  e (bes') g-. e-. c (cis) d-. e-.-4 |
  %% 88
  g (f) d-. bes-. a-0 (c) bes-. g-. |
  f4-. \breathe c'--\pDolce (c-- c--) | bes'2 a8 (g f e-0) |
  f4-. c-- (c-- c--) | bes2 a8-4 (g f e) | e1( |
  f4) r a---4\pp\upbow r | f2\downbow r \bar "|."
}

violinIIduoVmovementI = \new Voice \relative f' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 f8.\upbow\pDolce (g16) | a4-4 bes8---4 g---3 a4-4\< (c) |
    %% 2
    bes\> g8-- a---4\! bes4\> (b\!) | c-.\p bes-. a-.-0 e-. |
    %% 4
    g8 (f bes-4 a-4) a4 \( f8. (g16) \) | a4-4 bes8---4 g---3 a4-4 (c) |
    %% 6
    bes g8-- a---4 bes4 (b) | c bes8-- a---0 gis (a-4 bes-4 g-3) |
    %% 8
    e (g c bes a4-0) \breathe a8. (bes16) | c4 d8-- e---4 f4\< (fis\!) |
    %% 10
    a8 (g) bes4~\> \( bes8 a\) g-- f--\! |
    %% 11
    \acciaccatura g8 f8 (e-0) e-4 (d) d (c) c (bes) |
    %% 12
    bes (a-0 d c) c4 \( a8.-0 (bes16)\) | c4 d8-- e---4 f4\< (a\!) |
    %% 14
    fis4 (g2\>) f8 (e-0\!) | e8-4 (d) cis-- d-- e-0 (f) gis-- a-- |
    %% 16
    c,2 (b4) r | e,8\f\downbow (g,) e'-- g,-- \repeat tremolo 2 {e'-- g,--} |
    %% 18
    \repeat unfold 2 {\repeat tremolo 2 {f'-- g,--}} |
    %% 19
    b (g) b-- g-- \repeat unfold 2 {
      \repeat tremolo 2 {b-- g--}} c r c4-. | d-.-4 e-. f-. d-.-0 |
    %% 22
    e-. fis-. g-. g,-. |
    %% 23
    \repeat percent 2 {
      <aes f'>8\fz \repeat unfold 3 {<aes f'>8} \repeat tremolo 4 {<g f'>} } |
    %% 25
    <g f'>4\fz g4\dim (b d-0) |
    %% 26
    <g, f'>2.\p\fermata \breathe g'4--_\dolce | e'2-4 g8 (f e-0 f) |
    %% 28
    g4. (gis8) b (a) f-. d-. | a' (g) e-4 c-. b (g) f-. d-.-0 |
    %% 30
    \repeat tremolo 2 {c8-. g-.} \repeat tremolo 2 {d'-.-4 g,-.} |
    %% 31
    e'-. c-. d-.-4 e-. f4-. d-.-0 | e-. c-. g'-. g,-. |
    %% 33
    c8--\f b-- c-- d---4 e-- f-- d---0 e-- | <g, f'>4-. d'-.-0 b-. g-. |
    %% 35
    c r <f a-0> r | g r g, r | c8-- d---4 e-- f-- g-- a---4 b-- c-- |
    %% 38
    b-- c-- d-- e---4 f-- g-- a-- b-- |
    %% 39
    c---4 g---2 e---0 c-- a'4-. <d,, b'>-. | <e c'>-. <c' e-0>-. <e, c'>
  }
  c8.\upbow\pDolce (d16-4) | e4 f8-- d---0 e4 (g) |
  %% 42
  f d8---0 e-- f4 (fis) | g \repeat unfold 3 {<g, f'>8 r8} |
  %% 44
  <g e'>8 (c) b (d-4) c (g) c8. (d16-4) | e4 f8-- d---0 e4\< (a-4) |
  %% 46
  fis\mf g8 r b r g r | a-4 r d,-0 r fis r d-0 r | g-. r g4 (fis) <c d>( |
  %% 49
  <b d>8) r d-0\dim r f r e8.\pDolce (f16) | g4 a8---0 b c4 (cis) |
  e8-4 (d) f4->~ \( f8 e-0 d c \) |
  %% 52
  c8 (b) a' (g) \repeat tremolo 2 {a (g)} | g4. (f8 e4-0) e,8. (f16) |
  g4 a8---0 b-- c4\< (d) |
  c8\mf (bes) g'4~ \( \tuplet 3/2 {g8 f e-0} \tuplet 3/2 {d c bes\)} |
  %% 56
  bes (a-0) f'4~ \( \tuplet 3/2 {f8 e-0 d} \tuplet 3/2 {c bes a-0\)} |
  a8-4 (g) bes-- d-- g (aes g f) | e-.-0 c\f (b c) bes'4. g8-. |
  aes4. e8-.-0 f-. c-. aes-. f-. |
  %% 60
  c4 r <e c'>8-.\f\downbow \repeat unfold 3 {<e c'>-.} |
  \repeat unfold 3 {<f c'>-.} g-.
  \fingerNumberSpanner "4"
  aes-.\startTextSpan c-. aes-.\stopTextSpan f-. |
  %% 62
  c4 r f8\p\upbow (aes g f) | e-.\< c' (d e-4) e4-.-4\sf <g,, f'>4-. |
  <g e'>8-. e'\p (g c) b4. b8-. | c-. e-0\< (f g) aes4-.\sf b,-. |
  %% 66
  c-. r r2 | r4 c,8--\p\upbow d---4 e\< (f\! g8.\> f16\!) |
  %% 68
  f8 (e) c-- d---4 e-- (f-- g-- gis--) |
  a4-4 bes8---4 (g---3) a4-4\< (c) | bes g8-- a---4 bes4\> (b\!) |
  d8\dim (c\!) c (bes) bes (a-0) a-4 (g) |
  %% 72
  g( f bes-4 a-4) a4 f8-- g-- | a4-4 bes8---4 g---3 a4-4\< (g) |
  %% 74
  fis8\mf r d-0 r g r bes r | e, r c r f r a-4 r |
  %% 76
  d,-0 r bes r e r g r |
  f-.\p c-. f-. c-. \repeat tremolo 2 {g'-. c,-.} |
  %% 78
  a'-.-4 f-. g-. a-.-0 bes r g r | a-4 r f r c-. c'_\dolce (b bes) |
  a2-0 c8 (bes a bes) | c4. (cis8) e8-4 (d) bes-. g-. |
  %% 82
  c (a') f-. c-. d (bes) g-. e-. |
  f--\f g-- a---0 bes-- c-- d-- e---0 f-- |
  %% 84
  e-- bes'-- g-- e-- c-- cis-- d-- e---4 |
  g (f) d-- bes-- a-4 (g c bes) |
  %% 86
  a---0\f e-- f-- g-- a---0 bes-- g-- a---4 | bes r g r e r bes r |
  a r bes r c r e r | f4 r r2 |
  %% 90
  g,8\p\downbow (bes c bes) g (bes c bes) |
  \repeat percent 2 {a (c f c)} | \repeat percent 2 {g (bes c bes)} |
  g (bes a bes a bes c bes | a4) r c--\pp\upbow r | a2\downbow r \bar "|."
}

%%

titleduoVmovementII = ##f

globalduoVmovementII = {
  \time 4/4
  \tempo "Tempo di Marcia." 4=99
  \key f \major
}

violinIduoVmovementII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 4 a4---0\f\upbow | d-- f-- r a,---0\upbow |
  %% 2
  e'---0 g-- r a,---0\upbow  | d-- e---4 f-- gis-- |
  gis8( \tuplet 3/2 {a16 gis fis} gis8 a) a,4-0-- (a--) |
  %% 5
  d-- f-- r a,---0\upbow | e'---0 g-- r a,---0\upbow |
  %% 7
  bes'8 (a) f-- d-- a4---0 (cis--) | e2-4 (d4) r |
  %% 9
  r a,4--\upbow d---0 f-- | r a,--\upbow e'-- g-- |
  %% 11
  f-- e-- d---0 bes-- | a (cis8) e-- a---4 g-- f-- e-- |
  d8-0 r a4-- d-- f-- | r a,--\upbow e'-- g-- |
  f-- d8---0 f-- a4---4 (<a, g'>--) |
  %% 16
  g'8 (e a-4 g f4) \breathe a4---0\f | cis-- e---4 r a,---0\upbow |
  %% 18
  d-- f-- r a,---0\upbow | g'4. (g8--) \acciaccatura g8 f8 (e-0 f g) |
  %% 20
  f2 (e4-0) a,---0 | cis-- e---4 r a,---0\upbow | d-- f-- r d--\upbow |
  %% 23
  bes'4.--\ff g8-. ees-. bes-. g-. ees-. | ees2-> d->-4 |
  %% 25
  cis->\dim d4-0 (e) | f8\p (g16 f) e8-- d---0 bes'4-.-4 (cis,-.-3) |
  %% 27
  d4-.-0 d'-. d,-. r | r a--\f\upbow cis-- e-- | r a,-- d---0 f-- |
  %% 30
  r cis--\upbow d---4 f-- | a---4 a,-- a'-- r |
  %% 32
  r a,--\upbow cis-- e-- | r a,--\upbow d---0 f-- |
  %% 34
  <g, ees'>8-.\ff \repeat unfold 3 {
    <g ees'>8-.} \repeat tremolo 4 {<g ees'>8-.} |
  %% 35
  g2-> a-> | bes-> a4\dim (gis) | a\p cis8-- d---4 g,4-.( a-.) |
  %% 38
  d-.-4 a''-.\mf a-. a-. | a-- g8-- f-- f( e-0 a g) |
  %% 40
  f4-. a,-.-0 a-. a-. | a---4 g8--( f--) bes4-.-4 (cis,-.-3) |
  d-.-4 a''-.\p a-. a-. | a-- g8-- f-- f (e-0 a g) |
  %% 44
  f4-. a,-.-0\dim a-. a-. | a---4 g8-- f-- bes4-.-4 (cis,-.-3) |
  d-.-4 r f--\pp\upbow r d2-0\downbow r \bar "|."
}

violinIIduoVmovementII = \new Voice \relative a {
  \violinVoiceSettings

  \partial 4 r4 | r a--\f\upbow d---0 f-- | r a,--\upbow e'-- g-- |
  %% 3
  f-- e-- d---0 bes-- | a( cis8) e-- a---4 g-- f-- e-- |
  %% 5
  d-0 r a4-- d-- f-- | r a,--\upbow e'-- g-- |
  %% 7
  f-- d8---0 f-- a4---4( <a, g'>--) |
  %% 8
  g'8 (e a-4 g f4) \breathe a---0 | d-- f-- r a,---0\upbow |
  %% 10
  e'---0 g-- r a,---0\upbow | d-- e---4 f-- gis-- |
  %% 12
  gis8( \tuplet 3/2 {a16 gis fis} gis8 a) a,4---0 (a--) |
  %% 13
  d-- f-- r a,---0\upbow | e'---0 g-- r a,---0\upbow |
  %% 15
  bes'8 (a) f-- d-- a4---0 (cis--) | e2-4 (d4) r |
  %% 17
  r a,4--\f\upbow cis-- e-- | r a,--\upbow d---0 f-- |
  %% 19
  r cis--\upbow d---4 f-- | a---4 a,-- a'-- r |
  %% 21
  r a,--\upbow cis-- e-- | r a,--\upbow d---0 f-- |
  %% 23
  <g, ees'>8-.\ff \repeat unfold 3 {
    <g ees'>-.} \repeat tremolo 4 {<g ees'>-.} | g2-> a-> |
  %% 25
  bes->\dim a4 (gis) | a--\p cis8-- d---4 g,4-. (a-.) |
  %% 27
  d-.-0 f-. d-. \breathe a'---0\f | cis-- e---4 r a,---0\upbow |
  d-- f-- r a,---0\upbow |
  %% 30
  g'4. (g8--) \acciaccatura g8 f8( e-0 f g) | f2 (e4-0) a,---0 |
  cis-- e---4 r a,---0\upbow |
  d-- f-- r d--\upbow | bes'4.\ff g8-. ees-. bes-. g-. ees-. |
  %% 35
  ees2-> d->-4 | cis->\dim d4-0( e) |
  %% 37
  f8\p (g16 f) e8-- d---0 bes'4-.-4 (cis,-.-3) |
  d-.-4 <f a-0>-.\mf <e a>-. <g a>-. |
  %% 39
  <f a>-- e8-- d---0 cis4-. (e-.) |
  d-.-0 <a f'>-. <a e'>-. <a g'>-. |
  %% 41
  <a f'>-- e'8-- d---0 g,4-. (a-.) |
  d-.-4 <f a-0>-.\p <e a>-. <g a>-. |
  %% 43
  <f a>-- e8-- d---0 cis4-. (e-.) |
  d-.-0 <a f'>-. <a e'>-. <a g'>-. |
  %% 45
  <a f'>-- e'8-- d---0 g,4-. (a-.) | d4-4 r a--\pp\upbow r |
  d2-4\downbow r \bar "|."
}

%%

titleduoVmovementIII = "Rondo."

globalduoVmovementIII = {
  \time 6/8
  \tempo "Allegretto." 8 = 123
  \key f \major
}

violinIduoVmovementIII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 4. a8-.-0\p\upbow( bes-. b-.) | c4( c8-.) c-.( d-. e-.-4) |
  %% 2
  g4( f8) \acciaccatura g8 f-. e-.-0 f-. |
  \repeat percent 2 {fis (g) c,-.} | a'4\> (f8\!) a,-.-0( bes-. b) |
  %% 5
  c4 (c8-.) c-.( d-. e-.-4) | g4( f8) e-.-0 f-. g-. |
  %% 7
  c,-. d-. e-.-4 g,4( b8-.) | d4\> (c8\!) \breathe f,-.( g-. gis-.-4) |
  %% 9
  \repeat tremolo 3 {<f a-0>8-.} \repeat tremolo 3 {<g bes>-.} |
  %% 10
  \repeat unfold 2 {\repeat tremolo 3 {<f a>-.}} |
  %% 11
  e-. g-. bes-.-4 e,-.-1 g-. bes-.-4 |
  %% 12
  f-.-2 a-.-0 c-. f,-.( g-. gis-.-4) |
  \repeat tremolo 3 {<f a-0>-.} e-.( d-.-0 c-.) |
  %% 14
  b-. d-.-0 g-. c,-. d-.-4 e-. | e-. f-. g-. g,-. g'-. f-. |
  %% 16
  << {\voiceOne f4\>( e8\!)}
     \new Voice {\voiceTwo g,4.} >> \oneVoice \breathe
  \acciaccatura d''8 c8-.\f b-. c-. |
  %% 17
  bes'4\> (g8\!) \acciaccatura d8 c8-. b-. c-. |
  a'4\>( f8\!) c-. d-. e-.-4 | f-. a-. e-.-0 f( c) a-.-0 | g4. r |
  %% 21
  e8-.\p\downbow g-. c-. e,-. g-. c-. | f,-. aes-. c-. aes4( g8-.) |
  %% 23
  f4( ees8-.) des4. | c4( g''8-.\f) g4( f8-.) |
  %% 25
  e-.-4 d-. c-. b-. a-.-4 g-. | c-. e-.-0 a-. g4( f8-.) |
  %% 27
  e-.-4 d-. c-. b-. a-.-4 g-. | c4 r8 b,-.\upbow d-.-0 g-. |
  %% 29
  c,-. e-. g-. d-.-0 f-. g-. | e-. g-. c,-. b-. d-.-0 g-. |
  %% 31
  c,-. d-.-4 e-. << {\voiceOne f( d-0 f)}
		    \new Voice {\voiceTwo g,4.} >> \oneVoice |
  %% 32
  <g e'>8-. c\p( d-4) e-. e( f) | g-.\< e( f) g-. g( a-4) |
  %% 34
  bes-.\f bes'-. a-. g-.\dim f-. e-. |
  %% 35
  d-. c-. bes-. \breathe a-.-0\p( bes-. b-.) |
  %% 36
  c4( c8-.) c-.( d-. e-.-4) | g4( f8) \acciaccatura g8 f8-. e-.-0 f-. |
  %% 38
  \repeat percent 2 {fis( g) c,-.} | a'4\>( f8\!) a,-.-0( bes-. b-.) |
  %% 40
  c4( c8-.) c-.( d-. e-.-4) | g4 (f8) e-.-0 f-. g-. |
  %% 42
  c,-. d-. e-.-4 g,4( b8-.) | d4\>( c8\!) \breathe f,-.( g-. gis-.-4) |
  %% 44
  \repeat tremolo 3 {<f a-0>-.} \repeat tremolo 3 {<g bes>-.} |
  \repeat unfold 2 {\repeat tremolo 3 {<f a>-.}} |
  %% 46
  e-. g-. bes-.-4 e,-.-1 g-. bes-.-4 |
  f-.-2 a-.-0 c-. f,-.( g-. gis-.-4) |
  %% 48
  \repeat tremolo 3 {<f a-0>-.} f-. g-. a-.-4 |
  bes( a-0 bes) g-. a-.-4 bes-. | a-.-0 f-. a-.-4 c4( bes8) |
  %% 51
  a4.-0 \breathe a8\f( \acciaccatura c8 bes a) | d4. f8-- e---0 d-- |
  d4( cis8) a-0( \acciaccatura c bes a) | e'4.-0 bes'8-- a-- g-- |
  %% 55
  g4 (f8) a( bes a) | gis-- e---0 fis-- g( a g) |
  f-- d-- e---4 f-- g-- a-- | bes-- a-- g-- f-- e---0 d-- |
  %% 59
  cis-- bes-- a---0 g-- f-- e-- |
  %% 60
  \repeat unfold 2 {\repeat tremolo 3 {<a, f'>-.}} |
  \repeat unfold 2 {\repeat tremolo 3 {<a e'>-.}} |
  \repeat tremolo 3 {<a g'>-.} \repeat tremolo 3 {<a e'>-.} |
  \repeat tremolo 3 {<a d>-.} d-. f-. a-.-0 | b4.-- cis |
  %% 65
  d4 (f,8) g4.-- | a8---0 d-- f-- <a, a'>4( <a g'>8) |
  %% 67
  <a f'>4.-- \breathe a8-.-0\p( bes-. b-.) |
  c4( c8-.) c-.( d-. e-.-4) | g4( f8) \acciaccatura g8 f-. e-.-0 f-. |
  %% 70
  \repeat percent 2 {fis( g) c,-.} | a'4\>( f8\!) a,-.-0( bes-. b-.) |
  c4( c8-.) c-.( d-. e-.-4) | g4( f8) e-.-0 f-. g-. |
  c,-. d-. e-.-4 g,4( b8-.) | d4\>( c8\!) r4. |
  e,8-.\f\downbow g-. c-. e,-. g-. c-. |
  %% 77
  f,-. a-.-4 c-. a-.-0 bes-. g-. | a4-4( c8-.) a4-0( f8-.) |
  c4( c'8-.) \acciaccatura d8 c-. b-. c-. |
  %% 80
  bes'4\>( c,8-.\!) \acciaccatura d c-. b-. c-. |
  aes'4\>( f8-.\!) c-. d-. e-.-4 | f-. g-. aes-. aes4( b,8) |
  c4. \breathe f,8-.\p( g-. gis-.-4) | a-0( c a) f-. g-. a-.-4 |
  %% 85
  bes( d bes) g-. a-.-4 bes-. | c4( bes8) a-.-0 bes-. g-. |
  e4( f8) a-.-0( bes-. b-.) | c4( c8-.) a'-.\cresc g-. f-. |
  %% 89
  e4-4( d8) bes'-. a-. g-. | c-.-4\f a-.-3 f-.-1 c-. d-. e-.-4 |
  f4( d8-.) bes'4( c,8-.) | a'4( c,8-.) e-.-0 f-. g-. |
  f4( c8-.) bes4( c8-.) | a4-0( c8-.) bes-. g-. e-. |
  f4( c'8-.) bes'4( c,8-.) | a'4( c,8-.) e-.-0 f-. g-. |
  f4( c8-.) bes4( c8-.) | a4-0( c8-.) bes-. g-. e-. |
  f4 r8 <a f'>4\downbow r8 | <a, f'>4.~\downbow <a f'>4 r8 \bar "|."
}

violinIIduoVmovementIII = \new Voice \relative f' {
  \violinVoiceSettings

  \partial 4. f8-.\p\upbow( g-. gis-.-4) |
  %% 1
  \repeat tremolo 3 {<f a-0>8-.} \repeat tremolo 3 {<g bes>-.} |
  %% 2
  \repeat unfold 2 {\repeat tremolo 3 {<f a>-.}} |
  %% 3
  e-. g-. bes-.-4 e,-.-1 g-. bes-.-4 |
  f-.-2 a-.-0 c-. f,-.( g-. gis-.-4) |
  %% 5
  \repeat tremolo 3 {<f a-0>-.} e-.( d-.-0 c-.) |
  b-. d-.-0 g-. c,-. d-.-4 e-. | e-. f-. g-. g,-. g'-. f-. |
  %% 8
  << {\voiceOne f4\>( e8\!)}
     \new Voice {\voiceTwo g,4.} >> \oneVoice \breathe a'8-.-0( bes-. b-.) |
  %% 9
  c4( c8-.) c-.( d-. e-.-4) | g4( f8) \acciaccatura g8 f8-. e-.-0 f-. |
  %% 11
  \repeat percent 2 {fis( g) c,-.} | a'4\>( f8\!) a,-.-0( bes-. b-.) |
  c4( c8-.) c-.( d-. e-.-4) | g4( f8) e-.-0 f-. g-. |
  c,-. d-. e-.-4 g,4( b8-.) | d4\>( c8\!) r4. |
  %% 17
  e,8-.\f\downbow g-. c-. e,-. g-. c-. |
  f,-. a-.-4 c-. a-.-0 bes-. g-. | a4-4( c8-.) a4-0( f8-.) |
  %% 20
  c-. e-. g-. \acciaccatura d'8 c-.\p b-. c-. |
  bes'4\>( g8\!) \acciaccatura d8 c-. b-. c-. |
  %% 22
  aes'4\>( f8\!) c-. d-. e-.-4 | f-. g-. aes-. aes4( b,8) |
  c4 r8 b,8-.\f\upbow d-.-0 g-. | c,-. e-. g-. d-.-0 f-. g-. |
  e-. g-. c,-. b-. d-.-0 g-. |
  %% 27
  c,-. d-.-4 e-. << {\voiceOne f( d-0 f)}
		    \new Voice {\voiceTwo g,4.} >> \oneVoice |
  %% 28
  <g e'>4( g''8-.\f) g4( f8-.) | e8-.-4 d-. c-. b-. a-.-4 g-. |
  %% 30
  c-. e-.-0 a-. g4( f8-.) | e-.-4 d-. c-. b-. a-.-4 g-. | c4 r8 r4. |
  r8 c,\p\upbow\<( d-4) e-. e( f) | g-.\f g'-. f-. e-.-0\dim d-. c-. |
  %% 35
  bes-. a-.-0 g-. \breathe f-.\p( g-. gis-.-4) |
  %% 36
  \repeat tremolo 3 {<f a-0>-.} \repeat tremolo 3 {<g bes>-.} |
  \repeat unfold 2 {\repeat tremolo 3 {<f a>-.}} |
  e-. g-. bes-.-4 e,-.-1 g-. bes-.-4 |
  f-.-2 a-.-0 c-. f,-.( g-. gis-.-4) |
  %% 40
  \repeat tremolo 3 {<f a-0>-.} e-. d-.-0 c-. |
  b-. d-.-0 g-. c,-. d-.-4 e-. | e-. f-. g-. g,-. g'-. f-. |
  %% 43
  << {\voiceOne f4\>( e8\!)}
     \new Voice {\voiceTwo g,4.} >> \oneVoice \breathe a'8-.-0( bes-. b-.) |
  %% 44
  c4( c8-.) c-.( d-. e-.-4) | g4( f8) \acciaccatura g8 f-. e-.-0 f-. |
  %% 46
  \repeat percent 2 {fis( g) c,} | a'4\>( f8\!) a,-.-0( bes-. b-.) |
  c4( c8-.) a'8-. g-. f-. | e4-4( d8) bes'8-. a-. g-. |
  %% 50
  f( a f) c-. d-. e-.-4 | f4. r |
  %% 52
  <a,, f'>8-.\f\downbow <a f'>-. <a f'>-. \repeat tremolo 3 {<a f'>-.} |
  \repeat unfold 2 {\repeat tremolo 3 {<a e'>-.}} |
  %% 54
  \repeat tremolo 3 {<a g'>-.} \repeat tremolo 3 {<a e'>-.} |
  \repeat tremolo 3 {<a d>-.} d( f a-4) | b4.( cis |
  %% 57
  d8) a---4 g-- f-- e-- d---0 | g,4.-- gis-- |
  a4-- r8 a'8-0\f\upbow( \acciaccatura c8 bes a) |
  %% 60
  d4. f8-- e---0 d-- | d4( cis8) a-0( \acciaccatura c8 bes a) |
  %% 62
  e'4.-0 bes'8-- a-- g-- | g4( f8) a( bes a) | gis4( e8-0) g( a g) |
  f4( d8) ees-- g-- bes-- | a-- f-- d-- a4-0( cis8) |
  %% 67
  <d, d'>4. \breathe f8-.\p( g-. gis-.-4) |
  \repeat tremolo 3 {<f a-0>-.} \repeat tremolo 3 {<g bes>-.} |
  \repeat unfold 2 {\repeat tremolo 3 {<f a>-.}} |
  %% 70
  e-. g-. bes-.-4 e,-.-1 g-. bes-.-4 |
  f-.-2 a-.-0 c-. f,-.( g-. gis-.-4) |
  \repeat tremolo 3 {<f a-0>-.} e-.( d-.-0 c-.) |
  %% 73
  b-. d-.-0 g-. c,-. d-.-4 e-. | e-. f-. g-. g,-. g'-. f-. |
  %% 75
  << {\voiceOne f4\>( e8\!) }
     \new Voice {\voiceTwo g,4.} >> \oneVoice \breathe
  \acciaccatura d''8 c8-.\f b-. c-. |
  %% 76
  bes'4\>( g8\!) \acciaccatura d8 c-. b-. c-. |
  a'4\>( f8\!) c-. d-. e-.-4 | f-. a-. e-.-0 f( c) a-.-0 | g4 r8 r4. |
  %% 80
  e8-.\downbow g-. c-. e,-. g-. c-. | f,-. aes-. c-. aes4( g8-.) |
  f4( ees8-.) des4. | c \breathe a'8-.-0\p( bes-. b-.) |
  %% 84
  c4( c8-.) a'-. g-. f-. | e4-4( d8) bes'-. a-. g-. |
  f-. e-.-0 d-. c-. d-. bes-. | bes4( a8-0) f-.( g-. gis-.-4) |
  a-.-0 c-. a-. f-.\cresc g-. a-.-4 | bes-. d-. bes-. g-. a-.-4 bes-. |
  a-.-0\f f-. a-.-4 c4( bes8-.) | a4-0( f8-.) e-. c-. c-. |
  f-. c-. c-. g'-. a-.-4 bes-. | a-.-0 f-. c-. e-. c-. c-. |
  f-. c-. c-. g-. c-. bes-. | a4( f'8-.) e-. c-. c-. |
  f-. c-. c-. g'-. a-.-4 bes-. | a-.-0 f-. c-. e-. c-. c-. |
  f-. c-. c-. g-. c-. bes-. | a4 r8 <f' a>4\downbow r8 |
  <a, f'>4.~\downbow <a f'>4 r8 \bar "|."
}

%%% ------------ Duo VI ------------

titleduoVImovementI = ##f

globalduoVImovementI = {
  \time 4/4
  \tempo "Allegro moderato e grazioso." 4 =123
  \key bes \major
}

violinIduoVImovementI = \new Voice \relative f' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 2 f4_\markup{\dynamic p \italic "dolce"}\<\upbow( d'\!) |
    %% 1
    bes4.( c16 bes) a8-0( bes d c) | bes4\>( a-0\!) f\<( ees'\!) |
    %% 3
    c4.( d16 c) b8( c ees d) | c4\>( bes\!) d\<( f\!) |
    %% 5
    f4.\>( ees8\!) d( c b c) | ees4.\>( d8\!) c( bes a-0 bes) |
    %% 7
    a-4\<( g) b( c) d( ees) fis(g) | bes,\>( a-0) g-- f-- f4--\! r |
    %% 9
    bes,8\p\downbow( f' d-0 f) d( f d f) | ees( f ees f) ees( f c f) |
    %% 11
    a,( f' ees f) ees( f ees f) | d-0( f d f) bes,( f' d-0 f) |
    %% 13
    c( f c f) a,( f' a, f') | bes,( f' bes, f') d-0( f d f) |
    %% 15
    ees8 r c r f r a-0 r | bes--\f d,---0 f-- bes-- d-- f-- bes-- g-- |
    %% 17
    f2. ees4-. | d-. r r2 | r8 d,---0\upbow fis-- d-- e-- g-- fis-- a---4 |
    %% 20
    g-. g( bes) d-. g\( (a bes) bes-.\) | bes2 a |
    %% 22
    a8( g) g4~ \( g8 aes g f\) | e---0\f c-- e---0 g-- bes4.-. g8-- |
    %% 24
    aes4. e8---0 f-- c-- aes-- f-- |
    %% 25
    c4 r <e c'>8--\downbow \repeat unfold 3 {<e c'>8--} |
    %% 26
    \repeat unfold 3 {<f c'>8--} g--
    \fingerNumberSpanner "4"
    aes--\startTextSpan c-- aes--\stopTextSpan f-- |
    %% 27
    c4-. r c'\pDolce\upbow( a') | f4.( e8-0) d( c) bes-- a---0 |
    %% 29
    c4\>( bes\!) c( bes') | g4.( e8-0) c( cis d bes) |
    %% 31
    bes4( a-0) \breathe <f a>8-.\p\downbow \repeat unfold 3 {<f a>-.} |
    %% 32
    \repeat tremolo 4 {<e-2 bes'-1>-.} \repeat tremolo 4 {<f-2 a-0>-.} |
    \repeat tremolo 4 {<e-2 bes'-1>-.} f---2\f a---0 c-- a-- |
    %% 34
    f-- c-- a-- bes-- c4-. e-. |
    g\>( f\!) \breathe c'8\<( c'-4) a---3 f--\! |
    %% 36
    c-- a---0 f-- d'-- c4-. <bes e-0>-. |
    <a f'>8--\f c-- bes'-- e,---0 f-- c-- bes'-- e,---0 |
    %% 38
    \repeat percent 2 {f-- c-- bes'-- e,--} | f r f,\downbow r
  }
  r2 | a,8\p\downbow( c a c) a( c a c) |
  %% 41
  \repeat percent 2 {bes( c bes c)} | e( c e c) bes( c bes c) |
  %% 43
  a( c a f') a4-0_\dolce\<( f'\!) | d4.( e16-4 d) cis8( d f e-0) |
  d4\>( cis\!) a-0\<( g'\!) | e4.-0 e8-4( dis e-0 bes' a) |
  %% 47
  g4\>( f\!) f--\cresc( f--) |
  f8--\f ees-- c-- a---0  f-- ees-- c-- ees-- |
  d---0 f-- bes-- d-- f-- bes-- a-- g-- |
  %% 50
  f-- ees-- c-- a---0 f-- ees-- c-- ees-- |
  d-.-0 f-. bes4---">" ees,8-. g-. c4---">" |
  %% 52
  f,8-. a-.-0 d4---">" g,8-. bes-. ees4---">" |
  a,8-0 r g'2\rf\downbow f4-- |
  ees8-.\> d-. c-. bes-. a-.-4 g-. f-. e-.\! |
  ees4-- g-- ees-- c-- |
  %% 56
  bes2~^\markup{\italic "ritard."}\p\( bes8 a c bes16 a\) |
  a2\fermata r^\markup{\italic "a tempo"} |
  %% 58
  d8-0\p\downbow( f d f) d( f d f) | ees( f ees f) ees( f c f) |
  %% 60
  a,( f' ees f) ees( f ees f) | d-0( f d f) bes,( f' d-0 f) |
  %% 62
  c( f c f) a,( f' a, f') | bes,( f' bes, f') d-0( f d f) |
  %% 64
  ees r g r ees r c r | f4 r f4\<\upbow( d'\!) |
  %% 66
  bes4.( c16 bes) a8-0( bes d c) | bes4\>( a-0\!) f\<( ees'\!) |
  %% 68
  c4.( d16 c) b8( c ees d) | c4\>( bes\!) d\f\<( f\!) |
  %% 70
  aes4.\> f8--\! d-- b-- aes-- f-- |
  f4\>( ees8\!) r8 c'4\f\upbow\<( ees\!) |
  %% 72
  ges4.->\> ees8--\! c-- a---0 ges-- ees-- |
  ees4\> d8-0\! r f\upbow_\dolce( g) a---0 bes-- |
  %% 74
  b4\>( c\!) f,8( g) a---0 b-- | b4\>( c\!) f,8-.\f f'4-> d8-- |
  %% 76
  bes-- f--  d---0 g-- f4. ees8-- |
  %% 77
  ees4\>( d-0\!) \breathe d8\p( f d f) | ees( f ees f) d-0( f d f) |
  %% 79
  ees( f ees f) f\f( g) a---0 bes-- | c8-- d-- ees-- f-- g r a r |
  %% 81
  bes4-- r g--\upbow\dim r | f--\upbow r ees--\upbow r |
  d--\upbow\! r b8\pDolce\upbow( c) d-. ees-. |
  %% 84
  g( f) d-. bes-. f4--( a---0) |
  bes8--\f f'-- d-- bes-- a---0 f'-- ees-- c-- |
  %% 86
  bes-- f'-- d-- bes-- g' r a,-0 r |
  bes-- f-- d---0 bes-- a-- f'-- ees-- c-- |
  %% 88
  bes-- f'-- d---0 bes-- <g g'>4-. <ees' a>-- |
  <d bes'>-- <d d'>-- <d bes'>-- r \bar "|."
}

violinIIduoVImovementI = \new Voice \relative b {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 2 r2 | bes8\p\downbow( f' d-0 f) d( f d f) |
    %% 2
    ees( f ees f) ees( f c f) | a,( f' ees f) ees( f ees f) |
    %% 4
    d-0( f d f) bes,( f' d-0 f) | c( f c f) a,( f' a, f') |
    %% 6
    bes,( f' bes, f') d-0( f d f) | \repeat unfold 3 {ees r} c r |
    %% 8
    f4-- r f_\dolce\upbow\<( d') | bes4.\>( c16 bes\!) a8-0( bes d c) |
    %% 10
    bes4\>( a-0\!) f\<( ees'\!) | c4.\>( d16 c\!) b8( c ees d) |
    %% 12
    c4\>( bes\!) d\<( f\!) | f4.\>( ees8\!) d( c b c) |
    %% 14
    ees4.\>( d8\!) c( bes a-0 bes) | fis'( g) ees( c) a-0( f) ees( c) |
    %% 16
    bes4 r r2 | r8 f'--\f\upbow a---4 f-- g-- bes-- a---0 c-- |
    %% 18
    bes-- bes,-- d---0 g-- bes-- d-- g-- ees-- | d2. c4-. | bes-. r r2 |
    %% 21
    r8 c,\upbow( d-4) e-. f( fis g a-4) | bes( d bes d) b( d b d) |
    %% 23
    c4 r <e, c'>8--\f\downbow \repeat unfold 3 {<e c'>--} |
    \repeat unfold 3 {<f c'>--} g-- aes-- c-- aes-- f-- |
    c-. c'-- e---0 g-- bes4. g8-- | aes4. e8---0 f-- c-- aes-- f-- |
    c4-. c'-. r2 |
    a,8-.\p\downbow c-. a-. c-. \repeat tremolo 2 {a-. c-.} |
    \repeat unfold 2 {\repeat tremolo 2 {g-. c-.}} |
    \repeat unfold 2 {\repeat tremolo 2 {e-. c-.}} |
    e-. c-. f4-- \breathe \repeat unfold 2 {
      c'8( d) e---0 f-- fis4\> (g\!)} c,8-.\f a'4 f8-- |
    c-- a---0 f-- d'-- c4. bes8-- |
    %% 35
    bes4\>( a-0\!) \breathe a8\<( a') f-- c--\! |
    a---0 f-- a,-- bes-- c4-. <g' bes>-. |
    <f a>-.\f <g bes>-. \repeat unfold 3 {<f a>-. <g bes>-.} |
    %% 39
    <f a>8 r <f a>\downbow r
  }
  c'4\upbow\<_\markup{\dynamic p \italic " dolce"}( a'\!) |
  f4.( g16 f) e8-0( f a g) |
  %% 41
  f4\>( e-0\!) c\<( bes'\!) | g4.( a16 g) fis8( g bes a) |
  %% 43
  g4( f) \breathe f,8\p( a-4 f a) | \repeat percent 2 {f( a-4 f a)} |
  %% 45
  g( a-4 g a) g( a e a) | \repeat percent 2 {cis,( e a-4 e)} |
  %% 47
  d-0( a'-4 d, a') d,\cresc( f d bes) |
  %% 48
  \repeat tremolo 4 {<a f'>8--\f} \repeat tremolo 4 {<a f'>8--} |
  \repeat tremolo 4 {<bes f'>--} d---4 d-- bes-- bes-- |
  %% 50
  \repeat unfold 2 {\repeat tremolo 4 {<a f'>8--}} |
  <bes f>4-- d->-0 ees-- e-> | f-- fis-">" g-- g-> |
  %% 53
  a8-4-. f-. ees'2\rf d4-- |
  c8-.\> bes-. a-.-0 g-. f-. ees-. d-.-0 cis-.\! | c4-- ees-- g-- c-- |
  %% 56
  <f, ees'>1~\p^\markup{\italic "ritard."} |
  <f ees'>2\fermata \breathe f4\upbow\<^\markup{\italic "a tempo"}( d'\!) |
  %% 58
  bes4.\>( c16 bes\!) a8-0( bes d c) | bes4\>( a-0\!) f\<( ees'\!) |
  %% 60
  c4.\>( d16 c\!) b8( c ees d) | c4\>( bes\!) d\<( f\!) |
  %% 62
  f4.\>( ees8\!) d8( c b c) | ees4.\>( d8\!) c8( bes a-0 bes) |
  %% 64
  a-4\>( g\!) b\>( c\!) d\>( ees\!) fis\>( g\!) |
  %% 65
  bes,( a-0) g-- f-- f4 r | d8-0\p\downbow( f d f) d( f d f) |
  %% 67
  ees( f ees f) ees( f c f) | a,( f' a, f') ees( f ees f) |
  %% 69
  d-0( f d f) f4\f\<( d-0\!) | <b d>4.-> g8-- b-- d---0 f-- b-- |
  %% 71
  d4\>( c8\!) r ees,4\f\upbow\<( c\!) | a4.-> c8-- ees-- f-- a---0 c-- |
  %% 73
  c4\>( bes8\!) r d,-0\p\upbow( f d f) | ees( f ees f) d-0( f d f) |
  %% 75
  ees( f ees f) f-.\f d'4-> bes8-- |
  %% 76
  f8-- d---0 bes-- ees-- f-- d'-- c-- a---0 |
  c4\>( bes\!) \breathe f8_\dolce( g) a---0 bes-- |
  %% 78
  b4\>( c\!) f,8( g) a---0 bes-- | b4( c) d,8-0\f( ees) f-- g-- |
  %% 80
  a---0 bes-- c-- d-- ees r c r | <d d,>4 r ees,--\upbow\dim r |
  %% 82
  f--\upbow r <fis a>--\upbow r | <g bes>--\upbow\! r ees2\upbow\p |
  %% 84
  d4-0 bes8-. d-.-4 f4--( <c ees>--) |
  \repeat tremolo 4 {<bes d>8--\f} \repeat tremolo 4 {<c ees>--} |
  %% 86
  d---0 f-- bes-- d-- ees r <c, ees> r |
  \repeat tremolo 4 {<bes d>--} \repeat tremolo 4 {<c ees>--} |
  d---0 f-- bes-- d-- ees4-. <f, a>-- |
  <f bes>-- <d bes'>-- bes-- r \bar "|."
}

%%% ---

titleduoVImovementII = ##f

globalduoVImovementII = {
  \time 6/8
  \tempo "Andante non troppo lento." 8 = 77
  \key bes \major
}

violinIduoVImovementII = \new Voice \relative g' {
  \violinVoiceSettings

  \partial 8 g8--\upbow\pDolce | bes--([ r c--)] d--([ r ees--)] |
  %% 2
  d--([ r c--)] bes4. | a4-0( a8--) a\(( \acciaccatura c8 bes) a--\) |
  %% 4
  a4.( d4) \breathe g,8-- | bes--([ r c--)] d--([ r ees--)] |
  %% 6
  d--([ r c--)] bes4 g'8->( | a,-0) r ees'\(( d) r fis,--\) |
  %% 8
  a4.-4\>( g4\!) r8 | fis--\p\downbow d---0 g-- a---4 d,---0 fis-- |
  %% 10
  g-- d---0 a'---0 bes-- d,---0 bes'-- | a-0( d c) bes-- g-- ees-- |
  %% 12
  d-0( ees cis-3) d4-4 r8 | g--\downbow g,-- a'---4 bes-- g-- b-- |
  %% 14
  c-- g-- f-- ees-- c-- c'-- | bes-- d,---0 a'---4 g-- d-- fis-- |
  %% 16
  g-- d---0 bes-- g4( \breathe d'8---0_\dolce) |
  %% 17
  a'8---0([ r bes--)] c--([ r a---0)] | bes--([ r c--)] d--([ r bes'--)] |
  %% 19
  a--([ r fis--)] g( ees) c-- | bes4.\>( a4-0\!) \breathe g8--\upbow |
  %% 21
  bes--([ r c--)] d--([ r f--)] | ees--([ r b--)] c--([ r ees--)] |
  %% 23
  d--([ r c--)] bes--([ r a---0)] | g4 r8 aes4.\downbow\fz\>( |
  %% 25
  g\!) fis8( a-4  d) | d--([ r bes--)] a--([ r ees'--)] |
  %% 27
  bes--([ r d--)] d,---0( e-- fis--) | g4 r8 aes4.\fz\downbow\>( |
  %% 29
  g4.\!) fis8( ees' d) | d--([ r g--)] a,---0([ r ees'--)] |
  %% 31
  g,--([ r d'--)] d,---0( e-- fis--) |
  %% 32
  g-. \breathe g--\f a---4 bes-- c-- d-- |
  <ees-4 e-0>8 r4 <bes g'>4.\fz\upbow |
  %% 34
  bes'8\>( g) d-- ees( d) fis,--\! | g--\p([ r d---0)] ees--([ r fis--)] |
  g--\dim([ r d---0)] ees--([ r fis--)] | g--([ r d---0)] ees--([ r fis--)] |
  g8--\! r4 d4.-4\pp\upbow | bes2.\fermata \bar "|."
}

violinIIduoVImovementII = \new Voice \relative g' {
  \violinVoiceSettings

  \partial 8 r8 | g--\p\downbow g,-- a'---4 bes-- g,-- c'-- |
  %% 2
  bes-- g,-- a'---4 g-- d---0 bes-- | c4. cis-4 |
  %% 4
  d8---0 ees d-- c-- bes-- a-- | g-- g'-- a---4 bes-- g,-- c'-- |
  %% 6
  bes-- g,-- a'---4 g-- d---0 bes-- | c-- ees-- c-- d---0 fis-- a---0 |
  %% 8
  c( d c) bes4( \breathe d,8---0_\dolce) |
  %% 9
  a'---0([ r bes--]) c--([ r a---0]) | bes--([ r c--]) d4( g8--) |
  %% 11
  fis4( a8) g( ees) c-- | bes4.\>( a4-0\!) \breathe g8--\upbow |
  %% 13
  bes--([ r c--]) d--([ r f--]) | ees--([ r b--]) c--([ r ees--]) |
  d--([ r c--]) bes--([ r a---0]) | g4.~ g4 r8 |
  %% 17
  fis8--\downbow d---0 g-- a---4 d,---0 fis-- |
  g-- d---0 a'---0 bes-- d,---0 d'-- |
  %% 19
  c-- d,---0 a'---0 bes-- g-- ees-- | d( ees cis-3) d4-4 r8 |
  %% 21
  g-- g,-- a'---4 bes-- g-- b-- | c-- g-- f-- ees-- c-- c'-- |
  %% 23
  bes-- d,---0 a'---4 g-- d---0 fis-- | g-- d---0 bes-- c\fz\>( ees c\!) |
  %% 25
  bes( d-4 bes) a( c fis) |  bes,-- d---0 g-- c,-- ees-- a---4 |
  %% 27
  d,---0 g-- bes-- d,---0 c-- a-- | g( a bes) c\fz\>( ees c\!) |
  %% 29
  bes( d-4 bes) a( c fis) | g-- d---0 bes-- c-- ees-- a---4 |
  d,---0 g-- bes-- d,---0 c-- a-- |
  %% 32
  g-. \breathe g--\f a-- bes-- c-- d---4 | e r4 <cis e>4.\fz |
  d8---0\> g-- bes-- d,---0 fis-- a---4\! |
  %% 35
  g--\p([ r bes,--]) c--([ r a--]) | g--\dim([ r bes--]) c--([ r a--]) |
  g--([ r bes--]) c--([ r a--]) | g--\! r4 bes4.\pp\upbow |
  g2.\fermata \bar "|."
}

%%% ---

titleduoVImovementIII = "Rondo."

globalduoVImovementIII = {
  \time 2/4
  \tempo "Allegretto." 4 = 123
  \key bes \major
}

violinIduoVImovementIII = \new Voice \relative f' {
  \violinVoiceSettings

  f8-.\p\downbow bes-. f-. bes-. | g-. c-. ees4-> |
  %% 3
  a,8-0( c) ees-. g-. | f-. d16-- bes-- bes( a-0 g f) |
  %% 5
  f8-. bes-. f-. bes-. | g-. c-. ees4-> |
  %% 7
  d8-. c16-- bes-- a8-.-0 <fis d'>-. | g8.( a32-4 g) f8-.( ees-.) |
  %% 9
  d-.-0 bes-. d-.-4 bes-. | ees-. g-. ees-. c-. |
  %% 11
  f-. a-.-0 c-. ees-. | d-. bes,-. c-. ees-. |
  %% 13
  d-.-0 bes-. d-.-4 bes-. | ees-. g-. c-. ees-. | d-. bes,-. c-. f-. |
  %% 16
  <ees a>8-. f-. d-.-0 r | a'-.-0\downbow d-. a-. d-. |
  %% 18
  bes-. d-. g,4->( | fis8) a-.-0 c-. fis-. | fis16\>( g bes a) g4--\! |
  %% 21
  g,8-. c-. g-. c-. | a-.-0 c-. f4-> | d8-. bes16-- g-- c8-. e,-. |
  %% 24
  f-. \breathe ees-.[ d-.-0 c-.] | d-.-4 bes-. d-.-4 bes-. |
  %% 26
  ees-. g-. ees-. c-. | f-. a-.-0 c-. ees-. | d-. bes,-. c-. f-. |
  %% 29
  f-. bes-. f-. bes-. | g-. c-. ees4-> |
  %% 31
  d8-. c16-- bes-- ees8-. a,-.-0 | c4\>( bes8\!) r8 |
  %% 33
  fis8-.\downbow d-.-0 fis-. d-. | g-. d-.-0 bes-. g-. |
  %% 35
  a-. fis'-. a-.-0 c-. | bes-. d-. bes-. g-. | e-. c-. e-. c-. |
  %% 38
  f-. a-.-4 f-. a,-. | bes-. d-.-4 c-. bes-. |
  %% 40
  a-. \breathe f'-.[ f-. f-.] | f-. bes-. f-. bes-. | g-. c-. ees4-> |
  %% 43
  a,8-0( c) ees-. g-. | f-. d16-- bes-- bes( a-0 g f) |
  %% 45
  f8-. bes-. f-. bes-. | g-. c-. ees-. g-. |
  %% 47
  f8-. d16( bes) ees8-. c16( a-0) | c4\>( bes8\!) \breathe bes-.\f |
  %% 49
  ees4-- r8 bes-.\upbow | f'4-- r8 bes,8-. |
  g'8-. aes-. bes-. g16-- ees-- |
  %% 52
  ees\>( d\!) c-- bes-- bes-- aes-- g-- f-- |
  ees8-. \breathe bes-.\f ees4-- | r8 bes-.\upbow f'4-- |
  %% 55
  ees8-. d16---0 ees-- f8-. aes-. | g-.[ bes-. g-.] \breathe bes-.\p |
  d-. ees-. f-. d-. | ees-. f-. g-. bes,-. |
  aes'-. bes,-. g'-. bes,-. |
  %% 60
  f'-. a16\>( bes\!) bes,8-. \breathe bes-. |
  <aes bes>-. <g bes>-. <f bes>-. <aes bes>-. |
  %% 62
  <g bes>-. <f bes>-. <ees bes'>-. c-.\f |
  %% 63
  aes'8-. f16( ees) d8-.-0 g-. | c,-. c'-. bes-. aes-. |
  %% 65
  g-. \breathe bes,-.\f ees4-- | r8 bes-.\upbow f'4( |
  ees8) f-. g-. aes-. | bes-.[ d,-.-0 f-.] \breathe bes-.\f |
  %% 69
  ees4-- r8 bes-.\upbow | f'4-- r8 bes,-. | g'8 f16( g) aes8-. f16( d) |
  %% 72
  ees8-.[ g-. ees-.] \breathe bes-.\p | d-. ees-. f-. d-. |
  ees-. f-. g-. bes,-. | aes'-. bes,-. g'-. bes,-. |
  %% 76
  f'-. a16\>( bes\!) bes,8-. \breathe bes-. |
  <aes bes>-. <g bes>-. <f bes>-. <aes bes>-. |
  %% 78
  <g bes>-. <f bes>-. <ees bes'>-. c-.\f | aes'-. f16( ees) d8-. g-. |
  %% 80
  c,-. c'-. bes-. aes-. | g-. \breathe bes,-.\f ees4-- |
  r8 bes-.\upbow f'4( | ees8) f-. g-. aes-. |
  bes-. d,-.-0 f-. bes-.\f | ees4-- r8 bes-.\upbow | f'4-- r8 bes,-. |
  %% 87
  g'-. f16( g) aes8-. f16( d) | ees8-.[ g-. ees-.] r |
  <f, c'>-.\f\downbow [ <f ees'>-. <f c'>-.] r |
  <f d'>-.\downbow [ f'-. <f, c'>-.] r |
  %% 91
  ees'8-.\downbow c16( a-0) bes8-. d-. | f-. \breathe f,-.\p [ f-. f-.] |
  f-. bes-. f-. bes-. | g-. c-. ees4-> | a,8-0( c) ees-. g-. |
  %% 96
  f-. d16-- bes-- bes( a-0 g f) | f8-. bes-. f-. bes-. |
  g-.\cresc c-. ees-. g-. | f-. d16( bes) ees8-. c16( a-0\!) |
  %% 100
  bes'8-.\f f16( d) g8-. ees16( c) | f8-. d16( bes) ees8-. c16( a-0) |
  bes'8-. f16( d) g8-. ees16( c) | f8-. d16( bes) f8-. a'-. |
  %% 104
  bes-. <ees, f,>-. <d f,>-. <ees f,>-. | <d f,>-. a-.-0 bes-. a-. |
  bes4 r | <bes d,>->\downbow <d f,>-> | <bes d,>2-> \bar "|."
}

violinIIduoVImovementIII = \new Voice \relative c' {
  \violinVoiceSettings

  d8-.-4\p\downbow bes-. d-.-4 bes-. | ees-. g-. ees-. c-. |
  %% 3
  f-. a-.-0 c-. ees-. | d-. bes,-. c-. ees-. | d-.-0 bes-. d-.-4 bes-. |
  %% 6
  ees-. g-. c-. a-.-0 | bes-. bes,-. c-. d-.-0 | g-. g,-. a-. c-. |
  %% 9
  <bes f'>-. bes'-. f-. bes-. | g-. c-. ees4-> | a,8-0( c) ees-. g-. |
  %% 12
  f-. d16-- bes-- bes( a-0 g f) | f8-. bes-. f-. bes-. |
  %% 14
  g-. c-. ees-. g-. | f-. d16( bes) ees8-. c16( a-0) |
  %% 16
  c4\>( bes8\!) r | fis-.\downbow d-.-0 fis-. d-. |
  g-. d-.-0 bes-. g-. | a-. fis'-. a-.-0 c-. | bes-. d-. bes-. g-. |
  %% 21
  e-. c-. e-. c-. | f-. a-.-4 f-. a,-. | bes-. d-.-4 c-. bes-. |
  a-. \breathe f'-.[ f-. f-.] | f-. bes-. f-. bes-. | g-. c-. ees4-> |
  %% 27
  a,8-0( c) ees-. g-. | f-. d16( bes) <f a>8-. ees-. |
  d-.-0 bes-. d-.-4 bes-. | ees-. g-. ees-. c-. |
  %% 31
  bes-. d-.-0 f-. ees-. | ees16( f ees f) d8-.-0 r|
  %% 33
  a'-.-0\downbow d-. a-. d-. | bes-. d-. g,4->( |
  %% 35
  fis8) a-.-0 c-. fis-. | fis16\>( g bes a) g4--\! |
  g,8-. c-. g-. c-. | a-.-0 c-. f4-> | d8-. bes16-- g-- c8-. e,-. |
  %% 40
  f-. \breathe ees-.[ d-.-0 c-.] | d-.-4 bes-. d-.-4 bes-. |
  ees-. g-. ees-. c-. | f-. a-.-0 c-. ees-. | d-. bes,-. c-. ees-. |
  d-.-0 bes-. d-.-4 bes-. | ees-. g-. c-. ees-. | d-. bes,-. c-. f-. |
  %% 48
  <ees a>-.[ f-. d-.-0] r | r bes-.\f\upbow ees4-- |
  %% 50
  r8 bes8-. f'4( | ees8) f-. g-. aes-. |
  bes-.[ d,-.-0 f-.] \breathe bes-.\f | ees4-- r8 bes-.\upbow |
  %% 54
  f'4-- r8 bes,-. | g'8-. f16( g) aes8-. f16( d) |
  ees8-.[ g-. ees-.] r |
  %% 57
  <aes, bes>-.\p <g bes>-. <f bes>-. <aes bes>-. |
  <g bes>-. <f bes>-. <ees bes'>-. <g bes>-. |
  <f bes>-. r <ees bes'>-. r |
  %% 60
  <d bes'>-. a'16-0\>( bes\!) bes,8-. \breathe bes'-. |
  d-. ees-. f-. d-. | ees-. f-. g-. c,-.\f |
  %% 63
  aes'-. f16( ees) d8-. g-. | c,4 r8 bes8-.\f\upbow |
  ees4-- r8 bes8-. | f'4-- r8 bes,8-. |
  g'-. aes-. bes-. g16-- ees-- |
  %% 68
  ees\>( d\!) c-- bes-- bes-- aes-- g-- f-- |
  ees8-. \breathe bes-. ees4-- | r8 bes-.\upbow f'4( |
  %% 71
  ees8) g-. bes-. aes-. | g-.[ bes-. g-.] r8 |
  <aes bes>-.\p\downbow <g bes>-. <f bes>-. <aes bes>-. |
  %% 74
  <g bes>-. <f bes>-. <ees bes'>-. <g bes>-. |
  <f bes>-. r <ees bes'>-. r |
  %% 76
  <d bes'>-. a'16-0\>( bes\!) bes,8-. \breathe bes'-. |
  d-. ees-. f-. d-. | ees-. f-. g-. c,-.\f |
  %% 79
  aes'8-. f16( ees) d8-. g-. |
  %% 80
  c,4 r8 bes-.\f\upbow | ees4-- r8 bes-. | f'4-- r8 bes,-. |
  g' aes bes g16-- ees-- | ees\>( d\!) c-- bes-- bes-- aes-- g-- f-- |
  %% 85
  ees8-. \breathe bes-. ees4-- | r8 bes\upbow f'4( |
  ees8) g-. bes-. aes-. | g-.[ bes-. g-.] r | a-.-0\f\downbow [ c-. a-.] r |
  %% 90
  bes-.\downbow [ d-. bes-.] r | a-.-0\downbow ees-. d-.-0 bes-. |
  f'-. \breathe ees-.\p [ d-.-0 c-.] | d-.-4 bes-. d-.-4 bes-. |
  ees-. g-. ees-. c-. | f-. a-.-0 c-. ees-. | d-. bes,-. c-. ees-. |
  %% 97
  d-.-0 bes-. d-.-4 bes-. | ees-.\cresc g-. ees-. c-. |
  %% 99
  d-.-4 bes-. c-. ees-.\! | <d bes'>\f r <ees c'>\downbow r |
  <f d'>\downbow r <f c'>\downbow r |
  %% 102
  <d bes'>\downbow r <ees c'>\downbow r |
  <f d'>4--\downbow <f d'>8-.\upbow( <f ees'>-.) |
  <bes, f' d'>-. a-. bes-. a-. |
  <bes d>-. <c ees>-. <bes d>-. <c ees>-. | <bes d>4 r |
  bes->\downbow bes'-> | bes,2 \bar "|."
}

%%% ------------

\header {
  arranger = "Revus et doigtés par József Bloch."
  composer = "Jaques-Féréol Mazas"
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 38"
  source = "http://imslp.org/"
  title = "Douze petits Duos."
}

\include "paper.ily"

#(define fileBaseName "Jaques-Féréol_Mazas-opus_38")

define(`AllDuetts', `(I, II, III, IV, V, VI)')
define(`Movements', `(I, II, III)')
define(`AllViolins', `(I, II)')

include(`output-duos.ily')
