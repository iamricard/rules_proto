package protoc

import "github.com/bazelbuild/bazel-gazelle/label"

// Plugin implementations are capable of predicting the sources that are
// generated by a particular protoc plugin.
type Plugin interface {
	// ShouldApply asks the plugin: for the given proto_library rule, should you
	// be added to the list of plugins to use?  We cannot rely on Outputs alone
	// for this information as not all plugins actually generate source code
	// (some only perform validation/checking).
	ShouldApply(rel string, cfg PackageConfig, lib ProtoLibrary) bool

	// Label returns the bazel label for the ProtoPlugin provider.
	Label() label.Label

	// Outputs inspects the given proto_library and determines what source files
	// will be generated.  Each element in the list should be a fully-qualified
	// path relative to the plugin out.
	Outputs(rel string, cfg PackageConfig, lib ProtoLibrary) []string
}

// PluginOptionsProvider is an optional interface that, if implemented, provides
// additional options for the protoc invocation.
type PluginOptionsProvider interface {
	// Options inspects the given proto_library and determines what additional
	// options are needed.
	Options(rel string, cfg PackageConfig, lib ProtoLibrary) []string
}

// PluginMappingsProvider is an optional interface that, if implemented,
// provides mapping data for the protoc invocation.
type PluginMappingsProvider interface {
	// Options inspects the given proto_library and determines what additional
	// mappings are needed.
	Mappings(rel string, cfg PackageConfig, lib ProtoLibrary) map[string]string
}

// PluginOutProvider is an optional interface that, if implemented, provides the
// plugin-specific value for the --*_out= arg.
type PluginOutProvider interface {
	// Out inspects the given proto_library and determines the out arg.
	Out(rel string, cfg PackageConfig, lib ProtoLibrary) string
}
