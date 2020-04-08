# sml-md5 [![Build Status](https://travis-ci.org/diku-dk/sml-md5.svg?branch=master)](https://travis-ci.org/diku-dk/sml-md5)

Standard ML package for computing MD5 message digest hash sums as
specified in [RFC1321](https://tools.ietf.org/html/rfc1321).

## Overview of MLB files

- `lib/github.com/diku-dk/sml-md5/md5.mlb`:

  - **signature** [`MD5`](lib/github.com/diku-dk/sml-md5/md5.sig)
  - **structure** `MD5` :> `MD5`

## Use of the package

This library is set up to work well with the SML package manager
[smlpkg](https://github.com/diku-dk/smlpkg).  To use the package, in
the root of your project directory, execute the command:

```
$ smlpkg add github.com/diku-dk/sml-md5
```

This command will add a _requirement_ (a line) to the `sml.pkg` file in your
project directory (and create the file, if there is no file `sml.pkg`
already).

To download the library into the directory
`lib/github.com/diku-dk/sml-md5`, execute the command:

```
$ smlpkg sync
```

You can now reference the `mlb`-file using relative paths from within
your project's `mlb`-files.

Notice that you can choose either to treat the downloaded package as
part of your own project sources (vendoring) or you can add the
`sml.pkg` file to your project sources and make the `smlpkg sync`
command part of your build process.

## Authors

Copyright (C) 2001 Daniel Wang. All rights reserved. Extracted from
the MLton whole program Standard ML compiler; see the file
[LICENSE](LICENSE) for license information.
