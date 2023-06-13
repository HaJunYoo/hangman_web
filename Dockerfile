FROM python:3.8-slim-buster

LABEL Maintainer="hajuny129@gmail.com"
# 메타데이터로 docker inspect 명령으로 찾아볼 수 있음

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 4000
# 이 포트 번호를 사용하니 포트 맵핑을 할때 참고하라는 정보

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]