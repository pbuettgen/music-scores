## -*- coding: utf-8 -*-
%% -*- coding: utf-8 -*-

<%doc>
Copyright © 2021-2021 Philipp Büttgenbach

This work is licensed under the Creative Commons
Attribution-ShareAlike 4.0 International License.  To view a copy of
this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
</%doc>

<%def name="lilypond_preamble()">
<%!
import os
%>

\version "2.20"

\include "lily-snippets.ily"

% if os.path.exists("local-defs.ily"):
\include "local-defs.ily"
% endif

\include "tagline.ily"
\include "copyright.ily"
\include "paper.ily"
</%def>

<%def name="global_header_block(xml_root, composer_db)">
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
</%def>

<%def name="add_quotes(xml_root)">
% for labeled in xml_root.findall('.//*[@label]'):
\addQuote "${labeled.attrib['label']}" {
  ${labeled.text}
}
% endfor
</%def>
