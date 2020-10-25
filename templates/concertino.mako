## -*- coding: utf-8 -*-
%% -*- coding: utf-8 -*-

<%doc>
Copyright © 2020-2020 Philipp Büttgenbach

This work is licensed under the Creative Commons
Attribution-ShareAlike 4.0 International License.  To view a copy of
this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
</%doc>


<%!
import os
%>

\version "2.20"

\include "lily-snippets.ily"

% if os.path.exists("local-defs.ily"):
\include "local-defs.ily"
% endif

% for labeled in xml_root.findall('.//*[@label]'):
\addquote "${labeled.attrib['label']}" {
  ${labeled.text}
}
% endfor

\include "composer.ily"
\include "tagline.ily"
\include "copyright.ily"
\include "paper.ily"

\header {
% if None != xml_root.find('./title'):
  title = "${xml_root.find('./title').text}"
% endif
% if None != xml_root.find('./subtitle'):
  subtitle = "${xml_root.find('./subtitle').text}"
% endif
% if None != xml_root.find('./opus'):
  opus = "${xml_root.find('./opus').text}"
% endif
% if None != xml_root.find('./arranger'):
  arranger = "${xml_root.find('./arranger').text}"
% endif
}

\book {
  \bookOutputSuffix "piano"

% for movement in xml_root.findall("movement"):
  \score {
    <<
      \new Staff \with {
        \time ${movement.find('time').text}
        \override InstrumentName.self-alignment-X = #RIGHT
        \override InstrumentName.padding = #.8
        instrumentName = #"Violino."
        \magnifyStaff #.75
      } {
        \tempo ${movement.find('tempo').text}
        \key ${movement.find('key').text}
        \killCues ${movement.find('violin').text}
      }
      \new PianoStaff \with {
        \time ${movement.find('time').text}
        \override InstrumentName.self-alignment-X = #RIGHT
        \override InstrumentName.padding = #.8
        instrumentName = #"Piano."
        \accidentalStyle piano-cautionary
        connectArpeggios = ##t
      } <<
        \new Staff = "up" {
          \tempo ${movement.find('tempo').text}
          \key ${movement.find('key').text}
          ${movement.find('piano/up').text}
        }
        \new Staff = "down" {
          \tempo ${movement.find('tempo').text}
          \key ${movement.find('key').text}
          \clef "bass"
          ${movement.find('piano/down').text}
        }
      >>
    >>

% if None != movement.find('piece'):
    \header {
      piece = ${movement.find('piece').text}
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
      \time ${movement.find('time').text}
      \accidentalStyle modern-cautionary
    } {
      \tempo ${movement.find('tempo').text}
      \key ${movement.find('key').text}
      \compressFullBarRests
      ${movement.find('violin').text}
    }

% if None != movement.find('piece'):
    \header {
      piece = \titleMovementI
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
