# -*- coding: utf-8 -*-
#
# Copyright © 2020-2020 Philipp Büttgenbach
#
# This work is licensed under the Creative Commons
# Attribution-ShareAlike 4.0 International License.  To view a copy of
# this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
#

empty:=
space:= $(empty) $(empty)

composer = Johann Wenzel Kalliwoda
opus = opus 179
piece = $(subst $(space),_,$(composer)-$(opus))
target_files = $(piece).pdf							\
	$(piece)-violin_I.pdf $(piece)-violin_II.pdf	\
	$(piece)-duo_1.mid $(piece)-duo_2.mid $(piece)-duo_3.mid
archive_extra_files = ../../output-duos.ily

include $(top_srcdir)/rules.make

# Local Variables:
# coding: utf-8
# mode: Makefile
# End:
