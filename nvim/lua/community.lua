-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.python" },
	{ import = "astrocommunity.pack.html-css" },
	{ import = "astrocommunity.pack.typescript" },
	{ import = "astrocommunity.pack.typescript-deno" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.rust" },
	{ import = "astrocommunity.pack.fish" },
	{ import = "astrocommunity.pack.zig" },
	{ import = "astrocommunity.pack.docker" },
	{ import = "astrocommunity.pack.yaml" },
	{ import = "astrocommunity.pack.toml" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.spring-boot" },
	{ import = "astrocommunity.pack.kotlin" },
	{ import = "astrocommunity.pack.java" },
	{
		"mfussenegger/nvim-jdtls",
		opts = {
			settings = {
				java = {
					configuration = {
						runtimes = {
							{
								name = "JavaSE-25",
								path = "/usr/lib/jvm/java-25-openjdk/",
							},
						},
					},
				},
				format = {
					enabled = true,
					settings = { -- you can use your preferred format style
						url = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
						profile = "GoogleStyle",
					},
				},
			},
		},
	},
	-- import/override with your plugins folder
}
