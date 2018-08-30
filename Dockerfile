FROM fsharp

MAINTAINER Las-Wonho haho6629@gmail.com

COPY . .

RUN fsharpc ./source/main.fs && ls

ENTRYPOINT ["mono", "main.exe"]

WORKDIR .

EXPOSE 4567

VOLUME 6644
