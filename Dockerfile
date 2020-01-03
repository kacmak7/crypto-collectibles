FROM python:3.6-alpine

WORKDIR /app

# Install dependencies.
ADD requirements.txt /app
RUN cd /app && \
    pip install -r requirements.txt

# Add actual source code.
ADD core.py /app

EXPOSE 5000

CMD ["python", "core.py", "--port", "5000"]
