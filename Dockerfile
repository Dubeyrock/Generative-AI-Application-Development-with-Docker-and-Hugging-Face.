# Use the official Python 3.11 image
FROM python:3.11

# Set the working directory to /code
WORKDIR /code

# Copy the requirements.txt file into the container at /code
COPY ./requirements.txt /code/requirements.txt

# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Set up a new user named "user"
RUN useradd user

# Switch to the "user" user
USER user

# Set environment variables for the user's home directory and PATH
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH

# Set the working directory to the user's home directory
WORKDIR $HOME/app

# Copy the contents of the current directory to the user's home directory
COPY --chown=user . $HOME/app

# Start the FastAPI app on port 7860
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]
