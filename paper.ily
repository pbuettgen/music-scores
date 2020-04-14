%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2019-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\paper {
  #(set-paper-size "c4")
  binding-offset = 8\mm
  page-breaking = #ly:page-turn-breaking
  two-sided = ##t
  auto-first-page-number = ##t
  blank-after-score-page-penalty = #.1

  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line { \fromproperty #'header:dedication }
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line {
          \huge \larger \larger \bold
          \fromproperty #'header:title
        }
        \fill-line {
          \large \bold
          \fromproperty #'header:subtitle
        }
        \fill-line {
          \smaller \bold
          \fromproperty #'header:subsubtitle
        }
        \fill-line {
          \fromproperty #'header:poet
          { \large \bold \fromproperty #'header:instrument }
          \fromproperty #'header:composer
        }
        \fill-line {
          \fromproperty #'header:meter
          \fromproperty #'header:arranger
        }
        \fill-line {
          ""
          \fromproperty #'header:opus
        }
      }
    }
  }

  scoreTitleMarkup = \markup \column {
    \on-the-fly \print-all-headers { \bookTitleMarkup \hspace #1 }
    \larger \fromproperty #'header:piece
  }

  oddHeaderMarkup = \markup \fill-line {
    %% force the header to take some space, otherwise the
    %% page layout becomes a complete mess.
    " "
    \on-the-fly #not-part-first-page \fromproperty #'header:instrument
    \on-the-fly #print-page-number-check-first \with-dimensions #'(-12 . -9) #'(-.4 . 1.2) \sans\italic \right-align \fromproperty #'page:page-number-string
  }

  %% evenHeaderMarkup would inherit the value of
  %% oddHeaderMarkup if it were not defined here
  evenHeaderMarkup = \markup \fill-line {
    \on-the-fly #print-page-number-check-first \with-dimensions #'(9 . 12) #'(-.4 . 1.2) \sans\italic \fromproperty #'page:page-number-string
    \on-the-fly #not-part-first-page \fromproperty #'header:instrument
    " "
  }
}

%%% Local Variables:
%%% eval: (LilyPond-mode)
%%% End:
