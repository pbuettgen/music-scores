%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2016-2018 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\version "2.18.2"

\include "lily-snippets.ily"

Composer = "Franz Wohlfahrt"
Opus = "Opus 45"

studyIprologI = \markup \columns {
  \column {
    \pad-around #1. {
      \wordwrap {
        Hold the fingers down as long as possible.  The left wrist very
        quiet.
      }
    }
  }
  \column {
    \pad-around #1. {
      \wordwrap {
        Die Finger möglichst lange liegen lassen.  Das linke Handgelenk
        sehr ruhig.
      }
    }
  }
}

studyIprologII = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c'' {
    \time 4/4
    \key c \major

    c8-. b-. c( b) c-. d-. e( d) \bar "||"
    c( b) c-. b-. c( d) e-. d-. \bar "||"
    c-. b( c b) c-. d( e d) \bar "||"
    c( b c) b-. c( d e) d-. \bar "||"
    c( b c b) c( d e d) \bar "||"
    c( b c b c d e) d \bar "||"
    %% 7
    c-. b( c) b( c) d( e) s \bar "||"
    c-. b-.( c-.) b-.( c-.) d-.( e-.) s \bar "||"
    c-. b( c b c-.) s s s \bar "||"
    %% 10
    c-. b-. c( b c-.) d-. s s \bar "||"
    c-. b( c) b( c) d-. e-. d-. \bar "||"
    c( b c) b( c d e d) \bar "||"
    c-. b-. c-. b( c) d-. e-. s \bar "||"
    c8.( b16-.) c8.( b16-.) c8.( d16-.) e8.( d16-.) \bar "||"
  }
  \layout {
    indent = #0
  }
}

studyI = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key c \major

  c8\f b c b c d e-4 d | c b c b c g e g | c b c b c d e-4 d |
  %% 4
  c b c b c g e g | c b c b c d e-0 f | g a b a g f e-0 d |
  c b c b c b a-0 g | f e d-0 c b g a b |
  \repeat unfold 2 { c b c b c b c b | c e g c e-4 c g e } |
  f g a-4 g f g a-4 g | f g a-4 g f e d-0 c | b a g a b c d-0 e |
  %% 16
  f e d-0 e f g a-0 b | c b c d e-0 f g a | b a g a b a g a |
  b a g a g f d b | g b d f g f d b |
  \repeat unfold 2 { c b c b c d e-4 d | c b c b c g e g } |
  %% 25
  c d e-4 d c d e-4 d | c e-4 c g e c' g e | c b c b c g a b |
  c2. r4 \bar "|."
}

studyIIprologI = \markup \columns {
  \column {
    \pad-around #1. {
      \wordwrap {
        In the second, third and seventh Études the same bowings that
        were given for the first Étude are to be used.
      }
    }
  }
  \column {
    \pad-around #1. {
      \wordwrap {
        Auch bei der zweiten, dritten und siebenten Etüde benutze man
        die vor Etüde I stehenden Stricharten.
      }
    }
  }
}

studyIIprologII = ##f

studyII = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key c \major

  c8\f e a-4 g f e d-0 c | b c d-4 c b g a b | c e a-4 g f e d-0 c |
  %% 4
  b c d-4 c b g a b | c e a-4 g f e d-0 e | f a-0 d c b a-0 g f |
  e g f e d-0 f e d-0 | c g a b c d e fis | g b e-4 d c b a-0 g |
  %% 10
  fis g a-4 g fis d-0 e fis | g b e-4 d c b a-0 g |
  fis g a-4 g fis d-0 e fis | g b e-4 d c b a-0 b |
  %% 14
  c e-0 a g fis e-0 d c | b d c b a-0 c b a-0 | g b e-4 d c b a-0 g |
  f b d c b a-0 g f | e g c b a-0 g f e | d-0 f b a-0 g f e d-0 |
  %% 20
  c e a-4 g f e d-0 c | b c d-4 c b g a b | c e a-4 g f e d-0 c |
  b c d-4 c b g a b | c e a-4 g f e d-0 e | f a-0 d c b a-0 g f |
  %% 26
  e g f e d-0 f e d-0 | c e g e c r8 r4 \bar "|."
}

studyIIIprologI = ##f
studyIIIprologII = ##f
studyIII = \new Voice \relative e'' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Moderato." 4=111
  \key g \major

  e16-4\f d c b a-0 b c a-0 | d c b a g a-0 b g |
  c b a-0 g fis d-0 e fis | g b d g b a g fis |
  %% 5
  e-0 d c b a-0 b c a-0 | d c b a g a-0 b g | fis e d-0 c b d-0 g b |
  c d e-0 fis g b, c d | e-0 g fis g a g fis e-0 |
  d-3 b g-3 b d g fis g | e-0 g fis g a g fis e-0 |
  %% 12
  d b g b d b e-4 d | c a-0 d c b g c b | a-0 g fis e d-0 d' e-4 d |
  %% 15
  c a-0 d c b g-3 c b | a-0 g fis e d-0 c b a | g a b c d-0 e fis g |
  %% 18
  a-0 b c d e-4 a,-0 b c | e-4 d c b c d e-0 fis | a g d-3 b g b c d |
  e-4 d c b a-0 b c a-0 | d c b a-0 g a-0 b g |
  c b a-0 g fis d e fis | g b d g b b, c d | e-4 d c b a-0 b c a-0 |
  d c b a-0 g a-0 b g | fis e d-0 c b d-0 g b | c d e-0 fis g b a g |
  fis e-0 d c b g-3 fis e | d-0 c b a g4 \bar "|."
}

studyIVprologI = ##f
studyIVprologII = ##f
studyIV = \new Voice \relative d'' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Allegretto." 4=123
  \key g \major

  d8\mf b16 c d8 g16 a | b8 b,16 c d8 e16-4 d | c8 a16-0 b c8 b'16 a |
  g8 b,16 c d4 | d8 b16 c d8 g16 a | b8 b,16 c d8 e16-4 d |
  %% 7
  cis8 b'16 a g8 b,16 cis | d8 a16-0 fis d8-0 e'16-4 d |
  c8 fis16 g a8 b16 a | g8 b,16 c d8 e16-4 d | c8 fis16 g a8 b16 a |
  %% 12
  g8 b,16 c d8 g16 a | b8 fis16 dis-3 b8 dis16 fis |
  a8 g16 fis g8 fis16 e-0 | d8 cis16 b a8-0 d16 fis |
  b8 b,16 cis d8 cis16 d | e8-4 a,16-0 a a8 fis'16 g |
  b8 a16 a a8 b16 a | g8 a,16-0 a a8 a'16 g | fis8 d16 d d8 cis16 d |
  %% 21
  e8-4 a,16-0 a a8 fis'16 g | b8 a16 a a8 cis,16 d |
  %% 23
  e8-0 g16 b a8 b,16 cis | d8 cis16 d e8-4 d16 cis |
  %% 25
  d8 cis16 d e8-4 d16 cis | d8 a16-0 a a8 e'16-4 d | d8 b16 b b8 e16-4 d |
  %% 28
  d8 c16 c c8 fis16 g | b8 a16 gis a8 b,16 c | d8 b16 c d8 g16 a |
  b8 b,16 c d8 e16-4 d | c8 a16-0 b c8 b'16 a | g8 b,16 c d4 |
  d8 b16 c d8 g16 a | b8 b,16 c d8 g16 fis | e8-0 a16 g fis8 b16 a |
  g8 b16 g d8 e16-0 fis | g8 b16 g d8 e16-0 fis | g8 b16 g d8-3 g16 d |
  b8-1 d16-3 b g8 b16 g | d8-0 g16 d-0 b8 d16-4 b | g8 r8 r4 \bar "|."
}

studyVprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c'' {
    \time 3/4
    \key f \major

    c8( bes) a-. bes-. c( d) \bar "||"
    c-. bes-. a( bes) c-. d-. \bar "||"
    c-. bes-. a( bes c d) \bar "||"
    c( bes a bes) c-. d-. \bar "||"
    c-. bes( a bes c) d-. \bar "||"
    c-. bes( a bes) c-. d \bar "||"
    c( bes a bes c d) \bar "||"
    c-. bes( a) bes( c) s \bar "||"
    c( bes a) bes( c d) \bar "||"
  }
  \layout {
    indent = #0
  }
}

studyVprologII = ##f

studyV = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Moderato." 4=111
  \key f \major

  c8\f bes a-0 bes c d | \repeat unfold 2 {c bes a-0 bes c d} |
  %% 4
  e-0 f g a bes a | g a bes a g f | e-0 f g f e-0 d |
  %% 7
  c d e-4 d c bes | \repeat unfold 3 {a-0 bes c d c bes} |
  %% 11
  a-0 bes c d e-0 f | g a bes a g f | e-0 f g a bes a |
  g f e-0 d c bes | a-0 g f e d -0 e | f a, bes c d-0 e |
  f a-0 c f e-0 d | c bes e-0 g a bes | a f c a-0 g f |
  %% 20
  e g f e d-0 e | f a-0 c f e-0 d | c bes e-0 g a bes |
  a f c a-0 g f | e g f e d-0 e | f a, c f a-4 f | e g, bes e a-4 g |
  f a, c f a-4 f | e g, bes e a-4 g | f a-0 c f g a |
  bes g e-0 c bes g | f a-0 c f c a-0 | f4 r r \bar "|."
}

studyVIprologI = ##f
studyVIprologII = ##f
studyVI = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Moderato." 4=111
  \key f \major

  c16\f( b) c-. c-. d( cis) d-. d-. | c( b) c-. c-. f( g) a-. f-. |
  c( b) c-. c-. d( cis) d-. d-. | c( b) c-. c-. f( g) a-. f-. |
  bes\f( a) bes-. bes-. bes( a) bes-. bes-. |
  bes( a) g-. f-. e-0( f) g-. a-. |
  %% 7
  \repeat unfold 2 {bes( a) bes-. bes-.} |
  bes( a) g-. f-. e-0\>( d) bes-. d-. |
  %% 9
  c\mf( b) c-. c-. d( cis) d-. d-. | c( b) c-. c-. f( g) a-. f-. |
  c( b) c-. c-. d( cis) d-. d-. | c( b) c-. c-. f( g) a-. f-. |
  d( cis) d-. d-. g( a) bes-. g-. | a( gis) a-. f-. c( b) d-. c-. |
  bes( a-0) bes-. bes-. d( cis) d-. e,-. |
  %% 16
  f( e) f-. a-.-4 g( fis) g-. b-. | c( b) c-. g-. e( d-0) e-. c-. |
  f( e) f-. a-.-0 c( b) c-. a'-. | bes( a) bes-. g-. a( gis) a-. f-. |
  %% 20
  g( fis) g-. f-. e-4( dis) e-.-4 d-. |
  c( b) c-. e-.-0 g( fis) g-. bes-.-4 |
  a( gis) a-. f-. f( e-0) f-. d-. |
  e-4( dis) e-.-4 c-. d( cis) d-. b-. |
  %% 24
  c( b) c-. c-. e-4( dis) e-.-4 d-. | c( b) c-. c-. d( cis) d-. d-. |
  c( b) c-. c-. f( g) a-. f-. | d( cis) d-. d-. e-4( dis) e-.-4 e-. |
  d( cis) d-. d-. g( a) bes-. g-. | a( gis) a-. f-. c( b) c-. f-. |
  a( gis) a-. f-. g( fis) g-. e-.-0 | f( e-0) f-. g-. a( f) c-. a-.-0 |
  f4~ f8 r8 \bar "|."
}

studyVIIprologI = ##f
studyVIIprologII = ##f
studyVII = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key bes \major

  bes8\f a-0 bes c d c bes a-0 | g fis g a-0 bes a-0 g f |
  %% 3
  ees d-0 c bes a c f ees | d-0 ees f d-0 bes d-0 f bes |
  d cis d ees-4 d bes g f | e f g bes e-0 f g bes |
  a gis a f g fis g e-0 | f e-0 f c a f g a-0 |
  %% 9
  bes a-0 bes c d c bes a-0 | g fis g a-0 bes a g f |
  ees d-0 c bes a c f ees | d-0 ees f d-0 bes d-0 ees f |
  g fis g bes ees-4 g bes-4 g | f e-0 f d a-0 bes c d |
  ees-4 d ees c a-0 f ees c | a bes d-0 f bes d f bes |
  %% 17
  a gis a f e-0 c bes g | f e f a-4 c, f a-0 c |
  bes a-0 bes g' f c a-0 f | e f g a-0 bes c d e |
  f e-0 f g a f g a | bes a bes f d bes c d |
  %% 23
  c b c f a c, bes g' | f e-0 f c a-0 f g a-0 |
  bes a-0 bes c d c bes a-0 | g fis g a-0 bes a-0 g f |
  ees d-0 c bes a c f ees | d-0 ees f d-0 bes d-0 f bes |
  %% 29
  d cis d ees-4 d bes g f | e f g bes-1 e-0 f g bes |
  a gis a f g fis g e-0 | f e-0 f c a-0 f g a-0 |
  %% 33
  bes a-0 bes c d c bes a-0 | g fis g a-0 bes a-0 g f |
  ees d-0 c bes a c f ees | d-0 ees f d-0 bes d-0 ees f |
  %% 37
  g fis g bes ees-4 g bes-4 g | f e-0 f d a-0 bes c d |
  ees d ees c a-0 f ees c | a bes d-0 f bes4 r \bar "|."
}

studyVIIIprologI = ##f
studyVIIIprologII = ##f
studyVIII = \new Voice \relative c' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Largo." 4=55
  \key c \major

  e2.\p( | f) | e2\<( a4-0 | c2 e4-4\!) | d2( e8-4 d | c2\> d8 c) |
  %% 7
  b2.\<( | << {e-4)} {s4 s\!} >> | e,2.\p( | f) | e2\<( a4-0 | c2 d4) |
  %% 13
  e2.-4\f( | d4 a-0 b) | c2.~ | c4 r r | e2-4\mf( b4 | c d8 c b a-0) |
  b2\<( e4-0 | gis2 b4) | a2\>( fis4 | cis2 dis4) | e2.-4\<~ |
  << {e} {s4 s\!} >> | e,2.\p( | f) | e2\<( a4-0 | c2 d4) |
  e-4->\f f,-> e-> | d-0-> c-> b-> | a2.->\>~ | a4 r\! r \bar "|."
}

studyIXprologI = ##f
studyIXprologII = ##f
studyIX = \new Voice \relative a {
  \violinVoiceSettings
  \time 6/8
  \tempo "Allegretto." 8=123
  \key d \major

  a8( b cis d-0 e fis) | g4.( fis8 g a-0) | b( cis d e-4 d b) |
  d4.( fis8 b a) | a4.( e8-0 g b) | a4.( a,8-0 d cis) |
  %% 7
  b8( e-4 d cis b cis) | d( b a-0 fis d-0 b) | a( b cis d-0 e fis) |
  %% 10
  g4.( fis8 g a-0) | b( cis d e-4 d b) | d4.( fis8 b a) |
  gis( fis gis e-0 fis gis) | a( e-0 cis a-0 b cis) |
  %% 15
  b( cis d e, fis gis) | a-0( cis e-0 a gis a) | b( ais b g fis g) |
  %% 18
  e-0( cis b a gis' a) | b( ais b g fis g) | e-0( cis b a-0 g e) |
  %% 21
  d-0( fis a-0 d cis d) | b( e-0 g b g e-0) | a( fis d a-0 b cis) |
  %% 24
  d( a-0 fis d-0 cis b) | a( cis-3 e g-3 a-0 cis) |
  dis( e-4 cis a-0 e cis) | a( cis e g a-0 cis) |
  dis( e-4 cis a-0 g e) | d-0( fis a-0 d fis a) | b( g e-0 b g e) |
  a-4( a, a'-4 a, b cis) | d4.-4~ d8 r r \bar "|."
}

studyXprologI = \markup \columns {
  \column {
    \pad-around #1. {
      \wordwrap {
        Pay attention to Gis on the D-string and to D on the A-string.
        Look out for D on the A-string and for As on the E-string.
      }
    }
  }
  \column {
    \pad-around #1. {
      \wordwrap {
        Genau aufpassen bei Gis auf der D-Saite und bei D auf der
        A-Saite.  Aufpassen bei D auf der A-Saite und bei As auf der
        E-Saite.
      }
    }
  }
}

studyXprologII = ##f

studyX = \new Voice \relative a {
  \violinVoiceSettings
  \time 2/4
  \tempo "Moderato." 4=111
  \key a \major

  gis16-1( b) d-0 fis e( gis) b d | cis( e-0) a gis fis( e-0) d cis |
  %% 3
  b( d) gis fis e-0( d) cis b | a-0( cis) fis e-0 d( cis) b a-0 |
  gis( b,) d-0 fis e( gis) b d | cis( e-0) a gis fis( e-0) d cis |
  b( d) gis fis e-0( d) cis b | a-0( gis) a-4 e cis-3( a) b cis |
  d-0( fis) a-0 d fis( a) gis fis | e-0( cis) a-0 e cis( a) b cis |
  %% 11
  d-0( fis) a-0 d fis( a) gis fis | e-0( cis) a-0 e cis( a) b a |
  gis-1( b) d-0 fis e( gis) b d | cis( e-0) a gis fis( e-0) d cis |
  b( a-0) gis fis e( d-0) cis b | a( a'-4) cis e-0 a8 r \bar "|."
}

studyXIprologI =  \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c'' {
    \time 2/4
    \key f \major
    \tuplet 3/2 4 {
      \omit TupletNumber
      ees16-. d-0-. c-. bes-. aes-. g-. aes-. bes-. c-. d-0-. ees-. f-. \bar "||"
      ees16->( d-0) c-. bes-. aes-. g-. aes->( bes) c-. d-0-. ees-. f-. \bar "||"
      ees16->( d-0) c bes->( aes) g aes->( bes) c d-0->( ees) f \bar "||"
      ees16-> d-0( c bes->) aes( g aes->) bes( c d-0->) s s \bar "||"
    }
  }
  \layout {
    indent = #0
  }
}

studyXIprologII = ##f
studyXI = \new Voice \relative e' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Moderato." 4=111
  \key ees \major

  \tuplet 3/2 4 {
    ees16 d_0 c bes aes g aes bes c d_0 ees f |
    g f ees d_0 ees f g f g aes_4 g aes_4 |
    \omit TupletNumber
    %% 3
    bes-1 g ees g bes ees-4 c aes-4 ees aes-4 c ees-4 |
    bes g ees g bes ees-4 g bes aes-3 g f ees-4 |
    d f ees-4 d c bes a-0 c bes a-0 g f |
    ees g f ees d-0 c d f ees d c bes |
    %% 7
    aes'-4 c bes aes g f g bes aes g f ees |
    d-0 g f ees d c bes d-0 f aes-4 g f |
    ees d-0 c bes aes g aes bes c d ees f |
    g f ees d ees f g f g aes-4 g aes-4 |
    bes g ees g bes ees-4 c aes-4 ees aes-4 c ees-4 |
    bes g ees g bes ees-4 g bes aes g f ees |
    \repeat percent 2 {d f ees-4 d c bes g' bes aes g f ees-4 } |
    c f aes g f ees-4 d c bes aes-4 g f |
    \repeat percent 2 {ees g bes ees-4 g bes aes f d bes aes-4 f } |
    ees f g bes, c d-0 ees f g bes, c d-0 |
  }
  \tuplet 3/2 4 { ees g bes ees bes g } ees8 r \bar "|."
}

studyXIIprologI = ##f
studyXIIprologII = ##f
studyXII = \new Voice \relative e' {
  \violinVoiceSettings
  \time 3/8
  \tempo "Allegro." 8=123
  \key ees \major

  ees8->\f bes( g) | bes-> ees( g) | bes-> ees-4( g) |
  %% 4
  ees->-4 bes( g) | ees-> bes( g) | bes-> ees( g) |
  %% 7
  bes-> ees-4( d) | c-> aes-4( ees) | c-> ees( aes) |
  c-> ees( c) | bes-> ees( g) | bes-> g( ees) |
  d-> g( f) | ees->-4 c( a-0) | bes-> f( d-0) |
  %% 16
  bes-> c( d-0) | ees-> bes( g) | bes-> ees( g) |
  bes-> ees-4( g) | ees->-4 bes( g) | ees-> bes( g) |
  %% 22
  bes-> ees( g) | bes-> ees-4( d) | c-> aes-4( ees) |
  c-> ees( c) | bes-> ees( g) | c->-2 ees-4( c) |
  %% 28
  bes-> ees-4( g) | bes-> bes,( c) | d-> c( d) |
  ees->-4 bes( g) | ees-> d-0( ees) | f-> bes( d) |
  %% 34
  f-> bes( g) | f-> ees-4( c) | d-> d,-0( ees) |
  f-> bes( d) | f-> bes( g) | f-> ees-4( c) |
  %% 40
  bes-> g'( f) | ees->-4 d( c) | d-> g( f) |
  ees->-4 d( c) | d-> ees-4( d) | c-> bes( a-0) |
  %% 46
  bes-> ees-4( d) | c-> bes( a) | bes-> c( bes) |
  aes->-4 g( f) | g-> c( bes) | aes->-4 g( f) |
  %% 52
  g-> c( bes) | a-0-> d( c) | bes-> d( g) |
  f-> g( a) | bes-> d,( g) | f-> g( a) |
  bes-> g( f) | ees->-4 d( c) | bes-> g( f) |
  ees-> d-0( c) | bes-> a( bes) | d->-0 f( aes-4) |
  d->-3 c( bes) | aes->-4 g( f) | ees-> bes( g) |
  bes-> ees( g) | bes-> ees-4( g) | ees->-4 bes( g) |
  ees-> bes( g) | bes-> ees( g) | bes-> ees-4( d) |
  c-> aes-4( ees) | c-> ees( aes-4) | c-> ees-4( c) |
  bes-> ees-4( g) | bes-> g( ees-4) | aes->-3 f( d) |
  bes-> c( d) | ees->-4 bes( g) | ees r r \bar "|."
}

studyXIIIprologI = ##f
studyXIIIprologII = ##f
studyXIII = \new Voice \relative g'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato." 4=111
  \key g \major

  << {\voiceOne g2.\f}
     \new Voice {\voiceTwo <g,, d' b'>4*3} >> \oneVoice a''16 g fis g |
  b2. a16 g fis g | d2. e16-4 d cis d |
  %% 4
  g2. e16-4 d cis d | b2. c16 b d-3 c-2 | e2.-4 d16 b g a-4 |
  fis2.-2 fis16 d-0 fis a-0 | d1 | c2. d16 c b c |
  %% 10
  e2.-4 d16 c b c | a2.-0 g'16 fis e-0 fis | a2. c,16 b a-0 g |
  fis2. a16-0 b c d | fis2. a16 fis d c | b2. cis16 e-4 d b |
  %% 16
  g2. a16 b c d | e2.-0 a16 g fis e-0 | d2. a16-4 g fis g |
  e2. a16-4 g fis e | d2.-0 e'16-4 d cis d | c2. c16 a-0 d c |
  %% 22
  b2. g'16 d c b | a2.-0 cis16 d e-4 d | d,2.-0 d16-4 c b a |
  g2. g'16 fis a-4 g | e2. e16 d c b | a2. g'16 e a-4 g |
  %% 28
  fis2. fis16 e d-0 c | b2. b'16 c b a | g2. g16 fis e d |
  c2. c'16 b d c | a2.-0 fis16 a c d | e2.-4 d16 fis g a |
  %% 34
  b2. g,16-3 b c d | e2.-4 d16 fis g a | b2. a16 g fis g |
  e2.-0 a16 g fis e-0 | d2. e16-4 d c b | a2.-0 d16 c b a-0 |
  %% 40
  g2. a16-4 g fis e | d2. e16 fis g a-0 | b2. a'16 g fis e |
  d2. e16-0 fis g a | b2. a16 g fis g | a2. a,16-0 b c d |
  %% 46
  e2.-4 cis16 d fis g | b1 | a2.( g4) |
  << {\voiceOne g2.}
     \new Voice {\voiceTwo <g,, d' b'>4*3} >> \oneVoice a''16 g fis g |
  b2. a16 g fis g | d2. e16-4 d cis d |
  %% 52
  g2. a16 g fis g | b,2. c16 b a-0 b | d2. b16 g d-0 b |
  g1~ | g4 r r2 \bar "|."
}

