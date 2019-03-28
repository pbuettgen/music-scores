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

adLib = \markup {\italic "ad lib."}
allargando = \markup {\italic "allargando"}
cadenzaAdLib = \markup {\italic #"Cadenza ad lib."}
espressivoTxt = \markup {\italic "espressivo"}
marcatoTxt = \markup {\italic "marcato"}
pMaEspressivo = \markup {\dynamic "p" \italic "ma espressivo"}
pocoRit = \markup {\italic #"poco rit."}
simile = \markup {\italic #"simile"}
tenutoTxt = \markup {\italic "tenuto"}

titleMovementI = #""

globalMovementI = {
  \time 4/4
  \tempo "Nicht schnell, anmutig, erzählend" 4 = 108
  \key e \minor
}

violinMovementI = \relative d' {
  r2 r4 d-2\p\upbow | g\flageolet( d e d) | b8( d g-1 a b4. c8) |
  << d2. {s4\< s s\!} >> e8-- fis-- |
  << d2.( {s4\< s s\!} >> \tuplet 3/2 4 {e8--) fis-- g--} |
  d4\>( a b a\!) | g8( a e fis d2) | d4( a) b( e-3) | d2. d4-2\p\upbow |
  g\flageolet( d e d) | b8-2( d\open g-1 a b4. c8) |
  << d2. {s4\< s s\!} >> e8-- fis-- |
  << d2.( {s4\< s s\!} >> \tuplet 3/2 4 {e8--) fis-- g--} |
  d4\mf( a\dim b a) | g8( a e fis d4. e8) | fis4\p( cis) d( cis) |
  b2. b4\upbow | e( b c b) | gis8( b e fis gis4. a8) |
  << b2. {s4\< s s\!} >> c8-- d-- |
  << b2.( {s4\< s s\!} >> \tuplet 3/2 4 {c8--) d-- e---4} |
  b4\downbow\p( fis g fis) | dis8( fis b cis dis4. e8) |
  << fis2. {s4\< s s\!} >> g8-- a-- |
  << fis2.( {s4\< s s\!} >> \tuplet 3/2 4 {g8--) a---1 b--} |
  c2.\pp\downbow( b8 a) | c4( g2) f8 e-4 | g4\>( ees\!) g\>( d\!) |
  g8\>( c,-2 b a\!) g2 | g2\p\downbow f4--( e--) |
  g2-1~ g8 g--\<( c--\> bes--\!) | a2 g4---3( f--) |
  a2-4~ a8 a\<( d\flageolet\> c-2\!) | b4\cresc( fis'2->) g8-- a-- |
  b,4( g'2->-4) a8-- b-- | d,4( a'2->) b8-- c-- |
  a8\f\>( fis d-3 c a^\rit fis e\prall d) | g4\flageolet\p( d e d) |
  b8( d g-1 a b4. c8) |
  << d2. {s4\< s s\!} >> e8-- fis-- |
  << d2.( {s4\< s s\!} >> \tuplet 3/2 {e8--) fis-- g--} | d4\mf( a b a\dim) |
  g8( a e fis d4. e8) | d4( g,) b( a) | g2.\p g'4\upbow |
  aes2.( g8 f) | d'4\flageolet( g,2-1 g4---3\upbow) |
  aes8( g f g-1 aes) b( c d\flageolet) | g,2.-1 g4\upbow |
  g'2. fis8-- e-- | g4( d2-3) c8-- b-- | d4-1\>( bes\!) d\>( a\!) |
  d8\flageolet( g,-3 fis e) d4.\upbow( fis8) | g4\p( d e d) |
  b8\<( d g-1 a b4.\> c8) | gis4\p( e-1 f e) | c8( e a b c4.\> b8) |
  a8\downbow\<( b c e\open\!) b'4.-2( a8) | g8( fis e b-1) c2~ |
  c8 b--( a-- e--) a4.-2\>( b8) | g2.\p d4\upbow |
  ees8\mf( d c d e) fis( g a) | b4( g2-3) d'4\upbow |
  ees8\pp( d fis d-1 ees) fis\<( g a\!) | b4( g2-2) a4\upbow |
  b\dim( g a g) | d( b c b) | g8( b g e) d( e d b\!) |
  g2~ g8 b--( d-- e--) |
  g2.-1\pp^\markup {\italic "morendo e rit."} a4 | b1\ppp\fermata \bar "|."
}

violinMovementIViolin = \new Voice \violinMovementI
violinMovementIPiano = \new Voice \violinMovementI

pianoUpMovementI = \new Voice \relative b {
  \clef "alto" r8\p <b g d>4 <b g d>8
  \repeat unfold 2 {r8 <b g d>4 <b g d>8} r8 <c g e>4 <b g d>8 |
  r8 <b g d>4( <d a fis>8) r8 <g d b>4( <g c>8) |
  \repeat unfold 2 {r8 <fis d>} r8 <g d> r <a d,> |
  \repeat unfold 2 {r8 <fis d>} r8 <g d> r <g e> |
  r8 <g d> r <a d, c> r <g d b> r <fis d a> |
  r8 <e c g> r <d a fis>\< r <d g,> r <d b e,>\! |
  r8 << {\voiceTwo fis,\>( a fis gis eis g e\!) }
     \new Voice {\voiceOne s8 d'2(  cis4)} >> \oneVoice | <d fis,>1 |
  r8\p <b g d>4 <b g d>8 r <c g e>4 <b g d>8 |
  r8 <b g d>4 <d a fis>8 r8 <g d b>4( <g c,>8) |
  \repeat unfold 2 {r8 <fis d>} r8 <g d> r <a d,> |
  \repeat unfold 2 {r8 <fis d>} r8 <g d> r <g e> |
  r8 <g d> r <a d, c> r <g d b> r <fis d a> |
  r8 <e c g> r <d a fis> r <d g,> r <cis b e,> |
  r8 <d b fis>4 <cis g e>8 r <ais fis d>4 <ais fis cis>8 |
  r8 <b fis d>4 <b fis d>8 r8 <b fis d>4( <a fis d>8) |
  r8\p <gis e b>4 <gis e b>8 r8 <a e c>4 <gis e b>8 |
  r8 <gis e b>4( <b fis dis>8) <e b gis>4.( <e a,>8) |
  \repeat unfold 2 {r8 <d b>} r8 <e b> r8 <fis b,> |
  \repeat unfold 2 {r8 <d b>} r8 <e b> r8 <fis e c> |
  <fis dis b>\p <dis b fis>4 <dis b fis>8 r8 <e b g>4 <dis b fis>8 |
  r8 <dis b fis>4( <fis cis ais>8) r8 <b fis dis>4( <b e,>8) |
  \repeat unfold 2 {r8 <a fis>} r8 <b fis> r8 <c fis,> |
  \repeat unfold 2 {r8 <a fis>} r8 <b fis> r8 <b g f> |
  \repeat percent 2 {
    r8\pp <c g e> \repeat unfold 3 {r8 <c g e>}
  }
  \repeat unfold 2 {r8 <b g ees>} r8 <b g d> r8 <g d b> |
  \repeat unfold 2 {r8 <g d b>} \repeat unfold 2 {r8 <g f b,>} |
  \repeat unfold 2 {r8 <g e>} r8 <f c> r8 <e c> |
  %% 31
  \clef "violin" r8 <g e> r <c g> r <g' c, g>4 <g bes, g>8 |
  r8 <g a, g> r <cis, g> r <d g,> r <cis g> |
  %% 33
  r8\< <a' d, a> r <a cis, a>\! r\> <a d, a>4 <a c, a>8\! |
  %% 34
  r8\< <a b, a> r8 <dis, a>\! r8\> <e a,> r <dis b a>\! |
  %% 35
  << \repeat unfold 4 {r8 <e b g>} {s8\< s4 s8\! s8\> s4 s8\!} >> |
  %% 36
  r8\< <a d, a> r <fis d a> r <c' fis, d> r <a d,>\! |
  %% 37
  <d fis, d>8\arpeggio r8 r4 r2_\rit \clef "alto" |
  r8\p <b,, g d>4 <b g d>8 r <c g e>4 <b g d>8 |
  r8 <b g d>4( <d a fis>8) r8 <g d b>4( <g c,>8) |
  \repeat unfold 2 {r8 <fis d>} r8 <g d> r <a d,> |
  \repeat unfold 2 {r8 <fis d>} r8 <g d> r <g e> |
  r8 <g d> r <a d, c> r <g d b> r <fis d a> |
  r8\dim <e c g> r <d a fis> r <d g,> r <e c g> |
  << {\voiceOne d2 cis4 c4}
     \new Voice {\voiceTwo r8 b g b e, g fis d} >> \oneVoice |
  r8\p\< <b' g> r <c g> << {\voiceOne d8\f\> e d c}
                          \new Voice {\voiceTwo g2} >> \oneVoice |
  r8\p <b aes> \repeat unfold 3 {r8 <b aes>} |
  \repeat unfold 4 {r8 <b g>} | \repeat unfold 4 {r8 <b aes>} |
  \repeat unfold 4 {r8 <b g>} | r8 <c g> \repeat unfold 3 {r8 <e c g>} |
  r8 <d b> \repeat unfold 3 {r8 <d b g>} |
  r8 <d bes> r8 <d bes fis> \repeat unfold 6 {r8 <d a fis>} |
  << {\voiceOne d2-> c4-> b-> | d2->}
     \new Voice {\voiceTwo r8 <b g>4 <b g>8 r8 <g e> r <g d> |
                 r8 <b g>4 <g b>8} >> \oneVoice
  <b g>4 r4 |
  << {\voiceOne e2\p( d4 c) | e2}
     \new Voice {\voiceTwo r8 <c gis>4 <c gis>8 r8 <gis f>8 r <gis e> |
                 r8 <c a e>4 <c a e>8} >> \oneVoice <c a e>4 r4 |
  << \repeat unfold 2 {r8 <d c a>4 <d c a>8} s8\f >> |
  r8 <d b g>4 <d b fis>8 \repeat unfold 2 {r8 <e c e,>4 <e c e,>8}
  r8 <d c fis,>4 <d c fis,>8 |
  << {\voiceOne d2->( c4 b) | fis'1\fp( | g4) d( e d) | fis1\fp}
     \new Voice {
       \voiceTwo
       \repeat unfold 2 {
         \repeat unfold 2 {r8 <b, g>} \repeat unfold 2 {r8 g} |
         <a g>1 | 
       }
     } >> \oneVoice |
  r8\p <g' d b> r8 <g d b> r <g c,> r <a fis c> |
  r8\mf <b g d>\dim r8 <b g d> r <c a e>4--( <b g d>8) |
  \repeat unfold 2 {r8 <g d b>} r8 <a ees c>4--( <g d b>8) |
  r8 <d b g> r <c g e> \repeat unfold 2 {r <b g d>-.} |
  r8\pp <g d b> << \repeat unfold 5 {r8 <g d b>} {s8*8 s8_\pocoRit} >>
  r8 <g c,> r <a fis d c> | <b g d>1\ppp\fermata \bar "|."
}

pianoDownMovementI = \new Voice \relative g, {
  g2 g | g g | g g'4.( a8) | \repeat percent 2 { b4( b, b' c->) } |
  b( fis g d) | e( c b g) | a1 | d8^\<( d, fis a\!) d^\>( b c a\! |
  g2) g | g g'4.( a8) | \repeat percent 2 {b4( b, b' c->)} |
  b4( fis g d) | e( c b g) | fis2 <fis fis,> |
  <b b,>4.^\< b,8( d fis b4\!) | e,2 e | e e'4.( fis8) |
  \repeat percent 2 {gis4( gis, gis' a->)} | b,2 b | b b'4.( cis8) |
  dis4( dis, dis' e->) | dis4( dis, dis' d4->) |
  \repeat percent 2 {
    << {\voiceOne c4( g a g)} \new Voice {\voiceTwo c,1} >>
  }
  << {\voiceOne b'4( g a g) | f( g d g) | c\p( g a g) | e8\<( g-1 c-3 d\!)}
     \new Voice {\voiceTwo c,1 | c | c~ | c4} >> \oneVoice e'4.\>( d8\!) |
  cis4( a bes-2 a) | f8( a d-1 e-3 f4. e8-1) | \clef "violin" dis4( b c b) |
  e( b c b) | fis'4->( d a'-> fis |
  c'8) r8 r4 r2 \clef "bass" |
  g,,2 g | g g'4.( a8) | \repeat percent 2 {b4-1( b, b' c->-2)} |
  b4( fis-2 g d-3) | e( c b c) | d2-1( d,) | g4-3( a b8 c-4 d e) |
  \repeat percent 4 {
    << {\voiceOne f4( d e d)} \new Voice {\voiceTwo g,1} >>
  }
  << {\voiceOne e'4( c d c) | g'( d e d) | fis( d e d) | c( d a d) }
     \new Voice {\voiceTwo g,1~ | g | g~ | g} >> \oneVoice |
  g2 g, | g'2~ g8 d( g f | e1) | a2~ a8 e( a g | fis2) fis' |
  g, gis | a d, |
  << {\voiceOne g'4( d e d)} \new Voice {\voiceTwo g,1} >> \oneVoice |
  <ees' c g>1( | <d g,>2)( c4 b | <ees c g>1)( | <d g,>4) d4( e d) |
  g,1^~ | <g g,> | <g g,>2 <g g,> | <g^~ g,>1 |
  << {\voiceOne g4 d\<( ees\> d\!)} \new Voice {\voiceTwo g,1} >> \oneVoice |
  <g g'>1\fermata \bar "|."
}

%%% ------------

\header {
  arranger = ##f
  composer = "Leo Portnoff"
  copyright = \copyrightText
  tagline = ##f
  enteredby = "Philipp Büttgenbach"
  opus = "Opus 4"
  source = "http://imslp.org/"
  title = "Romanze."
}

\include "paper.ily"

#(define fileBaseName "Leo_Portnoff-opus_4")

define(`PianoMovement', `\score {
    <<
      \new Staff \with {
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
      } { \globalMovement$1 \violinMovement$1Piano }
      \new PianoStaff <<
        \new Staff = "up" \with {
          \accidentalStyle modern-cautionary
        } {
          \globalMovement$1 \pianoUpMovement$1
        }
        \new Staff = "down" \with {
          \accidentalStyle modern-cautionary
        } {
          \globalMovement$1 \clef bass \pianoDownMovement$1
        }
      >>
    >>
    \layout {
%%      indent = #0
    }
    \header {
      piece = \titleMovement$1
    }
  }')

\book {
  \bookOutputName #(string-append fileBaseName "-piano")

  PianoMovement(`I')
}

define(`ViolinMovement', `
  \score {
    \new Staff \with {
      \accidentalStyle modern-cautionary
    } {
      \compressFullBarRests
      \globalMovement$1 \violinMovement$1Violin
    }
    \layout {
%%      indent = #0
    }
    \header {
      piece = \titleMovement$1
    }
  }')

\book {
  \bookOutputName #(string-append fileBaseName "-violin")
  ViolinMovement(`I')
}

\include "articulate.ly"

\book {
  \bookOutputName \fileBaseName
  \score {
    \articulate \unfoldRepeats
    \new StaffGroup <<
      \new Staff \with {
        midiInstrument = #"violin"
      } { \globalMovementI   \violinMovementIPiano
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

