%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2020-2021 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

\version "2.20"

violinIIduoImovementIIvoltaI = {
  << {\voiceOne e4\p( d e) | f( d g) | e( d c)}
     \new Voice {\voiceTwo g2. | g2. | g2.} >> \oneVoice | b4( g f') |
  e( g f | e d c) | b( d c) | b( g) r |
  << {\voiceOne e'4\downbow( d e) | f( d g) | e( d c | b g)}
     \new Voice {\voiceTwo g2. | g2. | g2.} >> \oneVoice f'4\f |
  e( g f) | e( d e) | f( d g) | e( c)
}

violinIIduoImovementIIvoltaII = {
  r4 | r r a'\p\upbow | d( e d) | cis2( a4) | c( d c) | b2( g4) |
  c( g gis) | a( d, dis) | e( e') r |
  << {\voiceOne e,4\downbow( d e) | f( d g) | e( d c | b g)}
     \new Voice {\voiceTwo g2. | g2. | g2.} >> \oneVoice f'4\f |
  e( g f) | e( d e) | f( d g) |
}

%%% Local Variables:
%%% coding: utf-8
%%% eval: (LilyPond-mode)
%%% End:
