require("dap-kotlin").setup({
  dap_command = "kotlin-debug-adapter",
  project_root = "${workspaceFolder}",
  enable_logging = false,
})

local dap = require("dap")
dap.configurations.kotlin = {
  {
    type = "kotlin",
    request = "launch",
    name = "Launch Kotlin Application",
    projectRoot = vim.fn.getcwd(),
    mainClass = "Application.kt",
  },
}
