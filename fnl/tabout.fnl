(fn move-right []
  (let [line (vim.fn.line ".")
        col (+ (vim.fn.col ".") 1)]
    (vim.fn.cursor line col)))

(fn character-at-point []
  (let [pos (vim.fn.col ".")]
    (string.sub (vim.fn.getline ".")
                pos pos)))

(global tabout (fn []
  (let [char (character-at-point)]
    (if (or (= char "\"")
            (= char "'")
            (= char ")")
            (= char "}")
            (= char "]")
            (= char "`")
            (= char ">"))
      (move-right)))))

(vim.cmd "imap <Tab> <cmd>lua tabout()<cr>")
