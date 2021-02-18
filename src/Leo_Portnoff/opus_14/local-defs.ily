%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2020-2021 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

\version "2.20"

footnoteI = \markup {
  \score {
    \new Staff \with {
      \magnifyStaff #.7   % .7 * 20 pt = 14 pt
    } \relative g {
      \key c \major
      \time 4/4
      \clef "tenor"
      \tupletDown
      gis8( \tuplet 3/2 {a16-2 gis-1 fisis\open} gis8-1 a-1 b4 c)
    }
    \layout {
      indent = #0
    }
  }
}

%%% Local Variables:
%%% coding: utf-8
%%% eval: (LilyPond-mode)
%%% End:
