# Use the official Rust image as the base image
FROM rust:1.83.0

# Install cargo-watch for hot reloading
RUN cargo install cargo-watch

# Set the working directory inside the container
WORKDIR /usr/src/axum-sqlx

# Copy the Cargo.toml and Cargo.lock files
COPY Cargo.toml Cargo.lock ./

# Copy the source code
COPY src ./src

# Expose the port that the application will run on
EXPOSE 8080

# Command to run cargo-watch and rebuild/restart the application on changes
CMD ["cargo", "watch", "-x", "run"]