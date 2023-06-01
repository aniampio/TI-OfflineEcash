# Use a base image with the 1.66.1 version of Rust installed
FROM rust:1.66.1

# Set the working directory in the container
WORKDIR /TI-OfflineEcash

# Copy the local application code into the container
COPY ./ ./

# Test the Rust application
RUN cargo test --manifest-path=code/Cargo.toml
# Build the Rust application
RUN cargo build --manifest-path=code/Cargo.toml --release
# Run Benchmarks for the code
RUN cargo bench --manifest-path=code/Cargo.toml


