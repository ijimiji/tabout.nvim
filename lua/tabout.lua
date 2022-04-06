local function move_right()
  local line = vim.fn.line(".")
  local col = (vim.fn.col(".") + 1)
  return vim.fn.cursor(line, col)
end
local function character_at_point()
  local pos = vim.fn.col(".")
  return string.sub(vim.fn.getline("."), pos, pos)
end
local function _1_()
  local char = character_at_point()
  if ((char == "\"") or (char == "'") or (char == ")") or (char == "}") or (char == "]") or (char == "`") or (char == ">")) then
    return move_right()
  else
    return nil
  end
end
tabout = _1_
return vim.cmd("imap <Tab> <cmd>lua tabout()<cr>")
