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
  \tempo "Allegro moderato." 4 = 123
  \key f \major
}

violinIduoImovementI = \new Voice \relative f' {
  \violinVoiceSettings

  \repeat volta 2 {
    a4\p\downbow a a bes | c a' f c | a\< a bes fis |
    %% 4
    g\> fis8 (a) g4 r\! | g\p g g a | bes g' e d | c\< bes2-> bes4 |
    %% 8
    a\> bes8 (d) c4 c | c\! (f,) f-. (f-.) | e8 (g) c e a4 (g) |
    %% 11
    f c a f | e8 (g) c e a4 (g) | f2.\< fis4 | g\f f e f8 (d) |
    %% 15
    c2\> b8 (c d e-4) | c4\p g g g | a\< (f') e8-4 (d) c (b\!) |
    %% 18
    g'4\p c, c b | a\< (f') e8-4 (d) c (b\!) |
    %% 20
    g'8\f f e d c b a g | fis (a) a (d) d4-> f-> |
    %% 22
    e8 g c, e-4 d f-4 b, d | e\open g c, e-4 d f-4 b,-1 d |
    %% 24
    c (e-4) d b c (e) d b | c4 c c r
  }
  %% 26
  g4\p\downbow g g a | bes g' e d | c\< bes2-> bes4 | a2.\> r4\! |
  %% 30
  fis4\p d fis g | a c a g | fis\< a-4 d, fis | g->\f f-> e8 f g e |
  %% 34
  f4-> e->  d8 e f d | e4-> d-> cis8 d e cis |
  %% 36
  d4->-4 c b8 d-4 g, b | \repeat unfold 2 {c\> g e' g, f' g, d' g,} |
  %% 39
  c2\< d | e1\>^\rit ( |
  %% 41
  f4\p^\aTempo ) c f g | a c a2 | f4\< ees d c |
  %% 44
  bes\> d-4 g, r\! | g'\p g g a | bes g' e d | c\< bes2-> bes4 |
  %% 48
  a\> bes8 (d) c (a) f c | a\! (c a c) \repeat tremolo 2 {a (c)} |
  %% 50
  \repeat unfold 2 {\repeat tremolo 2 {bes8 (c)}} |
  %% 51
  \repeat unfold 2 {\repeat tremolo 2 {a8 (c)}} |
  %% 52
  \repeat unfold 2 {\repeat tremolo 2 {bes8 (c)}} |
  %% 53
  a8\< (c) f a c4 ees | d\> fis g bes |
  %% 55
  <bes, e>\p <bes e> <bes e> <bes e> | <a f'>2 <a f'>4 <a f'> |
  %% 57
  \repeat unfold 4 {<bes e>} | <a f'>8 c d c bes d c bes |
  %% 59
  a\< c d c bes d c bes | a\f c bes c a c bes c | a4 <a f'> <a f'> r
  \bar "|."
}

