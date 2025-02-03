# Use the official Golang image
FROM golang:1.22 AS builder

WORKDIR /app

# Copy source files
COPY . .
RUN go mod tidy
RUN go build -o receipt-processor .

# Use a minimal runtime image
FROM alpine:latest
WORKDIR /root
COPY --from=builder /app/receipt-processor /root/receipt-processor

# Ensure executable permission
RUN chmod +x /root/receipt-processor

# Expose port 8000
EXPOSE 8000

# Start the app
CMD ["/root/receipt-processor"]