studyXIVprologI = ##f
studyXIVprologII = ##f
studyXIV = \new Voice \relative d' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro non tanto." 4=123
  \key d \major

  d4\f fis'8 d a-0 fis d-0 fis | a4-0 d8 a-0 fis d a d-4 |
  cis4 g''8-2 e cis a-0 e a-0 | cis4 e8-4 cis a-0 e fis g |
  fis4 fis'8 d a-0 d-3 fis a | b4 g8 d b d g b |
  a4 fis8 d a-0 d fis a | b4 g8 d b d g b |
  a4 gis8 a b a fis d | cis4 e,8 fis a-4 g fis e |
  %% 11
  fis4 fis'8 a b a fis d | cis4 e,8 fis a-4 g fis e |
  fis4 d8 fis a c e-4 d | b4 e,8 gis b d fis e-0 |
  %% 15
  cis4 fis,8 ais-4 cis e-0 g fis | d4 a8-0 cis-2 e-0 g b a |
  fis4 a,,8 d-0 fis a-0 d fis | g4 a,,8 cis e g cis e-0 |
  fis4 a,,8 d-0 fis a d fis | g4 a,,8 cis e g cis e-0 |
  fis4 d,8-0 fis a d fis a | b4 d,,8 g b d g b |
  %% 23
  a4 d,,8-0 fis a-0 d fis a | g4 a,8-0 cis e-0 g fis e |
  d4 a'8 fis d a-0 fis a-4 | d4 fis8 d a-0 fis d-0 fis |
  a4-4 a,8 d-0 fis a d fis | a4 g8 e cis a-0 g e |
  %% 29
  d2-0 a8 d fis a-0 | d2 a,8 d fis a |
  d4 r <fis a, d,> r | <d d,>2.\fermata r4 \bar "|."
}

studyXVprologI = ##f
studyXVprologII = ##f
studyXV = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key c \major

  c8:16 b: a: g: c: e: g: a:-4 | g: e: c: d:-0 e: c: b: a: |
  %% 3
  g: b: d:-4 c: b: d:-0 f: e: | d:-0 f: b: a:-0 g: f: e: d:-0 |
  %% 5
  c: e: g: a:-4 g:-3 c:-2 e:-0 a: | g: e:-0 c: d: e:-4 c: b: a:-0 |
  %% 7
  g: b: d: c: b: d: f: e:-0 | d: f: b: a: g: f: e:-0 d: |
  %% 9
  c: e:-0 g: a: g: e: c: d: | e:-4 d: c: b: a:-0 g: f: e: |
  %% 11
  a:-0 c: e:-0 f: e:-0 c: a:-0 b: | c: a:-0 f: e: d:-0 c: b: a: |
  %% 13
  a':-4 f: e: d: d': e:-0 f: d: | a:-0 f: e: d:-0  d':  e:-0  f: d: |
  %% 15
  a:-0 f: e: d:-0 a':-4 f: e: d:-0 | b': f:-2 e: d: b': g:-3 f: d: |
  %% 17
  c:-3 b: a: g: a: b: c: d:-0 | e: d:-0 c: b: c: d:-0 e: f: |
  %% 19
  g: a:-0 b: c: d: e:-0 f: g: | a: f: d:-3 b: g:-3 f: a,:-1 b:-2 |
  %% 21
  c: b: a: g: a: b: c: d:-0 | e: d:-0 c: b: c: d:-0 e: f: |
  %% 23
  g: a:-0 b: c: d: e:-0 f: g: | a: f: d:-3 b:-1 b':-4 g:-2 f: d:-3 |
  %% 25
  c:-2 b: a: g: c: e:-0 g: f: | e:-0 f: d: e:-4 c: d: b: g: |
  %% 27
  c: b: a:-0 g: c: e:-0 g: f: | e:-0 f: d: e:-4 c: d: b: g: |
  %% 28
  c: d: e:-4 d: c: b: a:-0 g: | f: g: a:-4 g: f: e: d:-0 c: |
  %% 29
  b: c: d:-4 c: b: g: a: b: | c: g: b:-2 g: c8 r r4 \bar "|."
}

studyXVIprologI = ##f
studyXVIprologII = ##f
studyXVI = \new Voice \relative e' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Moderato." 4=111
  \key c \major

  e8\mf( f-2 fis-2 g a-4 g) | c2. | e,8( f-2 fis-2 g a-4 g) | e'2.-4 |
  %% 5
  \repeat percent 3 {d8( b c-2 cis-2 d e-4)} | d( c b a-0 g f) |
  %% 8
  e( f-2 fis-2 g a-4 g) | c2. | e,8( f-2 fis-2 g a-4 g) | e'2.-4 |
  %% 12
  b8( c-2 cis-2 d e-4 b) | d( cis-2 c-2 b c a) |
  g( a ais-1 b-1 a-0 g) | fis( g a-4 g fis f-2) |
  %% 16
  e( f-2 fis-2 g a-4 g) | c2. | e,8( f-2 fis-2 g a-4 g) | e'2.-4 |
  %% 20
  cis8( d e-4 d c b) | ais-1( b-1 c b a g) | fis( a-0 c d e-0 fis) |
  %% 23
  g2. | g8( fis-1 eis-1 fis-1 a fis) | c2. | e8-4( d cis d fis g) |
  %% 27
  b2. | b,8( c-2 cis-2 d e-4 b-1) | d( cis-2 c-2 b c a-0) |
  %% 30
  g( b c d e-0 fis) | g2. | a8-3( aes-3 g f e-0 f) | d2. |
  c8( b c d ees-4 c) | g2. | aes8-4(  g f e f d-0) |
  g( f ees d-0 ees c) | g( b c d-0 e fis) | g2. |
  %% 40
  e8( f-2 fis-2 g a-4 g) | c2. | a8( bes-1 b-1 c d c) | a'2. |
  g8( fis a g e-0 c) | b( g f d-0 b g) | c( e f g a-0 b) | c2. \bar "|."
}

studyXVIIprologI = ##f
studyXVIIprologII = ##f
studyXVII = \new Voice \relative d' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato assai." 4=111
  \key d \major

  d8\f fis16 a-0 d fis, a-0 d fis2 | d,8 fis16 a-0 d fis, a-0 d fis2 |
  d,8 g16 b d b d g b2 | d,,8 fis16 a-0 d fis, a-0 d fis2 |
  %% 5
  a,,8 cis16 e g e g cis e2-4 | b,8 d16-0 fis b fis b d fis2 |
  %% 7
  e,8 a16-0 cis e-4 cis e-0 a gis8 d16 b gis e d-0 b |
  a8 cis16 e a-4 a-0 cis e-0 a8 e16-0 cis a-0 g fis e |
  %% 9
  \repeat percent 2 {d8 fis16 a d fis, a d fis2} |
  %% 11
  d,8 g16 b d b d g b2 | d,,8 fis16 a d fis, a d fis2 |
  %% 13
  c,8 fis16 a c a c fis a2 | b,,8 d16 g b g b d b'2 |
  %% 15
  a,,8 d16-0 fis a-0 d fis b a8 g16 e-0 cis a-0 g e |
  %% 16
  d8 fis16 a-0 d fis a fis d2 | g8 e16-0 cis a-0 g e cis a4( g') |
  fis8 a,16 d-0 fis a-0 d fis b4( a) |
  %% 19
  g8 e16-0 cis a-0 g e cis a4( g') |
  fis8 a,16 d fis a d fis a4( fis) |
  b8 fis16 dis b a-0 fis dis-4 b4 a16 b dis-4 fis |
  a8-4 g16 fis g b dis e-0 g4( b) |
  %% 23
  a8 fis16 d a-0 d fis b a8 g16 e-0 cis a-0 b cis |
  %% 24
  d8 a16-0 fis d a d fis a-4 d, fis a-0 d4 |
  g8 e16-0 cis a g e cis a4( g') | fis8 a,16 d fis a d fis b4( a) |
  g8-2 e16 cis a-0 g e cis a4( g') |
  fis8 a,16 d-0 fis a d fis a4( fis) |
  b8 fis16 dis b a-0 fis dis-4 b4 a16 b dis-4 fis |
  a8-4 g16 fis g b dis e-0 g4( b) |
  %% 31
  a8 fis16 d a-0 a d fis a8 f16 d a a d f |
  a8 e16-0 cis a-0 a e cis a8 cis16 e a-4 g fis e |
  %% 33
  \repeat percent 2 { d8 fis16 a-0 d fis, a-0 d fis2 } |
  %% 35
  d,8 g16 b d b d g b2 | d,,8 fis16 a-0 d fis, a-0 d fis2 |
  a,,8 cis16 e g e g cis e2-4 | b,8 d16-0 fis b fis b d fis2 |
  e,8 a16-0 cis e-4 cis e-0 a gis8 d16 b gis e d-0 b |
  a8 cis16 e a-4 a-0 cis e a8 e16-0 cis a g fis e |
  %% 41
  \repeat percent 2 {d8 fis16 a-0 d fis, a-0 d fis2 } |
  %% 43
  d,8 g16 b d b d g b2 | d,,8 fis16 a-0 d fis, a-0 d fis2 |
  %% 45
  c,8 fis16 a c a-0 c fis a2 | b,,8 d16-0 g b-1 g b d-3 b'2 |
  a,,8 d16-0 fis a d fis b a8 g16 e-0 cis a-0 g e |
  d8-0 fis16 a d fis a fis d8 r r4 \bar "|."
}

studyXVIIIprologI = ##f
studyXVIIIprologII = ##f
studyXVIII = \new Voice \relative e'' {
  \violinVoiceSettings
  \time 6/8
  \tempo "Allegro." 8=123
  \key g \major

  e16-4\mf( d b d b d c e-4 c e-4 c e-4) |
  d( b d b c e-4 d\< b d g b8\!) |
  c,16\mf( a-0 c a-0 b d c\< a-0 c fis a8\!) |
  b,16\mf( g fis a-4\< g b a-0 c b d c e-4\!) |
  %% 5
  d16\mf( b d b d b c e-4 c e-4 c e-4) |
  d( b d b c e-4 d\< b d g b8) |
  fis16\f( a b a g fis e-0\> a b a g e-0\!) |
  d( a-0 d\< a cis a\! e'-4-\rit a, d\> a c a\!) |
  b^\aTempo\mf( d b d b d c e-4 c e-4 c e-4) |
  %% 10
  d( b d b c e-4 d\< b d g b8\!) |
  c,16( a-0 c a b d c\< a-0 c fis a8\!) |
  b,16( g fis a-4\< g b a-0 c b d c e-4\!) |
  d16\mf( b d b d b c e-4 c e-4 c e-4) |
  d( b d b c e-4 d\< b d g b8) |
  %% 15
  b16\f( a b a fis a b\> a b a g e-0\!) |
  d8( cis16 d cis d e-4 d e-4 d e-4 d) |
  c16\mf\<( d c d c fis\! b\> a b a fis c) |
  b\<( d cis d cis d\! e-4\> d e-4 d b g) |
  c\<( d c d c fis\! b\> a b a fis c) |
  %% 20
  b\<( d cis d cis d\! e-4\> d e-4 d b g\!) |
  e( g e g e g a-4 g fis g a-0 b) |
  c( b c b c b c b c b c b) |
  c( d e-4 d e-4 d  b d e-4 d e-4 d) |
  a-0( d cis d cis d e-4 d e-4 d e-4 d) |
  %% 25
  c\<( d c d c fis\! b\> a b a fis c) |
  b\<( d cis d cis d\! e-4\> d e-4 d b g) |
  c\<( d c d c fis\! b\> a b a fis c) |
  b\<( d cis d cis d\! e-4\> d e-4 d b g\!) |
  e( g e g e g a-4 g fis g a-0 b) |
  %% 30
  c( b c b c b c b a-0 b c d) |
  e-4( d e-4 d c d b d e-4 d b d) |
  a-0( d e-4 d e-4 d e-4 d e-4 d e-4 d) |
  e-4( d b d b d c e-4 c e-4 c e-4) |
  d( b d b c e-4 d\< b d g b8\!) |
  %% 35
  c,16( a-0 c a-0 b d c\< a-0 c fis a8\!) |
  b,16( g fis a-4\< g b a-0 c b d c e-4\!) |
  d\mf( b d b d b c e-4 c e-4 c e-4) |
  d( b d b c e-4 d b\< d g b8) |
  a,16-0\f( c e-4 d e-4 d c\< fis b a b a\!) |
  g( d-3 b-1 g d-0 b g8) r r \bar "|."
}


studyXIXprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c' {
    \time 4/4
    \key ees \major
    \omit TupletNumber
    \tuplet 3/2 4 {
      c8-. g-. b-. c-. ees-. g-. aes-. g-. fis-. g-. c-. ees-. \bar "||"
      c,( g b) c( ees g) aes( g fis) g( c ees) \bar "||"
      c,( g b c) ees-. g-. aes( g fis g) c ees \bar "||"
      c,-. g-. b-. c( ees g) aes-. g-. fis-. g( c ees) \bar "||"
      c,-. g( b c) ees-. g-. aes-. g( fis g) c-. ees-. \bar "||"
      c,-. g-. b( c) ees-. g( aes) g-. fis( g) c-. s \bar "||"
    }
  }
  \layout {
    indent = #0.
  }
}

studyXIXprologII = \markup \columns {
  \column {
    \pad-around #1. {
      \wordwrap {
        In the last three measures, employ the same bowing without
        change.
      }
    }
  }
  \column {
    \pad-around #1. {
      \wordwrap {
        Bei den letzten 3 Takten behalte man immer dieselbe Strichart
        bei.
      }
    }
  }
}

studyXIX = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato." 4=111
  \key ees \major

  \tuplet 3/2 4 {
    c8\f g b c ees g aes_4 g fis g c ees-4 |
    %% 2
    aes-3 g fis g ees-4 c b c d c g ees |
    \omit TupletNumber
    %% 3
    c g b c ees g aes-4 g fis g c ees-4 |
    %% 4
    aes g fis g ees-4 c b c d c d ees |
    d b g f b d f g aes g ees-4 c |
    b d g b a g fis e-0 fis g d b |
    d b g f b d f g aes g ees-4 c |
    %% 8
    b b' a g d b d c a-0 g b d |
    %% 9
    g fis g bes aes g aes f d ees-4 bes aes-4 |
    %% 10
    g fis g bes g ees aes-4 f d-0 ees g bes |
    g' fis g bes aes g aes f d ees-4 bes aes-4 |
    g fis g bes g ees c ees aes c ees-4 f |
    %% 13
    \repeat unfold 2 {g d b c fis a} |
    %% 14
    \repeat unfold 4 {g d fis} |
    %% 15
    g fis g a g d b g fis g d-0 b |
    %% 16
    g b d-0 g d b g b d g f d-0 |
    %% 17
    c g b c ees g aes-4 g fis g c ees-4 |
    %% 18
    aes g fis g ees-4 c b c d c g ees |
    %% 19
    c g b c ees g aes-4 g fis g c ees-4 |
    %% 20
    aes g fis g ees-4 c f d b g f d-0 |
    %% 21
    \repeat unfold 4 {c g b} |
  }
  %% 22
  \repeat unfold 2 { c4~ \tuplet 3/2 {c8 g8 b} } |
  %% 23
  c4~ \tuplet 3/2 {c8 ees8 g} c4~ \tuplet 3/2 {c8 g8 ees} |
  c4 r4 r2 \bar "|."
}

studyXXprologI = ##f
studyXXprologII = ##f
studyXX = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Allegro." 4=123
  \key bes \major

  \override Hairpin.to-barline = ##f
  \partial 4. d8\f\downbow\<( cis d | ees4.-4\!)
  \repeat unfold 2 { d8\<( cis d | ees4.-4\!) } d8\<( bes g |
  fis4.\!) \repeat unfold 3 {d'8\<( cis d | ees4.-4\!) } d8( c a-0 |
  %% 8
  bes4.) d8( g bes | a4.) a,8-0( c ees-4 | d4.) bes8( g d-0 |
  c4.) a8( d-4 c | bes4.) g'8( bes ees-4 | d4.) fis8( g a |
  %% 14
  bes4.) a8( g ees-4 | d4.) c8( bes a-0 | bes4.) bes8( d g |
  f4.) c8( d ees-4 | d4.) bes8( d g | f4.) c8( d ees-4 |
  %% 20
  d4.) d,8-0( ees f | g4.) g8( fis g | bes4.) a8-0( bes c |
  d4.) fis8( g a | bes4.) d,8( bes g | fis4.) d8( e fis |
  g4.) g,8( bes c | d4.-4) d8-0( e fis | g4.) fis8( g bes |
  d4.) ees8-4( d cis |
  \ritSpan \textSpannerDown d4.\startTextSpan) ees8-4( d cis |
  d2.)~ | d4.\stopTextSpan d8_\aTempo( cis d |
  ees4.-4) \repeat unfold 2 { d8( cis d | ees4.-4) } d8( bes g |
  %% 36
  fis4.) d8-0( fis g | a4.-4) fis8( a-0 bes-1 | c4.) a8( c d |
  ees4.-4) d8( cis d |
  bes'4.) \repeat unfold 3 {d,8( cis d | ees4.-4)} d8( bes g |
  %% 44
  fis4.) d8( fis g | a4.-4) fis8( a-0 bes | c4.) a8( c d |
  ees4.-4) d8( cis d | bes'4.) bes8( a g | f4.) g8( f g |
  %% 50
  f4.) bes8( a g | f4.) g8( f g | f4.) d8( c bes | a4.-0) g8( f ees |
  g4.) f8( ees d-0 | f4.) ees8( g, a | bes4.) a8( bes c |
  d4.-4) d8-0( fis a-0 | d4.) \ritSpan d,8\startTextSpan( g bes |
  d4.) ees8-4( d cis | d4.\stopTextSpan) d8-\aTempo( cis d |
  ees4.-4) \repeat unfold 2 {d8( cis d | ees4.-4)} d8( bes g |
  fis4.) \repeat unfold 3 {d'8( cis d | ees4.-4)} d8( c a-0 |
  g4.) bes8( a bes | d4.) g8( fis g | bes4.) bes,8( a-0 bes |
  d4.) \repeat unfold 2 { g8( fis g | bes4.) } bes,8( a-0 bes |
  d4.) d,8-0\<( ees d | g2.^\molto)~ |
  \ritSpan \textSpannerUp << {g4.\startTextSpan}
			     {s8 s\!} >> bes,8\p\>( d-4 bes | g2.)~ |
  << {g4\stopTextSpan} {s8 s\!} >> r4 r \bar "|."
}

studyXXIprologI = ##f
studyXXIprologII = ##f
studyXXI = \new Voice \relative g' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Allegro." 4=123
  \key g \major

  g8-.->-3\upbow g,-.-> \repeat unfold 2 {g'-.-> g,-.->} |
  %% 2
  g'->( fis e) d-.-0 e( fis | g-.->) g,-.-> \repeat unfold 2 {g'-.-> g,-.->} |
  g'->( fis e) d-.-0 e( fis | g-.) d-. b'-.-1 d,-. d'-.-3 d,-. |
  %% 6
  g'( fis g) a-. b( g | d-.) d,-.-0 e'-.-4 d,-. c'-. d,-. |
  %% 8
  b'( e-4 d) c-. b( a-0 | g-.) d-.-0 b'-.-1 d,-. d'-.-3 d,-. |
  g'( fis g) a-. b( g | d-.) b-. e-.-4 c-. fis-. a,-.-0 |
  %% 12
  g'( b, c) d-. e-0( fis | g) b,-. c( d e-0) fis-. |
  g( d-3 e-0) fis-. g( a | b-.) b,-.-1 a'-. b,-. g'-. b,-. |
  %% 16
  a'-. c,-.-2 g'-. b,-. fis'-. a,-.-0 |
  e'-.-4 g,-. e'-.-4 fis,-. e'-.-4 e,-. |
  e'-.-4( dis cis) b-. cis( dis |
  e-.-4) g,-. e'-.-4 fis,-. e'-.-4 e,-. |
  %% 20
  \repeat unfold 2 {
    e'->-4( dis cis) b-. cis( dis |
    e-.-4) b-.-1 g'-.-2 b,-. b'-.-4 b,-. |
    a'-.-3 b,-. b'-. b,-. a'-. b,-. |
    g'-. b,-. a'-. b,-. g'-. b,-.
  }
  %% 28
  e->-4( dis cis) b-. cis( dis |
  \repeat unfold 2 {
    e-4) e,-. d'-. e,-. c'-. e,-. | b'( g a-0) b-. c( d |
  }
  %% 33
  e-.-4) e,-. c'-. a-.-0 cis-. g-.-3 | e'-4( d cis) d-. e-4( d |
  c) b-. e-4( d c) b-. | a-0( e g) fis-. e( fis |
  %% 37
  g-.-3) g,-.-0 \repeat unfold 2 {g'-. g,-.} |
  %% 38
  g'( fis e) d-0 e( fis | g-.) g,-. e'-. c-.-3 a'-.-4 a,-. |
  %% 40
  g'( fis e) d-.-0 e( fis | g) g,-. b( d-0 g) b-. |
  e-4( d cis) d-. c( a-0 | g) g, b( d-0 g) b-. |
  e-4( d cis) d-. e-0( fis | g) fis-. g( a b) d,-. |
  g( fis g) a-. b( d,-3 | b') a-. g( fis g) b,-. |
  e-4( d cis) d-. c( a-0 |
  \repeat unfold 2 {
    g-.-3) g,-. \repeat unfold 2 {g'-. g,-.} |
    g'( d ees-1) e-.-1 f-2( fis-2
  }
  g) d-. ees-1( e-.-1 f-2) fis-.-2 | g( d ees-1) e-.-1 f-2( fis-2 |
  g) g,-. b( d-0 g) b-. | d-3( fis,-2 g-3) b-. d( g | b) r r4 r |
  <g,, d' b' g'>8-. r r4 r | <g g'>2.\fermata \bar "|."
}

studyXXIIprologI = ##f
studyXXIIprologII = ##f
studyXXII = \new Voice \relative g {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key c \major

  \override Hairpin.to-barline = ##f
  \partial 4. g8\f\<\downbow( a b |
  %% 1
  \repeat unfold 2 {
    c^>)\! g8\<( a b c^>\!) g\<( a b |
    c^>)\! e8\<( g c e^>_4\!) c\<( g e
  }
  %% 5
  \repeat unfold 2 {
    << {d-0)} {s16 s\!} >> a8( b cis d-4) a( b cis |
    d-0) f( a-0 d f) d( a-0 f |
  }
  %% 9
  \repeat unfold 2 {
    d-0) g,( b c d-4) g,( b c | d-0) f( b d f) d( b f |
  }
  %% 13
  d) g,( a b c) b( c d-0 | e) g( c e-0 a) g( fis g |
  a) g( fis e-0 d) c( b a-0 | g) d-0( e fis g) b( a-0 g |
  %% 17
  \repeat unfold 2 {
    fis) e'-4( d cis d) e-4( d cis | d) fis( a g fis) e-0( d c |
    b) e-4( d cis d) e-4( d cis | d) b'( g d c) b( a-0 g |
  }
  %% 25
  \repeat unfold 2 {
    fis) g( a-0 b c) fis( g a | b) a( g fis g) d( b g |
  }
  %% 29
  f) g( f e f) a-4( g f | e) g( c e-0 a) g( fis e-0 |
  %% 31
  d) b( e-4 d c) d,-0( e fis | g) fis( g a-4 g) f( e d-0 |
  \repeat unfold 2 {
    c) g( a b c) g( a b | c) e( g c e-4) c( g e |
  }
  %% 37
  \repeat unfold 2 {
    d-0) a( b cis d-4) a( b cis | d-0) f( a-0 d f) d( a-0 f |
  }
  %% 41
  d-0) g,( b c d-4) g,( b c | d-0) f(b d f) d( b f |
  d-0) g,( b c d-4) b( d-0 e | f) b( d c b) a-0( g f |
  %% 45
  e) g( c b a-0) d-3( f a | g) g( e-0 c b) g( f d-0 |
  c) e( g c a-0) d( f a | g) g( e-0 c b) g( f d-0 |
  c) g( a b c) g( a b | c) e( g c e-4) c( g e |
  %% 51
  c) g( a b c) g( a b | c) e( g c e-4) c( g e |
  c) g( a b c) e( f g | a-4) f( g a-0 b) g( a-0 b |
  c) c( g e c) g( a b | c4) r r2 \bar "|."
}

