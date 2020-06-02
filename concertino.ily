%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2020-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\include "paper.ily"

include(`foreach.m4')

define(`PianoMovement', `
\score {
  <<
    \new Staff \with {
      \override InstrumentName.self-alignment-X = #RIGHT
      \override InstrumentName.padding = #.8
      \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
      instrumentName = #"Violino."
      \magnifyStaff #.7   % .7 * 20 pt = 14 pt
    } \keepWithTag #''`PIANO { \globalMovement$1 \killCues\violinMovement$1 }
    \new PianoStaff \with {
      \override InstrumentName.self-alignment-X = #RIGHT
      \override InstrumentName.padding = #.8
      instrumentName = #"Piano."
      \accidentalStyle piano-cautionary
      connectArpeggios = ##t
    } <<
      \new Staff = "up" {
        \globalMovement$1 \pianoUpMovement$1
      }
      \new Staff = "down" {
        \globalMovement$1 \clef "bass" \pianoDownMovement$1
      }
    >>
  >>
  \header {
    piece = \titleMovement$1
  }
}')

define(`ViolinMovement', `
\score {
  \new Staff \with {
    \accidentalStyle modern-cautionary
    \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  } \keepWithTag #''`VIOLIN {
    \compressFullBarRests
    \globalMovement$1 \violinMovement$1
  }
  \header {
    piece = \titleMovement$1
  }
}')

\book {
  \bookOutputSuffix "piano"

  foreach(Mvmnt, Movements, `PianoMovement(Mvmnt)')
}

\book {
  \bookOutputSuffix "violin"

  foreach(Mvmnt, Movements, `ViolinMovement(Mvmnt)')

  \header {
    instrument = "Violino."
  }
}

%%% Local Variables:
%%% coding: utf-8
%%% eval: (LilyPond-mode)
%%% End:
