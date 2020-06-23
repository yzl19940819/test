# download pre-compiled paddle encrypt
ENCRYPTION_URL=https://bj.bcebos.com/paddlex/tools/paddlex-encryption.zip
if [ ! -d "./paddlex-encryption" ]; then
    wget -c ${ENCRYPTION_URL}
    unzip paddlex-encryption.zip
    rm -rf paddlex-encryption.zip
fi

# download pre-compiled opencv lib
OPENCV_URL=https://paddleseg.bj.bcebos.com/deploy/docker/opencv3gcc4.8.tar.bz2
if [ ! -d "./deps/opencv3gcc4.8" ]; then
    mkdir -p deps
    cd deps
    wget -c ${OPENCV_URL}
    tar xvfj opencv3gcc4.8.tar.bz2
    rm -rf opencv3gcc4.8.tar.bz2
    cd ..
fi
