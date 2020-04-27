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

  #(define fonts
    (set-global-fonts
     #:roman "GFS Artemisia"
     #:sans "Montserrat"
   ))

  binding-offset = 5\mm
  page-breaking = #ly:page-turn-breaking
  two-sided = ##t
  auto-first-page-number = ##t
  blank-after-score-page-penalty = #.1
  number-of-division = 21
  division-width  = #(/ (- paper-width binding-offset) number-of-division)
  division-height = #(/ paper-height number-of-division)
  inner-margin  = #(* 1 division-width)
  outer-margin  = #(* 2 division-width)
  top-margin    = #(* 1 division-height)
  bottom-margin = #(* 2 division-height)
  line-width =  #(- (- paper-width (* 3 division-width)) binding-offset)

  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line { \fromproperty #'header:dedication }
      \override #'(baseline-skip . 4)
      \column {
        \fill-line {
          \abs-fontsize #20 \bold \sans \fromproperty #'header:title
        }
        \fill-line {
          \override #'(font-name . "Montserrat SemiBold")
          \abs-fontsize #14 \fromproperty #'header:subtitle
        }
        \fill-line {
          \smaller \bold
          \fromproperty #'header:subsubtitle
        }
        \fill-line {
          \fromproperty #'header:poet
          { \override #'(font-name . "Montserrat SemiBold")
            \larger \fromproperty #'header:instrument }
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
    \override #'(font-name . "Montserrat Medium")
    \larger \fromproperty #'header:piece
  }

  oddHeaderMarkup = \markup \overlay {
    \override #'(font-name . "Montserrat Medium")
    \fill-line {
      %% force the header to take some space, otherwise the
      %% page layout becomes a complete mess.
      " "
      \on-the-fly #not-part-first-page \fromproperty #'header:instrument
      \on-the-fly #print-page-number-check-first
      \sans \fromproperty #'page:page-number-string
    }
    \on-the-fly #not-part-first-page \lower #1 \draw-hline
  }

  evenHeaderMarkup = \markup \overlay {
    \override #'(font-name . "Montserrat Medium")
    \fill-line {
      \on-the-fly #print-page-number-check-first
      \sans \fromproperty #'page:page-number-string
      \on-the-fly #not-part-first-page \sans \fromproperty #'header:instrument
      " "
    }
    \on-the-fly #not-part-first-page \lower #1 \draw-hline
  }

  top-system-spacing.padding = 2
  %% TODO: Should be zero on first page!
  top-markup-spacing.padding = 3
  system-system-spacing.stretchability = 24
}

%%% Local Variables:
%%% eval: (LilyPond-mode)
%%% End:
