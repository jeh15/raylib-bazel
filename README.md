# Bazel build for raylib

This repository contains a Bazel extension that fetchs the pre-built binaries for raylib 5.0 and packages them as a Bazel Module.

:construction: Currently only targeting the MacOS binaries, will add Linux soon. :construction:

## Installation

Add the following to your `MODULE.bazel` file:

```python
bazel_dep(name = "raylib-bazel")
archive_override(
    module_name = "raylib-bazel",
    strip_prefix = "raylib-bazel-main",
    urls = "https://github.com/jeh15/raylib-bazel/archive/refs/heads/main.zip"
)
```

Additionally, there were some bugs regarding MacOS tar extraction that were fixed as of Bazel version 7.2.0rc1 so make sure you are using that version or newer.

You can add the following to your `.bazeliskrc` to target the appropriate version.

```
USE_BAZEL_VERSION=7.2.0rc1
```

## How To Use

This is a basic example from the official raylib Github repository.

```cpp
//main.cc
#include "raylib.h"

int main(void)
{
    InitWindow(800, 450, "raylib [core] example - basic window");

    while (!WindowShouldClose())
    {
        BeginDrawing();
            ClearBackground(RAYWHITE);
            DrawText("Congrats! You created your first window!", 190, 200, 20, LIGHTGRAY);
        EndDrawing();
    }

    CloseWindow();

    return 0;
}
```

An example `BUILD.bazel` file to build and run the above example would be:

```starlark
cc_binary(
    name = "main",
    srcs = ["main.cc"],
    deps = [
        "@raylib-bazel//:raylib",
    ],
)
```
