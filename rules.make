# -*- coding: utf-8 -*-
#
# Copyright © 2019 Philipp Büttgenbach
#
# This work is licensed under the Creative Commons
# Attribution-ShareAlike 4.0 International License.  To view a copy of
# this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
#

# Open liliypond library
OLL_INCLUDE_DIR = ${HOME}/.local/share/lilypond/oll/

# The command to run lilypond
LILY_CMD = lilypond -dno-point-and-click -I../../ -I$(OLL_INCLUDE_DIR)
M4_CMD = m4 -I /usr/share/doc/m4/examples -I ../..
LN_S_CMD = ln -s
RM_F = rm -f
ZIP = zip -j -9

source_files = $(piece).ly
archive_files =						\
	$(source_files) Makefile ../../rules.make	\
	../../lily-snippets.ily ../../paper.ily		\
	$(archive_extra_files)
clean_files = $(piece)*.midi $(piece)*.pdf $(piece).zip

# The suffixes used in this Makefile.
.SUFFIXES: .ly .ily .pdf .midi

# The pattern rule to create PDF and MIDI files from a LY input file.
# The .pdf output files are put into the `PDF' subdirectory, and the
# .midi files go into the `MIDI' subdirectory.
%.pdf %.midi: %.ly
	$(M4_CMD) $< | $(LILY_CMD) -o $* -

.PHONY: score all clean archive

score: $(piece).pdf

all: score

clean:
	$(RM_F) $(clean_files)

archive: $(piece).zip

$(piece).zip: $(archive_files)
	$(ZIP) $(piece).zip $?
