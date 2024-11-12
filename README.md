# cmake-template-app
CMake template for binary application

# Usage

Сборка проекта

```shell
cmake --preset=dev-linux
cmake --build --preset=dev-linux

```

Для vcpkg CMakeUserPresets отредактировать CMAKE_TOOLCHAIN_FILE
в CMakePresets в разделе inherrits добавить vcpkg

```json
{
      "name": "dev-linux",
      "displayName": "Debug (linux)",
      "inherits": [
        "Debug",
        "clang",
        "vcpkg" // добавить
      ],
      "cacheVariables": {
        "CMAKE_RUNTIME_OUTPUT_DIRECTORY": "${sourceDir}/bin",
        "CMAKE_LIBRARY_OUTPUT_DIRECTORY": "${sourceDir}/bin",
        "CMAKE_ARCHIVE_OUTPUT_DIRECTORY": "${sourceDir}/bin",
        "CMAKE_CXX_FLAGS": "-Wall -Wextra -Wpedantic -Wshadow -Wconversion -Wsign-conversion -Wcast-align -Wcast-qual -Wnull-dereference -Woverloaded-virtual -Wformat=2 -Werror"
      }
    }

```
