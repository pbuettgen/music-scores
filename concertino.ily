%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2020-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

include(`foreach.m4')

define(`PianoMovement', `
\score {
  <<
    \new Staff \with {
      instrumentName = "Violino."
      \magnifyStaff #.75
    } { \globalMovement$1 \killCues\violinMovement$1 }
    \new PianoStaff \with {
      instrumentName = "Piano."
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
    piece = \markup\larger\caps\titleMovement$1
  }
}')

define(`ViolinMovement', `
\score {
  \new Staff \with {
    \accidentalStyle modern-cautionary
  } {
    \compressFullBarRests
    \globalMovement$1 \violinMovement$1
  }
  \header {
    piece = \markup\larger\caps\titleMovement$1
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
