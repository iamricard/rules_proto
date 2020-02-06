# Generated By: [bzl use go golang.org/x/text --released --install]

load("@bazel_gazelle//:deps.bzl", "go_repository")

def org_golang_x_text():
    if "org_golang_x_text" not in native.existing_rules():
        
        # Release: v0.3.0
        # Commit: master
        # Date: 2018-02-21 16:23:33 +0000 UTC
        # URL: https://golang.org/x/text/releases/tag/v0.3.0
        # Branch: master
        # Commit: 929e72ca90deac4784bbe451caf10faa5b256ebe
        # Date: 2019-11-14 14:00:43 +0000 UTC
        # URL: https://golang.org/x/text/commit/929e72ca90deac4784bbe451caf10faa5b256ebe
        # 
        # message/pipeline: detect unknown keys
        # 
        # When (d *dictionary) Lookup() is called on an non-existing key, the
        # `messageKeyToIndex[key]` returns 0. As 0 is also a valid entry in
        # messageKeyToIndex, the method returned the wrong value rather than fail.
        # 
        # Fixes golang/go#35587
        # 
        # Change-Id: Iedd1cf42f29335c2c2052b07993d7f2dfcd3cc6c
        # Reviewed-on: https://go-review.googlesource.com/c/text/+/207217
        # Run-TryBot: Jason A. Donenfeld <Jason@zx2c4.com>
        # TryBot-Result: Gobot Gobot <gobot@golang.org>
        # Reviewed-by: Marcel van Lohuizen <mpvl@golang.org>
        # Size: 7744394 (7.7 MB)
        go_repository(
            name = "org_golang_x_text",
            importpath = "golang.org/x/text",
            commit = "929e72ca90deac4784bbe451caf10faa5b256ebe",
        )