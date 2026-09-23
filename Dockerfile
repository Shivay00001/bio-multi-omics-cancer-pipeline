FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV PYTHONUNBUFFERED=1
# Batch analytics pipeline (writes results to asi_cancer_outputs/)
CMD ["python", "asi_cancer_python.py"]
