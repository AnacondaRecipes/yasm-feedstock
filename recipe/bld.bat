mkdir build
cd build

cmake -G "%CMAKE_GENERATOR%" ^
         -DCMAKE_BUILD_TYPE:STRING=RELEASE ^
         -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
         -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% ^
         -DBUILD_STATIC_LIBS:BOOL=ON ^
         %SRC_DIR%
if errorlevel 1 exit 1

cmake --build . --target install
if errorlevel 1 exit 1
