(local export {})

(fn export.character-at-point [] 
  (let [pos (vim.fn.col ".")]
    (string.sub (vim.fn.getline ".")
                pos pos)))

(fn export.move-cursor-right  []
  (let [line (vim.fn.line ".")
        col (+ (vim.fn.col ".") 1)]
    (vim.fn.cursor line col)))

(fn export.should-tabout []
  (let [char (export.character-at-point)]
    (or (= char "\"")
        (= char "'")
        (= char ")")
        (= char "}")
        (= char "]")
        (= char "`")
        (= char ">"))))

export
