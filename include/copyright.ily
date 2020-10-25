%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2016-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

\version "2.20"

\header {
  copyright = \markup \overlay {
    \raise #1.6 \draw-hline
    \fill-line \general-align #Y #CENTER {
      \tiny \sans #(strftime "Copyright © %Y Philipp Büttgenbach"
                    (localtime (current-time)))
      \with-url #"http://creativecommons.org/licenses/by-sa/4.0/"
      \epsfile #X #11 #"cc-by-sa.eps"
    }
  }
}