studyXXIIIprologI = ##f
studyXXIIIprologII = ##f
studyXXIII = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Moderato." 4=111
  \key f \major

  c8\f b c a-0 bes-1( b | c) a' g f e-0 d | c b c a bes-1( b-1 |
  %% 4
  c) a' g f e-0 d | c b d c a-4( f | e) d-0 c d-0 e f |
  %% 7
  g a-0 bes c e-4( d | c) bes' g f e-0 d | c b c a bes-1( b |
  %% 10
  c) a' g f e-0 f | d cis d bes c-2( cis | d) bes'-4 a g f d-3 |
  %% 13
  c a' g f e-0 d | c bes g e c e | f c a c f a-4 | f c b c bes c |
  %% 17
  a a'-4 g-3 a-4 f a-4 | e a-4 cis, a'-4 d,-0 a'-4 | f d' cis d bes d |
  a-0 d fis, d' g, d' | bes a-0 g bes' a g | f e-0 d a' f d |
  %% 23
  cis bes a-0 g f e | d-0 f bes a-0 f e | d-0 f bes a-0 f d-0 |
  %% 26
  cis a'-4 d,-0 a'-4 e a-4 | g a-4 f a-4 e a-4 | d,-0 d'-3 c d bes d |
  a-0 d fis, d' g, d' | bes a-0 bes g bes cis |
  %% 31
  bes' cis,-2 a' cis,-2 g'-1 cis,-2 | d f bes a f e-0 | d f bes a f d |
  %% 34
  cis a' g a f a | e-0 a f a g a | d, f bes a f e-0 | d f bes a f d |
  %% 38
  cis a' g a f a | e a f a g a | d, f bes a f e | d f bes a f d |
  %% 42
  \repeat percent 2 {c a' g f e-0 f} | bes, e-0 a g e-0 c |
  %% 45
  bes e-0 a g e bes | \repeat percent 2 {a-0 a' f d c bes} |
  %% 48
  a-0 a' g f e-0 d | c f e-0 d c bes | a-0 c f e-0 d c |
  %% 51
  d c bes a-0 g f | e d-0 c d-0 e f | g f e f g a-0 |
  %% 54
  bes a-0 g a-0 bes c | d c bes c d e-0 | f e f a, bes-1( b |
  c) a' g f e-0 f | g fis g bes, c-2( cis | d) bes' a g f d |
  c a' g f e-0 d | c bes g e c bes | a c f a-0 c a' | f4 r r \bar "|."
}

studyXXIVprologI = ##f
studyXXIVprologII = ##f
studyXXIV = \new Voice \relative g' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Moderato assai." 4=111
  \key c \major

  \repeat unfold 2 { g2 g16-.( g-. g-. g-. | g8-.) e'-4( c e,) g4 } |
  %% 5
  f4 f16-.( f-. f-. f-. f8-.) r | e g( a-4 g b, c) |
  d2-4 g,16-.( g-. g-. g-. | g8-.) r r4 r | g'2 g16-.( g-. g-. g-. |
  %% 10
  g8-.) e'-4( c e,) g4 | a2-4 a16-.-0( a-. a-. a-. |
  %% 12
  a8-.) cis( d e-0) f4 | a a16-.( a-. a-. a-. a8-.) b,( |
  %% 14
  d c e-4) e,( f g) | b8.( a16-0) g8 f a,( b) | c4 r r |
  %% 17
  a''2 a16-.( a-. a-. a-. | a8-.) gis( b a f d) | b2~( b16 d c e-4) |
  %% 20
  d4. b8( d f) | a2 a16-.( a-. a-. a-. | a8-.) gis( b a f d) |
  %% 23
  cis2~( cis8 d16 e-4) | d4. b8( a8.-0 g16) |
  g2 g16-.( g-. g-. g-. | g8-.) e'-4( c e,) g4 |
  a2-4 a16-.-4( a-. a-. a-. | a8-.) g( f a,) d4-4 |
  g,4 g16-.( g-. g-. g-. g8-.) r | r g( aes-1\< a-1 bes-2 b-2) |
  d2.-4(\> | << {c4)} {s8 s\!} >> r4 r \bar "|."
}

studyXXVprologI = ##f
studyXXVprologII = ##f
FisDFis = { fis16( d-0 fis) }
AFisDFis = {a,16-. fis'( d-0 fis)}
GEG = {g16( e g)}
AGEG = {a,16-. g'( e g)}
studyXXV = \new Voice \relative a' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Allegro." 4=123
  \key d \major

  \partial 4 a4-4\upbow |
  %% 1
  a16-.->-4 \FisDFis \AFisDFis a-.->-4 \FisDFis |
  b-.-> \FisDFis \AFisDFis a-.->-4 \FisDFis |
  %% 3
  a-.->-4 \FisDFis \AFisDFis d'-.->-3 fis,( d-0 fis) |
  a-.->-4 \FisDFis \AFisDFis a-.->-4 \FisDFis |
  %% 5
  a-.->-4 \GEG \AGEG a-.->-4 \GEG |
  cis-.->-2 \GEG \AGEG b-.-> \GEG |
  a-.->-4 \GEG \AGEG e'-.-4 g,( e g) |
  a-.->-4 \GEG \AGEG a-.->-4 \GEG |
  %% 9
  fis'-.->-1 a,-4( fis a) d,-.-0 a'-4( fis a-4) d-.->-3 a-4( fis a-4) |
  d-.-> a-4( fis a-4) d,-. a'-4( fis a-4) cis-.->-2 a-4( fis a-4) |
  cis-.-> \GEG b,-. g'( e g) b-.-> \GEG |
  b-.-> g( d-0 g) g,-. g'( d-0 g) b-.-> g( d-0 g) |
  %% 13
  a-.->-4 \FisDFis \AFisDFis d'-.-> fis,( d-0 fis) |
  cis'-.-> \GEG a,-. g'( e g) e'-.->-4 g,( e g) |
  d'-.-> fis,( d fis) \AFisDFis b-.-> \FisDFis |
  a-.->-4 \FisDFis \AFisDFis a-.->-4 \FisDFis |
  %% 17
  fis'-.->-1 a,-4( fis a-4) d,-.-0 a'-4( fis a-4) d-.-> a-4( fis a-4) |
  d-.-> a-4( fis a-4) d,-.-0 a'-4( fis a-4) cis-.-> a-4( fis a-4) |
  cis-.-> \GEG b,-. g'( e g) b-.-> \GEG |
  b-.-> g( d-0 g) g,-. g'( d g) b-.-> g( d g) |
  %% 21
  a-.->-4 fis( d-0 fis) a,-. fis'( d-0 fis) a-.->-4 fis( d-0 fis) |
  a-.->-4 f( d-0 f) a,-. f'( d-0 f) a-.->-4 f( d-0 f) |
  \repeat percent 2 { b-.-> f( d-0 f) gis,-. f'( d-0 f) b-.-> f( d-0 f) } |
  %% 25
  a-.->-4 \FisDFis \AFisDFis d'-.-> fis,( d-0 fis) |
  cis'-.-> \GEG a,-. g'( e g) e'-.->-4 g,( e cis') |
  d-.-> fis( a fis) d-. a-0( fis a-4) g-. e( cis a) | d4 r r \bar "|."
}


studyXXVIprologI = ##f
studyXXVIprologII = ##f
studyXXVI = \new Voice \relative a' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key g \major

  r8 d\mf\downbow( b c d b' g e-0 | d) b( g a-0 b d c e-4 |
  %% 3
  d) b( g b d b' g e-0 | d) b( g a-0 b d c e-4 |
  \repeat unfold 2 {
    d) b( g a-0 b g d-0 c | b) d-4( c e d-0 g b e-4 |
  }
  %% 9
  d) b( g a-0 b g d-0 e'-4 | d) b( g' e-0 d b g' e-0 |
  d) b( g a-0 b g d e'-4 | d) b( g' e-0 d b g' a |
  %% 13
  \repeat unfold 2 {g) d( b a' g d b a'} | g) d( b c d b g e'-4 |
  %% 16
  d) b( g a-0 b g d-0 c' | b) g( d-0 c' b g d-0 c' |
  b) g( d-0 fis g d b c | d-4) b( g a b d g a-4 |
  %% 20
  g) d-0( b c d g b c | b) g( d-0 fis g b d e-4 | d) b( g a b d g a |
  g) d( b a' g d b a' | g) d( b a' g d b-1 b' | g) d( b c d b g e'-4 |
  %% 26
  d) b( g a-0 b g d-0 e'-4 | d) b( g b d b g' e-0 |
  %% 28
  d) b( g b d b g' b | g) d( b g' d b g e'-4 |
  d) b( g a-0 b-\rit g d c) | b1~ | b4 r r2 \bar "|."
}

studyXXVIIprologI = ##f
studyXXVIIprologII = ##f
studyXXVII = \new Voice \relative a'' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Allegro." 4=123
  \key g \major

  g8\upbow( fis g) g, e'-4 e,-1 | d'-3 d, b'-1 b, g' g, |
  %% 3
  e''-4( dis e-4) e, c' c,-3 | a'-4 a, c'-2 c, e'-4 e, |
  d'( cis e-4) e,-1 d'-3 d,-0 | c' d, <c' a'> d, <c' a'> d, |
  d'( cis e-4) e,-1 d' d, | b' g, <b'_1 b'> g, <b' b'> g, |
  %% 9
  b''( a g) g,-3 e'-4 e,-1 | d'-3 d,-0 b'-1 b, g' g, |
  %% 11
  e''-4( dis e-4) e,-1 c' c, | a'-4 a, c'-2 c,-3 e'-4 e,-1 |
  d'( cis e-4) e, d' d,-0 | a''( gis b) c, a' c, |
  %% 15
  g'( fis g) b, d d, | g r <g, d' b' g'> r r4 |
  %% 17
  g''8\upbow( fis g) g,-3 e'-4 e, | b'-1 b,-2 e'-4 e, g' g,-3 |
  fis'( g a) a,-0 fis' fis,-2 | a' a,-0 g' g,-3 g' g, |
  %% 21
  e'-4( dis e-4) e,-1 b' b, | g'-3 g, b'-1 b, e'-4 e, |
  c'( d e-4) e,-1 c' c,-3 | c'-2 c, b' b,-2 b' b, |
  %% 25
  b' b, e'-4 e, g' g,-3 | fis'-1 fis,-2 e'-4 e, e' e, |
  %% 27
  d'( fis b) b, a' a, | a' a,-0 g'-2 g,-3 g'-2 g, |
  %% 29
  b b,-2 e'-4 e, g' g, | fis' fis, e'-4 e,-1 e' e, |
  %% 31
  d'( fis b) b, a' a, | a' a,-0 g' g,-3 g'-2 g, |
  %% 33
  b'-4 b,-1 a' a,-0 g' g,-3 | fis' fis, e'-4 e,-1 d' d,-0 |
  %% 35
  a''-3 a,-0 g' g, fis' fis, | e' e, d' d,-0 c'-2 c,-3 |
  %% 37
  g'' g, fis' fis, e'-4 e, | d' d,-0 c' c, b' b,-2 |
  e'-4 e, d' d,-0 c' c,( | b) b'-1 c, c'-2 b, b'-1 |
  %% 41
  g,-0 b''-4 g b fis b | e, b' d, b' d, b' |
  %% 43
  g,,-0 b''-4 g,-3 b' fis,-2 b' | e,,-1 b'' d,,-0 b'' d,, b''( |
  a g fis) fis,-2 e'-4 e,-1 | d'-3 d,-0 fis'-1 fis, a' a, |
  a'( g fis) fis,-2 e'-4 e,-1 | d'-3 d,-0 fis'-1 fis,-2 a'-3 a,,-1( |
  %% 49
  g) b'' g b fis b | e, b' d, b' d, b' | g,, b'' g,-3 b' fis, b' |
  %% 52
  e,,-1 b'' d,,-0 b'' d,, b''( | a g fis) fis, e' e, |
  d'-3 d,-0 fis' fis,-2 a' a,-0 | a'( g fis) fis,-2 e'-4 e, |
  d' d,-0 fis' fis, a' a, | a'( g fis) fis, fis' fis, |
  a'\p( g fis) fis, fis' fis, | a'( g fis) d, g'\< d, |
  %% 60
  gis'-2 d, a''-3 d,, ais''-3 d,, | b''\f( a g) g,-3 e'-4 e, |
  %% 62
  d' d, b' b, g' g, | e''-4( dis e) e, c' c, |
  a'-4 a, c' c,-3 e'-4 e, | d'( cis e-4) e, d' d, |
  c'-2 d,-0 <c' a'> d, <c' a'> d, | d'( cis e) e, d' d, |
  %% 68
  b' g, <b'-1 b'> g, <b'-1 b'> g, | b''( a g) g, e' e, |
  %% 70
  d' d, b' b, g' g, | e''( dis e) e, c' c,-3 |
  a'-4 a,-1 c'-2 c, e' e, | d'( cis e-4) e, d' d, |
  %% 74
  a''( gis b) c,-2 a' c, | g'( fis g) b, d d, |
  g r <g, d' b' g'> r r4 \bar "|."
}

studyXXVIIIprologI = ##f
studyXXVIIIprologII = ##f
studyXXVIII = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegretto." 4=123
  \key g \major

  \repeat volta 2 {
    << { \voiceTwo d1-0\f( }
       \new Voice { \voiceOne c'8 d e-4 d c b c a-0 } >> \oneVoice |
    <b d,>4-.) d,-. g-. b,-. |
    %% 3
    <c-3 d-0>-. <c d>-. << {\voiceOne d2-0(}
			   \new Voice {\voiceTwo a8-1 b c a} >> \oneVoice |
    %% 4
    <d b>4-.) <d b>-. <g g,>-. <g-3 b-1>-. |
    %% 5
    << { \voiceTwo d1-0( }
       \new Voice { \voiceOne c'8-2 d e-4 d c b c a-0 } >> \oneVoice |
    <b d,>4-.) <d, b'>-. <g-3 b,-2>-. <d b>-. |
    %% 7
    <c-3 e-1>-. <e c'>-. <c' e>-. <d,-0 c'-2 fis-1> |
    %% 8
    <g, d' b' g'> d''8 b g4 r
  }
  \repeat volta 2 {
    %% 9
    e8( gis) b d c b a4 |
    %% 10
    << {\voiceOne e'2(}
       \new Voice {\voiceTwo b8 d c b} >> \oneVoice <c e>4) a' |
    %% 11
    d,,8-0( fis) a-0 c b a-0 g4 |
    %% 12
    << {\voiceOne d2-0~}
       \new Voice {\voiceTwo a8-1 c b a} >> \oneVoice <d b>4 g |
    %% 13
    <a,-1 g'-3 cis-2>8( d') e-4 d cis( b) a b |
    %% 14
    cis( d) e fis g a b4 |
    %% 15
    << {\voiceOne g8( a b a g a b a)}
       \new Voice {\voiceTwo a,1-0} >> \oneVoice |
    %% 16
    <a g'>8( fis') e-\rit d cis2\fermata |
    %% 17
    << { \voiceTwo d,1( }
       \new Voice { \voiceOne c'8-\aTempo d e d c b c a } >> \oneVoice
    %% 18
    <b d,>4-.) d,4-. g-. b,-. |
    %% 19
    <c d>4-. <c d>-. << {\voiceOne d2( }
			\new Voice {\voiceTwo a8 b c a} >> \oneVoice |
    %% 20
    <b d>4) <b d>-. <g-0 g'-3>-. <g'-3 b-1>-. |
    %% 21
    << { \voiceTwo d1( }
       \new Voice { \voiceOne c'8 d e d c b d a } >> \oneVoice |
    <b d,>4-.) <d, b'>-. <b-2 g'-3>-. <d b>-. |
    %% 23
    <c e> <e c'>-. <c' e>-. <d,-0 c'-2 fis-1> |
    %% 24
    <g, d' b' g'> d''8 b g4 r
  }
}

studyXXIXprologI = ##f
studyXXIXprologII = ##f
studyXXIX = \new Voice \relative a {
  \violinVoiceSettings
  \time 3/4
  \tempo "Moderato." 4=111
  \key a \major

  a4->~\f( a16 cis e a-4) a( e cis a) |
  %% 2
  cis4->~( cis16 e a-0 cis) cis( a e cis) |
  e4->~( e16 a-0 cis e-4) e( cis a e) |
  %% 4
  a4-0->~( a16 cis e-0 a) a( e-0 cis a-0) |
  fis4->~( fis16 a d fis) fis( d a fis) |
  %% 6
  e4->~( e16 a cis e-4) e( cis a e) |
  d4-0->~( d16 gis b d) d( b gis d) |
  %% 8
  cis4->~( cis16 e a-0 cis) cis( a e cis) |
  b4->~( b16 e gis b) b( gis e b) |
  %% 10
  e4->~( e16 gis b e-4) e( b gis e) |
  gis4->~( gis16 b e-0 gis) gis( e b gis) |
  %% 12
  fis4->~( fis16 a dis-3 fis) fis( dis-3 a-0 fis) |
  e4->~( e16 gis b e-4) e( b gis e) |
  %% 14
  gis4->~( gis16 b e-0 gis) gis( e b gis) |
  b4->~( b16 e gis b) b( gis e-0 b) |
  %% 16
  d,4-0->~( d16 e gis fis) e( d-0 cis b) |
  a4->~( a16 cis e a-4) a( e cis a) |
  %% 18
  cis4->~( cis16 e a-0 cis) cis( a e cis) |
  e4->~( e16 a cis e-4) e( cis a e) |
  %% 20
  g4->~( g16 cis-2 e g) g( e-0 cis g) |
  fis4->~( fis16 a-0 d fis) fis( d a-0 fis) |
  %% 22
  b4->~( b16 d fis b) b( fis d b) |
  gis4->~( gis16 b e-0 gis) gis( e b gis) |
  %% 24
  e4->~( e16 gis b e-4) e( b gis e) |
  a4-0->~( a16 cis e-0 a) a( e cis a) |
  %% 26
  gis4->~( gis16 cis-2 e gis) gis( e-0 cis gis) |
  fis4->~( fis16 b d fis) fis( d b fis) |
  %% 28
  b4->~( b16 d fis b) b( fis d b) |
  a4-0->~( a16 cis e-0 a) a( e cis a) |
  %% 30
  gis4->~( gis16 b d gis) gis( d b gis) |
  a4-0->~( a16 cis e a) a( e cis a) |
  %% 32
  e4->~( e16 a-0 cis e-4) e( cis a-0 e) |
  fis4->~( fis16 b-1 d fis-1) fis( d b fis) |
  %% 34
  gis4->~( gis16 b d gis) gis( d b gis) |
  a4-0->~( a16 cis e-0 a) a( e cis a) |
  %% 36
  e4->~( e16 a cis e-4) e( cis a-0 e) |
  fis4->~( fis16 b d fis) fis( d b fis) |
  %% 38
  gis4->~( gis16 b d gis) gis( d b gis) |
  a4-0->~( a16 cis e-0 a) a( e cis a) |
  %% 40
  fis4->~( fis16 a-0 cis fis) fis( cis a fis) |
  e4->~( e16 a cis e-4) e( cis a e) |
  %% 42
  cis4->~( cis16 e a-0 cis-2) cis( a e cis) |
  a4->~( a16 cis e a-4) a( e cis a) |
  %% 44
  fis'4->~( fis16 a-0 cis-2 fis) fis( cis a fis) |
  e4->~( e16 a-0 cis e-4) e( cis a e) |
  %% 46
  cis4->~( cis16 e a-0 cis) cis( a-0 e cis) |
  a4 r r \bar "|."
}

studyXXXprologI = ##f
studyXXXprologII = ##f
studyXXX = \new Voice \relative a {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key g \major

  \partial 4. b8\upbow\mf( c-3 cis-3) |
  %% 1
  d-0( fis a c fis-1 c'-4 a-3 fis) |
  g( fis g a b b, e-4 d) | c( b c d e-4 fis, b a-0) |
  %% 4
  g( fis g a-0 b g fis e) | d( fis a c fis-1 c'-4 b-4 a) |
  %% 6
  g( fis g a b b,-1 f'-4 e-4) | d( c b a-0 g fis e fis) |
  a-4( g d-0 b g) r r4 |
  %% 9
  \repeat percent 2 { cis'8( e-0 g a b a g e) } |
  d( fis gis a b a fis d) | cis( d e-4 d b a-0 fis d-0) |
  %% 13
  \repeat percent 2 {cis'( e g a b a g e)} |
  d( fis gis a b a fis d) | cis( d e-4 d b a fis d-0) |
  %% 17
  \repeat percent 2 {c''-4( a-3 fis d c a-0 fis d)} |
  b''( a g fis g fis e dis) | e-4( d c b a-0 g fis e) |
  %% 21
  d( fis g a-0 b d e-4 d) | c( a-0 c fis a b-4 c-4 a-3) |
  g( b g d b g d-0 b) | g( b d-4 b g) r r4 |
  %% 25
  \repeat percent 2 {g8( d' b'-2 f'-1 g f-1 b,-2 d,)} |
  g,( c e g c b c d) | e-4( d c b c b a g) |
  %% 29
  \repeat percent 2 {g,( e'-2 bes'-1 cis e-0 cis bes e,-2)} |
  %% 31
  g,( b d g b d b' a) | g( fis e d c b a g) |
  %% 33
  \repeat percent 2 { g,( d' b'-2 f'-1 g f-1 b,-2 d,)} |
  g,( c e g c b c d) | e( d c b c b a g) |
  %% 37
  \repeat percent 2 {g,( e'-2 bes'-1 cis-3 e-0 cis bes e,-2)} |
  g,( b d g b d g fis) | e( d c b a g fis e) |
  %% 41
  d( fis a c fis c'-4 a-3 fis) | g( fis g a b b, e-4 d) |
  c( b c d e-4 fis, b a-0) | g( fis g a b g fis e) |
  %% 45
  d( fis a c fis c'-4 b-4 a) | g( fis g a b a g fis) |
  e( d cis b a g fis e) | d( e fis e d c b a) | g( b e d c fis b a) |
  %% 50
  g( b e-4 d c fis b a) | g( fis e d e-4 d c b) |
  %% 52
  a( g fis e d c b a) | g( b e d c fis b a) | g( b e-4 d c fis b a) |
  g( fis e d e d c b) | a( g fis e d c b a) |
  %% 57
  g( bes cis e g bes cis e) | g( fis g a bes a bes cis,) |
  %% 59
  d( b' a g fis c'-4 a-3 fis) | g( d b g fis d-0 e fis) |
  g( b d g fis c'-4 a-3 fis) | g( d b g fis d-0 e fis) |
  %% 63
  g( d e fis g b c d) | e-4( d e-0 fis g fis g a) | b r r4 r2 |
  <g,, d' b' g'>4\ff r <g d' b' b'> r | <g g'>1~ | <g g'>4 r r2 \bar "|."
}

studyXXXIprologI = ##f
studyXXXIprologII = ##f
studyXXXI = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato." 4=111
  \key c \major

  c8-1 d-2 e-3 f-4 g-1 a-2 b-3 c-4 | d-1 c-4 b-3 a-2 g-1 f-4 e-3 d-2 |
  c d e f g a b c | d c b a g f e d | c-1 d e f g a b c |
  %% 6
  d,-2 e f g a b c d | e,-3 f g a b c d e | fis e d c-4 b c a b |
  %% 9
  \repeat unfold 2 {
    g-1 a b c d e fis g | a g-4 fis e d c-4 b a |
  }
  %% 13
  g-1 a b c b c d e | f e d c-4 b a g f-4 |
  %% 15
  e f g a g a b c | d c b a g f-4 e d | c-1 d e f e f g a |
  %% 18
  g a b c b c d e | f g f e d e d c | b c b a g f e d |
  c d e f e f g a | g a b c b c d e | f g f e d e d c |
  b c d e f g a b | \repeat percent 2 { c b a b c b a b } |
  d c b c b a g f | a g f e g f e d |
  \repeat percent 2 {c b a b c b a b} | d c b c b a g f |
  a g f e g f e d | c d e f g a b c | d c b a g f e d |
  c d e f g a b c | b c d e f g a b |
  \repeat percent 2 {c b d c b g a b} | c a g e c a g e |
  c2. r4 \bar "|."
}

studyXXXIIprologI = ##f
studyXXXIIprologII = ##f
studyXXXII = \new Voice \relative g {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key c \major

  \partial 4. g8\upbow\f a b | c2 g | c g | c-1 e-3 | g-1 c-4 |
  %% 5
  c,4-1 e-3 g-1 c-4 | e-2 g-4 c8-3( b-2) c-3 d-4 | c1-3 |
  c,,2-1~ c8 g a b | c2 g | c g | c-1 e-3 | g-1 c-4 |
  %% 13
  e,4-3 g-1 c-4 e-2 | d-1 fis-3 a-1 d-4 | b-2 g-4 d-1 b-3 |
  %% 16
  g2-1~ g8 d e-1 fis | g2 d | g d | g-1 b-3 | d-1 g-4 |
  %% 21
  g,4-1 b-3 d-1 g-4 | b-2 d-4 f,8-3( e) e g | e1 | g,,4( c-1) e g |
  %% 25
  c1-4 | c,-1 | e'-2 | c,-1 | g''-4 | c,,-1 | c''2-3 bes8( a bes c |
  %% 32
  a4) f d a-0 | d-1 f a d | b f d b | g-1 d-0 f8-2( e f g |
  %% 36
  e4) g, c-1 e | g c bes8( a bes c | a4) f-4 a c | f8-3( e) f g f4 b |
  %% 40
  c1 | c,,2-1 c'-4 | c,-1 e'-2 | c,-1 g''-4 | c,,-1 c''-3 |
  %% 45
  d,,4-0 fis-2 a-0 d-1 | fis a d c | b8( a) b c d4 g,,,( | b) d g f |
  %% 49
  e8( d) e f g4 e'-4( | d) fis b a | g2~ g8 d, e fis | g2~g8 d e fis |
  %% 53
  g4 b d g | b d,,-0 g-1 b | d f b c | d1~ | d4 r r8 g,,,8\upbow a b |
  %% 58
  c2 g | c g | c-1 e | g c | c,4 e g c | e g c8( b) c d | c1 |
  %% 65
  c,,2-1~ c8 c d e | f2 c | f c | f a | c f | f,4-4 a d f |
  %% 71
  g,,( b) d g | e1 | c2~ c8 g a b | c2 g | c g | c-1 e | g c |
  %% 78
  c,4 e g c | e,-3 g c e | f8( e) f g f2 | a4 c b a | g g,, c-1 e |
  g e' c a | g f-4 b a | g g, e'-3 d | c2 g | c g | c-1 e-3 | g-1 c-4 |
  c,4 e g c | e g c8( b) c d | c1~ | c4 r r2 \bar "|."
}

studyXXXIIIprologI = ##f
studyXXXIIIprologII = ##f
studyXXXIII = \new Voice \relative d' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key g \major

  \partial 4 d4-0\upbow\f | \repeat percent 2 {g2.-1 d8-0 d} |
  %% 3
  g4-1 a-2 b-3 a-2 | g2-1 g'-4 | fis4 e d c-4 | b a g b |
  %% 7
  a d-1 fis e | d r r d,-0 | \repeat percent 2 {g2.-1 d8-0 d} |
  %% 11
  g8-1( d-0) a'-2 d,-0 b'-3( d,-0) a'-2 d,-0 | g4-1 g, g'-1 g'-4 |
  %% 13
  fis8( g) fis e d4 c-4 | b8 c b a g4 b'-2 | a8( d b d) c d b d |
  %% 16
  a-.-1 g-4( fis e d4) b' | a8( d b d) c d b d | a-. g-4( fis e d4) d,-0 |
  %% 19
  g8-1( a b c) d4 b' | a8-. g( fis e d4) d,-0 | g8-1( a b c) d4 b' |
  %% 22
  a8-. g( fis e d) d'( b d | \repeat unfold 2 { a) d( b d a) d( b d } |
  %% 25
  a4) r <d,, d' d'>\downbow r | <d d' d'>\downbow r r d-0\upbow | g2.-1 d8-2 d |
  %% 28
  g2.-1 d8-0 d | g4-1 a b a | g2-1 d''-4 | c4 b a g-4 | fis e d c-4 |
  %% 33
  b d,8-0 g-1 b4( a) | g8-1 a b c d e fis g | a b c b a g-4 fis e |
  %% 36
  d-1 e fis e d c-4 b a | g2-1 d-0 | g8-1( a) b c d( e) fis g |
  %% 39
  a( b) c b a( g-4) fis e | d( e) fis e d( c-4) b a | g( b) d g g,4 g,( |
  %% 42
  c2.-1) e4-3( | g2.) g4( | b2.-3) d4( | g2.-4) g,,4( | c2.-1) e4( |
  %% 47
  g2.) g4( | b2.) d4( | g2.) b4( | d a) a a | b2( g8-4) r b,-3( d,-0 |
  %% 52
  a'-2 d,-0 b'-3 d,-0 c'-4 d,-0 a'-2 d,-0) |
  b'-3( d,-0 a'-2 d,-0) g-1 r b'4( | d a) a a |
  %% 55
  b2( g8-4) r b,8-3( d,-0 | c'-4 d,-0 b' d, c' d, a' d, |
  g) r r4 r d-0 | g2.-1 d8-2 d | g2.-1 d8-0 d |
  %% 60
  g-1( d-0 a'-2 d, b'-3 d, a'-2 d,) | g2.-1( g'4-4) |
  fis8( g) fis e d( e) d c-4 | b( c) b a g( d-0) g-1 b | a4-2 d-1 fis e |
  %% 65
  d r r d,-0 | fis2.-2 a8-0 a | d2.-1 d,8-0 d | g2.-1 b8-3 b |
  %% 69
  d2.-1 d,8-0 d | fis4-2 fis2-> a4-0 | d-1 d2-> d,4-0 | g-1 g2-> b4-3 |
  %% 73
  d-1 d2-> d,4-0 | g8-1( a) b c-4 d( e) fis g | a( b) c b a( g) fis e |
  %% 76
  d( e) fis e d( c) b a | g( a) b g d2-0 | g8-1( a b c d e fis g) |
  a( b c b a g fis e) | d( e fis e d c b a |
  %% 81
  g) d-0( ees-1 d e d fis d | g) d-4( c d b d a d |
  %% 83
  g,) d'-0( ees d e d fis d | g) d-4( c d b d a d | g,4) g'-1( b d |
  ees) d( fis d | g) g,( b d | e) d( fis d | g) g,( b d |
  ees) d( fis d | g8) d( ees d e d fis d | g) d( ees d e d fis d |
  g) r r4 r d,-0\upbow | g-1 b d g | b g d b |
  g r <g, d' b' b'>\downbow r | <g d' b' g'>\downbow r r2 \bar "|."
}

studyXXXIVprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c'' {
    \time 6/8
    \key d \major

    d8 fis a d( cis d) \bar "||"
    d,8( fis a) d cis d \bar "||"
    d,8( fis a) d( cis d) \bar "||"
    d,8( fis a d cis d) \bar "||"
    %% 5
    d,8 fis( a d) s s \bar "||"
    d,8 fis a( d) cis s \bar "||"
    d,8 fis a d cis( d) \bar "||"
    d,8( fis) a( d) cis d \bar "||"
    d,8 fis( a d) cis d \bar "||"
    %% 10
    d,8 fis a( d) cis d \bar "||"
    d,8 fis-.( a-.) d cis-.( d-.) \bar "||"
    d,8.-> fis16 a8 d8.-> cis16 d8 \bar "||"
    d,8 fis8.-> a16 d8 cis8.-> d16 \bar "||"
    d,8. fis16( a8) d8. cis16( d8) \bar "||"
    %% 15
    d,8.( fis16 a8) d8.( cis16 d8) \bar "||"
    d,8.( fis16 a8 d8. cis16 d8) \bar "||"
    d,8.( fis16-.) a8 d8.( cis16-.) d8 \bar "||"
    d,8 fis8.( a16) d8 cis8.( d16) \bar "||"
    d,8( fis8. a16) d8( cis8. d16) \bar "||"
    d,8( fis8. a16 d8 cis8. d16) \bar "||"
    d,8-.( fis8.) a16 d8-.( cis8.) d16 \bar "||"
  }
  \layout {
    indent = #0
  }
}

studyXXXIVprologII = ##f

studyXXXIV = \new Voice \relative d'' {
  \violinVoiceSettings
  \time 6/8
  \tempo "Allegro." 4=123
  \key d \major

  d8-1\f fis a d cis d | d, g b d cis d | d, fis a d cis d |
  %% 4
  a,-0 d-3 fis a b a | g e cis a g e | cis e a cis e g |
  fis b a fis d a | b' a g e cis a-0 | d-1 fis a d cis d |
  %% 10
  d, fis b d cis d | e,-2 gis b d cis d | e,-0 b'-2 cis d cis b |
  cis-3 e,-0 a-1 cis b a | gis-4 fis e d cis-4 b | a cis e  a b a |
  %% 16
  cis b a g fis e | d fis a d cis d | d, g b d cis d |
  %% 19
  d, fis a d cis d | a,-0 d-3 fis a b a | g e cis a g e |
  %% 22
  cis e a cis e g | fis b a g e a,-0 | d-1 fis a d d, d' |
  d, ees d f g f | bes c bes d c bes | a bes a c d c |
  %% 28
  ees, f ees g f ees | d ees d f g f | bes c bes d c bes |
  %% 31
  a bes a c d c | d, ees d c-4 bes a | g bes d g fis g |
  g, c ees g fis g | g, bes d g fis g | d,-0 g-1 bes d ees d |
  %% 37
  ees d e d fis d | g d g d gis d | a' e cis a cis e |
  %% 40
  a b a g fis e | d fis a d cis d | d, g b d cis d |
  %% 43
  d, fis a d cis d | a,-0 d-3 fis a b a | g e cis a g e |
  cis e a cis e g | fis b a fis d a | b' a g e cis a |
  %% 49
  d fis a d cis d | d, fis a c b c | b d b g d b |
  %% 52
  g b d g fis g | a,-0 d-1 fis a b a | cis b a g fis e |
  d b-1 a g fis e | d4 r8 r4. \bar "|."
}

studyXXXVprologI = ##f
studyXXXVprologII = ##f
studyXXXV = \new Voice \relative g {
  \violinVoiceSettings
  \time 3/4
  \tempo "Allegro." 4=123
  \key c \major

  \partial 4 \tuplet 3/2 {g8\downbow\f( a b} |
  %% 1
  c4-.) \tuplet 3/2 4 {c8( d_4 c b c d_4} |
  %% 2
  c4-.) g-. c-.-1 | e-.-3 \tuplet 3/2 4 {e8( f e d e f} |
  \omit TupletNumber
  %% 4
  e4-.) g-. c-. | a-. \tuplet 3/2 4 {c,8( d e f e d} |
  c4-.) f-. a-. | g-. \tuplet 3/2 4 {e'8( f e d e f} |
  e4-.) g-. c-. | b-. \tuplet 3/2 4 {g,8( a b c b a} |
  %% 10
  g4-.) g'-. f-. | e-. \tuplet 3/2 4 {c,8( d e f e d} |
  c4-.) b'-. c-. | a-. \tuplet 3/2 4 {d,8-0( e fis g fis e} |
  d4-.) d'-. c-. | b-. \tuplet 3/2 4 {b8( g' f d b g} |
  %% 16
  f4-.) \tuplet 3/2 4 {f8( d b g a b} |
  %% 17
  c4-.) \tuplet 3/2 4 {c8( d_4 c b c d} |
  %% 18
  c4-.) g-. a-.-1 | e'-.-3 \tuplet 3/2 4 {e8( f e d e f} |
  e4-.) g-. c-. | a-. \tuplet 3/2 4 {c,8( d e f e d} |
  c4-.) f-. a-. | g-. \tuplet 3/2 4 {e'8( f e d e f} |
  %% 24
  e4-.) g-. c-. | a-. \tuplet 3/2 4 {d,,8-2( cis d e d cis} |
  d4-.) fis-. a-. | b-. \tuplet 3/2 4 {d,8-0( e fis g fis e} |
  d4-.) d'-. b'-. | a-. \tuplet 3/2 4 {c,8( d c b c b} |
  %% 30
  c4-.) b'-. a-. | g-. \tuplet 3/2 4 {g,8( fis g a_4 g fis} |
  g4-.) b,-. e-. | d-.-0 \tuplet 3/2 4 {c'8( b d c b d} |
  %% 34
  c4-.) fis-. a-. | b-. \tuplet 3/2 4 {g,8( fis a_4 g fis a} |
  g4-.) b,-. e-. | d-. \tuplet 3/2 4 {c'8( b d c b d} |
  %% 38
  c4-.) a,-. e'-. | d-. \tuplet 3/2 4 {b'8( a c b a c} |
  b4-.) d-. g-. | b-. \tuplet 3/2 4 {f8( e g f e g} |
  f4-.) a-. g-. | e-. \tuplet 3/2 4 {c8( b d c b d} |
  c4-.) e,-. a-.-4 | fis-. \tuplet 3/2 4 {d'8( cis e-4 d cis e} |
  %% 46
  d4-.) e,-. fis-. | g-. \tuplet 3/2 4 {g8( fis a_4 g fis a} |
  %% 48
  g4-.) b,-. e-. | d-. \tuplet 3/2 4 {c'8( b d c b d} |
  %% 50
  c4-.) fis-. a-. | b-. \tuplet 3/2 4 {g,8( fis a_4 g fis a} |
  %% 52
  g4-.) b,-. e-. | d-. \tuplet 3/2 4 {c'8( b d c b d} |
  c4-.) a,-. e'-. | d-. \tuplet 3/2 4 {b'8( a c b a c} |
  b4-.) d-. g-. | b-. \tuplet 3/2 4 {f8( e g f e g} |
  f4-.) a-. g-. | e-. \tuplet 3/2 4 {c8( b d c b d} |
  %% 60
  c4-.) e,-. a-.-4 | fis-. \tuplet 3/2 4 {d'8( cis e-4 d cis e} |
  d4-.) e,-. fis-. | g-. \tuplet 3/2 4 {g'8( fis a g fis a} |
  %% 64
  g4-.) \tuplet 3/2 4 {f8( d b g f d} |
  %% 65
  c4-.) \tuplet 3/2 4 {c8( d_4 c b c d} | c4-.) g-. c-.-1 |
  %% 67
  e-. \tuplet 3/2 4 {e8( f e d e f} | e4-.) g-. c-. |
  a-. \tuplet 3/2 4 {c,8( d e f e d} | c4-.) f-. a-. |
  %% 71
  g-. \tuplet 3/2 4 {e'8( f e d e f} | e4-.) g-. c-. |
  a-. \tuplet 3/2 4 {f8( g f e f g} | f4-.) a,-.-0 d-.-3 |
  %% 75
  c-. \tuplet 3/2 4 {g8( a_4 g fis g a} | g4-.) e-. c-. |
  g-. \tuplet 3/2 4 {f'8( g f e f g} | f4-.) a,-. b-. |
  %% 79
  c-. \tuplet 3/2 4 {c8( b c d-4 c b} |
  c4-.) \tuplet 3/2 4 {c8( b a g a b} |
  %% 81
  c4-.) \tuplet 3/2 4 {c8( d_4 c b c d} | c4-.) g-. c-.-1 |
  e-.-3 \tuplet 3/2 4 {e8( f e d e g} | e4-.) c-. e-. |
  %% 85
  g-. \tuplet 3/2 4 {g8( a b c b a} | g4-.) a-. b-. |
  c-. \tuplet 3/2 4 {e8( dis e f b d} |
  c4-.) \tuplet 3/2 4 {e,8( dis e f b d} |
  c4-.) \tuplet 3/2 4 {c8( b c d c b} | c4-.) g,,-.-0 e'-.-3 |
  c-.-1 \tuplet 3/2 4 {c''8( b c d c b} | c4-.) g,,-.-0 e'-.-3 |
  c-.-1 \tuplet 3/2 4 {c8( d e f e d} |
  c4-.) \tuplet 3/2 4 {c8-3( b a g a b} |
  c4-.) \tuplet 3/2 4 {c8( b c d-4 c b} | c4-.) r r \bar "|."
}

studyXXXVIprologI = ##f
studyXXXVIprologII = ##f
studyXXXVI = \new Voice \relative d' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Moderato." 4=111
  \key d \major

  d8-0\f fis a-0 d-1 fis a | d a fis d a-0 fis-2 | d g-1 b d g b |
  d a fis d a-0 fis-2 | e g b e g b | a fis d a fis d |
  %% 7
  a b cis d e fis | g a b e a g | fis g a-1 b cis d |
  e,-2 fis g a b cis | d,-1 e fis g a b | a fis d a-0 fis-2 d |
  %% 13
  e fis g a b cis | d e fis g a-1 b | cis-3 d-4 cis b a g-2 |
  fis a, b cis d e | fis g a-1 b cis d | e,-2 fis g a b cis |
  %% 19
  d,-1 e fis g a b | a fis d a-0 fis-2 d | b cis d e fis gis |
  %% 22
  a b cis d e fis | gis a-1 b cis d b | a e-0 cis a gis fis |
  \repeat unfold 2 {
    e gis b d gis b | a e cis a gis fis |
  }
  e fis e d cis b | a cis e a-4 gis fis |
  e gis b d cis b | a b a g fis e | d fis a d-1 fis a |
  %% 34
  d a fis d a-0 fis | d-0 g-1 b d g b | d a fis d a-0 fis-2 |
  e g b e-0 g b | a fis d a fis d | a b cis d e fis |
  %% 40
  g a cis e a g | fis g a-1 b cis d | e,-2 fis g a b cis |
  d,-1 e fis g a b | a fis d a-0 fis-2 d | g, b e g b e-4 |
  %% 46
  a,, cis e a cis a' | d,, fis a-0 d-1 fis a | d4 r r \bar "|."
}

studyXXXVIIprologI = ##f
studyXXXVIIprologII = ##f
studyXXXVII = \new Voice \relative b {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato." 4=111
  \key bes \major

  bes8\downbow\f c d ees f g-1 a bes | a16( bes a g) a8 bes c2 |
  %% 3
  a8 bes c d ees f g a | bes16( c bes a) bes8 c d2 |
  bes8 a g f ees d c bes | c16( d c b) c8 d-1 ees2 |
  %% 7
  f16( g f e) f8 ees d( ees) g, a | c2( bes8) a g f |
  %% 9
  e( f) g a bes16( c bes a) bes8 g | a8( c) f a c16( d c b) c8 a |
  bes( a) g f e( d) c bes | a16( bes a g) a8 bes c( a) g f |
  %% 13
  e( f) g a bes16( c bes a) bes8 g | a8( c) e16( f g f) e8 d c bes |
  a16( bes a g) a8 c a( g) f-2 e | g2( f8) ees d c |
  bes c d ees f g-1 a bes | a16( bes a g) a8 bes c2 |
  a8 bes c d ees f g a | bes16( c bes a) bes8 c d2 |
  bes8 a g f ees d c-2 bes | c16( d c b) c8 d-1 ees2 |
  f16( g f e) f8 d f( ees) g, a | c2( bes4) r \bar "|."
}

studyXXXVIIIprologI = ##f
studyXXXVIIIprologII = ##f
studyXXXVIII = \new Voice \relative b' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Moderato." 4=111
  \key bes \major

  bes16( d-1 f bes d-.) a( c bes) | a-.-1 a( bes a) g-.-2 g( a g) |
  %% 3
  f-.-1 f( g f) ees-.-2 ees( f ees) | d-.-1 d( ees d) c-. c( d c) |
  bes( d-1 f bes d-.) a( c bes) | a-.-1 a( bes a) g-.-2 g( a g) |
  %% 7
  f-. f( g f) e d c bes | a bes c bes a g f ees | d f bes d f, bes d f |
  %% 10
  bes, d f bes d,-1 f bes d | ees,-2 g bes ees-4 bes,-1 ees g bes |
  g, bes ees g ees, g bes ees | e, g c e-4 g, c e-0 g |
  %% 14
  c, e-0 g c-4 bes, e-0 g bes | a,-0 c f a g f e d |
  c bes a g f d c bes | a c f a-4 c, f a-0 c |
  %% 18
  f, a-0 c f a,-0 c f a | d,-1 f bes c d c bes a | g-2 f e d c bes a g |
  %% 21
  f c f a c a c f | a f bes a g e a g | f a f d c f c bes |
  %% 24
  a c a g f a-4 f ees | d-0 fis-2 a d fis, a-0 d fis |
  a, d fis a d,-1 fis a d | bes d bes a g-2 bes g d |
  %% 28
  bes d bes a g f e d | c e g c e, g c e-4 | g, c e-0 g bes, e-0 g bes |
  %% 31
  a c-4 a g f a f c | a c a g f a c f-3 |
  ees-.-2 ees( f ees) d-. d( ees d) | c-2 bes a g f a c f-3 |
  %% 35
  ees-.-2 ees( f ees) d-. d( ees d) | c-2 bes a g f f( g f) |
  %% 37
  ees-. ees( f ees) d-. d( ees d) | c-. c( d-4 c) bes d f bes |
  g c ees g a g f ees | d f ees d c ees d c |
  %% 41
  \repeat volta 2 {
    bes( d-1 f bes d-.) a( c bes) | a-.-1 a( bes a) g-.-2 g( a g) |
    f-.-1 f( g f) ees-.-2 ees( f ees) | d-.-1 d( ees d) c-.-2 c( d c) |
  }
  bes d f bes d,, f bes d | f, bes d f a, c ees a |
  bes, d f bes d,, f bes d | f, bes d f a, c ees a |
  bes, d g f e f g a | bes f d bes a f g a | bes d g f e f g a |
  bes f d bes a f ees c | bes 4 r | R2 | <f'-2 ees'-4 f-1>4 \downbow r |
  R2 | <bes, f' d' bes'>4\downbow r8. bes16\upbow | bes4\downbow bes\upbow |
  bes2~\downbow | bes4 r \bar "|."
}

