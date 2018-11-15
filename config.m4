dnl $Id$
dnl config.m4 for extension seascache

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(seascache, for seascache support,
dnl Make sure that the comment is aligned:
dnl [  --with-seascache             Include seascache support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(seascache, whether to enable seascache support,
dnl Make sure that the comment is aligned:
[  --enable-seascache           Enable seascache support])

if test "$PHP_SEASCACHE" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-seascache -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/seascache.h"  # you most likely want to change this
  dnl if test -r $PHP_SEASCACHE/$SEARCH_FOR; then # path given as parameter
  dnl   SEASCACHE_DIR=$PHP_SEASCACHE
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for seascache files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       SEASCACHE_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$SEASCACHE_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the seascache distribution])
  dnl fi

  dnl # --with-seascache -> add include path
  dnl PHP_ADD_INCLUDE($SEASCACHE_DIR/include)

  dnl # --with-seascache -> check for lib and symbol presence
  dnl LIBNAME=seascache # you may want to change this
  dnl LIBSYMBOL=seascache # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $SEASCACHE_DIR/$PHP_LIBDIR, SEASCACHE_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_SEASCACHELIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong seascache lib version or lib not found])
  dnl ],[
  dnl   -L$SEASCACHE_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(SEASCACHE_SHARED_LIBADD)

  PHP_NEW_EXTENSION(seascache, seascache.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
