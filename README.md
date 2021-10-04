# Snap package for Idris 2

This repository contains snap packaging for [Idris 2](https://github.com/edwinb/idris2).

[A snap](https://snapcraft.io/docs/getting-started) is a bundle of an app and its dependencies that works without
modification across many different Linux distributions. Snaps are discoverable and installable from the
[Snap Store](https://snapcraft.io/store), an app store with an audience of millions.

Please note that Idris 2 is currently pre-alpha. For now, the goal of this snap package is to provide a hassle-free way
for Idris users to stay up to date with the Idris 2 development by providing nightly snap builds.

## Install

The package is under development and available for testing in the edge channel:

```bash
snap install idris2 --edge --classic
```

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
Building idris2-boot from idris2-boot.ss
compiling idris2_app/idris2-boot.ss with output to idris2_app/idris2-boot.so
Killed
make: *** [Makefile:232: bootstrap] Error 137
Failed to run 'override-build': Exit code was 2.
```

You may want to allocate more RAM to the multipass VM that is being
launched by snapcraft in the background (at the time of this writing, it defaults to 2GB).

To do so, set the following environment variable before running `snapcraft`:

```bash
export SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=8G
```

Note, that this will only work if the VM does not exist, yet. To delete an existing VM,
run `snapcraft clean`. Alternatively, you can use `multipass list` to find the VM name
(should be something like `snapcraft-idris2`) and run `multipass delete <name>` to delete it.

## License

Idris 2 is licensed under the [BSD-3-Clause](https://github.com/idris-lang/Idris2/blob/main/LICENSE) license.
