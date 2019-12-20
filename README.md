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

## Troubleshooting

If you receive errors similar to this one:

```
cabal: Error: some packages failed to install:
idris failed during the building phase. The exception was:
ExitFailure (-9)
This may be due to an out-of-memory condition.
```

You may want to allocate more RAM to the multipass VM that is being
launched by snapcraft in the background (at the time of this writing, it defaults to 2GB).

To do so, set the following environment variable before running `snapcraft`:

```bash
export SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=8G
```

Note, that this will only work if the VM does not exist, yet. To delete an existing VM,
use `multipass list` to find the VM name (should be something like `snapcraft-idris2`)
and `multipass delete <name>` to delete it.

## License

Idris 2 is licensed under the [BSD-3-Clause](https://github.com/edwinb/Idris2/blob/master/LICENSE) license.
