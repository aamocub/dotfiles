return {
	cmd = {
		"verible-verilog-ls",
		"--column_limit=120",
		"--indentation_spaces=4",
		"--rules=+line-length=length:120,-parameter-name-style,+port-name-suffix",
	},
	root_markers = { ".git", "verilator.f" },
}
