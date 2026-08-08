function Table(el)
  local rows = {}

  local function add_rows(rowlist)
    if not rowlist then return end
    local ok, n = pcall(function() return #rowlist end)
    if not ok then return end
    for i = 1, n do
      local row = rowlist[i]
      if row and row.cells then
        local cells = {}
        for _, cell in ipairs(row.cells) do
          table.insert(cells, pandoc.utils.blocks_to_inlines(cell.contents))
        end
        table.insert(rows, cells)
      end
    end
  end

  add_rows(el.head and el.head.rows)
  for _, body in ipairs(el.bodies) do
    add_rows(body.head)
    add_rows(body.body)
  end
  add_rows(el.foot and el.foot.rows)

  local lines = {}
  for _, cells in ipairs(rows) do
    local line = {}
    local added = 0
    for _, c in ipairs(cells) do
      local s = pandoc.utils.stringify(c)
      if s and s:match("%S") then
        if added > 0 then table.insert(line, pandoc.RawInline("markdown", " | ")) end
        for _, inl in ipairs(c) do table.insert(line, inl) end
        added = added + 1
      end
    end
    if #line > 0 then table.insert(lines, line) end
  end

  local inlines = {}
  for i, line in ipairs(lines) do
    if i > 1 then table.insert(inlines, pandoc.LineBreak()) end
    for _, inl in ipairs(line) do table.insert(inlines, inl) end
  end
  return pandoc.Para(inlines)
end
