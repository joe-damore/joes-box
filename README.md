# joes-box
This is a "everything but the kitchen sink"-style Distrobox image containing all the tools I use on a regular basis.

## Usage

To create a distrobox, run the following command:

```bash
distrobox create --pull --image ghcr.io/joe-damore/joes-box-arch
```

You may optionally assign a name to the distrobox using the `--name` flag, e.g.:

```bash
distrobox create --pull --image ghcr.io/joe-damore/joes-box-arch --name my-box
```

Run `distrobox enter <name>` to use the box. Refer to the [Distrobox documentation](https://distrobox.it/#distrobox) for more information.

