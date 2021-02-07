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

${add_quotes(xml_root)}

${global_header_block(xml_root, composer_db)}

\book {
  \bookOutputSuffix "piano"

% for movement in xml_root.findall("movement"):
  \score {
    <<
      \new Staff \with {
        \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
        \accidentalStyle modern-cautionary
        \override InstrumentName.self-alignment-X = #RIGHT
        \override InstrumentName.padding = #.8
        instrumentName = #"Violino."
        \magnifyStaff #.75
      } \keepWithTag #'PIANO {
        \time ${movement.find('time').text}
        \tempo ${movement.find('tempo').text}
        \key ${movement.find('key').text}
        \killCues ${movement.find('violin').text}
      }
      \new PianoStaff \with {
        \override InstrumentName.self-alignment-X = #RIGHT
        \override InstrumentName.padding = #.8
        instrumentName = #"Piano."
        \accidentalStyle piano-cautionary
        connectArpeggios = ##t
        \consists "Page_turn_engraver"
      } <<
        \new Staff = "up" {
          \time ${movement.find('time').text}
          \tempo ${movement.find('tempo').text}
          \key ${movement.find('key').text}
          ${movement.find('piano/up').text}
        }
        \new Staff = "down" {
          \time ${movement.find('time').text}
          \tempo ${movement.find('tempo').text}
          \key ${movement.find('key').text}
          \clef "bass"
          ${movement.find('piano/down').text}
        }
      >>
    >>

% if movement.find('piece') is not None:
    \header {
      piece = #"${movement.find('piece').text}"
    }
% endif
  }
% endfor
}

\book {
  \bookOutputSuffix "violin"

% for movement in xml_root.findall("movement"):
  \score {
    \new Staff \with {
      \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
      \accidentalStyle modern-cautionary
      \consists "Page_turn_engraver"
    } \keepWithTag #'VIOLIN {
      \time ${movement.find('time').text}
      \tempo ${movement.find('tempo').text}
      \key ${movement.find('key').text}
      \compressFullBarRests
      ${movement.find('violin').text}
    }

% if movement.find('piece') is not None:
    \header {
      piece = #"${movement.find('piece').text}"
    }
% endif
  }
% endfor

  \header {
    instrument = "Violino."
  }
}


\include "articulate.ly"

\book {
  \score {
    \articulate \unfoldRepeats
    \new StaffGroup <<
      \new Staff \with {
        midiInstrument = #"violin"
      } {
% for movement in xml_root.findall('movement'):
        \time ${movement.find('time').text}
        \tempo ${movement.find('tempo').text}
        \killCues ${movement.find('violin').text}
% endfor
      }
      \new PianoStaff \with {
        midiInstrument = #"acoustic grand"
      } <<
        \new Staff = "up" {
% for movement in xml_root.findall('movement'):
          \time ${movement.find('time').text}
          \tempo ${movement.find('tempo').text}
          ${movement.find('piano/up').text}
% endfor
        }
        \new Staff = "down" {
% for movement in xml_root.findall('movement'):
          \time ${movement.find('time').text}
          \tempo ${movement.find('tempo').text}
          ${movement.find('piano/down').text}
% endfor
        }
      >>
    >>
    \midi{}
  }
}

%%% Local Variables:
%%% coding: utf-8
%%% End:
