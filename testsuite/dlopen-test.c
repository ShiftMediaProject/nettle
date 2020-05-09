#include "testutils.h"
#include "version.h"

#if HAVE_DLFCN_H
#include <dlfcn.h>
#endif

#ifdef __APPLE__
#define SO_EXT "dylib"
#else
#define SO_EXT "so"
#endif

int
main (int argc UNUSED, char **argv UNUSED)
{
#if HAVE_LIBDL
  void *handle = dlopen ("../libnettle." SO_EXT, RTLD_NOW);
  int (*get_version)(void);
  if (!handle)
    {
      fprintf (stderr, "dlopen failed: %s\n", dlerror());
      FAIL ();
    }

  get_version = (int(*)(void)) dlsym (handle, "nettle_version_minor");
  if (!get_version)
    {
      fprintf (stderr, "dlsym failed: %s\n", dlerror());
      FAIL ();
    }
  if (get_version() != NETTLE_VERSION_MINOR)
    {
      fprintf (stderr, "unexpected nettle version\n");
      FAIL ();
    }
  dlclose (handle);
  return EXIT_SUCCESS;
#else
  SKIP();
#endif
}
