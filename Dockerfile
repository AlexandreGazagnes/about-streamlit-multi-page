# 
FROM python:3.10-slim

# 
WORKDIR /code

# 
COPY ./utils/requirements.front.txt /code/requirements.txt


# --no-cache-dir 
RUN pip install --upgrade -r /code/requirements.txt

# 
COPY . /code/



CMD ["streamlit", "run" , "app.py", "--server.port",  "8080",  "--server.address" , "0.0.0.0"]