## FastAPI Order Generation API

This project provides a simple FastAPI endpoint to generate mock orders.

### Prerequisites

* **Python 3**: Make sure you have Python 3 installed. You can check by running `python3 --version`.
* **pip**: The Python package manager, `pip`, should also be installed. You can check by running `pip3 --version`.

### Installation

1. **Update your system and install Python 3 and pip (if not already installed):**

   ```bash
   sudo yum update -y
   sudo yum install -y python3
   sudo yum install -y python3-pip
   ```

2. **Install FastAPI and Uvicorn:**

   ```bash
   pip3 install fastapi uvicorn
   ```

### Running the API

1. **Create a `main.py` file with your FastAPI code.** (Refer to the FastAPI documentation for how to structure your `main.py`)

2. **Start the Uvicorn server:**

   ```bash
   uvicorn main:app --host 0.0.0.0 --port 8000
   ```

   This will make your API accessible at `http://<your-server-ip>:8000`.

### Endpoint

* **`/generate-orders` (GET)**

   This endpoint generates mock order data.

### Testing

You can test the endpoint using `curl`:

```bash
curl -X 'GET' \
  'http://<your-server-ip>:8000/generate-orders' \
  -H 'accept: application/json'
```

Replace `<your-server-ip>` with the actual IP address or hostname where your API is running.

**Note:** If you are running this on an EC2 instance, make sure to open port 8000 in your security group settings.

