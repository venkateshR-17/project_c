FROM ubuntu:20.04

# Install runtime dependencies (if needed)
RUN apt-get update && apt-get install -y libgcc1 && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy the compiled binary from the repo
COPY ABC.exe .

# Make sure it's executable (just in case)
RUN chmod +x ABC.exe

# Default command
CMD ["./ABC.exe"]
