mkdir build
cd build

set HDF5_ROOT=%LIBRARY_PREFIX%

cmake ^
    -G "%CMAKE_GENERATOR%" ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DWITH_CPP11=yes ^
    ..

cmake --build . --config Release
cmake --build . --config Release --target install

ctest
