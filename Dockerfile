FROM unityci/editor:windows-2021.3.6f1-base-3.1.0

WORKDIR /project

COPY . .

CMD unity-editor \
    -batchmode \
    -nographics \
    -projectPath /project \
    -runTests \
    -testPlatform EditMode \
    -testResults /project/TestResults.xml \
    -quit