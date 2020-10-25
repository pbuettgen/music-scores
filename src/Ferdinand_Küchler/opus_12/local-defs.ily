%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2020-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

\version "2.20"

pMaEspressivo = \markup {\dynamic "p" \italic "ma espressivo"}
pocoRit = \markup {\italic #"poco rit."}
sempreF = \markup {\italic #"sempre" \dynamic #"f"}
simile = \markup {\italic #"simile"}
tranquillo= \markup {\italic #"tranquillo"}

footnoteI = \markup {
  \score {
    \new Staff \with {
      \magnifyStaff #.7   % .7 * 20 pt = 14 pt
    } \relative c'' {
      \key d \major
      \time 6/8
      b16^"Schreibweise"( cis b cis b8-.) fis16( g fis g fis8-.) \bar "||"
      b16^"Ausführung"( cis b cis b) r fis16( g fis g fis) r \bar "|."
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
