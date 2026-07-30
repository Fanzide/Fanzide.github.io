FROM ruby:3.3.5

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    imagemagick \
    nodejs \
    npm \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip3 install --break-system-packages nbconvert

# Set working directory
WORKDIR /srv/jekyll

# Copy Gemfile and install Ruby dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy package.json and install Node dependencies
COPY package.json package-lock.json ./
RUN npm ci

# Expose port
EXPOSE 4000

# Start Jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--livereload"]
