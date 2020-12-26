%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2020-2020 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

\version "2.20"

agitato = \markup {\italic #"agitato"}
attacca = \markup {\italic #"attacca"}
brillante = \markup {\italic #"brillante"}
energico = \markup {\italic #"energico"}
espressione = \markup {\italic #"espressione"}
espressivoText = \markup {\italic #"espressivo"}
fEnergico = #(make-dynamic-script
             (markup #:line (
               #:dynamic "f"
               #:normal-text
               #:italic " energico"
               #:hspace -9.9)))
fAgitato = #(make-dynamic-script
             (markup #:line (
               #:dynamic "f"
               #:normal-text
               #:italic " agitato"
               #:hspace -6)))
grazioso = \markup {\italic #"grazioso"}
leggiero = \markup {\italic #"leggiero"}
marcatoBasso = \markup {\italic #"marcato basso"}
morendo = \markup {\italic #"morendo"}
piuMoto = \markup {\italic #"più moto"}
pocoCresc = #(
  make-music 'CrescendoEvent
  'span-direction START
  'span-type 'text
  'span-text "poco cresc.")
pocoDim = #(
  make-music 'CrescendoEvent
  'span-direction START
  'span-type 'text
  'span-text "poco dim.")
pocoPocoCresc = #(
  make-music 'CrescendoEvent
  'span-direction START
  'span-type 'text
  'span-text "poco a poco cresc.")
pocoPocoMorendo = \markup {\italic "poco a poco morendo"}
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
simile = \markup {\italic #"simile"}

%%% Local Variables:
%%% coding: utf-8
%%% eval: (LilyPond-mode)
%%% End:
