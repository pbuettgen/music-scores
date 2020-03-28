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

%%% ------------ Duo I ------------

titleduoImovementI = ##f

globalduoImovementI = {
  \time 3/4
  \tempo "Allegro." 4=123
  \key a \major
}

violinIduoImovementI = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 cis8.\f (a16) | d2 b8. (gis16) | e'2 a16 (gis fis e\open) |
    %% 3
    e4-4 (d) d16 (cis d e) | bis4-> (cis8) r8 cis8. (a16) |
    %% 5
    d2 b8. (gis16) | e'2 a16\p (gis fis e) | e4 (dis) e16 (dis cis b) |
    %% 8
    b4 (e-4) e16\open (fis gis a) | gis4 (fis) fis16 (gis a b) |
    %% 10
    a4 (gis) e16\< (fis gis a) | b8\f (a gis fis) e dis |
    %% 12
    cis (b a gis) fis cis' | e,4\> (fis) dis | e8\p e e e e e |
    %% 15
    d (e gis e d e) | cis (e cis e a e) | \repeat tremolo 3 {gis8 (e)} |
    %% 18
    a4 r a16 (b cis d) | e4 (a) cis, | e (d) g16 (fis e d) |
    %% 21
    cis8. b16 a8. b16 a8. g16 | fis4~ fis8 r8 fis16\f (a d fis) |
    %% 23
    a4-> (fis8) r8 d,16 (fis b d) | fis4-> (d8) r8 d8. cis16 |
    %% 25
    b8.\> cis16 b8. a16 gis8. fis16 | eis8.\p gis16 cis4 r |
    %% 27
    b,8.\f (e16) gis4 r | cis,8. (e16) a4 r | dis,8. (fis16) b4 r |
    %% 30
    \repeat tremolo 3 {gis8 (b)} | fis8 ( b a b a b) |
    %% 32
    gis (b gis b gis e) | dis ( fis b dis e fis) | gis8. (b16) e,4 e |
    %% 35
    dis8 (a') gis fis e dis | e (gis) fis e dis cis |
    %% 37
    b (cis) b a gis fis | gis8 a16 b cis dis e fis gis8 a |
    %% 39
    b8 gis e b gis e | cis16 a b cis dis e fis gis a8 b |
    %% 41
    cis\> e cis a e cis | dis4\p fis b | b2 gis4 | eis4 gis cis |
    %% 45
    cis2 a4 | a'\< fis dis | e cis ais | b8\f e gis gis, b e |
    %% 49
    e, gis b b, e gis | b4 cis dis | e e, r
  }
  \alternative {
    {R2.}
    {<b' gis'>4 e, r}
  }
  <c' a'> e, r | <a f'> d, r \bar "||" \key c \major <g, d'>2 r4 |
  r4 <g f'>\> <g f'> |
  << {\voiceOne e'\p (d) e | f (d) }
     \new Voice {\voiceTwo g,2 g4 | g2 } >> \oneVoice r4 |
  f'16\f (e d c) b4 a | gis8. b16\> e4 e |
  << {\voiceOne c'4\p (b) c | d (b) }
     \new Voice {\voiceTwo e,2 e4 | e2 } >> \oneVoice e'16\f (fis gis a) |
  %% 64
  b8. gis16 e4 d | d\> (cis) cis | d8\p a' (g f e d) | c (g' f e d c) |
  %% 68
  b c d e f4~-> | f\< e d | cis8\f d e f g4~-> | g f e | f e d |
  %% 73
  e d c | <d, b'> <d b'> <d b'> | <d b'> r4 d'8.\p (b16) |
  %% 76
  <b, gis'>4 <b gis'> <b gis'> | <b gis'> r4 b'8.\f (gis16) |
  %% 78
  <b, e>4 <b e> <b e> | <b e> r4 r | <e b'>4\p r r |
  %% 81
  e'\< (e,) e \bar "||" \key a \major b8.\f (e16) gis4 r |
  %% 83
  cis,8. (e16) a4 r | r <b, e> <b e> | <a e'>2-> r4 | b8. (e16) gis4 r |
  %% 87
  cis,8. (e16) a4 r | r <b, a'>\p <b a'> | r <b gis'> <b gis'> |
  %% 90
  r <b dis> <b dis> | r <b e> r | e16\f (fis gis a) b8 (a) gis fis |
  %% 93
  e8 (dis cis b) a a' |
  %% 94
  << {\voiceOne gis4\> (a) fis\!}
     \new Voice {\voiceTwo b,2 b4} >> |
  %% 95
  \oneVoice e4 r e16\p (fis gis a) | b4 (e) gis, |
  %% 97
  b (a) e'16 (fis gis a) | b4 d,8. cis16 d8. e16 | cis8 (a e cis) a a |
  %% 100
  cis (a e' a, g' a,) | fis'8 (a, fis' a, d a) | e' (a, cis a cis a) |
  %% 103
  d8 (a) d r d16\f (fis a d) | fis4-> (d8) r b,16 (d fis b) |
  %% 105
  d4-> (b8) r8 r4 | d,2\> b4 | cis2.\p | b\< | a8\f (e' cis e cis e) |
  %% 110
  b (e d e d e) | cis (e cis e cis a) | gis (b e gis a b) |
  cis4 (e) a | gis8 (b) a gis fis e | a4. gis8 (fis e) |
  e4. d8 (cis b) | cis16 cis, d e fis gis a b cis8 d |
  e cis a e cis e | d e16 fis gis a b cis d8 e | fis\> d a d a fis |
  gis4\p b e | e2 cis4 | ais4 cis fis | fis2 d4 | b\< d gis |
  a fis dis | e8\f a cis, e a, cis | e,4 fis gis | a r cis8.\p (a16) |
  d2 b8. (gis16) | e'4~ e8. cis16 e8. a16 |
  <b, gis'>4\< <b gis'> <b gis'> | <a a'>\f a r \bar "|."
}

