local M = {}

function M.setup(opts)
	if opts then
		for key, value in pairs(opts) do
			if value ~= nil then
				vim.g["mundo_" .. key] = value
			end
		end
	end
end

vim.cmd("runtime vim-entry/file.vim")

return M