studyXXXIXprologI = ##f
studyXXXIXprologII = ##f
studyXXXIX = \new Voice \relative g {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato." 4=111
  \key c \major

  g4\downbow( a8 b) c\upbow( e g c) | b\downbow( d-1 f b) d2\upbow |
  %% 3
  d4( b8 g-4 f d-3 b f) | a-4( g e c g2) | g4( a8 b c e g c) |
  %% 6
  a( d f a-1 d2) | b8( g-4 f d e c-2 g e) | d( g b a g d-0 b a) |
  %% 9
  g4( a8 b c e g c) | b( d-1 f b d2) | d4( b8 g f d-3 b f) |
  %% 12
  a-4( g e c g2) | a4( b8 cis d f a d) | b( g a b c e g c-3) |
  b( d c b a c b a) | g-4( e d b-1 g b, e d) |
  %% 17
  c( a'-4 fis e'-4 d fis a c-4) | b-4( g d b g b, e d) |
  c( a'-4 fis e'-4 d fis a-3 c-4) | b-4( g d b g d e f) |
  %% 21
  e( gis b d c e a c-4) | a-3( fis d c b d g b-2) |
  a( d cis b a e-2 g fis) | d( d' a fis d a-0 fis a-4) |
  %% 25
  d,( e'-4 d cis c b' a c,) | b( e-4 d d,-0 g b d ees,) |
  %% 27
  d( e'-4 d cis c b' a c,) | b( e-4 d d, g b e-4 d) |
  %% 29
  b( d-1 g-4 f e g f g,-1) | c-4( e g c b d c e,-2) |
  d( g b d c a fis d) | b'( g-4 d b-3 g-1 g, b e) |
  d( e'-4 d cis c b' a c,) | b( e-4 d d, g b d ees,) |
  d( e'-4 d cis c b' a c,) | b( e-4 d d, g b e-4 d) |
  b( d-1 g f e g f g,-1) | c( e g c b d c e,-2) |
  d( g b d c a fis d) | b'( g-4 d b-3 g2) | g,4( a8 b c e g c) |
  b( d-1 f b d2) d4( b8 g f d-3 b f) | a-4( g e c g2) |
  g4( a8 b c e g c) | a( d f a-1 d4. a8) | b8( g-4 f d b-1 g f d) |
  b( g b d f a-4 g b,) | c( e g-1 c e g c b) | a( f d e f d b-3 g,-0) |
  c-1( e g c e g c b) | a( f d e f d b-3 g,-0) | c-3( g c e g e g c) |
  e-4( g, c e-0 g e g c-3) | d-4( c g-4 e c-2 g e g,) | c2. r4 \bar "|."
}

studyXLprologI = \markup \columns {
  \column {
    \pad-around #1. {
      \wordwrap { Springing bow (ricochet). }
    }
  }
  \column {
    \pad-around #1. {
      \wordwrap {Springender Bogen.}
    }
  }
}
studyXLprologII = ##f
studyXL = \new Voice \relative b'' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Allegro scherzando." 4=123
  \key g \major

  \partial 8 b16-.\downbow( b-.) |
  b8-. g16-.( g-.) g8-. d16-.( d-.) |
  d8-. b16-.( b-.) b8-. g'16-.( g-.) |
  g8-. d16-.( d-.) d8-. b16-.( b-.) |
  %% 4
  b8-. g16-.( g-.) g8-. fis16-.( e-.) |
  d8-. d'16-.( d-.) d8-. fis,16-.( e-.) |
  d8-. d'16-.( d-.) d8-. fis,16-.( e-.) |
  d8-. d'16-.-1( d-.) d8-. d'16-.( d-.) |
  d8-. d,16-.-1( d-.) d8-. b'16-.-2( b-.) |
  b8-. g16-.-2( g-.) g8-. d16-.( d-.) |
  d8-. b16-.( b-.) b8-. g'16-.( g-.) |
  %% 11
  g8-. d16-.( d-.) d8-. b16-.( b-.) |
  b8-. g16-.( g-.) g8-. a16-.( b-.) |
  %% 13
  c8-. e16-.( e-.) e8-. fis16-.( e-.) |
  d8-. d'16-.( d-.) d8-. a16-.( b-.) |
  c8-. d,16-.( d-.) d8-. e16-.( fis-.) |
  g8-. g,16-.-1( g-.) g8-. a16-.( b-.) |
  %% 17
  c8-. e16-.-2( e-.) e8-. fis16-.( e-.) |
  d8-. d'16-.( d-.) d8-. a16-.( b-.) |
  c8-. a,16-.-2( a-.) a8-. a16-.( b-.) |
  %% 20
  c8-.-4 d,16-.-0( d-.) d8-. b'16-.-1( b-.) |
  b8-. g16-.-3( g-.) g8-. d16-.-4( d-.) |
  d8-. b16-.( b-.) b8-. g'16-.( g-.) |
  g8-. d16-.-4( d-.) d8-. b16-.( b-.) |
  b8-. g16-.( g-.) g8-. a16-.( b-.) |
  %% 25
  c8-. fis16-.( g-.) a8-.-4 d16-.( c-.) |
  b8-. e16-.-4( e-.) e8-. c16-.( b-.) |
  a8-. d16-.( d-.) d8-. b16-.( a-.) |
  b8-. d,16-.-4( d-.) d8-. a16-.-1( b-.) |
  c8-. fis16-.( g-.) a8-.-4 d16-.( c-.) |
  %% 30
  b8-. e16-.-4( e-.) e8-. c16-.( b-.) |
  a8-. d16-.( d-.) d8-. b16-.( a-.-0) |
  g8-. g16-.( fis-.) e8-. g16-.( a-.) |
  b8-. g16-.( fis-.) e8-. g16-.-1( a-.-0) |
  b8-. g'16-.( fis-.) e8-.-0 g16-.( a-.) |
  %% 35
  b8-. g16-.( fis-.) e8-.-0 g16-.( a-.) |
  \repeat percent 2 {
    b8-. b,16-.( b-.) dis8-.-3 fis16-.( fis-.) |
  }
  \repeat unfold 2 { b8-. fis16-.( fis-.) } |
  b8-. b,16( b-.) b8-. b'16-.( b-.) |
  %% 40
  b8-. g16-.( g-.) g8-. e16-.-4( e-.) |
  e8-. b16-.( b-.) b8-. g'16-.( g-.) |
  g8-. e16-.-4( e-.) e8-. b16-.( b-.) |
  b8-. g16-.( g-.) g8-. fis16-.( e-.) |
  d8-. fis16-.( g-.) a8-. b16-.( c-.) |
  %% 45
  d8-. e16-.( fis-.) g8-. fis16-.( e16-.) |
  d8-. c16-.( b-.) a8-.-0 b16-.( a-.) |
  g8-. fis16-.( e-.) d8-.-0 b''16-.( b-.) |
  b8-. g16-.( g-.) g8-. d16-.( d-.) |
  d8-. b16-.( b-.) b8-. g'16-.( g-.) |
  %% 50
  g8-. d16-.( d-.) d8-. b16-.( b-.) |
  b8-. g16-.( g-.) g8-. fis16-.( e-.) |
  d8-.-0 fis16-.( g-.) a8-.-0 b16-.( c-.) |
  d8-. e16-.-0( fis-.) g8-. fis16-.( e-.-4) |
  d8-. c16-.( b-.) a8-. b16-.( a-.) |
  %% 55
  g8-. g,16-.( g-.) g8-. g''16-.( g-.) |
  g8-. d16-.( d-.) d8-. b16-.( b-.) |
  b8-. g16-.( g-.) g8-. b16-.( b-.) |
  b8-. g16-.( g-.) g8-. d16-.-4( d-.) |
  d8-. b16-.( b-.) b8-. g'16-.( g-.) |
  g8-. d16-.-4( d-.) d8-. b16-.( b-.) |
  \repeat percent 2 {
    g8-. b16-.( b-.) d8-.-4 b16-.( b-.) |
  }
  g8 r <g d' b' g'>-\markup{"pizz."} r \bar "|."
}

