# Bazel build for Raylib

This repository contains a Bazel extension that fetchs the pre-built binaries for Raylib 5.0 and packages them as a Bazel Module.

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
