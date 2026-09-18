
vim.pack.add({
    {src = "https://github.com/neovim/nvim-lspconfig" }
})

local ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
        vim.notify("nvim-lspconfig plugin not installed yet!", vim.log.levels.WARN)
        return
end

vim.lsp.config.perlls = {
    default_config = {
        cmd = {"perl-language-server"},
        filetypes = {"perl"},
        root_dir = lspconfig.util.root_pattern("Makefile", ".git", "BuildPL", "cpanfile"),
        settings = {},
    }
}
