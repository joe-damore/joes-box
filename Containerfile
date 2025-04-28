FROM quay.io/toolbx/arch-toolbox:latest

# TODO Consolidate RUNs.
# Add builder user.
RUN useradd -m -G wheel builder \
	&& passwd -d builder \
	&& echo 'builder ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Basics & System Tools
RUN pacman -Syu --noconfirm \
	fastfetch \
	base-devel

# Build and install Yay
RUN mkdir -p /tmp/yay-build \
	&& chown -R builder:builder /tmp/yay-build \
	&& su - builder -c "git clone https://aur.archlinux.org/yay.git /tmp/yay-build/yay" \
	&& su - builder -c "cd /tmp/yay-build/yay && makepkg -si --noconfirm"

# Web Dev Tools
RUN pacman -Syu --noconfirm \
	nodejs-lts-jod \
	npm

# Use NPM to install Yarn, PNPM
RUN npm install -g \
	yarn \
	pnpm

# Deno
RUN pacman -Syu --noconfirm \
	deno

# Install Rustup.
RUN pacman -Syu --noconfirm rustup

# Install Slint dependencies.
# https://github.com/slint-ui/slint/blob/master/docs/building.md#prerequisites
RUN pacman -Syu --noconfirm \
	libinput \
	libxcb \
	libxkbcommon \
	fontconfig \
	clang \
	ffmpeg \
	alsa-lib \
	pkgconf

# Clean up
# TODO Clean Pacman cache
RUN rm -rf /tmp/*
