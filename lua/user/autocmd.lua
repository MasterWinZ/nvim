local cmd = vim.cmd

-- set tab space to 2 when edit .html .css .js .jsx .ts
cmd [[
	autocmd BufRead,BufNewFile *.html setlocal shiftwidth=2 softtabstop=2 expandtab
	autocmd BufRead,BufNewFile *.css setlocal shiftwidth=2 softtabstop=2 expandtab
	autocmd BufRead,BufNewFile *.js setlocal shiftwidth=2 softtabstop=2 expandtab
	autocmd BufRead,BufNewFile *.jsx setlocal shiftwidth=2 softtabstop=2 expandtab
	autocmd BufRead,BufNewFile *.ts setlocal shiftwidth=2 softtabstop=2 expandtab
]]