studyXLIprologI = ##f
studyXLIprologII = ##f
studyXLI = \new Voice \relative a'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key d \major

  \partial 4 a4_3\downbow( |
  b8 a fis d a fis d) a( | d fis a d fis a-1 d) a( |
  %% 3
  b a fis-3 d a-0 fis d) a( | d fis a d fis a-1 d) a( |
  b a g-4 e cis-2 a g) a,( | cis e g a cis e a) a( |
  b a g e cis a g) a,( | cis e g b a cis e) g( |
  %% 9
  b a fis d a fis d) a( | d fis a d fis a-1 d) c( |
  %% 11
  b fis dis b-1 a fis dis-4) a( | g b e g b e g) b-2( |
  a d a fis d a-0 fis) d( | cis e g b a g' fis) e( |
  %% 15
  fis b a fis d a fis) d( | a cis e a cis e a) a( |
  b a fis d a fis d) a( | d fis a d fis a-1 d) a( |
  b a fis d a-0 fis d) a( | d fis a d fis a-1 d) a( |
  %% 21
  b a g-4 e cis-2 a g) a,( | cis e g a cis e a) a( |
  b a g e cis a g) a,( | cis e g b a cis e) g( |
  b a fis d a fis d) a( | d fis a d fis a-1 d) cis( |
  b g d b-1 g d b) g( | b d g b d g b-2) cis( |
  %% 29
  d a fis d a-0 fis d) a( | cis e g b a cis fis-3) e( |
  %% 31
  d b' a fis d b-1 a) fis( | d fis a fis' b a fis) d( |
  cis e a-1 b cis b a) e-0( | d'-4 b gis-2 e d b gis) e( |
  %% 35
  cis e a b cis b a) fis'( | e d b gis e d cis) b( |
  a cis e a cis b a) a,( | d fis a d-1 fis e d) fis( |
  %% 39
  e cis' a e-0 d-3 b gis) e( | cis' a e cis a) r r e''-0\downbow( |
  d'-4 b gis-2 e d b gis) e( | cis e a b cis b a) e'-0( |
  %% 43
  d'-4 b gis-2 e d b gis) e( | cis e a b cis b a) e( |
  cis e a b cis b a) a,( | d fis a d fis e d) fis( |
  %% 47
  e cis' a e-0 d-3 b gis) e( | cis e a b cis b a) a'( |
  b a fis d a fis d) a( | d fis a d fis a-1 d) a( |
  %% 51
  b a fis d a-0 fis d) a( | d fis a d fis a-1 d) a( |
  b a g-4 e cis-2 a g) a,( | cis e g a cis e a) a( |
  %% 55
  b a g e cis a g) a,( | cis e g b a cis e) g( |
  b a fis d a fis d) a( | d fis a d fis a-1 d) d,-1( |
  %% 59
  b' g d b-1 g d b) g( | b d f gis b d f) gis( |
  b a fis d a fis d) a( | cis e g b a cis fis-3) e( |
  d d' a fis d b-1 a) fis( | d d'-1 fis a d) r8 r4 \bar "|."
}

studyXLIIprologI = ##f
studyXLIIprologII = ##f
studyXLII = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Andante." 4=99
  \key c \major

  c4\mf\downbow( \grace { d16_\dolce c b} c8 e-4) g,( e f a-4) |
  g4( \grace {a16 g fis} g8 c) e,2 |
  %% 3
  g4( \grace {a16-4 g fis} g8 c) a-4( g e c) | c2( b4) r |
  %% 5
  f'4\downbow( \grace {g16 f e} f8 a-4) b,( d f a-4) |
  g8\<( b d-1 f) b2 | d4-4~\f d16 b( g-4 f d b-1 g f d b a'-4 g) |
  f4~( f16\> e g f) e4\! r |
  %% 9
  c'4\mf\downbow( \grace {d16 c b} c8 e-4) g,( e f a-4) |
  %% 10
  g4( \grace {a16 g fis} g8 c) e,2 | c8^(\(\< g c-1 e)\! f^( e d c)\) |
  b'2->-3( a4) r | g4.-1( b8) d( f b d) |
  %% 14
  e,4( \grace {f16 e dis} e8 g) c4.( e,8) | d( f b a) g( f a,-2 b) |
  c2-4 c,-1 | d4-2( \grace {e16 d cis} d8 fis) a( c d fis) |
  %% 18
  g( d b' g) d'2 | c4( \grace {b16 c d} c8) a( fis-1 d c a) |
  %% 20
  e'4-4( \grace {cis16 d e} d8 b) g2 |
  d4-4( \grace {b16 c d} c8 a) c\<( d fis e'-4) |
  d4( \grace {e16 d cis\!} d b d-1 g) b2 |
  c4( \grace {b16 c d} c8 ees,) d( fis b fis-1) |
  %% 24
  g4( \grace{a16 g fis} g8_\rit gis) b\>( a f d\!) |
  c4-\aTempo( \grace{d16 c b} c8 e-4) g,( e f a-4) |
  %% 26
  g4( \grace {a16 g fis} g8 c) e,2 |
  g4( \grace {a16 g fis} g8 c) a-4( g e c) | c2( b4) r |
  %% 29
  f'4\downbow( \grace {g16 f e} f8 a-4) b,( d-0 f a-4) |
  g\<( b d-1 f) b2 | d4\f~ d16 b( g-4 f d b-1 g f d b a'-4 g) |
  f4~( f16\> e g f) e4\! r |
  %% 33
  c'\mf( \grace {d16 c b} c8 e-4) g,( e g c) |
  d4( \grace {e16 d cis} d8 f) a( gis b a) |
  g4( \grace {a16 g fis} g8 c-4) g( f d b) |
  d2( c8) a-4( g f) |
  e4( \grace {a16 g fis} g8 e) c'4( \grace {d16 c b} c8 e-4) |
  d4( \grace {e16 d cis} d8 a-0) a'2-4\flageolet |
  e4-2( \grace { f16 e dis} e8 g) f4-3( \grace {g16 f e} f8 b) |
  d2( c4) r \bar "|."
}

studyXLIIIprologI = ##f
studyXLIIIprologII = ##f
studyXLIII = \new Voice \relative e' {
  \violinVoiceSettings
  \time 6/8
  \tempo "Moderato." 4=111
  \key ees \major

  ees16\downbow\(( bes g bes ees g) bes\upbow_( ees-4 d ees bes g)\) |
  ees\(( bes g bes ees g) bes_( ees d ees bes g)\) |
  ees\( bes g bes ees g bes ees-2 d ees g-4 ees\) |
  %% 4
  a\( bes ees-4 a, c bes g-4 ees bes-1 g f ees\) |
  d\( f aes d f aes g ees bes g f ees\) |
  d\( f aes d f aes g ees bes g ees g\) |
  f\( bes d-1 f bes d c bes a g f ees\) |
  d\( f g f ees d c-2 bes aes g aes f\) |
  %% 9
  \repeat percent 2 {
    ees\( bes g bes ees g bes ees d ees bes g\) |
  }
  ees\( bes g bes ees g bes ees-2 d ees g ees\) |
  %% 12
  a\( bes ees-4 a, c bes g ees bes-1 g f ees\) |
  f\( a c f g a-1 bes d bes f-3 d bes-1\) |
  %% 14
  g\( b d g a-1 b c ees-4 c g-4 ees c-2\) |
  a\( c ees-2 a-1 c ees-4 d-4 bes f-3 d bes-3 a\) |
  g\( c bes a g a bes d,-0 f bes c d-1\) |
  ees\( f g f ees d c-2 d ees d c bes\) |
  a-0\( bes c bes a g f a c f-3 bes c\) |
  d\( cis d bes a c bes f-3 e g f d\) |
  %% 20
  bes-1\( a c bes f d bes d f bes c d-1\) |
  ees\( f g f ees d c-2 d ees d c bes\) |
  a\( bes c bes a g f a c f bes-2 c\) |
  d\( cis d bes a c bes f-3 e g f d\) |
  bes-1\( a c bes f d bes d f bes d f\) |
  aes\( g bes aes e f aes g bes aes e f\) |
  %% 26
  aes\( g bes aes f d bes c bes aes g f\) |
  ees\( bes g bes ees g bes ees d ees bes g\) |
  ees\( g bes ees g c-3 bes a c bes g-4 ees\) |
  %% 29
  bes-1\( g' bes aes e f aes g bes aes e f\) |
  aes\( g bes aes f d bes c bes aes g f\) |
  ees\( bes g bes ees g bes ees-2 d ees g bes\) |
  %% 32
  d\( c f,-1 g aes f d c bes aes g f\) |
  \repeat percent 2 {
    ees\( bes g bes ees g bes ees d ees bes g\) |
  }
  ees\( bes g bes ees g bes ees-2 d ees g ees\) |
  %% 36
  a\( bes ees-4 a, c bes g ees bes-1 g f ees\) |
  d\( f aes d f aes g ees bes g f ees\) |
  d\( f aes d f aes g ees bes g ees g\) |
  f\( bes d-1 f bes d c bes a g f ees\) |
  %% 40
  d\( f g f ees d c-2 bes aes g aes f\) |
  ees\( bes g bes ees g bes ees d ees bes g\) |
  ees\( bes g bes ees g bes ees d ees bes g\) |
  %% 43
  ees\( bes g bes ees g bes ees-2 d-1 aes'-4 g-4 ees\) |
  d\( aes'-4 g-4 ees d aes'-4 g-4 ees d aes'-4 g-4 ees\) |
  %% 45
  d\( ees f g aes bes c bes aes g f ees\) |
  d\( c-2 bes aes g f  ees d c bes c d\) |
  ees\( g bes d-1 ees g bes d,-1 ees g a bes\) |
  ees-4\( bes-2 g-4 ees d f ees bes-1 g ees d f\) |
  %% 49
  ees8 r <bes' g'>\downbow( <g ees'>) r8 <bes g'>\downbow( |
  <g ees'>8-.) r2 <g bes,>8\downbow( |
  <ees g,>8) r4 <ees bes' g'>8\downbow r4 |
  <ees g,>4.~\downbow <ees g,>8 r8 r8 \bar "|."
}

studyXLIVprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative a {
    \time 4/4
    \key c \major

    \repeat unfold 3 {a8.( a16-.)} a16( b c b) \bar "||"
  }
  \layout {
    indent = #0
  }
}
studyXLIVprologII = ##f
studyXLIV = \new Voice \relative a {
  \violinVoiceSettings
  \time 4/4
  \tempo "Tempo di marcia." 4=99
  \key c \major

  a8-.[(\f\downbow r16 a16-.)] \repeat unfold 2 {a8-.[( r16 a16-.)]}
  a16( b c b) |
  %% 2
  \repeat unfold 3 {a8-.[( r16 a16-.)]} a16( b c b) |
  %% 3
  a8-.[( r16 a16-.)] a16( b c b) a8-.[( r16 b-.)] c8-.[( r16 d-.)] |
  %% 4
  e8-.[( r16 e-.)] e16( fis gis fis) e8-.[( r16 d-.)] c8-.[( r16 b-.)] |
  %% 5
  \repeat unfold 3 {a8-.[( r16 a16-.)]} a16( b c b) |
  %% 6
  d8-.-4[( r16 d-.-2)] \repeat unfold 2 { d8-.[( r16 d-.)] } d16( e f d) |
  %% 7
  e4 a16( b c a) e4-3 gis16( a b gis) |
  %% 8
  a8-.[( r16 a-.)] f8-.-2[( r16 d-.)] e8-.[( r16 d-.)] c8-.[( r16 b-.)] |
  %% 9
  \repeat percent 2 {
    \repeat unfold 3 {a8-.[( r16 a16-.)]} a16( b c b) |
  }
  %% 11
  a8-.[( r16 a16-.)] a16( b c b) a8-.[( r16 b-.)] c8-.[( r16 d-.)] |
  %% 12
  \repeat unfold 3 { e8-.[( r16 e-.)] } e16( fis gis e) |
  %% 13
  a8-.-4[( r16 a-.-2)] \repeat unfold 2 {a8-.[( r16 a-.)]} a16( b cis a) |
  %% 14
  d8-.[( r16 d-.)] f8-.[( r16 f-.)] a8-.[( r16 a-.)] d4 |
  %% 15
  e,4-2 a16( b c a) e4-2 gis,16-1( a b gis) |
  %% 16
  a4 <a-0 a'-1>8-.[( r16 <a a'>-.)] <a a'>8 r a'16-3( g f e) |
  %% 17
  f4 <d d,>8-.[( r16 <d d,>-.)] <d d,>8 r g16( f e d) |
  %% 18
  cis4 <a a'>8-.[( r16 <a a'>-.)] <a a'>8 r a16( b cis a) |
  %% 19
  d8-.[( r16 d-.)] a8-.[( r16 a-.)] f8-.[( r16 f-.)] d8-.[( r16 d-.)] |
  %% 20
  a'4-4 <a a,>8-.[( r16 <a a,>)] <a a,>8 r a'16( g f e) |
  %% 21
  f4 <d d,>8-.[( r16 <d d,>)] <d d,>8 r g16( f e d) |
  %% 22
  cis4 <a a'>8-.[( r16 <a a'>-.)] <a a'>8 r a16( b cis a) |
  %% 23
  d8-.[( r16 d-.)] a8-.[( r16 a-.)] f8-.[( r16 f-.)] d8-.[( r16 d-.)] |
  %% 24
  a4 <a' a'>8-.[( r16 <a a'>-.)] <a a'>8-.[( r16 a'-.)] a8-.[( r16 a-.)] |
  %% 25
  a8-.-1[( r16 a-.)] a8-.[( r16 a-.)] a8-.[( r16 bes-.)] c8-.[( r16 d-.)] |
  %% 26
  c8-.[( r16 c-.)] g8-.-4[( r16 g-.)] e8-.[( r16 e-.)] c8-.-2[( r16 bes-.)] |
  %% 27
  a8-.[( r16 a-.)] c8-.[( r16 c-.)] f8-.[( r16 f-.]) a8-.[( r16 a-.)] |
  %% 28
  g8-.[( r16 g-.)] e8-.[( r16 e-.)] c8-.[( r16 g-.]) f8-.[( r16 e-.)] |
  %% 29
  d8-.[( r16 g-.)] b8-.[( r16 d-.-1)] f8-.[( r16 b-.)] d8-.[( r16 f,-.-3)] |
  %% 30
  e8-.[( r16 g-.)] c8-.[( r16 e,-.)] d8-.[( r16 f-.)] b8-.[( r16 a-.)] |
  %% 31
  g4-2 b,16-1( c d e) f4 fis,16( g a b) |
  %% 32
  c4 c,16( b c b) c8-.[( r16 e-.)] f8-.[( r16 g-.)] |
  %% 33
  \repeat unfold 2 {a8-.[( r16 a-.)]} a8-.[( r16 b-.)] c8-.[( r16 d-.-1)] |
  %% 34
  e8-.[( r16 c'-.)] g8-.-4[( r16 e-.)] c4-2 b16( c d e) |
  %% 35
  f8-.[( r16 g-.]) a8-.-1[( r16 b-.)] d8-.[( r16 c-.)] b8-.[( r16 a-.)] |
  %% 36
  g8-.-2[( r16 e-.)] c8-.[( r16 e-.-4)] g,4 b,16( c d e) |
  %% 37
  f8-.[( r16 b-.]) d8-.[( r16 f-.)] b4 f16( d b f) |
  %% 38
  e8-.[( r16 c'-.)] e8-.[( r16 g-.)] c4-3 c16-3( b d c) |
  %% 39
  a8-.[( r16 a-.)] f8-.-3[( r16 d-.)] b8-.-3[( r16 g-.]) a8-.[( r16 b-.)] |
  %% 40
  c8-.[( r16 c,-.-1)] c8-.[( r16 c-.)] c8-.-3[( r16 c-.]) c8-.[( r16 b-.)] |
  %% 41
  \repeat percent 2 {
    \repeat unfold 3 {a8-.[( r16 a16-.)]} a16( b c b) |
  }
  %% 43
  a8-.[( r16 a16-.)] a16( b c b) a8-.[( r16 b-.)] c8-.[( r16 d-.)] |
  %% 44
  e8-.[( r16 e-.)] e16( fis gis fis) e8-.[( r16 d-.)] c8-.[( r16 b-.)] |
  %% 45
  \repeat unfold 3 {a8-.[( r16 a16-.)]} a16( b c b) |
  %% 46
  d8-.-4[( r16 d-.-2)] \repeat unfold 2 { d8-.[( r16 d-.)] } d16( e f d) |
  %% 47
  e4 a16( b c a) e4 gis16( a b gis) |
  %% 48
  a4 <a-0 a'-3>8-.[( r16 <a a'>)] <a a'>8 r8 r4 \bar "|."
}

studyXLVprologI = ##f
studyXLVprologII = ##f
studyXLV = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato." 4=111
  \key c \major

  c4->\f b16-.( a-. g-. f-. e2) | a4->-4 g16-.( f-. e-. d-. c2) |
  %% 3
  e4-> d16-.-4( c-. b-. a-. g2) |
  c8-> d16-.-0( e-. f-. g-. a-. b-. c2) |
  f16( g) a-.( g-. f-. e-. d-. c-. b2) |
  c16( d) e-.-4( d-. c-. g-. e-. c-. g2) |
  b16( a) g-.( a-. b-. c-. d-. e-.) f( e) d-.( e-. f-. g-. a-. b-.) |
  c8 b16-.( a-. g-. f-. e-. d-. c2) |
  e8 fis16-.( gis-. a-. b-. c-. d-. e2-4) |
  c16( a) b-.( c-. d-. e-. fis-. gis-. a2) |
  %% 11
  d,,8 e16-.( fis-. g-. a-. b-. c-. d2) |
  b16( g) a-.( b-. c-. d-. e-. fis-. g2) |
  g,,8-> a16-.( b-. c-. d-. e-. f-. g2) |
  e8 f16-.( g-. a-. b-. c-. d-. e2-4) |
  a16( g) f-.( e-. d-. c-. b-. a-. g-. f-. e-. d-. c-. b-. a-. g-.) |
  %% 16
  \tuplet 3/2 4 {c8-> e-.( g-. c-. e-. g-.} c2-4) |
  %% 17
  \tuplet 3/2 4 {a,,8-> cis-.( e-.  a-. cis-. e-.-0} g2) |
  %% 18
  \tuplet 3/2 4 {f8-> a-.( f-. d-. a-. f-.} d2) |
  %% 19
  \tuplet 3/2 4 {g,8-> b-.( d-. g-. b-. d-.} f2) |
  \tuplet 3/2 4 {e8-> g-.( e-. c-. g-. e-.} c2) |
  \tuplet 3/2 4 {bes8-> e-.( g-. bes-. e-.-0 g-.} bes2) |
  \tuplet 3/2 4 {a8-> c-.-4( a-. f-. c-. a-.} f2) |
  %% 23
  e16( g) c-.( b-. a-. g-. f-. e-.) d( f) b-.( a-. g-. f-. e-. d-.) |
  c8-> d16-.( e-. f-. g-. a-. b-. c2) \bar "|."
}

studyXLVIprologI = ##f
studyXLVIprologII = ##f
studyXLVI = \new Voice \relative a {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key a \major

  \tuplet 3/2 4 {a8( gis a cis bis cis) e( dis e a_4 gis a_4)} |
  %% 2
  \tuplet 3/2 4 {cis( bis cis e-4 dis e-4)} a2 |
  \omit TupletNumber
  %% 3
  \tuplet 3/2 4 {a,,8( gis a d-4 cis d-4) fis( eis fis a-4 gis a-4)} |
  %% 4
  \tuplet 3/2 4 {d( cis d fis eis fis)} a2 |
  %% 5
  \tuplet 3/2 4 {gis8( fis gis e fis gis) a( e-0 a-1 cis a cis)} |
  %% 6
  \tuplet 3/2 4 {e_4\flageolet( e,-0 fis gis fis gis) a( e a-1 cis a cis)} |
  %% 7
  \tuplet 3/2 4 {e\flageolet( e,-0 fis gis fis e) a( e-0 cis e-4 cis a)} |
  %% 8
  \tuplet 3/2 4 {e( gis b e-4 b gis) e( fis e d cis b)} |
  %% 9
  \tuplet 3/2 4 {a( gis a cis bis cis) e( dis e a-4 gis a)} |
  %% 10
  \tuplet 3/2 4 {cis( bis cis e-4 dis e)} a2 |
  %% 11
  \tuplet 3/2 4 {a,,8( gis a cis bis cis) fis( eis fis a-4 gis a)} |
  %% 12
  \tuplet 3/2 4 {cis( bis cis fis eis fis)} a2 |
  %% 13
  \tuplet 3/2 4 {b,8( ais b dis fis a) gis( fisis gis cis-3 b ais)} |
  %% 14
  \tuplet 3/2 4 {b( dis cis b a fis-3) e( gis fis e dis cis-2)} |
  %% 15
  \tuplet 3/2 4 {b( ais b dis fis a) gis( fisis gis b-2 ais b)} |
  %% 16
  \tuplet 3/2 4 {dis( a cis b a fis-3) e( dis fis e gis b)} |
  %% 17 / 18
  \repeat percent 2 {
    \tuplet 3/2 4 {
      e\flageolet( cis-3 ais fis-3 eis fis) gis( fis dis fis b dis)} |
  }
  %% 19
  e4\flageolet \tuplet 3/2 4 {e,8-2( dis e g fis g b ais b)} |
  %% 20
  e4\flageolet \tuplet 3/2 4 {e,8-2( dis e g fis g c b c)} |
  %% 21
  e4\flageolet \tuplet 3/2 4 {e,8-2( dis e g fis g b ais b)} |
  %% 22
  \tuplet 3/2 4 {e\flageolet( cis-3 ais-1 g-4 e cis-2) ais-4( e fis g fis e)} |
  %% 23
  \tuplet 3/2 4 {dis( fis a cis b ais) b( dis-1 fis b ais b)} |
  %% 24
  \tuplet 3/2 4 {c-3( b a fis-3 dis b-3) c( b ais b c dis,-2)} |
  %% 25
  \tuplet 3/2 4 {e-3( dis e gis cis b) a( gis a dis gis e)} |
  %% 26
  \tuplet 3/2 4 {e( dis e gis, cis b) a( gis a dis gis fis)} |
  %% 27
  \repeat percent 2 {
    \tuplet 3/2 4 {e( dis e b gis b e dis e f e dis)} |
  }
  %% 29
  \tuplet 3/2 4 {e( dis e f e dis e dis e f e dis)} |
  %% 30
  \tuplet 3/2 4 {e( b-1 gis e dis e gis fis e d cis b)} |
  %% 31
  \tuplet 3/2 4 {a( gis a cis bis cis e dis e a-4 gis a)} |
  %% 32
  \tuplet 3/2 4 {cis( bis cis e-4 dis e} a2) |
  %% 33
  \tuplet 3/2 4 {a,,8( gis a d-4 cis d fis eis fis a-4 gis a)} |
  %% 34
  \tuplet 3/2 4 {d( cis d fis eis fis} a2) |
  %% 35
  \tuplet 3/2 4 {gis8( fis gis e fis gis) a( e a-1 cis a cis)} |
  %% 36
  \tuplet 3/2 4 {e\flageolet( e,-0 fis gis fis gis) a( e a-1 cis a cis)} |
  %% 37
  \tuplet 3/2 4 {e\flageolet( e,-0 fis gis fis e) a( e cis e-4 cis a)} |
  %% 38
  \tuplet 3/2 4 {e( gis b e-4 b gis) e( fis e d cis b)} |
  %% 39
  \tuplet 3/2 4 {a( gis a cis bis cis e dis e a-4 gis a)} |
  %% 40
  \tuplet 3/2 4 {cis( bis cis e-4 dis e} a2) |
  %% 41
  \tuplet 3/2 4 {a,,8( gis a cis bis cis fis eis fis a-4 gis a)} |
  %% 42
  \tuplet 3/2 4 {cis( bis cis fis eis fis} a2) |
  %% 43
  \tuplet 3/2 4 {e,8( dis e a-4 gis a) cis( bis cis e-4 dis e)} |
  %% 44
  \tuplet 3/2 4 {a( gis a-1 cis bis cis) a-3( gis a e-4 dis e)} |
  %% 45
  \tuplet 3/2 4 {cis( bis cis a-4 gis a) e( dis e cis bis cis)} |
  %% 46
  \repeat percent 2 {
    \tuplet 3/2 4 {a( cis e a cis e a e cis a e cis)} |
  }
  %% 48
  a4 r8 <a a'>\upbow <a a'>4 <a a'> | <a a'> r4 r2 \bar "|."
}

studyXLVIIprologI = ##f
studyXLVIIprologII = ##f
studyXLVII = \new Voice \relative e' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Andante cantabile." 4=99
  \key c \major

  e4.-1( a8-2 gis a b a) | c2.( e,4-1) | e4.( b'8-3 ais b c gis) |
  %% 4
  b2( a4 f-2) | e4.( c'8-4 b a gis a) | d4.( f8 e d c-4 b) |
  %% 7
  a8( gis a bes a f-4 e gis,-1) | a4.( c8 e-1 c'-4 b a) |
  gis4.( b8 d f b d) | c4.( b8 a f d b-1) | d8( b gis f e d c b) |
  %% 12
  a4.( c8 e c'-4 b a) | gis4.( b8 d f b d) | c4.( b8 a f d b-1) |
  d8( b gis f e d c b) | a4( c8 e a-4 gis a-0 b) | c4( a8 f e d c b) |
  a4( c8 e a-4 gis a-0 b) | c4( a8 f e d c b) |
  %% 20
  a4( c8 e a-4 gis a-0 b) | c2~( c8 gis a b) | c2~( c8 b c d) |
  \repeat percent 2 {e4.-4( b8 e-0 gis b gis)} |
  %% 25
  e4.-4( b8 gis' e b gis) | e1 | e4.( a8-2 gis a b a) | c2.( e,4-1) |
  e4.( b'8-3 ais b c gis) | b2( a4 f-2) | e4.( c'8-4 b a gis a) |
  c4.( f8 a d a f-3) |
  %% 33
  e4.( gis,8-1 \ritSpan \textSpannerDown a\startTextSpan c b a) |
  %% 34
  gis2.-1( g4-3) \stopTextSpan |
  \repeat volta 2 {
    %% 35
    g4.^\aTempo( b8\< d-1 f b d\!) |
    %% 36
    e4.\flageolet( e,8-0 a-3\> g e c\!) | g4.( b,8 d g b d-1) |
    %% 38
    e2.-2( g,4-1) | g'4.-4( d8 f e b-1 c) |
    %% 40
    d8( f-1 d'-4 c b a g-4 f) | e8( g b,-1 c e4.-4 d8) |
  }
  \alternative {
    %% 42
    { c4.( e8-4 d c b a) | } { c4.( a8-4 gis e f e) | }
  }
  %% 44
  e4.( a8-2 gis a b a) | c2.-4( e,4-1) |
  %% 46
  e4.( b'8-3 ais b c gis) | b2( a4 f-2) | e4.( c'8-4 b a gis a) |
  %% 49
  d4.( f8 e d c-4 b) | a8( gis a bes a\> f-4 e gis,) |
  \once \override Hairpin.to-barline = ##f
  a4\<( c8 e a-2 gis a b) | c4( e8 a c b c d) |
  e4\flageolet\! r4 <gis, d e,>\f\downbow r |
  <a c, e, a,>\downbow r4 r2 \bar "|."
}

studyXLVIIIprologI = ##f
studyXLVIIIprologII = ##f
studyXLVIII = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegretto." 4=123
  \key c \major

  c8\mf e( g) b-1( c-1) e( g) b( |
  %% 2
  c) g( e) c-1( b-1) g( f) d( | c) e( g) b-1( c-1) e( g) b( |
  %% 4
  c) g( e) c-1( b-1) g( f) d( | c) e( g) b-1( c-1) e( g) c( |
  bes) g( c) bes( a) f( c) a( |
  g) c( e) g( c) b( a) b( | c) g( e) c-1( b-1) g( f) d( |
  c) e( g) b-1( c-1) e( g) c( | a) d-4( c-4) a( f) c( a) f |
  %% 11
  c e( g) b( c) e( g) c( | a) d-4( c-4) a( f) c( a) f-1( |
  e-1) g( c) b( a) d( f) a( | g) e( c) g( f) d( b) g( |
  c) g( c) e( g) fis( g) a-4( | g) fis( g) a-4( g) f( e) d( |
  \repeat unfold 2 {
    c) e( g) b-1( c-1) e( g) b( | c) g( e) c-1( b-1) g( f) d( |
  }
  %% 21
  c) e( g) b-1( c-1) e( g) c( | bes) g( c) bes( a) f( c) a( |
  g) c( e) g( c) b( a) b( | c) c,( e) g( c) b( a) b( |
  \repeat unfold 2 { c) e,( g) c( b) g( a) b(} |
  \repeat unfold 2 { c) g( b) g( c) g( b) g( } |
  c) g( e) c-1( b-1) f'-4( d-3) b( | c) g( e) c( b) g( a) b( |
  c) e( g) b-1( c-1) e( g) c( | c,4) r4 r2 \bar "|."
}

studyXLIXprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative g' {
    \time 4/4
    \key ees \major

    \omit TupletNumber
    \tuplet 3/2 4 {
      %% 1
      g8-. fis-. g-. aes-. g-. fis-.
      g-. ees-. c-. g-. c-. ees-. \bar "||"
      %% 2
      g8^(\( fis g) aes^( g fis)\)
      g^(\( ees c) g^( c ees)\) \bar "||"
      %% 3
      g8 fis( g aes g fis g) s s s8*3 \bar "||"
      %% 4
      g8( fis g aes g fis g ees c g c ees) \bar "||"
      %% 5
      g8:16 fis: g: aes8:16 g: fis:
      g8:16 ees: c: g8:16 c: ees: \bar "||"
      %% 6
      g8-. fis-. g( aes g) fis-.
      g-. ees-. c( g c) ees-. \bar "||"
      g-. fis-. g-. aes-. g( fis)
      g-. ees-. c-. g-. c( ees) \bar "||"
      g-. fis-.( g-. aes-.) g-.( fis-.
      g-.) ees-.( c-. g-.) s s \bar "||"
    }
  }
  \layout {
    indent = #0
  }
}
studyXLIXprologII = ##f
studyXLIX = \new Voice \relative g' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key ees \major

  \tuplet 3/2 4 {
    g8--\f fis-- g-- aes-- g-- fis-- g ees c g c ees |
    %% 2
    g fis g aes g fis g ees c g c ees |
    \omit TupletNumber
    %% 3
    g fis g aes g fis g d-0 b g b d |
    %% 4
    g fis g aes g fis g f d f b d |
    %% 5
    c b c ees d c b d f aes g f |
    %% 6
    ees b c ees d c b d f aes g f |
    %% 7
    ees b c ees d c b c d ees d c |
    %% 8
    b g b d b d g d b aes g fis |
    %% 9
    g fis g aes g fis g ees c g c ees |
    %% 10
    g fis g aes g fis g c d ees d c |
    %% 11
    g fis g aes g fis g d b g b d |
    %% 12
    g fis g aes g fis g-1 b d f b d |
    %% 13
    c d c b c d c g-4 f ees d c-4 |
    %% 14
    b d f d f d f d b aes g f-4 |
    %% 15
    ees-3 g c ees g c b d, ees f ees d |
    %% 16
    c-2 aes g f ees d c g c ees g c |
    %% 17
    \repeat unfold 2 {b e-4 d} c d, fis a d-1 fis |
    %% 18
    \repeat unfold 2 { a d c } b g d b-1 g d |
    %% 19
    b e d g a b c d, fis a d-1 fis |
    %% 20
    a d c b c a g-4 d b-3 g a b |
    %% 21
    c g ees-3 c d ees d g, a b c d-4 |
    %% 22
    c ees g c ees f g d b g a b |
    %% 23
    c g ees c d ees d g, a b c d-4 |
    %% 24
    c ees g c e f g d b g b d |
    %% 25
    g fis g aes g fis g d b g b d |
    %% 26
    g fis g aes g fis g d b g d b |
    %% 27
    \repeat unfold 2 { g b d g ees c } |
    %% 28
    g b d g b d g d b aes g fis |
    %% 29
    g fis g aes g fis g ees c g c ees |
    %% 30
    g fis g aes g fis g c d ees d c |
    %% 31
    g fis g aes g fis g d b g b d |
    %% 32
    g fis g aes g fis g-1 b d f b d |
    %% 33
    c d c b c d c g-4 f ees d c-4 |
    %% 34
    b d f d f d f d b aes g f-4 |
    %% 35
    ees g c ees g c b d, ees f ees d |
    %% 36
    c ees g c g ees c-2 aes g f ees d |
    %% 37, 38
    \repeat percent 2 {
      c ees g g, aes g b d g g, aes g |
    }
    %% 39
    c f g aes g b c-1 ees-3 g-1 aes-2 g-1 b-3 |
  }
  %% 40
  \tuplet 3/2 4 {c-4 g-1 ees-3 c-1 g-2 ees-4} c4-2 r \bar "|."
}

studyLprologI = ##f
studyLprologII = ##f
studyL = \new Voice \relative d' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key g \major

  \partial 8 d8-0\downbow( |
  %% 1
  g-.-1) \fingerNumberSpanner #"4" g'-.\startTextSpan a,-. g'-.
  b,-. g'-. a,-. g'-. |
  %% 2
  g,-.\stopTextSpan g'( d) b( g) f-4( ees) d( |
  c-.) c'-. d,-. c'-. ees,-. c'-. d,-. c'-. |
  %% 4
  c,-. c'( g) ees( c) g( c) ees( | d) d( g-1) b( d) d( g) b( |
  d) b( d) r r4 r8 d,,-0( | g-1) g'( g,) a( b) a( b) g( |
  fis-1) fis'( fis,) g( a) g( a) fis-1( |
  %% 9
  e-1) e'-4( e,) fis( g) fis( g) e( | d) d'( d,) e( fis) e( fis) d( |
  g-1) g'( g,) a( b) a( b) g-1( |
  fis-1) fis'( fis,) g( a) g( a) fis-1( |
  e-1) e'-4( e,) fis( g) fis( g) e( | d) b( g) b( d) g( b) d-2( |
  c-1) c'( c,) d( e) d( e) c( | b-1) b'( b,) c( d) c( d) b( |
  a) a'( a,) b( c) b( c) a( | d) fis( a) fis( d) a( fis) d( |
  g-1) g'( g,) a( b) a( b) g-1( |
  %% 20
  fis-1) fis'( fis,) g( a) g( a) fis-1( |
  e) e'-4( e,) fis( g) fis( g) e( | d) d'( d,) e( fis) e( fis) d( |
  g-1) g'( g,) a( bes) a( bes) g-1( |
  fis-1) fis'( fis,) g( a) g( a) fis( |
  %% 25
  ees-1) ees'( ees,) f( g) f( g) ees( |
  d) b( g) b( d) g( b) d-2( | c-1) c'( c,) d( ees) d( ees) c( |
  %% 28
  bes-1) bes'-4( bes,) c( d) c( d) bes( | a) a'( a,) bes( c) bes( c) a( |
  %% 30
  g) bes( ees) d( c) fis( bes) a( | g) bes,( ees) d( c) fis( bes) a( |
  g) ees( d) bes( g) ees( d) bes( |
  g-.) g'-. a,-. g'-. bes,-. g'-. a,-. g'-. |
  %% 34
  g,-. bes( d) g( bes) g( d) bes( |
  g-.) g'-. a,-. g'-. b,-. g'-. g,-. g'-. |
  %% 36
  c,-. ees( g) c( ees) g,( ees) c( | d) g( b) d-1( g) b( d) d,( |
  c') a( fis-1) d( c) a( fis) d( |
  g-.-1) g'-. a,-. g'-. b,-. g'-. a,-. g'-. |
  g,-. bes( cis) e( g) bes( cis) g,-1( |
  %% 41
  fis-.-1) fis'-. g,-. fis'-. a,-. fis'-. g,-. fis'-. |
  %% 42
  fis,-1 a( c) dis( fis) a( c) fis,,( |
  e-.-1) e'-. fis,-. e'-. g,-. e'-. fis,-. e'-. |
  e,-. g( bes) cis( e) g( bes) e,,( |
  d-.) d'-. e,-. d'-. fis,-. d'-. e,-. d'-. |
  d,-. fis( a) d-1( fis) a( d) d,,-2( |
  c-.-1) c'-. d,-. c'-. e,-. c'-. d,-. c'-. |
  c,-. e( g) c( e) g( c) c,,-1( |
  b-.-1) b'-. c,-. b'-. d,-. b'-. c,-. b'-. |
  %% 50
  b,-.-1 d( g) b( d) g( b) b,,-1( |
  a-.-1) a'-.-4 b,-. a'-. c,-. a'-. b,-. a'-. |
  a,-. c( fis) a( c) fis( a) a,,( |
  g-.) g'-. a,-. g'-. b,-. g'-. a,-. g'-. |
  %% 54
  g,-. b( d) g( b) d-1( g) b( | d) c( a) fis-1( d) c( a) d,( |
  %% 56
  g-3) b,( d) g( b) d-1( g) b( | d) c( a) fis-1( d) c( a) d,( |
  g-.-1) g'-. a,-. g'-. b,-. g'-. a,-. g'\upbow( |
  g,-.) g,-.\downbow a'-.-2\upbow g,-. b'-.-3 g,-. a'-. g,\downbow( |
  g'-.) g'-. a,-. g'-. b,-. g'-. a,-. g'( |
  %% 61
  g,) g,-. a'-. g,-. b'-. g,-. a'-. g,( | g') d-0( g)  b( d) fis( b) a( |
  g) d( b) g( fis) d( e) fis( | g) d( g) b( d) fis( b) a( |
  g) d( b) g( fis) e( fis) d( | g4-1) a8-. g,-. b'-. g,-. a'-. g,-. |
  g'-. g,-. a'-. g,-. b'-. g,-. a'-. g,-. |
  g'-. g,( b) d( g) g-1( b) d( | g) r r4 r2 \bar "|."
}

