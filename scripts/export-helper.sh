#!/usr/bin/env bash

distrobox-export --bin /usr/bin/node
distrobox-export --bin /usr/bin/npm
distrobox-export --bin /usr/bin/pnpm
distrobox-export --bin /usr/bin/yarn
distrobox-export --bin /usr/bin/cargo
distrobox-export --bin /usr/bin/deno

echo "Done!"
