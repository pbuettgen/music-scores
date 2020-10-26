# -*- coding: utf-8 -*-
#
# Copyright © 2020-2020 Philipp Büttgenbach
#
# This work is licensed under the Creative Commons
# Attribution-ShareAlike 4.0 International License.  To view a copy of
# this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

tagline.ily: tagline.ily.in $(wildcard .git/index)
	git_commitish="xxxxxxx"; \
	test -e ${top_srcdir}/.git/index && git_commitish=$$(git rev-parse --short HEAD); \
	$(SED) -e s/@git_commitish@/$${git_commitish}/ tagline.ily.in > tagline.ily

all: tagline.ily

# Local Variables:
# coding: utf-8
# mode: Makefile
# End:
