#!/bin/sh

CMD unity-editor \
    -batchmode \
    -nographics \
    -projectPath /project \
    -runTests \
    -testPlatform EditMode \
    -testResults /project/TestResults.xml \
    -quit