studyLIprologI = ##f
studyLIprologII = ##f
studyLI = \new Voice \relative a {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato." 4 = 111
  \key f \major

  a16^(\( c bes c  a c bes c)  a^( c bes c  a c bes c)\) |
  %% 2
  a^(\( c bes c  a c bes c)  a^( c bes c  a bes c a)\) |
  bes-1( d-3 c d \repeat unfold 2 { bes d c d} bes d c d) |
  bes( d c d  bes d c d  bes d c d  bes c d bes) |
  c-2( e-4 d e  c e d e  c e d e  c e d e) |
  c( e d e  c e d e  c e d e  c d e c) |
  f-1( a-3 g a  f a g a  f a g a  f a g a) |
  f( a g a  f a g a  f a g a  f g a f) |
  d'-2( f-4 e f  d f e f  d f e f  d f e f) |
  %% 10
  d( f e f  d f e f  d f e f  d f e d) |
  c-1( f-4 e f  c f e f  c f e f  c f e f) |
  c( f e f  c f e f  c f e f  c f e d) |
  %% 13
  c-1( bes'-3 a bes  g bes a bes  c bes a bes  g bes a bes) |
  c,-1( a'-2 g a  bes a g a  c a g a  bes a g a) |
  %% 15
  g-1( c-4 b-3 a  g f e d  c) c-1( b-4 a  g f e d |
  c-2) d( c b c-1 d e d) c2 |
  %% 17
  d16-2( f e f  d f e f  d f e f  d f e f) |
  d( f e f  d f e f  d f e f  d f e d) |
  c( f e f  c f e f  c f e f  c f e f) |
  c( f e f  c f e f  c f e f  c f e d) |
  %% 21
  c( bes' a bes  g bes a bes  c bes a bes  g bes a bes) |
  c,( a' g a  bes a g a  c a g a  bes a g f) |
  %% 23
  c->( c' b c  b c b c d,->-0 c'-2 b c  b c b c) |
  e,->( c' b c  d c b c  g-> bes a bes  c bes a bes) |
  a( c bes c  a c bes c  a c bes c  a c bes c) |
  a( c bes c  a c bes c  a c bes c  a bes c a) |
  bes( d c d  bes d c d  bes d c d  bes d c d) |
  bes( d c d  bes d c d  bes d c d  bes c d bes) |
  c( e-4 d e  c e d e  c e d e  c e d e) |
  %% 30
  c( e d e  c e d e  c e d e  c d e c) |
  f( a g a  f a g a  f a g a  f a g a) |
  f( a g a  f a g a  f a g a  f a g f) |
  bes-2( d c d  bes d c d  bes d c d  bes d c d) |
  bes( d c d  bes d c d  bes d c d  bes d c bes) |
  a( c bes c  a c bes c  a c bes c  a c bes c) |
  a( c bes c  a c bes c  a c bes c  a c bes a) |
  g-1( bes a bes  g bes a bes  g bes a bes  g bes a bes) |
  g( bes a bes g bes a bes g bes a bes g bes a g) |
  f-1( a g a  f a g a  f a g a  f a g a) |
  %% 40
  f( a g a  f a g a  f a g a  f a g f) |
  bes,( d c d  bes d c d  bes d c d  bes d c d) |
  bes( d c d  bes d c d  bes d c d  bes c d bes) |
  c( e d e  c e d e  c e d e  c e d e) |
  c( e d e  c e d e  c e d e  c d e c) |
  f( a g a  f a g a  f a g a  f a g a) |
  f( a g a  f a c-4 a  f a g a f a c a) |
  %% 48
  f( a g a  f a g a  f a c-4 a  f a c a) | f1 \bar "|."
}

studyLIIprologI = ##f
studyLIIprologII = ##f
studyLII = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Andante." 4 = 99
  \key c \major

  \afterGrace c1\trill\downbow_( {b16 c)} |
  %% 2
  d8-. r \acciaccatura {d16 e} d8( b) g2 |
  %% 3
  \afterGrace g'1\trill_( {fis16 g)} |
  %% 4
  a8-. r \acciaccatura {g16 a} g8( e-0) c'2-3 |
  %% 5
  \afterGrace b1\trill_( {a16 b)} |
  %% 6
  d4( c \acciaccatura {b16 c} b4 a) |
  %% 7
  g4-4( f) \acciaccatura {f16 g} f4( e) |
  %% 8
  d4( f8. b,16-1) \afterGrace b2\trill_( {a16 b)} |
  %% 9
  \afterGrace c1\trill_( {b16 c)} |
  %% 10
  d8( e-4 d b g2) | \afterGrace g'1\trill_( {fis16 g)} |
  a8( g e c g2) | \afterGrace f1\trill( {e16 f)} |
  %% 14
  a8-4( g e g c4. e8-4\<) | d8( e fis g\!) b4.->( a8) |
  g4.\>( b,8\!) \afterGrace b2\trill_( {a16 b)} |
  %% 17
  \afterGrace c1\trill_( {b16 c)} | b8( d-1 g b c2) |
  %% 19
  \afterGrace b1\trill_( {a16 b)} | c8( a e-0 c a2) |
  %% 21
  \afterGrace fis1_2\trill( {e16 fis)} | g8( b d g b a g fis) |
  a( g f e g f e d) | c( b a g fis g a b) |
  %% 25
  \afterGrace c1\trill_( {b16 c)} |
  d8-. r \acciaccatura {d16 e} d8( b) g2 |
  %% 27
  \afterGrace g'1\trill_( {fis16 g)} |
  a8-. r \acciaccatura {g16 a} g8( e-0) c'2-3 |
  %% 29
  \afterGrace b1\trill_( {a16 b)} | d4( c \grace {b16 c} b4 a) |
  %% 31
  g4-4( f) \acciaccatura {f16 g} f4( e) |
  d4( f8. b,16-1) \afterGrace b2\trill_( {a16 b)} |
  %% 33
  \afterGrace c1\trill_( {b16 c)} | d8( e-4 d b g2) |
  %% 35
  \afterGrace g'1\trill_( {fis16 g)} | a8( g a16-1 b c d e2\flageolet) |
  e4\flageolet( c-3) \acciaccatura {b16 c} b4( a) |
  %% 38
  g4-4 \acciaccatura { f16 g} f2->( b,4-1) |
  \afterGrace d1\trill_( {c16 d)} | c4( g e g) |
  e'4-4( c) \acciaccatura {g16 a} g4( e) |
  g4( \acciaccatura {f16 g} f4) a4.-4( b,8) |
  \afterGrace b2\trill( {a16 b)} b4( d8.-4 c16) | c4 r4 r2 \bar "|."
}

studyLIIIprologI = ##f
studyLIIIprologII = ##f
studyLIII = \new Voice \relative b {
  \violinVoiceSettings
  \time 4/4
  \tempo "Andante." 4 = 99
  \key bes \major

  <bes d>2\p( <c ees>4 <cis e>) | <d f>2.( g4) |
  %% 3
  <f a>( <g bes> <a c> <bes-3 d-1>) | <c ees>1 |
  <c ees>2.( <b d>4) | <c ees>2.( <bes d>4) |
  %% 7
  <a-4 c-2>4( <g bes> <f-4 a-2> <ees g>) | <d-4 f-2>2.( <c ees>4) |
  %% 9
  <bes d>2( <c ees>4 <cis e>) | <d f>2.( g4) |
  %% 11
  <f a>( <g bes> <a-3 c-1> <bes d>) | <a c>1 | <a c>2.\<( f'4-4) |
  %% 14
  <f-3 a-1>2.( d'4) |
  %% 15
  << {\voiceOne d4-4( c\!) bes-2\>( e,-0)}
     \new Voice {\voiceTwo e2-2 g4-4 bes,-1} >> \oneVoice |
  %% 16
  <a f'>2~ <a f'>8\! f'8\<( a d) |
  %% 17
  << {\voiceOne c2\mf( d4 c)}
     \new Voice {\voiceTwo ees,1-2} >> \oneVoice |
  %% 18
  <d bes'>2.( <f-3 d,-0>4) |
  %% 19
  <c-4 ees-2>8( <b d> <c ees> <b d> <c ees>4\> <bes d>) |
  %% 20
  <a-3 c-1>2.\<( f'4-4) |
  %% 21
  << {\voiceOne a2-1( d4\! c)}
     \new Voice {\voiceTwo ees,1-2} >> \oneVoice |
  %% 22
  <d bes'>2.( <f d,>4) |
  <c ees>8\<( <b d> <c ees> <b d> <c ees> <b d> <c ees> <b d>) |
  %% 24
  <c ees>\>( <bes d> <a-4 c-2> <g bes> <f-4 a-2> <ees g> <d-4 f-2> <c ees>) |
  <bes d>2\cresc( <c ees>4 <cis e>) | <d f>2.( <f d'>4) |
  %% 27
  <f b>8 r <ees c'>4\downbow^( << {\voiceOne ees'4-2 g)}
			       \new Voice {\voiceTwo g,2-1} >> \oneVoice |
  <ees' c'>1\! |
  %% 29
  << {\voiceOne d'4->( bes)}
     \new Voice {\voiceTwo d,2} >> \oneVoice  <f-3 d,-0>8 r r <d bes>\upbow |
  << {\voiceOne g4->( f)}
     \new Voice {\voiceTwo a,2} >> \oneVoice <g ees'>8 r r <a-0 ees-1>\upbow |
  <c ees,>1~ | <c ees,>4 r4 r2 \bar "|."
}

studyLIVprologI = ##f
studyLIVprologII = ##f
studyLIV = \new Voice \relative a {
  \violinVoiceSettings
  \time 6/8
  \tempo "Allegro." 8 = 123
  \key d \major

  \fingerNumberSpanner "1" \textSpannerDown a8\downbow\startTextSpan( bes16-2 b c cis d-4 a\stopTextSpan d-0 fis a8-4) |
  %% 2
  bes16( a b a cis a d a d fis a8) |
  %% 3
  a,8( bes16 b c cis d a-0 d-1 fis a8) |
  %% 4
  bes16( a b a cis a d) a( bes a cis a |
  d) a( bes b c cis d) a( bes b c cis |
  d) a,-0( bes b c cis d) a,( bes b c cis |
  %% 7
  d-4) a( d-0 fis a cis d) a( d fis a ais |
  %% 8
  b) a( g fis e d cis b a g fis e) |
  %% 9
  d8( ees16 e f fis g gis-4 a-0 bes b cis) |
  d16( a fis d fis a d fis a fis d a-0) |
  %% 11
  d8-1( ees16 e f fis g-4 gis-1 a-1 bes b cis) |
  d( a fis-3 d a-0 fis-4 d-2 fis a d fis a-1 |
  d) a( bes b c cis d) a( bes b c cis |
  %% 14
  d8) d,16-1( e fis g) a8\flageolet a,16-0( b cis a) |
  d16-3 a( bes b c cis d) a( bes b c cis |
  %% 16
  d) b'( ais a gis g fis) b( ais a gis g |
  fis) b( a g fis e d) fis( e d cis b |
  a) d( cis b a g fis) b( a g fis e |
  %% 19
  d) d( ees e f fis g gis-4 a-0 bes b cis |
  d) a( fis d fis a d fis a fis d a |
  %% 21
  d) d( ees e f fis g gis a-1 bes b cis |
  d) a( fis-3 d a-0 fis d fis a d fis a-1 |
  %% 23
  d8) d,16( e fis g) a8\flageolet a,16-0( b cis a |
  d) a( bes b c cis d) b'( ais a gis g |
  %% 25
  fis) a,( bes b c cis d) bes'( ais a gis g |
  fis) a,( bes b c cis d) a,( bes b c cis |
  %% 27
  d-4) fis( a d-1 fis a d) a( fis d a-0 fis |
  d) fis( a d fis b a) fis( d a fis d |
  \repeat unfold 2 {
    cis) a( cis e a-4 a, gis') a( bes b c cis |
    d) a( d fis a a, b) a-4( g fis e d |
  }
  %% 33
  g,) b( d g-1 b d g) a( bes b c cis |
  d) a( fis d a-0 fis d) fis( g gis-4 a-0 ais |
  b) b'( ais a gis g fis) a( gis g fis f |
  %% 36
  e) a( e cis a gis b) a-4( g fis g e |
  \repeat unfold 2 {
    d) a( bes b c cis-4 d-0) fis( g gis-4 a-0 ais |
    b) e( g fis e d cis) b( a g fis e |
  }
  %% 41
  d) a( gis a b cis d-4) a( gis a b cis |
  d-4) cis( d e fis g-1 a gis a b cis a |
  d-4\flageolet) a( gis a b cis d-4\flageolet) a( gis a b cis |
  %% 44
  d-4\flageolet) cis-1( d-1 e fis g a gis-1 a-1 b cis a |
  \repeat unfold 2 {
    d) a( bes b c cis d) a( bes b c cis |
  }
  d8) r r <d d, d,>8\sf\downbow r r |
  <d,,-2 d-0>4.~\sf\downbow  <d d>8 r r \bar "|."
}

studyLVprologI = ##f
studyLVprologII = ##f
studyLV = \new Voice \relative g {
  \violinVoiceSettings
  \time 9/8
  \tempo "Allegro." 8 = 123
  \key c \major

  \partial 8 g8\f\downbow( |
  %% 1
  \fingerNumberSpanner "1" c\startTextSpan) c'_4 c,\stopTextSpan( b)\startTextSpan b'_4 b,(\stopTextSpan a)\startTextSpan a'_4 a,\stopTextSpan( |
  %% 2
  g) g' g,( a) a'-4 a,( b-1) b'-4 b,( | c-1) c'-4 c,( b-1) b' b,( a) a' a,( |
  %% 4
  g) g' g,( a) a' a,( b-1) b' b,( | c-1) c' c,( b-1) b' b,( a-1) a' a,( |
  %% 6
  g) g' g,( a) a' a,( b-1) b' b,( | c) c' g,( c-1) e g c e g |
  %% 8
  c4-3( e8-4\flageolet) e4.~ e4 g,,,8( | c-1) c' c,( b-1) b' b,-1( a-1) a' a,( |
  %% 10
  \repeat unfold 2 {
    g) g' g,( a) a' a,( b-1) b' b,( | c-1) c' c,( b) b' b,( a) a' a,( |
  }
  %% 14
  g) g' g,( a) a' a,( b) b' b,( | c) c' g,( c-1) e-3 g c e g |
  %% 16
  c4-3( e8-4\flageolet) e4.~ e4 e,8-0( | d') e,-0 d'( c) e,-0 c'( b) e,-0 b'( |
  %% 18
  c) e,-0 c'( b) e,-0 b'( a) e-0 a-3( | b) e,-0 b'( a) e-0 a( gis) e-0 gis( |
  %% 20
  a) e-0 a-1( c) a c e4-4\flageolet d,,8-0( |
  c'-4) d,-0 c'-3(  b-3) d,-0 b'-3(  a-2) d,-0 a'-2( |
  %% 22
  b-3) d,-0 b'-3( a-2) d,-0 a'-2( g-1) d-0 g-3( |
  a) d,-0 a'( g) d-0 g( fis) d-0 fis( | g) d-0 g-1( b) g b d4\flageolet g,,8( |
  f'-4) g, f'-4( e-3) g, e'-3( d-2) g, d'-2( |
  %% 26
  e-3) g, e'-3( d-2) g, d'-2( c-1) g c-3( | d) g, d'( c) g c( b) g b( |
  %% 28
  c) g c( e) c-1( e) g4\flageolet g,8( | f'-4) g, f'( e) g, e'( d) g, d'( |
  e) g, e'( d) g, d'( c) g c( | d) g, d'( e) g, e'( d) g, d'( |
  %% 32
  \repeat unfold 2 {
    c-1) c' c,-1( b-1) b' b,-1( a-1) a' a,( |
    g) g' g,( a) a' a,( b-1) b' a,( |
  }
  %% 36
  c-1) e g c g e c g c-3( | e) g c e-4 c g e c e( |
  %% 38
  g) c e-0 g e c g e g( | c) e g-1( c) g e c4. |
  %% 40
  << {\voiceOne bes8-3( c bes)}
     \new Voice {\voiceTwo c,4.-1} >> \oneVoice <bes' e>8-. c,( d e d) c |
  %% 41
  << {\voiceOne a'8-2( bes a)}
     \new Voice {\voiceTwo c,4.-1} >> \oneVoice <a' f'>8-. a'( d c a) f |
  %% 42
  aes-4 f d-1( f-3) d b( g) a b( | c-1) e f( c') g e c4. |
  %% 44
  << {\voiceOne bes8-3( c bes)}
     \new Voice {\voiceTwo c,4.-1} >> \oneVoice <bes' e>8-. c,( d e d) c |
  %% 45
  << {\voiceOne a'8-2( bes a)}
     \new Voice {\voiceTwo c,4.-1} >> \oneVoice <a' f'>8-. a-0( d-3 c a) f |
  %% 46
  aes f d( f) d b( g) a b( | c) g c( e) c e g4. |
  %% 48
  a8-4 f d( f) d b( g) a b( | c) g c-1( e) c e g4. |
  a8-4 f d( f) d b( g) a b( | c) g c-1( e) c e g4-4\flageolet g,8( |
  %% 52
  c-1) g c( e) c e g4\flageolet g,8( |
  \repeat unfold 2 {
    c-1) g e'-3( c) g e'( c) g e'( |
  }
  c) r r r4. <g-0 g'-1 f'-3 b-2>8\downbow r r |
  <c g' e' c'>8\downbow r r r4. r4. \bar "|."
}

studyLVIprologI = ##f
studyLVIprologII = ##f
studyLVI = \new Voice \relative g {
  \violinVoiceSettings
  \time 3/4
  \tempo "Andante." 4 = 99
  \key bes \major

  <g g'>4~\mf( <g g'>8. d'16-.) \acciaccatura {f8} ees8.( d16-.) |
  %% 2
  \repeat unfold 2 {
    <g, g'>4~( <g g'>8. d'16-.) \acciaccatura {f8} ees8.( d16-.) |
    <g, g'>4~ <g g'>8 a16-1\<( a') bes,-1( bes') c,-1( c') |
    d,-0( d') ees,-1( ees'\!) d,\>( d') c,-1( c') bes,-1( bes') a,-1( a'\!) |
  }
  %% 8
  <g g,>4 r8 <d d'>8\downbow <ees ees'>8.( <d d'>16-.) |
  <d d'>8( <c' fis>) <c fis> <d d,> <ees ees,>8.( <d d,>16) |
  <d d,>8( <g bes,>) <g bes,> <d d,> <ees ees,>8.( <d d,>16) |
  %% 11
  <d d,>8( <c fis>) <c fis> <d d,> <ees ees,>8.( <d d,>16) |
  <d d,>8( <g bes,>) <g bes,>8[ r16 <ees-2 c-4>16]\downbow <ees c>8.\upbow( <d bes>16) |
  %% 13
  <d bes>4. <c-2 a-4>8( <bes g> <a fis>) |
  %% 14
  <bes g>4~( <bes g>8[ r16 <c-4 ees-2>16-.]) <c ees>8.( <bes d>16-.) |
  <bes d>4. <a-4 c-2>8( <g bes> <fis a>) |
  %% 16
  <g bes>4~( <g bes>8[ r16 <c-4 ees-2>16]-.) <c ees>8.( <bes d>16-.) |
  <bes d>4~( <bes d>8. <c ees>16-.) <c ees>8.( <bes d>16-.) |
  %% 18
  <bes d>4~ <bes d>8.( <a-4 c-2>16-.) <a c>8.( <g bes>16-.) |
  %% 19
  <fis a>8( <d d'>) <d d'> d \acciaccatura {f8} ees8.( d16) |
  %% 20
  <g, g'>4~( <g g'>8. d'16-.) \acciaccatura {f8} ees8.( d16-.) |
  %% 21
  \repeat unfold 2 {
    <g, g'>4~( <g g'>8. d'16-.) \acciaccatura {f8} ees8.( d16-.) |
    <g, g'>4~ <g g'>8 a16\<( a') bes,( bes') c,( c') |
    d,( d') ees,( ees'\!) d,\>( d') c,( c') bes,( bes') a,( a'\!) |
  }
  %% 27
  <g g,>4 r8 <bes-3 g'-4> <bes g'> <bes g'> |
  %% 28
  <a-2 fis'-3>8.( <d-1 d,-0>16) <d d,>8 <fis-3 a-1>( <eis-3 gis-1> <fis-3 a-1> |
  <g bes>8. <g,-1 g,>16-.) <g g,>8( <bes-3 g'-4>) <a g'> <g g'> |
  %% 30
  <a fis'>8.( <d-1 d,-0>16) <d d,>8 <fis-3 a-1>( <eis-3 gis-1> <fis-3 a-1> |
  <g bes>8. <g,-1 g,>16-.) <g g,>8 <bes d>8( <c ees> <bes d> |
  %% 32
  <c-1 a-3>8. <f-4 f,-1>16-.) <f f,>8-. <c-1 a-3>( <b-1 gis-3> <c-1 a-3> |
  <bes-4 d-2>8. <bes-4 bes,-1>16-.) <bes bes,>8-. <bes-3 d-1>8( <c ees> <bes d> |
  %% 34
  <a-3 c-1>8. <f f'>16-.) <f f'>8-. <a-3 c-1>( <gis-3 b-1> <a-3 c-1> |
  <bes-4 d-2>8. <bes bes,>16) <bes bes,>8 r g,16( g'-2) bes,-1( bes') |
  %% 36
  d,-0( d'-2) fis,-1( fis') g,-1( g') a,-0( a'-3) bes,( bes') a,( a') |
  %% 37
  g,-1( g') d,-0( d'-3) ees,( ees') d,( d') c,( c') bes,( bes') |
  %% 38
  a,( a') d,( d') ees,( ees') d,( d') ees,( ees') d,( d') |
  ees,\<( ees') \repeat unfold 2 {d,( d') ees,( ees')} d,( d') |
  %% 40
  << {\voiceOne <bes bes'>2.~\ff}
     \new Voice {\voiceTwo <d, g,>4} >> \oneVoice |
  %% 41
  <bes' bes'>4 r r |
  %% 42
  \tuplet 3/2 {<g g,>8-.\p( <g a,-.> <g bes,>-.)}
  << {\voiceOne g4..~ g16-.}
     \new Voice {\voiceTwo bes,4 a8. g16} >> \oneVoice |
  %% 43
  <g g'>4 r <c'-4 ees-2>8.\mf( <bes d>16-.) |
  %% 44
  <bes d>4. <a-4 c-2>8( <g bes> <fis a>) |
  %% 45
  <g bes>4~( <g bes>8[ r16 <c-4 ees-2>16-.]) <c ees>8.( <bes d>16-.) |
  %% 46
  <bes d>4. <a-4 c-2>8( <g bes> <a d,>) |
  %% 47
  <g bes,>4~( <g bes,>8. d16-.) \acciaccatura {f8} ees8.( d16-.) |
  <g g,>4~( <g g,>8. d16-.) \acciaccatura {f8} ees8.( d16-.) |
  %% 49
  <g, g'>4~ <g g'>8 a16-1\<( a') bes,-1( bes') c,-1( c') |
  %% 50
  d,-0( d') ees,-1( ees'\!) d,\>( d') c,-1( c') bes,-1( bes') a,-1( a') |
  << {<g, g'>4} {s8 s\!} >> r4 r |
  <g d' bes' bes'>8\ff\downbow r <d' c' a'>\downbow r <d c' fis>\downbow r |
  <g, d' bes' g'>\downbow r16 <g g'>16\upbow <g g'>8\downbow r8 r4 \bar "|."
}

studyLVIIprologI = ##f
studyLVIIprologII = ##f
studyLVII = \new Voice \relative a'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato assai." 4 = 111
  \key f \major

  \partial 4. a8-1\f\upbow( \acciaccatura c bes a) |
  %% 1
  d4. d,16 f a4.-4\flageolet a,16-0 cis-2 |
  %% 2
  d2-3~ d8 a,\p( \acciaccatura c bes a) | a\<( cis-1 d e f4\! e8\> d\!) |
  %% 4
  bes'2-3->( a4 gis) | a8\<( d-1 f a bes4 a8 gis-1)\! |
  %% 6
  a4-1( d4.-> bes8\> g-4 e\!) | d8-1 a-2 bes4.-3 a8( e-1 f) |
  d2~ d8\> bes'( g e\!) | f d bes4. a8( cis e) |
  d( f a d) f\<( a-1 \acciaccatura c bes a) |
  %% 11
  d4.\f d,16 f a4.-4\flageolet a,16-0 cis-2 |
  d2-3~ d8 a( \acciaccatura c bes a) |
  %% 13
  f'4.-3 d16 f a4. b16 cis | d2~ d8 c( bes a-1) |
  %% 15
  a-3_(\( g e cis) a( g f e)\) | f(\( a d-3 d-1) f_( a d a-1)\) |
  a-3( g e cis a g f e) | f( a d-3 d-1 f a d a) |
  bes-2( bes-4 g e c bes a g) | a( c f a-3 a-1 d c a) |
  %%21
  bes-2( bes-4 g e c bes a g) | f( a c-2 c-1 f a c-4 bes-3) |
  a( c a fis d-2 d-3 c a) |   g( bes d-3 d-1 g bes d bes) |
  c( a fis ees d-1 d-3 c a) | g( bes d-3 d-1 g bes d bes) |
  c( a bes g d-1 d-3 bes g) | aes( c, ees aes-4 aes-2 c d ees) |
  d( fis g bes d a \acciaccatura c bes  a) |
  %% 30
  g( ees d-1 d-3 c bes a g) | d-0( e fis g a bes c a) |
  %% 32
  g( a bes c d bes a g) | f( g a bes c d ees c) |
  %% 34
  d-3( d-1 f bes d bes f ees) | d( e f e d e f e) |
  d( e f e d-1 d-3 c bes) | a( b cis d e f g e) |
  d( e f g a-1 b cis d) | a,-0( b cis d-1 e f g e) |
  d( e f g a b cis d) | cis( bes a bes a g-4 f e) |
  d( bes-1 a g e cis bes a) | d-4( a d-0 f e bes a cis) |
  d-4( bes a bes a^\rit f'_4 e cis) | d1~ | d4 r4 r2 \bar "|."
}

studyLVIIIprologI = ##f
studyLVIIIprologII = ##f
studyLVIII = \new Voice \relative a'' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Andante." 4 = 99
  \key g \major

  b4~\pDolce( \tuplet 3/2 4 {b8 a g g-4 fis e)} |
  %% 2
  \tuplet 3/2 {e-4( d b} d4 \tuplet 3/2 {d8-1 g b)} |
  %% 3
  c4~( \tuplet 3/2 4 {c8 b a a-3 g fis)} |
  %% 4
  \tuplet 3/2 4 {b( a g g-4 fis e e-4 d c)} |
  \omit TupletNumber
  %% 5
  b4~( \tuplet 3/2 4 {b8_3 a g g_3 fis e)} |
  %% 6
  \tuplet 3/2 {e-3( d b-2} d4-4~ \tuplet 3/2 {d8-2 g b)} |
  %% 7
  \tuplet 3/2 4 {c( b a a_4 g fis fis_4 e d)} |
  %% 8
  g4-0 r \tuplet 3/2 {d'8_3\upbow( c b)} |
  %% 9
  b4_3~( \tuplet 3/2 4 {b8 a g g_3 fis e)} |
  %% 10
  \tuplet 3/2 4 {e_3( d b_2 d_0 g b d c b)} |
  %% 11
  \tuplet 3/2 4 {b-3( a g g-3 fis e e-3 d c)} |
  %% 12
  \tuplet 3/2 4 {c_3( b a d g b d-1 g b)} |
  %% 13
  d4~( \tuplet 3/2 4 {d8 c b b_4 a g)} |
  %% 14
  \tuplet 3/2 4 {g_4( fis e e_4 d c c_4 b a)} |
  %% 15
  \tuplet 3/2 4 {a-4( g fis fis-4 e d d-4 c a)} |
  g4 r r \bar "|."
}

studyLIXprologI = ##f
studyLIXprologII = ##f
studyLIX = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Moderato assai." 4 = 111
  \key g \major

  << {\voiceOne d8-1\f( e16 d e d e d e d e d) g-4}
     \new Voice {\voiceTwo b,2.-3 b16-3} >> \oneVoice r8. |
  %% 2
  << {\voiceOne b8-1( c16 b c b c b c b c b) e-4}
     \new Voice {\voiceTwo g,2.-3 g16-3} >> \oneVoice r8. |
  %% 3
  << {\voiceOne a2-0 a4-.~ a4-.}
     \new Voice {\voiceTwo fis16( e fis d fis e fis d)
		 \repeat unfold 2 {fis( e fis d)}} >> \oneVoice |
  %% 4
  << {\voiceOne b'4 a g}
     \new Voice {
       \voiceTwo g16( fis g d) fis( e fis d) b4} >> \oneVoice d16( g-1 b d) |
  %% 5
  << {\voiceOne e16( d e d e d e d e d e d) g}
     \new Voice {\voiceTwo b,2. b16} >> \oneVoice r8. |
  %% 6
  << {\voiceOne c16( b c b c b c b c b c b) e}
     \new Voice {\voiceTwo g,2. g16} >> \oneVoice r8. |
  %% 7
  << {\voiceOne a4 d fis16( a g fis) a( g fis e)}
     \new Voice {\voiceTwo fis,16( e fis d) fis( e fis d) a'4 a } >>
  \repeat volta 2 {
    %% 8
    << {\voiceOne d16( a) d e fis( g) fis e d4}
       \new Voice { \voiceTwo fis,8 fis16 a d8 d16 a fis4} >>
    \oneVoice e'16-4( d e d) |
    << {\voiceOne
	%% 9
	c16( d c b c8 fis) b4.( a8) |
	%% 10
	b,16( c b a b8 g') b4.( b,8) |
	%% 11
	c16( d c b c8)}
       \new Voice {
	 \voiceTwo
	 %% 9
	 d,4. a'8 c16 d c b c4 |
	 %% 10
	 d,4. b'8 b16 c b a b8 g |
	 %% 11
	 d4~ d8} >> \oneVoice r16
    <e'-2 c'-3>16\downbow <e c'>8( <fis-1 a,-0> <d b'> <fis c>) |
    %% 12
    << {\voiceOne a4( g8) }
       \new Voice {\voiceTwo c,16 b c a b8} >> \oneVoice
    d,16( e fis g fis g a b a b) |
    << {\voiceOne
	%% 13
	c16( d c b c8. fis16) b4( a8. c,16) |
	%% 14
	b16( c b a b8. g'16-.) b4( g8. b16-.) |
	%% 15
	e,4 a16( b a g) fis4 e}
       
       \new Voice {
	 \voiceTwo
	 %% 13
	 d,4~ d8. a'16 c d c b c8. d,16
	 %% 14
	 g4~ g8. b16 b c b a b8. b16
	 %% 15
	 cis16( d cis b) cis8 a d16( cis d a) cis( b cis a)} >>
  }
  %%
  << {\voiceOne d16( a) d e }
     \new Voice {\voiceTwo fis,8 fis16 a} >> \oneVoice
  <d fis>16\<( <e g>) <fis-3 a-1> <eis-3 gis-1>
  <fis-3 a-1>( <g b>\!) <fis a>^\rit <e-4 g-2>
  <d fis>\>( <c e>) <b-3 d-1> <a-0 c-4>\!
  %%
  << {\voiceOne e'16_\aTempo( d e d e d e d e d e d) g}
     \new Voice {\voiceTwo b,2. b16} >> \oneVoice r8. |
  %%
  << {\voiceOne c16( b c b c b c b c b c b) e}
     \new Voice {\voiceTwo g,2. g16} >> \oneVoice r8. |
  %%
  << {\voiceOne a2 a4-.~ a4-.}
     \new Voice {
       \voiceTwo fis16( e fis d fis e fis d)
       \repeat unfold 2 {fis( e fis d)}} >>
  %% 20
  << {\voiceOne b'4 a g}
     \new Voice {\voiceTwo g16( fis g d) fis( e fis d) b4} >>
  \oneVoice d16( g-1 b d) |
  %%
  << {\voiceOne e16( d e d  e d e d  e d e d) g}
     \new Voice {\voiceTwo b,2. b16} >> \oneVoice r8. |
  %%
  << {\voiceOne c16( b c b c b c b c b c b) e}
     \new Voice {\voiceTwo g,2. g16} >> \oneVoice r8. |
  %%
  << {\voiceOne a4 d a d,}
     \new Voice {
       \voiceTwo \repeat unfold 3 {fis16( e fis d)} c( b c a)} >> \oneVoice |
  %% 24
  <g' b,>8 r <f e'>16-.->\downbow d'( e d <c e,>-.->) b( c a
  <fis c>-.->) e( fis d |
  %% 25
  <g b,>-.->) a,( b g  <f' e'>-.->) d'( e d  <c e,>-.->) b( c a
  <fis c>-.->) e( fis d |
  %% 26
  <g b,>8-.->) <g b>([ <b-3 d-1>-.]) <b g'>([ <g' b>-.]) <fis a>([ d'-.]) <a fis>( |
  %% 27
  <g b>-.) <b,-1 g-3>([ <b-3 d-1>-.]) <b g'>\downbow([ <g' b>-.])
  <fis a>\downbow([ d']) <a fis>\downbow( |
  %%
  <g b>) r
  << {\voiceOne a,4\upbow b a b a b d, g2 g}
     \new Voice {
       \voiceTwo \repeat unfold 3 {fis16( e fis d) g( fis g d)}
       c( b c a)
       %%
       \repeat unfold 2 {b( d-4 a d-4 g,-0 d' a d)}
     } >> \oneVoice |
  <g b,>2. r4 \bar "|."
}

studyLXprologI = ##f
studyLXprologII = ##f
studyLX = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro con fuoco." 4 = 123
  \key g \major

  \partial 8 <d-1 d'-4>8\f\downbow( |
  %% 1
  <cis-1 cis'-4> <d-1 d'-4>) <d d'>16[ r <b-1 b'-4>8](
  <ais ais'> <b-1 b'-4>) <b b'>16[ r <g-1 g'-4>8]( |
  %% 2
  <fis-1 fis'-4> <g-1 g'-4>) <g g'>16[ r <d-0 d'-3>8](
  <e e'> <d d'>) <d d'>16[ r <d' d'>8]( |
  %% 3
  <cis cis'> <d d'>) <d d'>16[ r <b b'>8](
  <ais ais'> <b b'>) <b b'>16[ r <g g'>8]( |
  %% 4
  <fis fis'> <g g'>) <g g'>16[ r <d d'>8](
  <e e'> <d d'>) <d d'>16[ r <b' b'>8]( |
  %% 5
  <a a'> <d d,>) <d d,>16[ r <d d'>8](
  <e e'> <d d'>) <d d'>16[ r <bes bes'>8]( |
  %% 6
  <a a'> <d d,>) <d d,>16[ r <d d'>8](
  <ees ees'> <d d'>) <d d'>16[ r <d d'>8]( |
  %% 7
  <c c'> <a-0 a'-2>) <a a'>16[ r <fis-1 fis'-4>8](
  <g g'> <g g,>) <g g,>16[ r <g g,>8]( |
  %% 8
  <d d'> <d' d'>) \repeat unfold 3 {<d d'>} r r <d d'>( |
  %% 9
  <cis cis'> <d d'>) <d d'>16[ r <bes bes'>8](
  <a a'> <bes bes'>) <bes bes'>16[ r <g g'>8]( |
  %% 10
  <fis fis'> <g g'>) <g g'>16[ r <d d'>8](
  <ees ees'> <d d'>) <d d'>16[ r <d' d'>8]( |
  %% 11
  <cis cis'> <d d'>) <d d'>16[ r <bes bes'>8](
  <a a'> <bes bes'>) <bes bes'>16[ r <g g'>8]( |
  %% 12
  <fis fis'> <g g'>) <g g'>16[ r <d d'>8](
  <ees ees'> <d d'>) <d d'>16[ r <bes' bes'>8]( |
  %% 13
  <a a'> <d d,>) <d d,>16[ r <d d'>8](
  <ees ees'> <d d'>) <d d'>16[ r <bes bes'>8]( |
  %% 14
  <a a'> <d d,>) <d d,>16[ r <d d'>8](
  <e e'> <d d'>) <d d'>16[ r <d d'>8]( |
  %% 15
  <c-1 c'-4> <a-0 a'-2>) <fis-1 fis'-4>16[ r <d-0 d'-2>8](
  <bes-1 bes'-4> <g-0 g'-2>) <g g'>16[ r <bes-1 bes'-4>8]( |
  %% 16
  <d d'-2> <fis fis'>) <a a'>-2 <fis fis'> <d d'-2> r r <d d'-2>( |
  %% 17
  <d c'-1> <d'-2 c'-4>) <d c'>16[ r <d d,>8](
  <c d,> <d c'>) <d c'>16[ r <d d,>8]( |
  %% 18
  <c d,> <d c'>) <d c'>16[ r <d d,>8](
  <b b,> <g-2 g,>) <g g,>16[ r <d d'-2>8]( |
  %% 19
  <d c'-1> <d' c'>) <d c'>16[ r <d d,>8](
  <c d,> <d c'>) <d c'>16[ r <d d,>8]( |
  %% 20
  <c d,> <d c'>) <d c'>16[ r <d d,>8](
  <b b,> <g-2 g,>) <g g,>16[ r <b b,>8]( |
  %% 21
  <d-2 d,> <fis fis,>) <fis fis,>16[ r <fis fis,>8](
  <a-2 a,> <c c,>) <c d,>16[ r <c c,>8]( |
  %% 22
  <a-2 a,> <fis fis,>) <fis fis,>16[ r <a-2 a,>8](
  <fis fis,> <d-2 d,>) <d d,>16[ r <d d,>8]( |
  %% 23
  <c-1 d,> <d c'>) <d c'>16[ r <d c,>8](
  <c d,> <d c'>) <d c'>16[ r <d d,>8]( |
  %% 24
  <c d,> <d c'>) <d c'>16[ r <d d,>8](
  <bes-4 bes,-1> <g-2 g,>) <g g,>16[ r <d d'>8]( |
  %% 25
  <d c'> <d' c'>) <d c'>16[ r <d d,>8](
  <c d,> <d c'>) <d c'>16[ r <d d,>8]( |
  %% 26
  <c d,> <d c'>) <d c'>16[ r <d d,>8](
  <bes bes,> <g-2 g,>) <g g,>16[ r <bes bes,>8]( |
  %% 27
  <d-2 d,> <fis fis,>) <fis fis,>16[ r <d-2 d,>8](
  <fis fis,> <a-2 a,>) <a a,>16[ r <d,-2 d,>8]( |
  %% 28
  <fis fis,> <a-2 a,>) <a a,>16[ r <fis fis,>8](
  <a a,> <c c,>) <c c,>16[ r <d d,>8]( |
  %% 29
  <e e,> <d d,>) <d d,>16[ r <d d,>8](
  <e e,> <d d,>) <d d,>16[ r <d,-3 d,-0>8]( |
  %% 30
  <e e,> <d d,>) <d d,>16[ r <d d,>8](
  <e e,> <d d,>) <d d,>16[ r <d d,>8]( |
  %% 31
  <c d,> <c fis>) <c fis>16[ r <c d,>8](
  <c fis> <c a'>) <c a'>16[ r <c d,>8]( |
  %% 32
  <b g> <b b'>) <b b'>16[ r <d d,>8](
  <e e,> <d d,>) <d d,>16[ r <d d,>8]( |
  %% 33
  <c d,> <c fis>) <c fis>16[ r <c d,>8](
  <c fis> <c a'>) <c a'>16[ r <c d,>8]( |
  %% 34
  <b g> <b b'>) <b b'>16[ r <d d,>8](
  <e e,> <d d,>) <d d,>16[ r <d f,>8]( |
  %% 35
  <ees f,> <ees-4 a-3>) <ees a>16[ r <ees g>8](
  <d f> <d bes'>) <d bes'>16[ r <d f,>8]( |
  %% 36
  <ees f,> <ees a>) <ees a>16[ r <ees g>8](
  <d f> <d bes'>) <d bes'>16[ r <bes d,>8]( |
  %% 37
  <d f,> <d f>) <d f>16[ r <d f,>8](
  <d f> <d bes'>) <d bes'>16[ r <bes d,>8]( |
  %% 38
  <d f,> <d f>) <d f>16[ r <d f,>8](
  <d f> <d bes'>) <d bes'>16[ r <d d,>8]( |
  %% 39
  <c d,> <a fis'>) <a fis'>16[ r <c d,>8](
  <a fis'> <c a'>) <c a'>16[ r <c d,>8]( |
  %% 40
  <b g> <b b'>) <b b'>16-.[ r <d d,>8](
  <e e,> <d d,>) <d d,>16-.[ r <d d,>8]( |
  %% 41
  <c d,> <a fis'>) <a fis'>16-.[ r <c d,>8](
  <a fis'> <c a'>) <c a'>16-.[ r <c d,>8]( |
  %% 42
  <b g> <b b'>) <b b'>16-.[ r <d d,>8](
  <e e,> <d d,>) <d d,>16-.[ r <d d,>8]( |
  %% 43
  <a c> <b g>) <a d,>16-.[ r <a c>8](
  <b g> <a d,>) <g b,>16-.[ r <d d'>8]( |
  %% 44
  <a' c> <bes g>) <a d,>16-.[ r <a c>8](
  <bes g> <a d,>) <g bes,>16-.[ r <d d'>8]( |
  %% 45
  <ees ees'> <d d'>) <d d'>16-.[ r <d d'>8](
  <ees ees'> <d d'>) <d d'>16-.[ r <a' a'>8]( |
  %% 46
  <bes bes'> <a a'>) <a a'>16-.[ r <d d'>8](
  <ees ees'> <d d'>) <d d'>16-.[ r <d d'>8]( |
  %% 47
  <cis cis'> <d d'>) <d d'>16-.[ r <d d'>8](
  <ees ees'> <d d'>) <d d'>16-.[ r <d d'>8]( |
  %% 48
  <cis cis'> <d d'>) <d d'>16-.[ r <d d'>8](
  <ees ees'> <d d'>) <d d'>16-.[ r <d-3 d,-0>8]( |
  %% 49
  <e e,> <d d,>) <e e,>16-.[ r <d d,>8](
  <e e,> <d d,>) <d d,>16-.[ r <d d,>8]( |
  %% 50
  <e e,> <d d,>) <e e,>16-.[ r <d d,>8](
  <e e,> <d d,>) <d d,>16-.[ r <d d'>8]( |
  %% 51
  <cis cis'> <d d'>) <d d'>16-.[ r <b b'>8](
  <ais ais'> <b b'>) <b b'>16-.[ r <g g'>8]( |
  %% 52
  <fis fis'> <g g'>) <g g'>16-.[ r <d d'>8](
  <e' e,> <d d,>) <d d,>16-.[ r <d d'>8]( |
  %% 53
  <cis cis'> <d d'>) <d d'>16-.[ r <b b'>8](
  <ais ais'> <b b'>) <b b'>16-.[ r <g g'>8]( |
  %% 54
  <fis fis'> <g g'>) <g g'>16-.[ r <d d'>8](
  <e' e,> <d d,>) <d d,>16-.[ r <b b'>8]( |
  %% 55
  <a a'> <d d,>) <d d,>16-.[ r <d d'>8](
  <e e'> <d d'>) <d d'>16-.[ r <bes bes'>8]( |
  %% 56
  <a a'> <d d,>) <d d,>16-.[ r <d d'>8](
  <ees ees'> <d d'>) <d d'>16-.[ r <d d'>8]( |
  %% 57
  <c c'> <a-0 a'>) <fis fis'>16-.[ r <d d'-2>8](
  <bes' bes,> <g-2 g,>) <g g,>16-.[ r <bes bes,>8]( |
  %% 58
  <a a,> <d d,>) \repeat unfold 3 {<d d,>} r r <d d'>( |
  %% 59
  <cis cis'> <d d'>) <d d'>16-.[ r <b b'>8](
  <ais ais'> <b b'>) <b b'>16-.[ r <g g'>8]( |
  %% 60
  <fis fis'> <g g'>) <g g'>16-.[ r <d d'>8](
  <e' e,> <d d,>) <d d,>16-.[ r <d d'>8]( |
  %% 61
  <cis cis'> <d d'>) <d d'>16-.[ r <b b'>8](
  <ais ais'> <b b'>) <b b'>16-.[ r <g g'>8]( |
  %% 62
  <fis fis'> <g g'>) <g g'>16-.[ r <d d'>8](
  <e' e,> <d d,>) <d d,>16-.[ r <d d,>8]( |
  %% 63
  <e e,> <d d,>) <e e,>16-.[ r <d d,>8](
  <e e,> <d d,>) <d d,>16-.[ r <d d,>8]( |
  %% 64
  <e e,> <d d,>) <e e,>16-.[ r <d d,>8](
  <e e,>[ <d d,>]) <d d,>8-. r |
  %% 65
  <g, g,>2\ff <g g,>4. <g g,>8( | <a a,>-> <g g,>) <g g,> r8 r2 \bar "|."
}

