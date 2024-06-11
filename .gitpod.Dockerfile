FROM gitpod/workspace-full

# Install dependencies
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="$HOME/.local/bin:$PATH"
RUN pip3 install django
RUN npm install -g npm@latest

# Install Docker
USER root
RUN apt-get update && apt-get install -y docker.io docker-compose
