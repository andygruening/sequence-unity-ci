ARG UNITY_VERSION
ARG UNITY_IMAGE_VERSION

FROM unityci/editor:windows-${UNITY_VERSION}-base-${UNITY_IMAGE_VERSION}

#RUN choco install visualstudio2022-workload-vctools --no-progress -y

WORKDIR /
COPY . /sequence/