%%% ------------

\header {
  arranger = "Edited by Gaston Blay"
  composer = \Composer
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
%  opus = \Opus
  source = "http://imslp.org/"
  title = "Sixty Studies For the Violin"
}

#(define fileBaseName "Franz_Wohlfahrt-opus_45")
   
\include "paper.ily"

include(`foreach.m4')

define(`EmitStudy', `
   $(if study$1prologI #{ \study$1prologI #} )
   $(if study$1prologII #{ \study$1prologII #} )
\score {
  \new Staff \study$1
  \header {
    opus = \Opus
    piece = "$1."
  }
  \layout {
    indent = #0
  }
}')

define(`EmitPart', `
  \bookpart{
    \header {
      subtitle = "Book $1."
    }
    foreach(`Study', StudiesPart$1, `EmitStudy(Study)') 
  }')

define(`StudiesPartI', `(I, II, III, IV, V, VI, VII, VIII, IX, X, XI, XII, XIII, XIV, XV, XVI, XVII, XVIII, XIX, XX, XXI, XXII, XXIII, XXIV, XXV, XXVI, XXVII, XXVIII, XXIX, XXX)')

define(`StudiesPartII', `(XXXI, XXXII, XXXIII, XXXIV, XXXV, XXXVI, XXXVII, XXXVIII, XXXIX, XL, XLI, XLII, XLIII, XLIV, XLV, XLVI, XLVII, XLVIII, XLIX, L, LI, LII, LIII, LIV, LV, LVI, LVII, LVIII, LIX, LX)')

define(`Parts', `(I, II)')

\book {
  \bookOutputName \fileBaseName

  foreach(`Item', Parts, `EmitPart(Item)')
}

\include "articulate.ly"

define(`EmitMidi', `
\book {
  \bookOutputName #(string-append fileBaseName "-$1")
  \score {
    \articulate \unfoldRepeats
    \new Staff \study$1
    \midi {}
  }
}')

foreach(`Study', StudiesPartI, `EmitMidi(Study)')
foreach(`Study', StudiesPartII, `EmitMidi(Study)')

