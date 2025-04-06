FROM unityci/editor:windows-2021.3.6f1-base-3.1.0

WORKDIR /project

COPY . .

RUN chmod +x ./build.sh

CMD ["./build.sh"]