local export = {}
export["character-at-point"] = function()
  local pos = vim.fn.col(".")
  return string.sub(vim.fn.getline("."), pos, pos)
end
export["move-cursor-right"] = function()
  local line = vim.fn.line(".")
  local col = (vim.fn.col(".") + 1)
  return vim.fn.cursor(line, col)
end
export["should-tabout"] = function()
  local char = export["character-at-point"]()
  return ((char == "\"") or (char == "'") or (char == ")") or (char == "}") or (char == "]") or (char == "`") or (char == ">"))
end
return export
