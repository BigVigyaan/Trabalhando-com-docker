FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8501

COPY . .
ENTRYPOINT [ "streamlit", "run" ]
CMD [ "app.py" ]