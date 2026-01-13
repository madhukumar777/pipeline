FROM python:3.7

ENV PYTHONUNBUFFERED=1
ENV APP_HOME=/app

WORKDIR /app
COPY . /app

RUN python -m pip install --upgrade pip

RUN pip install --no-cache-dir -r /app/requirements.txt

EXPOSE 8080

ENV STREAMLIT_SERVER_ENABLECORS=false
ENV STREAMLIT_SERVER_HEADLESS=true

CMD ["streamlit", "run", "final_app.py", "--server.port=8080", "--server.address=0.0.0.0"]
