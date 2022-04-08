if has("nvim")  
    imap <silent><Plug>(Tabout) <cmd>lua require("tabout")["move-cursor-right"]()<CR>
    imap <expr><Tab> luaeval('require("tabout")["should-tabout"]()')  ? '<Plug>(Tabout)' : '<Tab>'
endif
    
