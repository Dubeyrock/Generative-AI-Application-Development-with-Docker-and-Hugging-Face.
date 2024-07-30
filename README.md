# Generative AI Text Generation Application with Docker and Hugging Face

## Overview

This project demonstrates the development of a text generation application using Large Language Models (LLMs) and transformers from Hugging Face. The application is containerized using Docker and features an API built with FastAPI.

## Features

- **Text Generation**: Utilizes multiple LLM models from Hugging Face for generating text.
- **FastAPI**: Provides a robust API for interacting with the generative models.
- **Dockerized Application**: Ensures easy deployment and scalability.

## Installation

### Step 1: Build Generative AI Application

1. **Clone the repository**:
   ```bash
   git clone https://github.com/dubeyRock/Generative-AI-Text-Generation.git
   cd Generative-AI-Text-Generation

**Install dependencies:**


pip install -r requirements.txt
Run the application:


uvicorn main:app --reload

**Step 2: Docker**
Build the Docker image:


docker build -t generative-ai-text-app .
Run the Docker container:


docker run -p 8000:8000 generative-ai-text-app

**step 3: **Hugging Face**
Integrate Hugging Face models:
python

from transformers import pipeline

text_generator = pipeline("text-generation", model="gpt2")
result = text_generator("Hello, world!", max_length=50)
print(result)
Usage
Text Generation Endpoint: Send a POST request to /generate-text with a JSON body containing the prompt.

curl -X POST "http://localhost:8000/generate-text" -H "Content-Type: application/json" -d '{"prompt": "Hello, world!"}'

**technologies Used**
Python

FastAPI

Docker

Hugging Face Transformers

Uvicorn

**contributing**

Contributions are welcome! Please create an issue or submit a pull request.

**License**
This project is licensed under the MIT License. See the LICENSE file for details.

**Contact**
For any questions or feedback, reach out to me at shivvam2002@gmail.com or connect with me on LinkedIn.


**output deployment screenshot**
**(1)**
![image](https://github.com/user-attachments/assets/16a5587c-fa2a-4c85-a7c7-115ba184f74b)

![image](https://github.com/user-attachments/assets/b25882aa-21da-4275-a82e-e0241cc32c92)

**(2)**
![image](https://github.com/user-attachments/assets/10832ab4-9dd3-49b7-82df-bfb91e7499fd)
![image](https://github.com/user-attachments/assets/26a2faed-66ec-4884-8a34-66c911ad21e3)

**deployment link -**

https://shivam9022-text2textwithdocker.hf.space/docs#/default/generate_generate_get
