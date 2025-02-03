# Receipt Processor API

This repository contains my solution for the Fetch Rewards Receipt Processor challenge. The API is built in Go and calculates receipt points based on specific rules.

## Project Overview

The API provides two main endpoints:
- **POST /receipts/process:**  
  Accepts a JSON receipt, computes reward points based on defined rules, and returns a unique receipt ID.
- **GET /receipts/{id}/points:**  
  Retrieves the computed reward points for the given receipt ID.

An in-memory store is used to hold receipt data for the duration of the application's runtime.

## Getting Started

### Prerequisites
- [Go 1.20+](https://golang.org/dl/)
- Git

### Running Locally

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/fetch_assessment_1.git
   cd fetch_assessment_1
