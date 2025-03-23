FROM quay.io/toolbx/arch-toolbox:latest

# Web Dev Tools
RUN pacman -Syu --noconfirm \
	nodejs-lts-jod \
	npm

# Use NPM to install Yarn, PNPM
RUN npm install -g \
	yarn \
	pnpm
