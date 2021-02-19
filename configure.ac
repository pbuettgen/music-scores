# -*- coding: utf-8 -*-
#
# Copyright © 2020-2020 Philipp Büttgenbach
#
# This work is licensed under the Creative Commons
# Attribution-ShareAlike 4.0 International License.  To view a copy of
# this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
#

AC_INIT([music-scores], [0.1])
AM_INIT_AUTOMAKE

AX_AM_JOBSERVER([${CPU_COUNT}])

LYFLAGS_EXTRA='-dmidi-extension=mid'
LYINCLUDE='-I./ -I../ -I${top_srcdir}/include/'

AC_CHECK_PROGS([LYC], [lilypond], [AC_MSG_ERROR([Lilypond required.])])

AX_PYTHON_MODULE([mako], [required])

AC_ARG_WITH([oll],
    [AS_HELP_STRING([--with-oll], [Open lilypond library root directory])],
    [oll_dir=$withval],
    [oll_dir=/usr/share/lilypond/oll])

AS_IF([test -d $oll_dir],
            [LYINCLUDE="$LYINCLUDE -I$oll_dir"],
            [AC_MSG_ERROR([Invalid OLL directory $oll_dir!])])

AC_CHECK_FILE([$oll_dir/oll-core/package.ily],
    [],
    [AC_MSG_ERROR([Open lilypond library required.])])

AC_ARG_ENABLE([point-and-click],
    [AS_HELP_STRING([--enable-point-and-click], [enable point-and-click])],
    [AS_IF([test "x$enableval" = xno],
                 [point_and_click="no-"],
                 [point_and_click=""])],
    [point_and_click="no-"])

LYFLAGS_EXTRA="$LYFLAGS_EXTRA -d${point_and_click}point-and-click"
LYRUN="$LYC $LYFLAGS_EXTRA $LYFLAGS $LYINCLUDE"

AC_SUBST([LYFLAGS])
AC_SUBST([LYFLAGS_EXTRA])
AC_SUBST([LYINCLUDE])
AC_SUBST([LYRUN])

AC_CONFIG_FILES([
    Makefile
    include/Makefile
    src/Makefile
    src/Arthur_Seybold/Makefile
    src/Arthur_Seybold/opus_89/Makefile
	src/Charles_Dancla/Makefile
    src/Charles_Dancla/opus_15/Makefile
	src/Ferdinand_Küchler/Makefile
    src/Ferdinand_Küchler/opus_11/Makefile
    src/Ferdinand_Küchler/opus_12/Makefile
    src/Ferdinand_Küchler/opus_14/Makefile
    src/Ferdinand_Küchler/opus_15/Makefile
	src/Franz_Wohlfahrt/Makefile
    src/Franz_Wohlfahrt/opus_45/Makefile
	src/Friedrich_Seitz/Makefile
    src/Friedrich_Seitz/opus_12/Makefile
    src/Friedrich_Seitz/opus_13/Makefile
    src/Friedrich_Seitz/opus_22/Makefile
	src/Heinrich_Ernst_Kayser/Makefile
    src/Heinrich_Ernst_Kayser/opus_20/Makefile
	src/Ignace_Pleyel/Makefile
    src/Ignace_Pleyel/opus_8/Makefile
	src/Jaques-Féréol_Mazas/Makefile
    src/Jaques-Féréol_Mazas/opus_38/Makefile
	src/Johann_Wenzel_Kalliwoda/Makefile
    src/Johann_Wenzel_Kalliwoda/opus_178/Makefile
    src/Johann_Wenzel_Kalliwoda/opus_179/Makefile
    src/Johann_Wenzel_Kalliwoda/opus_180/Makefile
	src/Leo_Portnoff/Makefile
    src/Leo_Portnoff/fantasia_2/Makefile
    src/Leo_Portnoff/fantasia_4/Makefile
    src/Leo_Portnoff/opus_4/Makefile
    src/Leo_Portnoff/opus_9/Makefile
    src/Leo_Portnoff/opus_13/Makefile
    src/Leo_Portnoff/opus_14/Makefile
    src/Leo_Portnoff/opus_18/Makefile
    src/Leo_Portnoff/opus_96/Makefile
	src/Oskar_Rieding/Makefile
    src/Oskar_Rieding/opus_21/Makefile
    src/Oskar_Rieding/opus_34/Makefile
    src/Oskar_Rieding/opus_35/Makefile
    src/Oskar_Rieding/opus_36/Makefile])

AC_OUTPUT

# Local Variables:
# coding: utf-8
# mode: Autoconf
# End:
