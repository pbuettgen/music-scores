## -*- coding: utf-8 -*-
%% -*- coding: utf-8 -*-

<%doc>
Copyright © 2020-2020 Philipp Büttgenbach

This work is licensed under the Creative Commons
Attribution-ShareAlike 4.0 International License.  To view a copy of
this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
</%doc>

<%namespace file="common_blocks.mako" import="*"/>

${lilypond_preamble()}

${global_header_block(xml_root, composer_db)}

\book {
% for violinduo in xml_root.findall("violinduo"):
  \bookpart {
% for mvmnt in violinduo.findall("movement"):
    \score {
% if mvmnt.find("piece") is not None:
      \header {
        piece = "${mvmnt.find('piece').text}"
      }
% endif
      \new StaffGroup \with { \consists "Page_turn_engraver" } <<
% for vln in mvmnt.findall("violin"):
        \new Staff \with {
          \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
          \accidentalStyle modern-cautionary
          \override InstrumentName.self-alignment-X = #RIGHT
          \override InstrumentName.padding = #.8
          instrumentName = #"${'Vln. ' + vln.attrib['number']}"
        } {
          \time ${mvmnt.find("time").text}
          \tempo ${mvmnt.find("tempo").text}
          \key ${mvmnt.find("key").text}
          \compressFullBarRests
          ${vln.text}
        }
% endfor
      >>
    }
% endfor
    \header {
      subtitle = #"${'Duo ' + str(loop.index + 1)}"
    }
  }
% endfor
}

% for vln in ('I', 'II'):
\book {
  \bookOutputSuffix #"${'violin_' + vln}"
  \header {
    instrument = "${'Violino ' + vln}"
  }
% for violinduo in xml_root.findall('violinduo'):
  \bookpart {
% for mvmnt in violinduo.findall('movement'):
    \score {
% if mvmnt.find("piece") is not None:
      \header {
        piece = "${mvmnt.find('piece').text}"
      }
% endif
      \new Staff \with {
        \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
        \accidentalStyle modern-cautionary
        \consists "Page_turn_engraver"
      } {
        \time ${mvmnt.find("time").text}
        \tempo ${mvmnt.find("tempo").text}
        \key ${mvmnt.find("key").text}
        \compressFullBarRests
        ${mvmnt.find("violin[@number='{}']".format(vln)).text}
      }
    }
% endfor
    \header {
      subtitle = #"${'Duo ' + str(loop.index + 1)}"
    }
  }
% endfor
}
% endfor

\include "articulate.ly"

% for violinduo in xml_root.findall('violinduo'):
\book {
  \bookOutputSuffix #"${'duo_' + str(loop.index +1)}"
  \score {
    \articulate \unfoldRepeats
    <<
% for vln in ('I', 'II'):
      \new Staff \with {
        midiInstrument = #"violin"
      } {
% for mvmnt in violinduo.findall('movement'):
        \time ${mvmnt.find("time").text}
        \tempo ${mvmnt.find("tempo").text}
        \key ${mvmnt.find("key").text}
        ${mvmnt.find("violin[@number='{}']".format(vln)).text}
% endfor
      }
% endfor
    >>
    \midi {}
  }
}
% endfor