violinIIduoImovementI = \new Voice \relative a {
  \violinVoiceSettings

  \repeat volta 2 {
    \partial 4 r4 | b8.\f (e16) gis4 r | cis,8. (e16) a4 r |
    %% 3
    r <b, e> <b e> | <a e'>2-> r4 | b8. (e16) gis4 r |
    %% 6
    cis,8. (e16) a4 r | r4 <b, a'>\p <b a'> | r <b gis'> <b gis'> |
    %% 9
    r <b dis> <b dis> | r <b e> r |
    %% 11
    e16\f (fis gis a) b8 (a) gis fis | e (dis cis b) a a' |
    %% 13
    << {\voiceOne gis4\> (a) fis\!}
       \new Voice {\voiceTwo b,2 b4} >> |
    %% 14
    \oneVoice e4 r e16\p (fis gis a) | b4 (e) gis, |
    %% 16
    b (a) e'16 (fis gis a) | b4 d,8. cis16 d8. e16 | cis8 (a e cis) a a |
    %% 19
    cis (a e' a, g' a,) | fis' (a, fis' a, d a) | e' (a, cis a cis a) |
    %% 22
    d (a d) r d16\f (fis a d) | fis4-> (d8) r b,16 (d fis b) |
    %% 24
    d4-> (b8) r8 r4 | d,2\> b4 | cis2\p cis'8.\f (a16) | d2 b8. (gis16) |
    %% 28
    e'2 e8. (cis16) | a'2 fis8. (dis16) | b'4 (e,) e |
    %% 31
    dis8 (a') fis fis e dis | e4. dis8 (cis b) | b4. a8 (gis fis) |
    %% 34
    e (b) \repeat tremolo 2 {gis'8 (b,)} |
    %% 35
    fis' (b,) \repeat tremolo 2 {a'8 (b,)} |
    %% 36
    \repeat tremolo 3 {gis'8 (b,)} | a'8 (b, fis' b, dis b) |
    %% 38
    e8 fis16 gis a b cis dis e8 fis | gis e b gis e b |
    %% 40
    cis dis16 e fis gis a b cis8 dis | e\> a e cis a e | b2\p a4|
    %% 43
    gis b e | cis2 b4 | a cis fis | b,\< dis fis | cis e g\! |
    %% 48
    gis8 b e e, gis b | b, e gis gis, b e | gis4 a fis | gis e r |
  }
  \alternative {
    {R2.}
    {e4 e' r}
  }
  e,4 e' r | e, d' r \bar "||" \key c \major <b g'>4. f'8 (e d) |
  %% 57
  c\> (b a g a b) | c4\p (b) c | d (b) f'16\f (e d c) |
  %% 60
  b8. a16 g4 f | f (e) r | a,\p (gis) a | b (gis) r |
  %% 64
  e'16\f (fis gis a) b4 gis | <g a>2.\> | f8\p (a f a g f) |
  %% 67
  e (g e g f e) | d4. c8 b a | gis4\< b e | g4.\f f8 e d | cis4 e a |
  %% 72
  d, f a | c, e a | <f a> <f a> <f a> | <f a> r r |
  %% 76
  <d e>\p <d e> <d e> | <d e> r r | <gis, d'>\f <gis d'> <gis d'> |
  %% 79
  <gis d'> r r | <gis d'>\p r r | e' (e') cis8. (a16) \bar "||"
  %% 82
  \key a \major d2\f b8. (gis16) | e'2 a16 (gis fis e) |
  %% 84
  e4 (d) d16 (cis d e) | bis4-> (cis8) r cis8. (a16) | d2 b8. (gis16) |
  %% 87
  e'2 a16\p (gis fis e) | e4 (dis) e16 (dis cis b) |
  %% 89
  b4 (e) e16 (fis gis a) | gis4 (fis) fis16 (gis a b) |
  %% 91
  a4 (gis) e16\< (fis gis a) | b8\f (a gis fis) e dis |
  %% 93
  cis ( b a gis) fis cis' | e,4\> (fis) dis |
  %% 95
  \repeat tremolo 6 {e8\p} | d8 (e gis e d e) | cis8 (e cis e a e) |
  %% 98
  \repeat tremolo 3 {gis8 (e)} | a4 r a16 (b cis d) | e4 (a) cis, |
  %% 101
  e (d) g16 (fis e d) | cis8. b16 a8. b16 a8. g16 |
  %% 103
  fis4~ fis8 r8 fis16\f (a d fis) | a4-> (fis8) r8 d,16 (fis b d) |
  %% 105
  fis4-> (d8) r8 d8. cis16 | b8.\> cis16 b8. a16 gis8. fis16 |
  %% 107
  eis8.\p gis16 cis4 cis | d8\< e, fis (gis a b) | cis4\f (e) a, |
  %% 110
  gis8 (d') cis b a gis | a4. gis8 (fis e) | e4. d8 (cis b) |
  %% 113
  a (e' cis e cis e) | b (e d e d e) | cis (e a e cis e) |
  %% 116
  b (e gis e gis e) | a16 a, b cis d e fis gis a8 b |
  %% 118
  cis a e cis a cis | d16 fis gis a b cis d e  fis8 gis |
  %% 120
  a\> fis d fis d a | e2\p d4 | cis e a | fis2 e4 | d fis b |
  %% 125
  e,2.\< | fis4 a c | cis8\f a a e cis a | cis4 d b |
  %% 129
  a8. (cis16) e4 r | b8.\pp (e16) gis4 r | cis,8. (e16) a4 r |
  <e d'>\< <e d'> <e d'> | <e cis'>\f cis r \bar "|."
}

titleduoImovementII = ##f

globalduoImovementII = {
  \time 2/4
  \tempo "Larghetto." 4=67
  \key d \major
}

violinIduoImovementII = \new Voice \relative a' {
  \violinVoiceSettings

  \repeat volta 2 {
    a8\p (fis) fis e | fis8. g16 a8 d | d (b) b a | g8. a16 b8 b |
    %% 5
    <g a>8\< <g a> <g a> <g a> | <fis a>4.\> d'8 | cis8.\< d16 e8 a, |
    %% 8
    d8.\> (cis32 b a8\!) a | fis' d d b | e\< cis a b |
    %% 11
    e,4\f fis8 gis | a4. r8
  }
  %% 13
  g8\p (e') g, fis | e8. fis16 g8 b | a (fis') a, g | fis8. g16 a8 d\f |
  %% 17
  b (d) a b | g (b) fis gis | eis\p (gis) cis cis | cis4 (a) |
  %% 21
  gis8 (b) e e | e4 (cis) | a8\< (g) e e | a (g) e cis |
  %% 25
  a8\f r a'16 (cis) cis (e) | g\> fis e d cis b a g | fis8\p (d) d a |
  %% 28
  d8. e16 fis8 a | b (g) g d | b8. d16 g8 d | cis8.\< d16 e8 a, |
  %% 32
  d8.\> (cis32 b a8\!) <a fis'> |
  %% 33
  <a fis'>\< <a fis'> <a fis'> <a fis'> | <a fis'>4.\> d'8\! |
  %% 35
  fis d d b | b g g e | <a, fis'>4 <a g'>8 <a e'> |
  d4 <fis a>8\f <fis a> | <g b>4-> <g bes>-> |
  <fis a>2->\fermata \bar "|."
}

violinIIduoImovementII = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    fis8\p (d) d a | d8. e16 fis8 a | b (g) g d | b8. d16 g8 d |
    %% 5
    cis8.\< d16 e8 a, | d8.\> (cis32 b a8) <a fis'> |
    %% 7
    \repeat tremolo 4 {<a g'>8\<} | <a fis'>4.\> fis'8\! |
    %% 9
    d' b b gis | cis\< a fis d | cis4\f d8 b | cis e a, r
  }
  %% 13
  e'8\p (a,) e' d | cis8. d16 e8 g | fis (a,) fis' e | d8. e16 fis8 d\f |
  %% 17
  g (d) fis dis | e (b) d b | cis4\p (b) | a8 (cis) fis fis |
  %% 21
  e4 (d) | cis8 (e) a a | cis\< (e) g g | cis, (e) g g |
  %% 25
  cis,16\f (e) e (g) cis, (e) e (g) | b\> a g fis e d cis b |
  %% 27
  a8\p (fis) fis e | fis8. g16 a8 d, | d' (b) b a | g8. a16 b8 b |
  %% 31
  \repeat tremolo 4 {<g a>8\<} | <fis a>4.\> d'8 | cis8.\< d16 e8 a, |
  %% 34
  d8.\> (cis32 b a8\!) fis' | a fis fis d | d b b g | d4 e8 cis |
  %% 38
  d4 <d d'>8\f <d d'> | <d d'>4-> <d d'>-> | <d d'>2->\fermata \bar "|."
}

titleduoImovementIII = ##f

globalduoImovementIII = {
  \time 2/4
  \tempo "Allegro non tanto." 4=123
  \key a \major
}

violinIduoImovementIII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 4 cis16\mf cis e_\markup\whiteout{
    \override #'(style . outline)
    \override #'(thickness . 3)
    \italic "sempre staccato"} e |
  %% 1
  d d gis gis b b d, d | cis cis e e a a cis, cis |
  %% 3
  \repeat tremolo 2 {fis16} \repeat tremolo 2 {d}
  \repeat tremolo 2 {b} \repeat tremolo 2 {a} |
  %% 4
  \repeat tremolo 2 {gis16} \repeat tremolo 2 {b}
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e} |
  %% 5
  \repeat tremolo 2 {d16} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {b} \repeat tremolo 2 {d,} |
  %% 6
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e}
  \repeat tremolo 2 {a} \repeat tremolo 2 {fis} |
  %% 7
  \repeat tremolo 2 {dis} \repeat tremolo 2 {fis}
  \repeat tremolo 2 {b,} \repeat tremolo 2 {dis} |
  %% 8
  \repeat tremolo 2 {e} \repeat tremolo 2 {b}
  \repeat tremolo 2 {e} \repeat tremolo 2 {e} |
  %% 9
  \repeat tremolo 2 {e\p} \repeat tremolo 2 {cis}
  \repeat tremolo 2 {a} \repeat tremolo 2 {g} |
  %% 10
  \repeat tremolo 2 {fis} \repeat tremolo 2 {a}
  \repeat tremolo 2 {d} \repeat tremolo 2 {fis} |
  %% 11
  \repeat tremolo 2 {fis\<} \repeat tremolo 2 {dis}
  \repeat tremolo 2 {b} \repeat tremolo 2 {a} |
  %% 12
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b}
  \repeat tremolo 2 {e} \repeat tremolo 2 {gis} |
  %% 13
  \repeat tremolo 2 {b\f} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {e} \repeat tremolo 2 {d} |
  %% 14
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e}
  \repeat tremolo 2 {a} \repeat tremolo 2 {e} |
  %% 15
  \repeat tremolo 2 {d} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {a} \repeat tremolo 2 {d,} |
  %% 16
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e}
  \repeat tremolo 2 {a} \repeat tremolo 2 {e} |
  %% 17
  \repeat tremolo 2 {fis} \repeat tremolo 2 {a}
  \repeat tremolo 2 {d,} \repeat tremolo 2 {fis} |
  %% 18
  \repeat tremolo 2 {b,} \repeat tremolo 2 {d}
  \repeat tremolo 2 {cis} \repeat tremolo 2 {a} |
  %% 19
  \repeat tremolo 2 {fis} \repeat tremolo 2 {d'}
  \repeat tremolo 2 {gis,} \repeat tremolo 2 {b} |
  %% 20
  a16 a e e a8 r \bar "||"
  %% 21
  \key d \major <d, a'>8\p \repeat unfold 3 {<d a'>} |
  %% 22
  <d b'>2-> | <d b'>8\f \repeat unfold 3 {<d b'>} | <d d'>2-> |
  %% 25
  fis8\p fis fis fis | gis2-> | <e d'>8\f \repeat unfold 3 {<e d'>} |
  %% 28
  <e cis'>2-> | fis8\p fis fis fis | g4 g |
  %% 31
  <g, g'>8\f \repeat unfold 3 {<g g'>} | <a fis'>4 <a fis'> |
  %% 33
  <c d>8\p \repeat unfold 3 {<c d>} | \repeat unfold 2 {<b d>4} |
  %% 35
  <a g'>8\f \repeat unfold 3 {<a g'>} | <a fis'>4 d8 r \bar "||"
  %% 37
  fis8\p \repeat unfold 3 {fis} | b4 d | fis8 fis e e | d4 b |
  %% 41
  e,8 \repeat unfold 3 {e8} | a4 cis | e8 e d d | cis4 a |
  %% 45
  fis8\f b16 b a8 b16 b | gis8 b16 b e8 b16 b |
  %% 47
  a8 b16 b fis8 b16 b | gis8 r e e16 e | e (gis) gis gis gis (b) b b |
  %% 50
  d8\> cis16 cis b b a a | gis gis e e a a e e \bar "||"
  %% 52
  \key a \major \repeat tremolo 2 {b'16\mf} \repeat tremolo 2 {e,}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b} |
  %% 53
  \repeat tremolo 2 {a} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {fis} \repeat tremolo 2 {e} |
  %% 54
  \repeat tremolo 2 {d} \repeat tremolo 2 {fis}
  \repeat tremolo 2 {dis} \repeat tremolo 2 {fis} |
  %% 55
  \repeat tremolo 2 {e} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {a} \repeat tremolo 2 {e} |
  %% 56
  \repeat tremolo 2 {b'} \repeat tremolo 2 {e,}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b} |
  %% 57
  \repeat tremolo 2 {a} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {fis} \repeat tremolo 2 {a} |
  %% 58
  \repeat tremolo 2 {b} \repeat tremolo 2 {a}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {fis} |
  %% 59
  \repeat tremolo 2 {e} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {e} \repeat tremolo 2 {e} |
  %% 60
  \repeat tremolo 2 {e'\p} \repeat tremolo 2 {cis}
  \repeat tremolo 2 {a} \repeat tremolo 2 {g} |
  %% 61
  \repeat tremolo 2 {fis} \repeat tremolo 2 {a}
  \repeat tremolo 2 {d} \repeat tremolo 2 {fis} |
  %% 62
  \repeat tremolo 2 {fis\<} \repeat tremolo 2 {dis}
  \repeat tremolo 2 {b} \repeat tremolo 2 {a} |
  %% 63
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b}
  \repeat tremolo 2 {e} \repeat tremolo 2 {gis} |
  %% 64
  \repeat tremolo 2 {b\f} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {e} \repeat tremolo 2 {d} |
  %% 65
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e}
  \repeat tremolo 2 {a} \repeat tremolo 2 {e} |
  %% 66
  \repeat tremolo 2 {d} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {b} \repeat tremolo 2 {d,} |
  %% 67
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e}
  \repeat tremolo 2 {a} \repeat tremolo 2 {e} |
  %% 68
  \repeat tremolo 2 {fis} \repeat tremolo 2 {a}
  \repeat tremolo 2 {d,} \repeat tremolo 2 {fis} |
  %% 69
  \repeat tremolo 2 {b,} \repeat tremolo 2 {d}
  \repeat tremolo 2 {cis} \repeat tremolo 2 {a} |
  %% 70
  \repeat tremolo 2 {fis} \repeat tremolo 2 {d'}
  \repeat tremolo 2 {gis,} \repeat tremolo 2 {b} |
  %% 71
  \repeat tremolo 2 {a} \repeat tremolo 2 {e} a8 r \bar "|."
}

