local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local fn = vim.fn

ls.add_snippets("typescriptreact", {
  s("tsx", {
    t({ 'import React from "react";', "", "" }),
    t({ "type Props = {};", "", "" }),
    t({ "const " }),
    -- Dynamically fetch the file name without the extension
    f(function()
      return fn.fnamemodify(fn.expand("%:t"), ":r") -- Get the file name
    end),
    t({ " = (props: Props) => {", "  return <div>" }),
    i(1, "index"), -- Editable field for div content
    t({ "</div>;", "};", "", "" }),
    t({ "export default " }),
    -- Repeat the file name
    f(function()
      return fn.fnamemodify(fn.expand("%:t"), ":r") -- Repeat the file name
    end),
    t(";"),
  }),
})

ls.add_snippets("prisma", {
  s("prismatableid", {
    t('id String @id @default(dbgenerated("gen_random_uuid()")) @db.Uuid'),
  }),
})
