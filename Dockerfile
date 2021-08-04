FROM node:latest

# Some container details
LABEL org.opencontainers.image.authors="Michael Dailous <docker@dailous.net>" \
	  description="Docker container for generating the Joplin plugin scaffolding" \
	  usage="docker run -it --rm -v $(pwd):/code -w /code joplin-plugin-generator"


# Update the system
RUN apt update && \
	apt -y upgrade

# Install Joplin and dependencies
RUN NPM_CONFIG_PREFIX=/usr/share/joplin-bin npm install -g joplin && \
	ln -s /usr/share/joplin-bin /usr/bin/joplin && \
	npm install -g yo generator-joplin

# Create the user 'developer'
RUN useradd -u 10000 -d /home/developer -m -l -s /bin/bash -U developer
USER developer:developer

# Generate the Joplin scaffolding
CMD [ "yo", "joplin" ]


