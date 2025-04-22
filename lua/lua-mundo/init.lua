local M = {}

function M.setup(opts)
	if opts then
		for key, value in pairs(opts) do
			if value ~= nil and key:sub(1, 6) == "mundo_" then
				vim.g[key] = value
			end
		end
	end
end

vim.cmd("runtime vim-entry/file.vim")

return M