violinIIduoImovementI = \new Voice \relative f' {
  \violinVoiceSettings

  \repeat volta 2 {
    f4\p\downbow c f g | a c a2 ( | f4\<) ees d c | bes\> d g, g' |
    %% 5
    e\p c e f | g bes g f | e\< c d e | f\> d8 (bes) a4 r\! |
    %% 9
    a8\downbow (c) a (c) \repeat tremolo 2 {a8 (c)} |
    %% 10
    \repeat unfold 2 {\repeat tremolo 2 {bes8 (c)}} |
    %% 11
    \repeat unfold 2 {\repeat tremolo 2 {a8 (c)}} |
    %% 12
    \repeat unfold 2 {\repeat tremolo 2 {bes8 (c)}} |
    %% 13
    a8\< (c) f a d4 (c) | b8\f g a b c b a (f) |
    %% 15
    << {\voiceOne e8\> (g e g) f (g) f (g)}
       \new Voice {\voiceTwo g,2 g4 g} >> \oneVoice |
    %% 16
    \repeat unfold 2 {
      <c e>\p <c e> <c e> <c e> | <c f>\< <c f> <c f>2->
    }
    %% 20
    <c e>4\f (c'8) b a g f e | d4-> c-> b8 (d) d (g) |
    %% 22
    c, e a g f d g g, | c e a g f d g f | e (g) f g e (g)  f g |
    %% 25
    e4 <c e> <c e> r
  }
  %% 26
  e4\p\downbow c e f | g bes g f | e\< g e d |
  %% 29
  cis8\> d e cis a4 a'\! | a\p a a bes | c a' fis ees |
  %% 32
  d\< c2-> (c4-.) | bes8\f c d bes g'4-> bes,-> |
  %% 34
  a8 bes c a f'4-> a,-> |
  %% 35
  g8 a bes g e'4-> g,-> | f8 g a f d'4-> f,-> |
  %% 37
  \repeat unfold 2 { e4\> c' (d) f, } |
  %% 39
  e8\< (c') c c f, (c') c c |
  %% 40
  g\> (c) c c c^\rit (cis d bes) |
  %% 41
  a4\p^\aTempo a a bes | c a' f c |
  %% 43
  a\< a bes fis | g\> fis8 (a) g4 g, | e'\p c e f | g bes g f |
  %% 47
  e\< c d e | f\> d8 (bes) a (c\!) f a | c4 (f,) f f |
  %% 50
  e8 (g) c e a4 (g) | f c a f | e8 (g) c e a4 (g) | f2.\< c4 |
  %% 54
  bes\> a bes g | c,\p g' f8 (e d c) | f4 (c) c2 | c4 g' f8 ( e d c) |
  %% 58
  f a bes a g f e c | f\< a bes a g f e c | f\f c e c f c e c |
  %% 61
  f4 f f r \bar "|."
}

titleduoImovementII = ##f

globalduoImovementII = {
  \time 2/4
  \tempo "Andante." 4 = 84
  \key f \major
}

violinIduoImovementII = \new Voice \relative f' {
  \violinVoiceSettings

  << { \voiceOne a8\p\downbow (d) a-. (a-.) | bes (d) bes-. (bes-.) | a\f }
     \new Voice {\voiceTwo d,4 d8 d | d4 d8 d | d } >> a'' f d |
  %% 4
  \oneVoice cis4 a |
  %% 5
  << { \voiceOne a8\p (d) a-. (a-.) | bes (d) bes-. (bes-.) | a\< }
     \new Voice {\voiceTwo d,4 d8 d | d4 d8 d | d} >> d' f e |
  %% 8
  << { \voiceOne cis8\> cis d }
     \new Voice {\voiceTwo e,8 e d} >> \oneVoice r8\!
  \repeat volta 2 {
    %% 9
    <fis a>2\f\upbow |
    %% 10
    << {\voiceOne d8 (g) d d }
       \new Voice {\voiceTwo g,4 g8 g} >> \oneVoice
    %% 11
    <c e>2\p | cis8 (e) a, a | d4\f b8 d | c4 e8 g | f4 a,8 c |
    %% 16
    bes4 d8 f | g4 bes,8 d | g,8 bes g gis | a (e') a a | a2\> |
    %% 21
    << { \voiceOne a8\p (d) a-. (a-.) | bes (d) bes-. (bes-.) | a\f }
       \new Voice {\voiceTwo d,4 d8 d | d4 d8 d | d } >> a'' f d |
    %% 24
    \oneVoice cis4 a |
    << { \voiceOne a8\p (d) a-. (a-.) | bes (d) bes-. (bes-.) | a\< }
       \new Voice {\voiceTwo d,4 d8 d | d4 d8 d | d} >> d' f e |
    %% 25
    << { \voiceOne cis8\> cis d}
       \new Voice {\voiceTwo e,8 e d} >> \oneVoice r8\!
  }
}

violinIIduoImovementII = \new Voice \relative f' {
  \violinVoiceSettings

  f4\p\downbow f8-. (f-.) | g4 g8-. (g-.) | f\f a, d f | e a g e |
  %% 5
  f4\p f8-. (f-.) | g4 g8-. (g-.) | f4\< <g bes>8 <g bes> |
  %% 8
  <g a>\> <g a> <f a> r\!
  \repeat volta 2 {
    d'8\f (a') c, c | c4 (bes) | bes8\p (g') bes, bes |
    %% 12
    << { \voiceOne bes4 (a) }
       \new Voice {\voiceTwo g2} >> |
    %% 13
    \oneVoice <f a>8\f d' f4 | e8 g c,4 | a8 c ees4 | d8 f bes,4 |
    %% 17
    bes8 d g, bes | e, g e d | cis2 | a8\> (e') g g | f4\p f8-. (f-.) |
    %% 22
    g4 g8-. (g-.) | f8\f a, d f | e a g e | f4\p f8-. (f-.) |
    g4 g8-. (g-.) | f4\< <g bes>8 <g bes> | <g a>\> <g a> <f a> r\!
  }
}

titleduoImovementIII = ##f

globalduoImovementIII = {
  \time 6/8
  \tempo "Vivace." 8 = 147
  \key f \major
}

violinIduoImovementIII = \new Voice \relative f' {
  \violinVoiceSettings

  f8\p\downbow c f e d c |
  %% 2
  f4_\markup\whiteout{
    \override #'(style . outline)
    \override #'(thickness . 3)
    \italic "sempre staccato"} (g8-.) a4.-4 |
  %% 3
  a8 g a g f g | a4\open (bes8-.) c4. | c8\f f c  d4 (f8-.) |
  %% 6
  c8 f c d4 (f8-.) | c8 a d bes g c | a bes a g d e |
  %% 9
  f\p c\< a c d e | f c f e f g | a4.->-4\f d,8 e f | g4.-> c,8 d e |
  %% 13
  f4.-> g,8 d' f |
  %% 14
  <g, e'> <g e'> <g e'> \repeat tremolo 3 {<g e'>8} |
  %% 15
  \repeat unfold 2 {\repeat tremolo 3 {<g f'>8}} |
  %% 16
  \repeat unfold 2 {\repeat tremolo 3 {<g e'>8}} |
  %% 17
  \repeat unfold 2 {\repeat tremolo 3 {<g f'>8}} |
  %% 18
  <g e'>4 r8 r8 g'8\downbow e | c\> c' c c c c | c\p g c e-4 d c |
  %% 21
  b4 (d8-.) f4. | e8 bes e g f e | f4 (g8-.) c,4. | d8 g a bes4. |
  %% 25
  c,8  f g a4. | bes,8 e f g4. | a,8 d e f4. | e8\f d c b a g |
  %% 29
  g'4.-> f-> | e8 d c b a g | g'4.-> f-> | e8 d c g' f e |
  %% 33
  bes' a g f e d | c\> bes a g f e | f4\! r8 r4. | R2. |
  %% 37
  f8\p\downbow c f e d c | f4 (g8-.) a4.-4 | a8\f f a\open bes f bes |
  %% 40
  a f a bes f bes | a f c a c f | a bes a g d e | f c' f a g f |
  e g c, d (c) c | f c f a g f | e g c, d (c) c | e a e c4.~ |
  c8 f c a4.~ | a8 c a f a c | f4 r8 r4. \bar "|."
}

violinIIduoImovementIII = \new Voice \relative f' {
  \violinVoiceSettings

  R2.*2 | f8\p c f e d c | f4 (g8-.) a4.-4 |
  %% 4
  a8\f f_\markup{\italic "sempre staccato"} a\open bes f bes |
  %% 5
  a f a bes f bes | a f d g e c | f d c b4 (bes8-.) |
  %% 8
  a8\p c\< f e f g | a g a g a bes | c\f d e  f4.-> | b,8 c d e4.-> |
  %% 12
  a,8 d c b a b | \repeat unfold 2 { c g c e d c | b d f a g g, } |
  %% 17
  c g' e c4 r8 | R2.*2 | g8\p d g b a g | c,4 (g'8-.) bes4. |
  %% 22
  a8 c, f a g f | bes4. g8 e c | a'4.-4 f8 d bes | g'4. e8 cis a |
  %% 26
  f'4. d8 b g | c4.->\f d-> | e8 d c b a g | g'4.-> f-> |
  %% 30
  e8 d c b a g | c4 r8 e d c | g' a bes a g f | e\> d c bes a g |
  a\p c f e d c | f4 (g8-.) a4.-4 | a8\p g a g f g | a4 (bes8-.) c4. |
  c8\f f c d4 (f8-.) | c f c d4 (f8-.) | c a f' c a f |
  c d c b4 (bes8-.) |
  \repeat unfold 2 {
    \repeat unfold 2 {a c f} | \repeat unfold 2 {bes, c e}
  }
  a,4 r8 r a' f | c4.~ c8 f c | a4.~ a8 a c | f4 r8 r4. \bar "|."
}

%%% ------------ Duo II ------------

titleduoIImovementI = ##f

globalduoIImovementI = {
  \time 3/4
  \tempo "Vivace." 4 = 155
  \key bes \major
}

violinIduoIImovementI = \new Voice \relative b' {
  \violinVoiceSettings

  bes4\f\downbow f f | d' bes bes | f d-. (bes'-.) | f2 bes8 (d) |
  %% 5
  f2 ees4 | d ees g | a, bes d | c8 a f ees c a | bes4 f' f | d bes bes |
  %% 11
  f' d-. (bes-.) | f'2 bes8 (d) | c2 bes4 | a8 c f g a f | e2 g4 |
  %% 16
  f8\> e d c bes a | g\< a bes c d4 | d\> bes g | g8\< a b c d4 |
  %% 20
  d\> b g | g8\p c bes c a c | g c bes c a c | g\< bes c e g a |
  %% 24
  bes2. | a4\f g f | ees d c | b (g') b, | bes2 (a4-.) | g\> (bes d) |
  %% 30
  e,2 (g4\!) | f4._\dolce a8 c f | a4 g f |
  %% 33
  bes (g) e | c \( (bes) g-. \) |
  %% 35
  \repeat unfold 2 {f8 (c) a (c) a (c)} |
  %% 37
  \repeat unfold 2 {g (c e c) bes (c) } |
  %% 39
  a2\f c4 | f c c | a'-4 f f | c2. | c4 a f' | e2. | e4 c bes' |
  %% 46
  a2.\p | fis4 d c' | b2.\< | gis4 e d' | c\f e-4 e | e2 gis,4 | a c c |
  %% 53
  c2 e,4 | f c' ees | d2. | bes4 f' aes | g bes8 aes g f |
  %% 58
  ees4 g8 f ees d | c4 ees8 (d) ees (d) | c (bes a g f a) | bes4 f f |
  %% 62
  d bes bes | f' d bes | f'2 d8 (bes) | a4 c f8 (a) | bes4 d, ees |
  %% 67
  f d bes | f'2 r4 | bes4 f f | d' bes bes | f d bes' | f2 bes8 (d) |
  %% 73
  f4 bes8 (a g f) | a (g f ees d c) | d\> f bes, d c a |
  bes4.\p d8 f bes | f4 (d) bes | ees (c) a | f es c |
  bes8 d f bes d f | \repeat tremolo 3 {d8 f} |
  \repeat tremolo 3 {ees8 f} | ees f ees c a f | bes4\f f f |
  d' bes bes | bes' f d | <d, bes'> r r \bar "|."
}

violinIIduoIImovementI = \new Voice \relative b {
  \violinVoiceSettings

  bes4\f\downbow f' f | d bes bes | f' d bes | f'2 d8 (bes) |
  %% 5
  a4 c f8 (a) | bes4 g ees | f d bes | f'2 r4 | bes4\upbow f f |
  %% 10
  d' bes bes | f d bes' | f2 d8 (bes) | g bes c e g e | f2 c4 |
  %% 15
  bes8 c e g bes c | a\> c bes a g f | f4\< d bes |
  %% 18
  bes8\> c d e f4 | f4\< d b | b8\> c d e f4 | e4\p c f | e c f |
  %% 23
  e2.\< | c8 (e) g bes c e | f4\f cis d | a bes fis | g2 f4 |
  %% 28
  e (c) f | bes,\> (d bes) | g (c bes\!) |
  %% 31
  a8_\dolce (c f c ) a (c) | a (c f c) a (c) |
  %% 33
  \repeat unfold 2 { g (c e c) bes (c) } | a (c f a c f) |
  %% 36
  a4 g f | bes (g) e | c (bes) g | f\f a c | f c c | a' f f |
  %% 42
  c a f' | c2. | c4 bes g' | c,2. | c4\p f, ees' | d2. | d4\< g, f' |
  %% 49
  e2 gis,4 | a2.\f | d,4 e e | c2. | bes4 c c | a2. | bes4 d f | d2. |
  %% 57
  ees4 r r | g bes8 a g f | ees4 c c'8 (bes) | a (g f ees d c) |
  %% 61
  bes4 f' f | d' bes bes | f d d' | f,2 bes8 (d) | f2 ees4 | d ees g |
  %% 67
  a, bes d | c8 a f ees c a | bes4 f' f | d bes bes | f' d bes | f'2 r4 |
  %% 73
  d2. | ees | f2\> ees4 | d8\p (f bes) f d f | d (f bes) f d f |
  %% 78
  c (f ees) f ees f | c (f a) f a f | bes4. d,8 f bes | f4 d bes |
  a (c) f | a (c) f | bes,\f f f | d bes bes | bes d f | bes, r r
  \bar "|."
}

titleduoIImovementII = ##f

globalduoIImovementII = {
  \time 2/4
  \tempo "Allegretto." 4 = 123
  \key bes \major
}

violinIduoIImovementII = \new Voice \relative b' {
  \violinVoiceSettings

  g4\mf\downbow (fis) | g (bes) | c (ees) | d4. (ees8) | d (c) r d |
  %% 6
  c (bes) r bes | a (bes) c (a) | g4 (fis8) d | bes\p (d) c (d) |
  %% 10
  bes (d) g, (g') | ees (g) c, (g') | bes,\< (g') d (g) | a,\f f' c f |
  %% 14
  bes, f' d f | ees c f ees | d\> f bes\! r | d4\p\downbow d |
  %% 18
  d8 (ees) c4 | bes bes | bes8 (c) a4 | g8\f bes ees g | bes (g) f4 |
  %% 23
  ees8 (g) c, ees | d (f) bes, d | c\> bes a g | fis\p (g) a d, |
  %% 27
  a' (bes) c d, | c' (d) c (d) | c (a) fis (a-4) | g4\f (fis) |
  g (bes) | c (ees) | d4. (ees8) | d8 (c) r d | c (bes) r bes |
  a (c) fis, (a-4) | g4. r8 \bar "|."
}

violinIIduoIImovementII = \new Voice \relative b {
  \violinVoiceSettings

  bes8\mf\downbow (d) c (d) | bes (d) g, (g') | ees (g) c, (g') |
  %% 4
  bes, (g') d (g) | a, (fis') d (fis) | g, (g') d (g) | c, (d) ees (c) |
  %% 8
  d (ees d) r | g4\p (fis) | g (bes) | c (ees) | d4.\< (ees8) |
  %% 13
  d8\f (c) r f | ees (d) r bes | g (c ees a,) | bes\> (f d bes) |
  %% 17
  bes'\p (f) bes (f) | a (f) a (f) | g (d) g (d) | fis (d) fis (d) |
  %% 21
  ees\f g bes ees | g (ees) d bes | c (bes) a f | bes (a) g f |
  %% 25
  ees\> d c cis | d\p r r4 | fis8\p (g) a-4 (d,) | a' (d,) a' (d,) |
  %% 29
  a' (fis) d (c) | bes\f (d) c (d) | bes (d) g, (g') | ees (g) c, (g') |
  %% 33
  bes, (g') d (g) | a, (fis') d (fis) | g, (g') d (g) | c, (ees) d (c) |
  %% 37
  bes (d) g, r \bar "|."
}

titleduoIImovementIII = ##f

globalduoIImovementIII = {
  \time 2/4
  \tempo "Allegro ma non troppo." 4 = 123
  \key bes \major
}

violinIduoIImovementIII = \new Voice \relative b' {
  \violinVoiceSettings

  f8\p (bes) d bes | f4 f | f8 (c') ees c | f,4 f | f8\< d' bes f' |
  %% 6
  d bes' f4 | ees8\f c d bes | g c a f | f4 r | d8\p (c) d bes |
  %% 11
  a4 r | ees'8 (d) ees c | bes\< d e c | f e d c | bes\f g c bes |
  %% 16
  a c f r | f\p\downbow (c') ees c | f,4 f | f8 (bes) d bes | f4 f |
  %% 21
  bes'8\f g e c | bes g e bes | a c f a | c, f a c | c4 a |
  %% 26
  bes8 (a) bes e | f\p (c) a f | a' (f) c a | a4 f | g8 (f) g c, |
  %% 31
  f\< a c f | g, bes c g' | a, c f a | bes, d f bes | g\> f ees d |
  %% 36
  c bes a g | fis\p (a) d d | d4 bes8 g | d4 c8 a | g (bes) d d |
  %% 41
  d2\< | c\> | bes8\p (d) f ees | d (c) d bes | a4 r | ees'8 d ees c |
  %% 47
  d\< bes f' d | bes' f d' bes | g\f a bes g | ees c f ees |
  %% 51
  d\p (bes') d bes | f4 f | f8 (c') ees c | f,4 f | d'8\< bes ees c |
  %% 56
  f\f d bes g | f bes d c | bes4 r | f'->\downbow f-> | g2-> |
  %% 61
  <ees, bes'>4\pp <ees bes'> | <f d'>2 | f'8\f d bes f | d' c f, d |
  %% 65
  f4 <f a> | <f bes> r \bar "|."
}

violinIIduoIImovementIII = \new Voice \relative b {
  \violinVoiceSettings

  R2 | d8\p (c) d bes | a4 r | ees'8 (d) ees c | d bes f' d |
  %% 6
  bes'\< f d' bes | g\f a bes g | ees c f ees | d\p (bes') d bes |
  %% 10
  f4 f | f8 (c') ees c | f,4 f | d'8\< bes g c | a c f a, |
  %% 15
  g\f bes e, g | f4 r | R2 | ees8\p\downbow (d) ees c | d4 bes |
  %% 20
  d8 (c) d bes | g\f bes c e | g bes c e | f c a f | a' f c a |
  %% 25
  a4-4 f | g8 (f) g c, | a\p (c) f a | c, (f) a c | c4 a |
  %% 30
  bes8 (a) bes g | f2 | e\< | ees | d | ees8\> f g f | ees d c cis |
  %% 37
  d4\p c8 (a) | g (bes) d g | fis (a) d d | d4 bes8 g |
  %% 41
  fis\< (a) d d | f,\> (a) ees' ees | d4\p (bes) | f f |
  %% 45
  f8 (c') ees c | f,4 f | f8\< d' bes f' | d bes' f4 | ees8\f c d bes |
  %% 50
  g c a f | f4 r | d8\p (c) d bes | a4 c | ees8 (d) ees c |
  %% 55
  bes\< d c ees | d\f f g ees | d bes f' ees | d4 r |
  %% 59
  <d bes'>->\downbow <d bes'>-> | <ees bes'>2-> | g,4\pp g | bes2 |
  d'8\f bes f d | bes' f d bes | d4 <c ees> | <bes d> r \bar "|."
}

%%% ------------ Duo III ------------

titleduoIIImovementI = ##f

globalduoIIImovementI = {
  \time 4/4
  \tempo "Allegro moderato." 4=132
  \key ees \major
}

violinIduoIIImovementI = \new Voice \relative b' {
  \violinVoiceSettings

  \repeat volta 2 {
    bes8\p\upbow (ees\< g f ees d c bes) | d4\> (c) c2 |
    %% 3
    <aes bes>2\< <aes bes>4 <aes bes> | <g bes>2\> <g bes>4 <g bes> |
    %% 5
    bes8\< (ees g f ees d c bes) | bes4\> (a) a2 |
    %% 7
    <f ees'>2\< <f ees'>4 <f ees'> | <f d'>2\> <d bes'>4 <d bes'> |
    %% 9
    bes''\p (f) f2 | bes4 (g) g2 | bes8\f (aes) f d bes (aes) f d |
    %% 12
    ees (f g aes) bes4 g | f8\p (g b g) f (g b g) |
    %% 14
    \repeat unfold 2 {ees (g c g)} | \repeat unfold 2 {ees (f a f)} |
    %% 16
    \repeat unfold 2 {d (f bes f)} | d2\< d | ees8\f f g a bes a g f |
    %% 19
    ees g c ees f, a c f | bes, f' g f ees d c bes |
    %% 21
    a4-> c-> ees-> ees-> | d8 f g f ees d c bes |
    %% 23
    a4-> c-> ees-> ees-> | d d,8 f bes d f bes | bes,4 bes bes bes
  }
  %% 26
  bes,\p r r2 | bes8\downbow (c des c bes aes g c) | f4 aes c f |
  f8 (g aes g f ees d c) | c4\< (bes) bes2 |
  bes8\> (ees g f ees d c bes) | aes4\< (g) g2 |
  g8\> (c ees d c bes aes g) |
  \repeat tremolo 2 { ees8\< (f) } \repeat tremolo 2 {ees8 (f)} |
  \repeat unfold 2 {\repeat tremolo 2 {ees8 (f) }} |
  d4\f bes d8 f bes d | ees4 bes ges8 bes ges ees |
  bes\p bes' d f bes4 aes | ges8 bes ges ees bes4 ees |
  d8 (f ees d) c (ees d c) | bes (d c bes) aes4-. (aes-.) |
  aes8\< (g f ees d c bes aes) | <g ees'>2\f <g ees'>4 <g ees'> |
  <aes ees>2 <aes ees>4 <aes ees> | d8 (ees f ees d bes c d) |
  ees4 (bes) bes2 | bes8 (ees g f ees d c bes) | bes4 (a) a2 |
  aes4\p (g) g2 | g8 (c ees d c bes aes g) | f4\< (c') c2-> |
  f4\> (bes) bes2-> | bes2\p ees4 ees | bes2 g4 g | bes (aes) f d |
  bes (aes) f d | ees8 (bes g bes) \repeat tremolo 2 {g8 (bes)} |
  g (bes ees bes) \repeat tremolo 2 {e8 (bes)} |
  \repeat unfold 4 {aes8 (bes d bes)} | g4.\< bes8 ees4 f |
  g (ees) ees r\! | g\p (ees') ees r | <e c'>2->\ff <d bes>-> |
  <g, ees'> r \bar "|."
}

violinIIduoIIImovementI = \new Voice \relative b {
  \violinVoiceSettings

  \repeat volta 2 {
    <g ees'>2\p\downbow <g ees'>4\< <g ees'> |
    %% 2
    <aes ees'>2\> <aes ees'>4 <aes ees'> | d8\< (ees f ees d bes c d) |
    %% 4
    ees4\> (bes) bes2 | <g ees'>2\< <g ees'>4 <g ees'> |
    %% 6
    <c ees>2\> <c ees>4 <c ees> | a8\< (bes c d ees f g a) |
    %% 8
    bes4 (f) f2 | d8\p (f bes f) d (f bes f) |
    %% 10
    \repeat unfold 2 {ees (g bes g)} | d\f (f bes f) d (f d bes) |
    %% 12
    g (bes ees f) g4 r | g'\p (d) d2 | g4 (ees) ees2 | f4 (c) c2 |
    %% 16
    f4 (d) d2 | bes8\< c d ees f g a bes | g\f a bes a g f ees d |
    %% 19
    c g ees c a' f e c | d4-> bes-> f'-> f-> | c8 ees f ees d c bes a |
    %% 22
    bes4-> d-> f-> f-> | c8 ees f ees d c bes a | bes2~ bes8 d f bes |
    %% 25
    bes,4 r r2
  }
  %% 26
  bes'8\p\downbow (c des c bes aes g f) | f4 (e) e2 |
  %% 28
  f8 (aes c bes a g f ees) | ees4\< (d) d2 | d8 (ees f g aes f ees d) |
  %% 31
  ees4\> (bes) bes2 | b8\< (d f ees d c b d) | c4\> (g) g2 |
  %% 34
  aes4\< bes c bes | a bes c a | bes8\f bes' d f bes4 aes |
  %% 37
  ges8 bes ges ees bes4 ees | d\p bes, d8 f bes d |
  %% 39
  ees4 bes ges8 bes ges ees | bes4 bes'2 aes4~ | aes g f8 (e d c) |
  %% 42
  bes4\< (d) f (g8 aes) | bes8\f (ees g f ees d c bes) | d4 (c) c2 |
  %% 45
  <aes bes>2 <aes bes>4 <aes bes> | <g bes>2 <g bes>4 <g bes> |
  %% 47
  <g, ees'>2 <g ees'>4 <g ees'> | <c ees>2 <c ees>4 <c ees> |
  %% 49
  <b d>2\p <b d>4 <b d> | <c ees>2 <c ees>4 <c ees> |
  %% 51
  <aes ees'>2->\< <aes ees'>4 <aes ees'> |
  %% 52
  <aes d>2->\> <aes d>4 <aes d> |
  %% 53
  g8\p (bes ees bes) \repeat unfold 3 {g (bes ees bes)} |
  %% 55
  \repeat unfold 3 {aes (bes d bes)} aes (bes d f) |
  %% 57
  ees4 (bes') ees ees | ees, (bes') g' g | bes (aes) f d |
  %% 60
  bes (aes) f d | ees4.\< f8 g4 aes | bes (ees) ees r\! |
  ees,\p (c) c r | <aes f'>2\ff <aes f'> | <g ees> r \bar "|."
}

globalduoIIImovementII = {
  \time 6/8
  \tempo "Adagio." 8 = 66
  \key ees \major
}

violinIduoIIImovementII = \new Voice \relative e' {
  \violinVoiceSettings

  \partial 8 g8\f\upbow | c4 g8 ees4 c8 |
  %% 2
  <g g'> <g g'> <g g'> <g g'>4 (g'8-.) | d'4 b8 g4 d8 |
  %% 4
  <g, ees'> <g ees'> <g ees'> <g ees'>4 (g'8-.) |
  %% 5
  \repeat unfold 2 { c8 (ees) c b4 b8 } | c8 (b c) ees (d c) |
  %% 8
  b\> d b g f d | c4\p g8 ees'4 c8 | <b d> <b d> <b d> <b d>4 (g'8-.) |
  %% 11
  aes4 ees'8 c4 aes8 | <bes, g'> <bes g'> <bes g'> <bes g'>4 r8 |
  <a f'>8\pp <a f'> <a f'> <a f'>4 r8 |
  <aes f'>\ff <aes f'> <aes f'> <aes f'>4 r8 |
  g8 bes ees g ees g | aes, c ees c bes aes |
  <bes ees>4\> <bes ees>8 <bes d>4 <bes d>8 |
  <g ees'>8 bes\p ees g bes ees | g ees c g c g | a c f c f aes |
  c4 c8 b (c) d | c4 g8 e4 c8 | c4.->\f bes4.-> | c4 r8 r4. |
  aes4.\p (g) | g4 r8 <g c>\pp <g c> <g c> | <g c>4 r8 r4 |
}

violinIIduoIIImovementII = \new Voice \relative b {
  \violinVoiceSettings

}

globalduoIIImovementIII = {
  \time 6/8
  \tempo "Vivace." 8 = 141
  \key ees \major
}

violinIduoIIImovementIII = \new Voice \relative e' {
  \violinVoiceSettings

  ees4\p\downbow f8 e4 f8 | g4 aes8 g4 aes8 |
  bes8\f ees ees c ees ees | bes g' ees bes4 r8 | f4\p ees8 f4 ees8 |
  f4 g8 f4 g8 | f8\f bes bes g bes bes | f f' d bes bes bes |
  bes'\ff g ees bes g ees | <aes d>4.-> <aes d>-> |
  <g ees>4 r8 bes ees g | \repeat unfold 2 {bes (f) bes} |
  bes' a g g f ees | g f ees ees d c | ees d c bes a g |
  f\> a c f f f | <d f>4.\p <d f> | <ees f> <ees f> | <d f> <d f> |
  <ees f> <ees f> | <d f>4\ff <d f>8 <d f> <d f> <d f> |
  <d f>4 f,8\pp f f f | f4 r8 bes4 r8 | bes4 r8 bes4 r8 |
  bes4 g8 bes4 g8 | bes4 ees8 bes4 ees8 | d8\f bes bes ees bes bes |
  bes des f bes bes bes | ees4\p f8 ees4 f8 | g4 aes8 g4 aes8 |
  bes8\f ees ees c ees ees | bes g' ees bes4 r8 | des4.\p ees | c d |
  des ees | c4 (ees8) g c, c | bes c c g c c | aes c c f c c |
  bes c c g c c | a c c f c c | bes\< (f) bes bes (f) bes |
  bes'\f g ees bes g e | <aes d>4.-> <aes d>-> | <g ees>2. |
  ees8\ff\downbow g bes ees ees ees | g, bes ees g g g |
  bes, ees g bes bes bes | bes4 g8 ees bes g | bes4 g8 bes4 g8 |
  bes2. | ees4\p f8 ees4 f8 | ees4 r8 r4. \bar "|."
}

violinIIduoIIImovementIII = \new Voice \relative g {
  \violinVoiceSettings
  
  g4\p\downbow bes8 g4 bes8 | ees4 f8 ees4 f8 |
  g8\f ees ees aes ees ees | g8 ees g bes4 r8 |
  bes4\p g8 bes4 g8 | bes4 ees8 bes4 ees8 | d8\f bes bes ees bes bes |
  bes d f bes4 r8 | <g, ees'>4\ff r8 bes8 ees g |
  \repeat unfold 2 {bes8 (f) bes } | bes g ees bes g ees |
  <aes d>4.-> <aes d>-> | <g e>4 r8 bes8 aes g | ees f g g f ees |
  c d ees d c bes | a4.\> ees8 d c | bes\p d f bes bes bes |
  \repeat unfold 2 {a (f) a} | bes, d f bes bes bes |
  \repeat unfold 2 {a (f) a} | bes4\ff bes8 bes bes bes |
  bes4 <bes, d>8\pp <bes d> <bes d> <bes d> | <bes d>4 r8 bes' r8 |
  bes4 r8 bes4 r8 | f4 ees8 f4 ees8 | f4 g8 f4 g8 |
  f8\f bes bes g bes bes | f f' g bes4 r8 | g,4\p bes8 g4 bes8 |
  ees4 f8 ees4 f8 | g8\f ees ees aes ees ees | g ees g bes bes bes |
  bes\p ees ees g ees ees | aes ees ees c' ees, ees |
  bes' ees ees g ees ees | aes ees c aes4 r8 | g4. e | f aes | g e |
  f aes, | <aes d>->\< <aes d>-> | <g ees>4\f r8 bes ees g |
  \repeat unfold 2 {bes8 (f) bes} | bes' g ees bes bes g |
  ees4 r8 r4. | ees8\ff g bes ees ees ees | g, bes ees g g g |
  g4 ees8 bes g ees | g4 ees8 g4 ees8 | g2. | g,4\p bes8 g4 bes8 |
  g4 r8 r4. \bar "|."
}

%%% --- Output ---

\include "../composer.ily"

\header {
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 179"
  source = "http://www.imslp.org/"
  title = "Three Easy Duos."
}

\include "paper.ily"

#(define fileBaseName "Johann_Wenzel_Kalliwoda-opus_179")

define(`AllDuetts', `(I, II)')
define(`Movements', `(I, II, III)')
define(`AllViolins', `(I, II)')

include(`output-duos.ily')
