# -*- coding: utf-8 -*-
#
# Copyright © 2019-2020 Philipp Büttgenbach
#
# This work is licensed under the Creative Commons
# Attribution-ShareAlike 4.0 International License.  To view a copy of
# this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
#

CLEANFILES = $(target_files)
M4FLAGS = -I /usr/share/doc/m4/examples -I ../..

%.ly: %.xml $(wildcard ${top_srcdir}/templates/*.mako)
	${top_srcdir}/bin/xml-to-ly -I ${top_srcdir}/templates -C ${top_srcdir}/src/composers.xml -o $@ $<

%.ly: %.ly.in ${top_srcdir}/concertino.ily ${top_srcdir}/output-duos.ily
	${M4} ${M4FLAGS} $< > $@

$(target_files): $(piece).ly $(wildcard ${top_srcdir}/include/*.ily)
	${LYRUN} $<

all: $(target_files)

# Local Variables:
# coding: utf-8
# mode: Makefile
# End:
