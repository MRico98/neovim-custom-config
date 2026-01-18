return {
    "folke/snacks.nvim",
    lazy = false,
    opts = {
        explorer = { enabled = true },
        picker = { enabled = true },
        terminal = { enabled = true },
        lazygit = { enabled = true },
    },
    keys = {
        { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>tt", function() Snacks.terminal() end, desc = "Toggle Terminal" },
        { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    },
}
