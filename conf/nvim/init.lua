require("config")

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    local local_config = vim.fn.getcwd() .. "/.nvim.lua"
    if vim.fn.filereadable(local_config) == 1 then
      vim.cmd("source " .. local_config)
    end
  end,
})
