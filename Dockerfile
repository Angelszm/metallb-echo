# Use a base image compatible with ARM64 architecture
FROM arm64v8/golang:1.17-alpine AS builder

# Set the working directory
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the Go application
RUN CGO_ENABLED=0 GOOS=linux go build -o http-echo

# Create a minimal runtime image
FROM arm64v8/alpine:latest
COPY --from=builder /app/http-echo /http-echo

# Expose the desired port
EXPOSE 5678

# Set the entry point for the container
ENTRYPOINT ["/http-echo"]
CMD ["-listen=:5678", "-text=hello world"]
