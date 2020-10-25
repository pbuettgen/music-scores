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

composer = Franz Wohlfahrt
opus = opus 45
piece = $(subst $(space),_,$(composer)-$(opus))
target_files = $(piece).pdf
archive_extra_files =

include $(top_srcdir)/rules.make

# Local Variables:
# coding: utf-8
# mode: Makefile
# End:
