# 1. Python 3.9 기반의 슬림한 이미지 사용
FROM python:3.9-slim

# 2. 시스템 패키지 업데이트 + curl 설치
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# 3. Flask 설치
RUN pip install Flask

# 4. 작업 디렉토리 생성
WORKDIR /app

# 5. 현재 디렉토리(app.py가 있는 곳)의 파일들을 컨테이너 내부로 복사
COPY app.py .

# 6. Flask 서버 실행
CMD ["python", "app.py"]
