FROM quay.io/toolbx/arch-toolbox:latest

# TODO Consolidate RUNs.

# Basics & System Tools
RUN pacman -Syu --noconfirm \
	fastfetch \
	base-devel

# Build and install Yay
RUN mkdir /tmp \
	&& cd /tmp \
	&& git clone https://aur.archlinux.org/yay.git \
	&& cd /tmp/yay \
	&& makepkg -si

# Web Dev Tools
RUN pacman -Syu --noconfirm \
	nodejs-lts-jod \
	npm

# Use NPM to install Yarn, PNPM
RUN npm install -g \
	yarn \
	pnpm

# Install Rustup and toolchain.
RUN pacman -Syu --noconfirm \
	rustup \
	&& rustup default stable

# Clean up
# TODO Clean Pacman cache
RUN rm -rf /tmp
