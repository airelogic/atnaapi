LATEST_TAG=$(git describe --tags --abbrev=0)
LAST_COMMIT=$(git rev-parse --short HEAD)
echo $LATEST_TAG
echo $LAST_COMMIT

FULL_TAG=$LATEST_TAG-$LAST_COMMIT

echo "##vso[task.setvariable variable=version]$FULL_TAG"