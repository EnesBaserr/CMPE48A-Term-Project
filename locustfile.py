from locust import HttpUser, task, between
import os

class ProductAPITester(HttpUser):
    # Wait time between requests (min and max in seconds)
    wait_time = between(1, 3)

     @task
        def check_inventory(self):
            self.client.get("/api/inventory", params={"skuCode": "iphone_15", "quantity": 10})

    @task
    def create_product(self):
        # Path to the file to be uploaded
        file_path = "./images.png"  # Replace with the actual file path

        # Ensure the file exists
        if not os.path.exists(file_path):
            print(f"File {file_path} not found!")
            return

        # Form-data payload
        data = {
            "id": "1",
            "name": "aa",
            "description": "aa",
            "price": "1",
            "skuCode": "iphone_15",
        }

        # File payload
        files = {
            "file": (os.path.basename(file_path), open(file_path, "rb"), "image/png")
        }

        # Send POST request
        response = self.client.post(
            "/api/product",
            data=data,
            files=files
        )

        # Print the response for debugging
        print(response.status_code, response.text)

# Host configuration should be provided while running Locust
