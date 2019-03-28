%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2016 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

include(`foreach.m4')

foreach(`duo', AllDuetts,
`ifdef(MovementsDuo`'duo, `', `define(MovementsDuo`'duo, Movements)')')

%%% Layout
define(`EmitVoice', `
\globalduo$1movement$2 \violin$3duo$1movement$2')

define(`EmitStaffViolinX', `
\new Staff << EmitVoice($1, $2, $3) >>')

define(`EmitMovementFull', `
\score{
  \header {
    piece = \titleduo$1movement$2
  }
  \new StaffGroup <<
    foreach(`violin', AllViolins, `EmitStaffViolinX($1, $2, violin)')
  >>
  \layout {
%%    indent = #0
  }
}')

define(`EmitDuettFull', `
\bookpart{
  \header {
    subtitle = "Duo $1"
  }
  foreach(`movement', MovementsDuo$1, `EmitMovementFull($1, movement)')
}')

define(`EmitMovementViolinX', `
\score{
  \header {
    piece = \titleduo$2movement$3
  }
  EmitStaffViolinX($2, $3, $1)
  \layout {
%%    indent = #0
  }
}')

define(`EmitDuettViolinX', `
\bookpart{
  \header {
    subtitle = "Duo $2"
  }
  foreach(`movement', MovementsDuo$2, `EmitMovementViolinX($1, $2, movement)')
}')

define(`EmitViolinX', `
\book {
  \bookOutputName #(string-append fileBaseName "-violin_$1")
  \header {
    instrument = "Violin $1"
  }
  foreach(`duett', AllDuetts, `EmitDuettViolinX($1, duett)')
}')

%% Complete Score
\book {
  \bookOutputName \fileBaseName
  foreach(`duett', AllDuetts, `EmitDuettFull(duett)')
}

foreach(`violin', AllViolins, `EmitViolinX(violin)')

%%% Midi

\include "articulate.ly"

define(`EmitMidiStaff', `
\new Staff << {
  foreach(`movement', MovementsDuo$1, `EmitVoice($1, movement, $2)')
  } >>')

define(`EmitMidiDuo', `
\book {
  \bookOutputName #(string-append fileBaseName "-duo_$1")
  \score {
    \articulate \unfoldRepeats
    \new StaffGroup <<
      foreach(`violin', AllViolins, `EmitMidiStaff($1, violin)')
    >>
    \midi{}
  }
}')

foreach(`duett', AllDuetts, `EmitMidiDuo(duett)')
