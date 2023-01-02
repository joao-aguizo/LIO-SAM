#!/bin/bash

THIS_PATH=`dirname "$0"`
REPO_PATH=`( cd "$THIS_PATH/.." && pwd )`
THIS_PATH=`( cd "$THIS_PATH" && pwd )`

BUILD_CMD="singularity build \
    --fakeroot \
    --fix-perms \
    -F \
    --nv \
    $REPO_PATH/images/image.sif \
    $THIS_PATH/recipe.def"

# we change dir because this recipe as a file 
# that is copied relative to the recipe's dir
`( cd $THIS_PATH && $BUILD_CMD )`
