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

$(target_files): $(piece).ly
	m4 ${M4FLAGS} $< | ${LYRUN} -

all: $(target_files)


if MAINTAINER_MODE

CLEANFILES += $(piece).zip

archive_files =									\
	Makefile.am									\
	$(piece).ly									\
	../composer.ily								\
	../../lily-snippets.ily						\
	../../paper.ily								\
	../../cc-by-sa.eps							\
	../../COPYING								\
	../../README.md								\
	../../rules.make							\
	../../tagline.ily							\
	../../tagline.ily.in						\
	$(archive_extra_files)						\
	/usr/share/doc/m4/examples/foreach.m4

zip: $(piece).zip

$(piece).zip: $(archive_files)
	mkdir $(piece)
	cp $(archive_files) $(piece)
	$(SED) -e '9ichangequote(<,>)\ndefine(AC_CONFIG_FILES, <<AC_CONFIG_FILES([Makefile])>>)\ndefine(AM_MAINTAINER_MODE, <<AM_MAINTAINER_MODE([disable])>>)\ndefine(AC_INIT, <<AC_INIT([$(piece)],[0.1])>>)' ../../configure.ac | $(M4) > $(piece)/configure.ac
	cd $(piece)					&& \
	../../../missing aclocal	&& \
	../../../missing autoconf 	&& \
	../../../missing automake -a --foreign
	$(ZIP) -9 -r $(piece).zip $(piece)
	rm -r $(piece)

.PHONY: zip

endif
