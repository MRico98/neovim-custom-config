return {
    "ibhagwan/fzf-lua",
    enabled = false,
    config = function()
        local fzf = require("fzf-lua")
        vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Search files" })
        vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Search text" })
        vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Search buffers" })
    end,
}
