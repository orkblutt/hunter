# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    mxnet
    VERSION
    0.0.0-5b86701f2-p0
    URL
    "https://github.com/hunter-packages/mxnet/archive/0.0.0-5b86701f2-p0.tar.gz"
    SHA1
    8b7d898d2f474bef2ca436cca2c2ab15483535cd
)

hunter_cmake_args(
    mxnet
    CMAKE_ARGS
    BUILD_CPP_EXAMPLES=OFF
    BUILD_TESTS=OFF
    USE_CPP_PACKAGE=ON
    USE_GPERFTOOLS=OFF
    USE_JEMALLOC=OFF
    USE_OPENCV=OFF
    USE_OPENMP=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(mxnet)
hunter_download(PACKAGE_NAME mxnet)
