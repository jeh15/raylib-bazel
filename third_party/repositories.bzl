"""
    Fetches HTTP archive of precompiled raylib binary.
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def raylib_archive():
    http_archive(
        name = "archive_raylib",
        build_file = "//third_party/raylib:BUILD.bazel",
        strip_prefix = "raylib-5.0_macos",
        url = "https://github.com/raysan5/raylib/releases/download/5.0/raylib-5.0_macos.tar.gz",
        integrity = "sha256-SOR3093i4gIgVyyfk6MyxIzzePweHyBUVLl1GACFVlw=",
    )
