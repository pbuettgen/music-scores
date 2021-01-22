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
\addQuote "${labeled.attrib['label']}" {
  ${labeled.text}
}
% endfor

\include "tagline.ily"
\include "copyright.ily"
\include "paper.ily"

\header {
% if xml_root.find('./title') is not None:
  title = "${xml_root.find('./title').text}"
% endif
% if xml_root.find('./subtitle') is not None:
  subtitle = "${xml_root.find('./subtitle').text}"
% endif
% if xml_root.find('./opus') is not None:
  opus = "${xml_root.find('./opus').text}"
% endif
% if xml_root.find('./arranger') is not None:
  arranger = "${xml_root.find('./arranger').text}"
% endif
% if xml_root.find('./composer') is not None:
<%
  composer_name = xml_root.find('./composer').text
  composer_db_entry = composer_db.find(
    "./composer/[name='{}']".format(composer_name))
  composer_born=composer_db_entry.find("born").text
  composer_died=composer_db_entry.find("died").text
  composer_string = "{0} ({1} – {2})".format(
    composer_name, composer_born, composer_died)
%>
  composer = "${composer_string}"
  pdfauthor = "${composer_name}"
% endif
}

\book {
  \bookOutputSuffix "piano"

% for movement in xml_root.findall("movement"):
  \score {
    <<
      \new Staff \with {
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
      \accidentalStyle modern-cautionary
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
