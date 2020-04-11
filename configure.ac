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

AM_MAINTAINER_MODE([enable])

LYFLAGS_EXTRA="-dmidi-extension=mid"
LYINCLUDE="-I./ -I../ -I../../"

AC_CHECK_PROGS([LYC], [lilypond], [AC_MSG_ERROR([Lilypond required.])])

AM_COND_IF([MAINTAINER_MODE],
    [AC_CHECK_PROGS([ZIP], [zip], [AC_MSG_ERROR([zip required])])
    AC_CHECK_PROGS([M4], [m4], [AC_MSG_ERROR([m4 required])])
    AC_PROG_SED])

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

AC_CHECK_FILE([$oll_dir/lalily-templates/package.ily],
    [],
    [AC_MSG_ERROR([lalily-templates required.])])

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

git_commitish="xxxxxxx"
AM_COND_IF([MAINTAINER_MODE],
    [git_commitish=$(git rev-parse --short HEAD)])
AC_SUBST([git_commitish])

AC_CONFIG_FILES([
    tagline.ily
    Makefile
    Arthur_Seybold/Makefile
    Arthur_Seybold/opus_89/Makefile
	Charles_Dancla/Makefile
    Charles_Dancla/opus_15/Makefile
	Ferdinand_Küchler/Makefile
    Ferdinand_Küchler/opus_11/Makefile
    Ferdinand_Küchler/opus_12/Makefile
    Ferdinand_Küchler/opus_14/Makefile
    Ferdinand_Küchler/opus_15/Makefile
	Franz_Wohlfahrt/Makefile
    Franz_Wohlfahrt/opus_45/Makefile
	Friedrich_Seitz/Makefile
    Friedrich_Seitz/opus_12/Makefile
    Friedrich_Seitz/opus_13/Makefile
    Friedrich_Seitz/opus_22/Makefile
	Heinrich_Ernst_Kayser/Makefile
    Heinrich_Ernst_Kayser/opus_20/Makefile
	Ignace_Pleyel/Makefile
    Ignace_Pleyel/opus_8/Makefile
	Jaques-Féréol_Mazas/Makefile
    Jaques-Féréol_Mazas/opus_38/Makefile
	Johann_Wenzel_Kalliwoda/Makefile
    Johann_Wenzel_Kalliwoda/opus_178/Makefile
    Johann_Wenzel_Kalliwoda/opus_179/Makefile
    Johann_Wenzel_Kalliwoda/opus_180/Makefile
	Leo_Portnoff/Makefile
    Leo_Portnoff/fantasia_2/Makefile
    Leo_Portnoff/fantasia_4/Makefile
    Leo_Portnoff/opus_9/Makefile
    Leo_Portnoff/opus_13/Makefile
    Leo_Portnoff/opus_18/Makefile
	Oskar_Rieding/Makefile
    Oskar_Rieding/opus_21/Makefile
    Oskar_Rieding/opus_34/Makefile
    Oskar_Rieding/opus_35/Makefile
    Oskar_Rieding/opus_36/Makefile])
AC_OUTPUT

# Local Variables:
# coding: utf-8
# mode: Autoconf
# End:
