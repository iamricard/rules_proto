# Generated By: [bzl use go github.com/grpc/grpc-go --released --install]
# Manually fixed up importpath

load("@bazel_gazelle//:deps.bzl", "go_repository")

def org_golang_google_grpc():
    if "org_golang_google_grpc" not in native.existing_rules():
        
        # Release: v1.27.1
        # Commit: v1.27.x
        # Date: 2020-02-05 23:40:21 +0000 UTC
        # URL: https://github.com/grpc/grpc-go/releases/tag/v1.27.1
        # Branch: master
        # Commit: cb03b9f65c14e57077a8c8508c4431ebc6521b1a
        # Date: 2020-02-05 21:16:31 +0000 UTC
        # URL: https://github.com/grpc/grpc-go/commit/cb03b9f65c14e57077a8c8508c4431ebc6521b1a
        # 
        # balancer/base: consider an empty address list an error (#3361)
        # Size: 854375 (854 kB)
        go_repository(
            name = "org_golang_google_grpc",
            importpath = "google.golang.org/grpc",
            build_file_proto_mode = "disable",
            commit = "cb03b9f65c14e57077a8c8508c4431ebc6521b1a",
        )