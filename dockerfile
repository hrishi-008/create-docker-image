FROM python:3.9-slim

WORKDIR /app

COPY . /app/

RUN pip install --no-cache-dir --upgrade pip
RUN pip install google-ai-generativelanguage
RUN pip install streamlit
RUN pip install pillow


EXPOSE 8509

CMD ["streamlit", "run", "app.py", "--server.port", "8509"]
