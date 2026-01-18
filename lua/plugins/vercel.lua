return {
    "tiesen243/vercel.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("vercel").setup({
            theme = "dark",
            transparent = false,
        })
        vim.cmd.colorscheme("vercel")
    end,
}
