# Snap package for Idris 2

This repository contains snap packaging for [Idris 2](https://github.com/edwinb/idris2).

[A snap](https://snapcraft.io/docs/getting-started) is a bundle of an app and its dependencies that works without
modification across many different Linux distributions. Snaps are discoverable and installable from the
[Snap Store](https://snapcraft.io/store), an app store with an audience of millions.

Please note that Idris 2 is currently pre-alpha. For now, the goal of this snap package is to provide a hassle-free way
for Idris users to stay up to date with the Idris 2 development by providing nightly snap builds.

# Install

The package has not been published, yet.

## Build

You need [snapcraft](https://snapcraft.io/docs/snapcraft-overview), the meta-build tool for creating snaps in order to
build the package yourself. Snapcraft can be easily installed using `snap`:

```bash
snap install snapcraft --classic
```

From the root of the repository, run:

```bash
snapcraft
```

For more information, please refer to the [snapcraft documentation](https://snapcraft.io/docs/snapcraft-overview).

## License

Idris 2 is licensed under the [BSD-3-Clause](https://github.com/edwinb/Idris2/blob/master/LICENSE) license.
