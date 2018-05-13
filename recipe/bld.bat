cp %RECIPE_DIR%/CMakeLists.txt %SRC_DIR%

cmake -G Ninja ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
  .

cmake --build . --config Release
cmake --build . --config Release --target install

