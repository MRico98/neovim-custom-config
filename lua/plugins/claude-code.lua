return {
    "greggh/claude-code.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("claude-code").setup({
            window = {
                position = "botright vsplit",
                split_ratio = 0.3,
            },
        })
    end,
    keys = {
        { "<leader>cc", "<cmd>ClaudeCode<CR>", desc = "Toggle Claude Code" },
        { "<leader>ca", "<cmd>ClaudeCodeAdd<CR>", desc = "Add file to Claude" },
        { "<leader>cs", "<cmd>ClaudeCodeSend<CR>", desc = "Send to Claude", mode = "v" },
    },
}
