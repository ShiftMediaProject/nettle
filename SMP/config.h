
/* Define if building universal (internal helper macro) */
/* #undef AC_APPLE_UNIVERSAL_BUILD */

/* Define to one of `_getb67', `GETB67', `getb67' for Cray-2 and Cray-YMP
   systems. This function is required for `alloca.c' support on those systems.
   */
/* #undef CRAY_STACKSEG_END */

/* Define to 1 if using `alloca.c'. */
/* #undef C_ALLOCA */

/* Define to 1 if you have `alloca', as a function or macro. */
#define HAVE_ALLOCA 1

/* Define to 1 if you have <alloca.h> and it should be used (not on Ultrix).
   */
/* #undef HAVE_ALLOCA_H */

/* Define if clock_gettime is available */
/* #undef HAVE_CLOCK_GETTIME */

/* Define if fcntl file locking is available */
/* #undef HAVE_FCNTL_LOCKING */

/* Define if the compiler understands __attribute__ */
/* #undef HAVE_GCC_ATTRIBUTE */

/* Define to 1 if you have the `getline' function. */
/* #undef HAVE_GETLINE */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the `gmp' library (-lgmp). */
#define HAVE_LIBGMP 1

/* Define if compiler and linker supports __attribute__ ifunc */
/* #undef HAVE_LINK_IFUNC */

/* Define to 1 if you have the <malloc.h> header file. */
#define HAVE_MALLOC_H 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 each of the following for which a native (ie. CPU specific)
    implementation of the corresponding routine exists.  */
#if defined(__x86_64) || defined(_M_X64)
#define HAVE_NATIVE_aes_decrypt 1
#define HAVE_NATIVE_aes_encrypt 1
#define HAVE_NATIVE_chacha_core 1
#define HAVE_NATIVE_ecc_curve25519_modp 1
#define HAVE_NATIVE_ecc_curve448_modp 1
#define HAVE_NATIVE_ecc_secp192r1_modp 1
#define HAVE_NATIVE_ecc_secp192r1_redc 1
#define HAVE_NATIVE_ecc_secp224r1_modp 1
#define HAVE_NATIVE_ecc_secp224r1_redc 1
#define HAVE_NATIVE_ecc_secp256r1_modp 1
#define HAVE_NATIVE_ecc_secp256r1_redc 1
#define HAVE_NATIVE_ecc_secp384r1_modp 1
#define HAVE_NATIVE_ecc_secp384r1_redc 1
#define HAVE_NATIVE_ecc_secp521r1_modp 1
#define HAVE_NATIVE_ecc_secp521r1_redc 1
#define HAVE_NATIVE_gcm_hash8 1
#define HAVE_NATIVE_salsa20_core 1
#define HAVE_NATIVE_salsa20_2core 1
#define HAVE_NATIVE_sha1_compress 1
#define HAVE_NATIVE_sha256_compress 1
#define HAVE_NATIVE_sha512_compress 1
#define HAVE_NATIVE_sha3_permute 1
#define HAVE_NATIVE_umac_nh 1
#define HAVE_NATIVE_umac_nh_n 1
#else
#define HAVE_NATIVE_aes_decrypt 1
#define HAVE_NATIVE_aes_encrypt 1
#define HAVE_NATIVE_sha1_compress 1
#endif

/* Define to 1 if you have the <openssl/evp.h> header file. */
/* #undef HAVE_OPENSSL_EVP_H */

/* Define to 1 if you have the <openssl/ecdsa.h> header file. */
/* #undef HAVE_OPENSSL_ECDSA_H */

/* Define to 1 if you have the `secure_getenv' function. */
/* #undef HAVE_SECURE_GETENV */

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the `strerror' function. */
#define HAVE_STRERROR 1

/* Define to 1 if you have the <strings.h> header file. */
/* #undef HAVE_STRINGS_H */

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to 1 if you have the <valgrind/memcheck.h> header file. */
/* #undef HAVE_VALGRIND_MEMCHECK_H */

/* The size of `char', as computed by sizeof. */
#define SIZEOF_CHAR 1

/* The size of `int', as computed by sizeof. */
#define SIZEOF_INT 4

/* The size of `long', as computed by sizeof. */
#define SIZEOF_LONG 4

/* The size of `short', as computed by sizeof. */
#define SIZEOF_SHORT 2

/* The size of `size_t', as computed by sizeof. */
#if defined(__x86_64) || defined(_M_X64)
#define SIZEOF_SIZE_T 8
#else
#define SIZEOF_SIZE_T 4
#endif

/* The size of `void*', as computed by sizeof. */
#if defined(__x86_64) || defined(_M_X64)
#define SIZEOF_VOIDP 8
#else
#define SIZEOF_VOIDP 4
#endif

/* If using the C implementation of alloca, define if you know the
   direction of stack growth for your system; otherwise it will be
   automatically deduced at runtime.
	STACK_DIRECTION > 0 => grows toward higher addresses
	STACK_DIRECTION < 0 => grows toward lower addresses
	STACK_DIRECTION = 0 => direction of growth unknown */
/* #undef STACK_DIRECTION */

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#define TIME_WITH_SYS_TIME 1

/* Defined if public key features are enabled */
#define WITH_HOGWEED 1

/* Define if you have openssl's libcrypto (used for benchmarking) */
/* #undef WITH_OPENSSL */

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
/* #  undef WORDS_BIGENDIAN */
# endif
#endif

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to `int' if <sys/types.h> doesn't define. */
#define gid_t int

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
/* #undef inline */
#endif

/* Define to `unsigned int' if <sys/types.h> does not define. */
/* #undef size_t */

/* Define to `int' if <sys/types.h> doesn't define. */
#define uid_t int

/* AIX requires this to be the first thing in the file.  */
#ifndef __GNUC__
# if HAVE_ALLOCA_H
#  include <alloca.h>
# else
#  ifdef _AIX
 #pragma alloca
#  else
#   ifndef alloca /* predefined by HP cc +Olibcalls */
char *alloca ();
#   endif
#  endif
/* Needed for alloca on windows */
#  if HAVE_MALLOC_H
#   include <malloc.h>
#  endif
# endif
#else /* defined __GNUC__ */
# if HAVE_ALLOCA_H
#  include <alloca.h>
# else
/* Needed for alloca on windows, also with gcc */
#  if HAVE_MALLOC_H
#   include <malloc.h>
#  endif
# endif
#endif


#if HAVE_STRERROR
#define STRERROR strerror
#else
#define STRERROR(x) (sys_errlist[x])
#endif


#if __GNUC__ && HAVE_GCC_ATTRIBUTE
# define NORETURN __attribute__ ((__noreturn__))
# define PRINTF_STYLE(f, a) __attribute__ ((__format__ (__printf__, f, a)))
# define UNUSED __attribute__ ((__unused__))
#else
# define NORETURN
# define PRINTF_STYLE(f, a)
# define UNUSED
#endif


#if defined(__x86_64__) || defined(__arch64__) || defined(__x86_64) || defined(_M_X64)
# define HAVE_NATIVE_64_BIT 1
#else
/* Needs include of <limits.h> before use. */
# define HAVE_NATIVE_64_BIT (SIZEOF_LONG * CHAR_BIT >= 64)
#endif

