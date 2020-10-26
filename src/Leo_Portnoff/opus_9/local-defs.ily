%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2018-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

\version "2.20"

brillante = \markup {\italic #"brillante"}
cadenzaAdLib = \markup {\italic #"Cadenza ad lib."}
espressione = \markup {\italic #"espressione"}
grazioso = \markup {\italic #"grazioso"}
leggiero = \markup {\italic #"leggiero"}
morendo = \markup {\italic #"morendo"}
piuMoto = \markup {\italic #"più moto"}
pocoDim = \markup {\italic #"poco dim."}
pocoRit = \markup {\italic #"poco rit."}
risoluto = \markup {\italic #"risoluto"}
sostenuto = \markup {\italic #"sostenuto" }
tenutoTxt = \markup { \italic #"tenuto" }
tranquillo = \markup {\italic #"tranquillo"}
pMarcato = #(make-dynamic-script
             (markup #:line (
               #:dynamic "p"
               #:normal-text
               #:italic " marcato"
               #:hspace -9.9)))

%%% Local Variables:
%%% coding: utf-8
%%% eval: (LilyPond-mode)
%%% End:
