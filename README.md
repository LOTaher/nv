# tc - a simple node version manager written in c.

## TODO

- [ ] parse command line arguments
- [ ] download node version using libcurl
- [ ] use `exec` and `symlink` to extract downloads
- [ ] use `system` to extract the tarball
- [ ] modify the `$PATH` to point to the downloaded version using `setenv()`
