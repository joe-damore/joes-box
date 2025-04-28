# joes-box
This is an "everything but the kitchen sink"-style Distrobox image containing all the tools I use on a regular basis.

## Usage

To create a distrobox, run the following command:

```bash
distrobox create --pull --image ghcr.io/joe-damore/joes-box-arch
```

You may optionally assign a name to the distrobox using the `--name` flag, e.g.:

```bash
distrobox create --pull --image ghcr.io/joe-damore/joes-box-arch --name mybox
```

Run `distrobox enter mybox` to use the box. Refer to the [Distrobox documentation](https://distrobox.it/#distrobox) for more information.

### Exporting Apps

You can run the built-in `export-helper` script to export the tools to the host environment.

The following tools get exported by the script:

- `cargo`
- `deno`
- `node`
- `npm`
- `pnpm`
- `yarn`

Alternatively, you can manually export your desired tools using [`distrobox-export`](https://distrobox.it/usage/distrobox-export/), e.g.:

```bash
distrobox-export --bin /usr/bin/node
```
