# configure.ac

# Initialize autoconf
AC_INIT([myproject], [1.0], [your@email.com])
AC_CONFIG_SRCDIR([src/main.c])
AC_CONFIG_AUX_DIR([build-aux])

# Initialize automake
AM_INIT_AUTOMAKE([-Wall -Werror foreign])

# Checks for programs
AC_PROG_CC
AC_PROG_FC

# Enable cross-compilation
AC_CANONICAL_HOST

# Check if we're cross-compiling
AS_IF([test "x$cross_compiling" = xyes],
  [AC_MSG_NOTICE([Cross-compiling for $host])],
  [AC_MSG_NOTICE([Native compilation])])


# Check for C compiler
AC_PROG_CC
AS_IF([test "x$ac_cv_prog_cc_c99" = xno],
  [AC_MSG_ERROR([No C99 support in CC $CC])])

# Check for Fortran compiler
AC_PROG_FC
AC_FC_LIBRARY_LDFLAGS

# Set default FCFLAGS based on compiler name
AC_MSG_CHECKING([whether to add compiler-specific FCFLAGS])
case "$FC" in
  *nvfortran* | *pgf90*)
    FCFLAGS="$FCFLAGS -Mnomain"
    AC_MSG_RESULT([yes, added -Mnomain for NVIDIA HPC SDK])
    ;;
  *ifort* | *ifc*)
    FCFLAGS="$FCFLAGS -nofor-main"
    AC_MSG_RESULT([yes, added -nofor-main for Intel Fortran Compiler])
    ;;
  *gfortran*)
    FCFLAGS="$FCFLAGS -fno-main"
    AC_MSG_RESULT([yes, added -fno-main for GNU Fortran])
    ;;
  *)
    AC_MSG_RESULT([no, using default FCFLAGS])
    ;;
esac

# Checks for header files
AC_CHECK_HEADERS([stdlib.h])

# Checks for typedefs, structures, and compiler characteristics
AC_TYPE_SIZE_T

# Checks for library functions
AC_FUNC_MALLOC
AC_CHECK_FUNCS([memset])

# Output files
AC_CONFIG_FILES([Makefile src/Makefile])
AC_OUTPUT
