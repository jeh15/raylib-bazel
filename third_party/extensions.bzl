"""
    Module extension implementation for raylib.
"""
load("//third_party:repositories.bzl", "raylib_archive")

def _raylib_implementation(_ctx):
    raylib_archive()

raylib_extension = module_extension(
    implementation = _raylib_implementation,
)
