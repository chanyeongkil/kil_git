#. 빌드 대상 이미지
FROM  ubuntu:latest
#. nginx 설치
RUN apt-get update && apt-get install -y -q nginx
#. 앞서 작성한 html 파일 복사 
COPY ./index.html /usr/share/nginx/html/index.html
#. 명령 실행
CMD ["nginx", "-g", "daemon off;"]