violinIIduoImovementIII = \new Voice \relative a' {
  \violinVoiceSettings

  \partial 4 a16\mf a e_\markup{\italic "sempre staccato"} e |
  %% 1
  b' b e, e gis gis b b | a a gis gis fis fis e e |
  %% 3
  d d fis fis dis dis fis fis |
  %% 4
  \repeat tremolo 2 {e} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {a} \repeat tremolo 2 {e} |
  %% 5
  \repeat tremolo 2 {b'} \repeat tremolo 2 {e,}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b} |
  %% 6
  \repeat tremolo 2 {a} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {fis} \repeat tremolo 2 {a} |
  %% 7
  \repeat tremolo 2 {b} \repeat tremolo 2 {a}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {fis} |
  %% 8
  \repeat tremolo 2 {e} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {e} \repeat tremolo 2 {e} |
  %% 9
  \repeat tremolo 2 {cis\p} \repeat tremolo 2 {a}
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e} |
  %% 10
  \repeat tremolo 2 {d} \repeat tremolo 2 {a'}
  \repeat tremolo 2 {fis} \repeat tremolo 2 {d} |
  %% 11
  \repeat tremolo 2 {dis\<} \repeat tremolo 2 {b}
  \repeat tremolo 2 {dis} \repeat tremolo 2 {fis} |
  %% 12
  \repeat tremolo 2 {e} \repeat tremolo 2 {b'}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {e} |
  %% 13
  \repeat tremolo 2 {gis\f} \repeat tremolo 2 {e}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b} |
  %% 14
  \repeat tremolo 2 {a} \repeat tremolo 2 {e}
  \repeat tremolo 2 {cis'} \repeat tremolo 2 {e,} |
  %% 15
  \repeat tremolo 2 {b'} \repeat tremolo 2 {e,}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b} |
  %% 16
  \repeat tremolo 2 {a} \repeat tremolo 2 {e}
  \repeat tremolo 2 {cis'} \repeat tremolo 2 {e,} |
  %% 17
  \repeat tremolo 2 {d'} \repeat tremolo 2 {cis}
  \repeat tremolo 2 {b} \repeat tremolo 2 {a} |
  %% 18
  \repeat tremolo 2 {gis} \repeat tremolo 2 {fis}
  \repeat tremolo 2 {eis} \repeat tremolo 2 {fis} |
  %% 19
  \repeat tremolo 2 {d} \repeat tremolo 2 {b}
  \repeat tremolo 2 {e} \repeat tremolo 2 {d} |
  %% 20
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e} a,8 r \bar "||"
  %% 21
  \key d \major fis'8\p \repeat unfold 3 {fis} | g2-> |
  %% 23
  <g, g'>8\f \repeat unfold 3 {<g g'>} | <a fis'>2-> |
  %% 25
  <a d>8\p \repeat unfold 3 {<a d>} | <b d>2-> |
  %% 27
  <b gis'>8\f \repeat unfold 3 {<b gis'>} | <a a'>2-> |
  %% 29
  <d a'>8\p \repeat unfold 3 {<d a'>} | <d b'>4 <d b'> |
  %% 31
  <d b'>8\f \repeat unfold 3 {<d b'>} | <d d'>4 <d d'> |
  %% 33
  <a fis'>8\p \repeat unfold 3 {<a fis'>} | <g g'>4 <g g'> |
  %% 35
  <e' cis'>8\f \repeat unfold 3 {<e cis'>} | <d d'>4 d8 r \bar "||"
  %% 37
  fis4\p e | d8 d b b | ais4 cis | b8 b d d | e4 d | cis8 cis a a |
  %% 43
  gis4 b | a8 a cis cis | dis\f b fis' b, | e b gis' b, | fis' b, dis b |
  %% 48
  e8 e16 e e (gis) gis gis | gis (b) b b b (d) d d |
  %% 50
  fis8\> e16 e d d cis cis |
  %% 51
  \repeat tremolo 2 {b} \repeat tremolo 2 {e}
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e} \bar "||"
  %% 52
  \key a \major \repeat tremolo 2 {d\mf} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {b} \repeat tremolo 2 {d,} |
  %% 53
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e}
  \repeat tremolo 2 {a} \repeat tremolo 2 {cis,} |
  %% 54
  \repeat tremolo 2 {fis} \repeat tremolo 2 {d}
  \repeat tremolo 2 {b} \repeat tremolo 2 {a} |
  %% 55
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b}
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e} |
  %% 56
  \repeat tremolo 2 {d} \repeat tremolo 2 {gis}
  \repeat tremolo 2 {b} \repeat tremolo 2 {d,} |
  %% 57
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e}
  \repeat tremolo 2 {a} \repeat tremolo 2 {fis} |
  %% 58
  \repeat tremolo 2 {dis} \repeat tremolo 2 {fis}
  \repeat tremolo 2 {b,} \repeat tremolo 2 {d} |
  %% 59
  \repeat tremolo 2 {e} \repeat tremolo 2 {b}
  \repeat tremolo 2 {e} \repeat tremolo 2 {e} |
  %% 60
  \repeat tremolo 2 {cis\p} \repeat tremolo 2 {a,}
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e} |
  %% 61
  \repeat tremolo 2 {d} \repeat tremolo 2 {a'}
  \repeat tremolo 2 {fis} \repeat tremolo 2 {d} |
  %% 62
  \repeat tremolo 2 {dis\<} \repeat tremolo 2 {b}
  \repeat tremolo 2 {dis} \repeat tremolo 2 {fis} |
  %% 63
  \repeat tremolo 2 {e} \repeat tremolo 2 {b'}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {e} |
  %% 64
  \repeat tremolo 2 {gis\f} \repeat tremolo 2 {e}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b} |
  %% 65
  \repeat tremolo 2 {a} \repeat tremolo 2 {e}
  \repeat tremolo 2 {cis'} \repeat tremolo 2 {e,} |
  %% 66
  \repeat tremolo 2 {b'} \repeat tremolo 2 {e,}
  \repeat tremolo 2 {gis} \repeat tremolo 2 {b} |
  %% 67
  \repeat tremolo 2 {a} \repeat tremolo 2 {e}
  \repeat tremolo 2 {cis'} \repeat tremolo 2 {e,} |
  %% 68
  \repeat tremolo 2 {d'} \repeat tremolo 2 {cis}
  \repeat tremolo 2 {b} \repeat tremolo 2 {a} |
  %% 69
  \repeat tremolo 2 {gis} \repeat tremolo 2 {fis}
  \repeat tremolo 2 {eis} \repeat tremolo 2 {fis} |
  %% 70
  \repeat tremolo 2 {d} \repeat tremolo 2 {b}
  \repeat tremolo 2 {e} \repeat tremolo 2 {d} |
  %% 71
  \repeat tremolo 2 {cis} \repeat tremolo 2 {e} a,8 r \bar "|."
}

%%% ------------ Duo II ------------

titleduoIImovementI = ##f

globalduoIImovementI = {
  \time 4/4
  \tempo "Allegro con fuoco." 4 = 123
  \key f \major
}

violinIduoIImovementI = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    d8\f (e) f f f (g) a a | a d bes d a d f a |
    %% 3
    a (g) g (f) f (e) e (d) | cis d e cis a4 r | r2 f8 (g) a a |
    %% 6
    a f bes f a4 f | bes, d c e | f2~ f8 a a a | a (g') f e g (f) e d |
    %% 10
    cis2-> d-> | a8 (g') f e g (f) e d | cis2-> d-> |
    %% 13
    c8 (bes') a g bes (a) g f | e2-> f-> | d8 (bes') bes g e2 |
    %% 16
    f8 (a) a f  d2 | e8 (f) f e cis2 | d8 (f) f (d) b2 |
    %% 19
    bes8 c e g bes2 | a8\< (g f e) d\> (c bes c) |
    %% 21
    a'\< (g f e) d\> (c bes c) | a\< bes c d ees (c) a ees |
    %% 23
    d\f a' g f e bes' a g | f a bes a g d' c bes |
    %% 25
    a c bes g f a g e |
    %% 26
    f4~ \tuplet 3/2 {f8\p a\< bes} \tuplet 3/2 {c d e}
    \tuplet 3/2 {f g a\!} |
    %% 27
    bes4~ \tuplet 3/2 {bes8\> g f} \tuplet 3/2 {e d c\!}
    \tuplet 3/2 {bes a g} |
    %% 28
    f8\< (c) a c \repeat tremolo 2 {a8 (c)} | g8\> (c e c) bes (c e c) |
    %% 30
    f\< (a) d c c4 (bes) | a8 (f) d' c c4 (bes) | bes2\> (a4) r |
    %% 33
    <a, g'>2\p (e'4) r
  }
  %% 34
  r2 d8\f (e) fis fis | fis d g d a'4 d, | g ees c d | bes g r2 |
  %% 38
  c8\p (d) e e e (f) g g | g c a c bes g' e bes | a c f a, g f' e g, |
  %% 41
  f\< a d f, ees d' c ees, | d4\f bes' g c | a d bes e | c f d8 f c f |
  %% 45
  d f c4-> bes8\p d a d | bes d a4-> g8 a f a | e\< a f a g a f a |
  %% 48
  e\f a cis e g bes g f | e g e d cis e cis bes |
  %% 50
  a (d) d (c) c (bes) bes (a) | a (g) g (f) f (e) d (cis) |
  %% 52
  d4 r d8 (e) f f | f d g d f4 d | bes' a g gis | a2~ a8 g f e |
  %% 56
  f (g) a a a (bes) c c | c f d f c f a f | e (d) c bes a (c) bes g |
  %% 59
  f a c a f4 r | cis a d f | a8 (g) f e g (f) e d | e4 c f a |
  %% 63
  c8 (bes) a g bes (a) g f | bes4 g c,8 c' c (bes) |
  %% 65
  a4 f bes,8 bes' bes (a) | g4 e a,8 a' a (g) | f4 d a cis |
  %% 68
  \tuplet 3/2 {d8 a'' g} \tuplet 3/2 {f e d}
  \tuplet 3/2 {cis bes a} \tuplet 3/2 {g f e} |
  %% 69
  f8 a d f, e d' e, cis' | d4 r <d, a'>\p <d a'> | <d bes'>2 <d d'> |
  %% 72
  <d a'>4 r <a' f'>\f <a f'> | <f d'>2 <e cis'> | <d d'> r \bar "|."
}

violinIIduoIImovementI = \new Voice \relative d' {
  \violinVoiceSettings

  \repeat volta 2 {
    r2 d8\f (e) f f | f d g e f4 d | bes' a g gis | a2~ a8 g f e |
    %% 5
    f (g) a a a (bes) c c | c f d f c f a f | e (d) c bes a (c) bes g |
    %% 8
    f a c a f4 r |
    %% 9
    \repeat unfold 2 { cis4 a d f | a8 (g) f e g (f) e d } |
    %% 13
    e4 c f a | c8 (bes) a g bes (a) g f | bes4 g c,8 c' c (bes) |
    %% 16
    a4 f bes,8 bes' bes (a) | g4 e a,8 a' a (g) | f4 e g,8 g' g (f) |
    %% 19
    e2 c8 e g c | f,\< (g a c) bes\> (a g e) |
    %% 21
    f\< (g a c) bes\> (a g e) | f\< g a bes c (a) ees c |
    %% 23
    bes4\f b c cis | d2 e | f8 e d bes a c bes c |
    %% 26
    a8\p (c\< f c) a (c f c) | g\> (c e c) bes (c e c) |
    %% 28
    f4~\< \tuplet 3/2 {f8 a bes} \tuplet 3/2 {c d e} \tuplet 3/2 {f g a} |
    %% 29
    bes4~\> \tuplet 3/2 {bes8 g f} \tuplet 3/2 {e d c} \tuplet 3/2 {bes a g} |
    %% 30
    f4\< a, g8 (bes) c e | f4 a, g8 (bes) c e | <c e>2\> (f4\!) r |
    %% 33
    e2\p (cis4) r
  }
  %% 34
  d8\f (e) fis fis fis (g) a a | a d bes d c a' fis c |
  %% 36
  bes d g bes, a g' a, fis' | g d bes' g d bes g d | c4 r c8\p (d) e e |
  %% 39
  e c f c g'4 c, | f d bes c | d\< bes g a | bes8\f d g f e d e c |
  %% 43
  f e f d g f g e | a g a f bes f a f | bes f a4-> g8\p d f d |
  %% 46
  g8 d f4-> e8\< a, d a | cis a d a e' a, d a | cis\f e a cis e4. d8 |
  %% 49
  cis4. bes8 a4. g8 | f4 e d c | bes a g a | d8 (e) f f f (g) a a |
  %% 53
  a d bes d a d f a | a (g) g (f) f (e) e (d) | cis d e cis a4 r |
  %% 56
  r2 f8 (g) a a | a f bes f a4 f | bes, d c e | f2~ f8 a a a |
  %% 60
  a (g') f e g (f) e d | cis2-> d-> | c8 (bes') a g bes (a) g f |
  %% 63
  e2-> f-> | d8 (bes') bes g e2 | f8 (a) a f d2 | e8 (g) g e cis2 |
  %% 67
  \tuplet 3/2 {d8 a' g} \tuplet 3/2 {f e d} \tuplet 3/2 {cis bes a}
  \tuplet 3/2 {g f e} |
  %% 68
  f4 d a cis | d bes g a | d r f\p f | g2 bes | f4 r d\f d | a2 a |
  %% 74
  d r \bar "|."
}

titleduoIImovementII = ##f

globalduoIImovementII = {
  \time 3/4
  \tempo "Adagio." 4 = 66
  \key bes \major
}

violinIduoIImovementII = \new Voice \relative d' {
  \violinVoiceSettings

  f8\p (bes) bes_\markup{\italic "cantabile"} bes g (bes) |
  %% 2
  f (d' bes) f' d bes' | f (ees d c) bes (d) |
  %% 4
  << {\voiceOne d4\> (c\!) }
     \new Voice {\voiceTwo f,2} >> \oneVoice f4 |
  %% 5
  f8 (bes) bes bes g (bes) | f (d' bes) f' d bes' |
  %% 7
  bes\f (g e c) bes (c) | bes4\> (a8) f\p f f |
  %% 9
  \repeat unfold 3 {c16 (ees f ees)} |
  %% 10
  \repeat unfold 2 {bes (d f d)} f (bes d f) | f8 (a, g' f) ees (a,) |
  %% 12
  bes (d) f,4 d16 (f bes d) | f4\< g8 (f ees d) |
  %% 14
  d4\> (ees8\!) r c,16 (ees g c) | ees4 f8\< (ees d cis) |
  %% 16
  cis4\> (d8\!) r8 bes'16\f (a g f) | e4. d8 (c bes) | a (c f a g f) |
  %% 19
  e (d c bes a c) | bes\> (g f a g e) | f16\p (a c d) c2 |
  %% 22
  c16 (g c d) c2 | a4. \repeat unfold 3 {<a f'>8} |
  %% 24
  <bes e>4. \repeat unfold 3 {<bes e>8} | <a f'>2.\< | <bes g'> |
  %% 27
  <a g'> | <bes f'> | <f ees'>4.\> c'8 (a f) | ees4\p (c a) |
  %% 31
  <bes d>2 <bes ees>4 | <bes d>2. | a8 (c f ees) d (bes) |
  %% 34
  bes'4\> (a\!) r | <bes, d>2 <bes ees>4 | <bes d>2. |
  %% 37
  g'8\< (f) ees\> (c f ees\!) | d4 r8 f'8_\dolce f f |
  %% 39
  f (a, g' f) ees (a,) | bes (d) f,4 bes8 (d) |
  %% 41
  f (a,) g'8. (f16 ees8 a,) | a4 (bes) r \bar "|."
}

violinIIduoIImovementII = \new Voice \relative d' {
  \violinVoiceSettings

  <bes d>2\p <bes ees>4_\markup{\italic "cantabile"} |
  %% 2
  <bes d>2. | a8 (c f ees) d (bes) | bes'4\> (a\!) r |
  %% 5
  <bes, d>2 <bes ees>4 | <bes d>2. | g8\f (bes c e) g (e) |
  %% 8
  << { \voiceOne e4-> (f8) }
     \new Voice { \voiceTwo c4. } >>
  \oneVoice r8 r f'_\dolce |
  %% 9
  f8 (a, g' f) ees (a,) | bes (d) f,4 d8 (bes) |
  %% 11
  \repeat unfold 3 {c16 (ees f ees)} |
  %% 12
  \repeat unfold 2 {bes (d f d)} bes8 r | d16 (f bes d) ees8\< (d c b) |
  %% 14
  << {\voiceOne b4\> (c8\!) }
     \new Voice {\voiceTwo g4.} >> \oneVoice r8 r4 |
  %% 15
  c,16 (ees g c) d8\< (c bes a) |
  %% 16
  << {\voiceOne a4\> (bes8\!) }
     \new Voice {\voiceTwo f4. } >> \oneVoice r8 r4 |
  %% 17
  g,16\f (bes c e g8) bes (a g) | f (e d c bes b) | c (d e g f e) |
  %% 20
  d\> (bes a c bes c) | a4.\p c8 (a' f) | e4. g8 (bes g) |
  %% 23
  f16 (a, c d) c2 | c16 (g a d) c2 | f8.\< (e16 f8) f-. (f-. f-.) |
  %% 26
  e8. (dis16 e8) e-. (e-. e-.) |
  %% 27
  ees8. (d16 ees8) ees-. (ees-. ees-.) |
  %% 28
  d8. (cis16 d8) d-. (d-. d-.\!) | c4-> (a8) r8 r4 |
  %% 30
  r8 f'\p f f f f | f (bes) bes bes g (bes) | f (d' bes) f' d bes' |
  %% 33
  f (ees d c) bes (d) |
  %% 34
  << {\voiceOne d4-> (c) }
     \new Voice {\voiceTwo f,2} >> \oneVoice f4 |
  %% 35
  f8 (bes) bes bes g (bes) | f (d' bes) f' d bes' |
  %% 37
  bes,\< (b) c (ees\> a, c\!) |
  %% 38
  bes16 (d, f d) \repeat unfold 2 {bes (d f d)} |
  \repeat unfold 3 {c (ees f ees)} | \repeat unfold 3 {bes (d f d)} |
  \repeat unfold 4 {c (ees f ees)} d4 r \bar "|."
}

titleduoIImovementIII = ##f

globalduoIImovementIII = {
  \time 2/4
  \tempo "Vivace." 4 = 144
  \key f \major
}

violinIduoIImovementIII = \new Voice \relative d' {
  \violinVoiceSettings

  d16\f f a d f8 e | d4 a8 a | e16 a cis e g8 f | e4 a,8 a |
  %% 5
  f16 a d f a8 a | a4 g | e,16 g c e g8 g | g4 f |
  %% 9
  f16 (e) e e e (d) d d | d (cis) cis cis cis (d) d d |
  %% 11
  \repeat unfold 2 {<a e'>8 <a f'>16 <a f'>} | <a e'>8 a' a,16 g f e |
  %% 13
  d4 r | d16 f a g f8 d | cis4 r | cis16 d e d cis8 a | d4 c |
  %% 18
  bes16 d g bes d8 bes | c4 bes, | a16 c f a c8 f | e16 f g e c8 bes |
  %% 22
  a16 bes c a f8 a | g16 a bes g e8 g | f4 c'8 c | c4 f,8 f |
  %% 26
  e16 g  c e a8 g | f e d c | f16 c a (c) a (c a c) |
  %% 29
  \repeat tremolo 4 {a16 (c)} |
  %% 30
  \repeat unfold 2 {\repeat tremolo 4 {bes16 (c)}} |
  %% 32
  a16 c f a bes8 e, | f16 c f a bes8 e, | f a <c, f> <c f> |
  %% 35
  <c f>4 r \bar "||" R2 | a,16\p c f a c8 bes | a f d bes |
  %% 39
  g a bes r | g'16 bes d g bes8 a | g4. f8 | e8 d cis e | d e f a |
  %% 44
  a4\f g8 g | f16 a f d a8 f' | f4\p ees8 ees | d16 f d bes f8 d' |
  %% 48
  d4\f fis,8 d' | d4 bes8 g | d'4\p fis,8 d' | d4 bes8 g |
  %% 52
  e16\f a g a e a g a | \repeat tremolo 4 {f16 a} |
  %% 54
  e16\p a g a e a g a | \repeat tremolo 4 {f16\< a } |
  %% 56
  \repeat tremolo 4 {f16 d'} | f8\f d b a | gis8\> gis4-> gis8 |
  %% 59
  a8\p a16 a bes (a) a a | g (a) a a bes (a) a a |
  %% 61
  f (a) a a bes (a) a a | e\< a g a f a e a | d,4 r |
  %% 64
  d16\f f a g f8 d | cis4 r | cis16 d e d cis8 a | d4 c |
  %% 68
  bes16 d g bes d8 bes | c4 bes, | a16 c f a c8 a | g bes f a |
  %% 72
  e a f a | cis, d cis d | cis8 a a' r | d,16\p f a d f8 e | d4 a8 a |
  %% 77
  e16 a cis e g8 f | e4 a,8 a | f16 a d f a8 a | a4 g |
  %% 81
  e,16 g c e g8 g | g4 f | e16\< f g e cis4 | d16 e f d bes4 |
  g16 a bes g e8 a | f16\f a d f a8 a | a4 g8 e | f16 a, d f a8 a |
  a4 g8 e | f8 a16 a e8 a16 a | f8 a16 a e8 a16 a | f8 a f d |
  a f' d a | f4 <d d'>8 <d d'> | <d d'>4-> <d d'>-> |
  <d d'>2\fermata \bar "|."
}

violinIIduoIImovementIII = \new Voice \relative d' {
  \violinVoiceSettings

  R2 | d16\f f a g f8 d | cis4 r | cis16 d e d cis8 a | d4 c |
  %% 6
  bes16 d g bes d8 bes | c4 bes, | a16 c f a c8 a | g bes f a |
  %% 10
  e g f a | cis, d cis d | cis a a' r | d,16 f a d f8 e | d4 a8 a |
  %% 15
  e16 a cis e g8 f | e4 a,8 a | f16 a d f a8 a | a4 g |
  %% 19
  e,16 g c e g8 g | g4 f8 a, | g bes e,16 f g e | f8 e d16 e f d |
  %% 23
  bes8 g c16 d c bes |
  %% 24
  \repeat unfold 2 {\repeat tremolo 4 {a16 (c)}} |
  %% 26
  \repeat unfold 2 {\repeat tremolo 4 {bes16 (c)}} |
  %% 28
  a8 (c) f c | c4 f8 f | e16 (f fis g) f8 e | d (c) c c |
  %% 32
  f4 c16 e g bes | a8 f c16 e g bes | a8 f <f a> <f a> |
  %% 35
  <f a>4 r \bar "||" f16\p a c f a8 g | f4 e8 d | c a f d' |
  %% 39
  bes a g r | R2 | g,16 bes d g bes8 a | g f e g | f e d r |
  %% 44
  cis16\f e a cis e8 cis | d a f d | a16\p c f a c8 a |
  %% 47
  bes f d bes | a16\f c d c a c d c |
  %% 49
  \repeat unfold 2 {g bes d bes} | a\p c d c a c d c |
  %% 51
  \repeat unfold 2 {g bes d bes} | a4\f cis8 e | d4 a8 d |
  %% 54
  cis8\p a cis e | d4->\< c-> | bes-> a-> | gis8\f b d e |
  %% 58
  f8 f16\> f e e d d | cis2\p | e | d | a\< | d16\f f a d f8 e |
  %% 64
  d4 a8 a | e16 a cis e g8 f | e4 a,8 a | f16 a d e a8 a | a4 g |
  %% 69
  e,16 g c e g8 g | g4 f | f16 (e) e e e (d) d d |
  %% 72
  d (cis) cis cis cis (d) d d |
  %% 73
  \repeat unfold 2 {<a e'>8 <a f'>16 <a f'>} |
  %% 74
  <a e'>8 a' a,16\> g f e\! | d4 r | d16\p f a g f8 d | cis4 r |
  cis16 d e d cis8 a | d4 c | bes16 d g bes d8 bes | c4 bes, |
  a16 c f a c8 a | g4 e16\< f g e | f4 d16 e f d | bes4 a16 b cis a |
  d4\f f8 d | cis16 e a cis e8 cis | d a f d | cis16 e a cis e8 cis |
  \repeat unfold 2 {d8 a16 a cis8 a16 a} | d8 f d a | f d' a f |
  d4 <f a>8 <f a> | <f a>4-> <f a>-> | <f a>2\fermata \bar "|."
}

%%% --- Output ---

\include "../composer.ily"

\header {
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 180"
  source = "http://www.imslp.org/"
  title = "Three Easy Duos."
}

\include "paper.ily"

#(define fileBaseName "Johann_Wenzel_Kalliwoda-opus_180")

define(`AllDuetts', `(I, II)')
define(`Movements', `(I, II, III)')
define(`AllViolins', `(I, II)')

include(`output-duos.ily')
