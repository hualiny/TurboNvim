---@diagnostic disable: missing-fields
local setCompHL = function()
  local hl = vim.api.nvim_set_hl
  local fgdark = "#2E3440"
  hl(0, "CmpItemAbbrMatch", { fg = "#82AAFF", bg = "NONE", bold = true })
  hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#82AAFF", bg = "NONE", bold = true })
  hl(0, "CmpItemAbbrDeprecated", { fg = "#7E8294", bg = "NONE", strikethrough = true })
  hl(0, "CmpItemMenu", { fg = "#808080", bg = "NONE", italic = true })
  hl(0, "CmpItemKindField", { fg = fgdark, bg = "#B5585F" })
  hl(0, "CmpItemKindProperty", { fg = fgdark, bg = "#B5585F" })
  hl(0, "CmpItemKindEvent", { fg = fgdark, bg = "#B5585F" })
  hl(0, "CmpItemKindText", { fg = fgdark, bg = "#9FBD73" })
  hl(0, "CmpItemKindEnum", { fg = fgdark, bg = "#9FBD73" })
  hl(0, "CmpItemKindKeyword", { fg = fgdark, bg = "#9FBD73" })
  hl(0, "CmpItemKindConstant", { fg = fgdark, bg = "#D4BB6C" })
  hl(0, "CmpItemKindConstructor", { fg = fgdark, bg = "#D4BB6C" })
  hl(0, "CmpItemKindReference", { fg = fgdark, bg = "#D4BB6C" })
  hl(0, "CmpItemKindFunction", { fg = fgdark, bg = "#A377BF" })
  hl(0, "CmpItemKindStruct", { fg = fgdark, bg = "#A377BF" })
  hl(0, "CmpItemKindClass", { fg = fgdark, bg = "#A377BF" })
  hl(0, "CmpItemKindModule", { fg = fgdark, bg = "#A377BF" })
  hl(0, "CmpItemKindOperator", { fg = fgdark, bg = "#A377BF" })
  hl(0, "CmpItemKindVariable", { fg = fgdark, bg = "#7E8294" })
  hl(0, "CmpItemKindFile", { fg = fgdark, bg = "#7E8294" })
  hl(0, "CmpItemKindUnit", { fg = fgdark, bg = "#D4A959" })
  hl(0, "CmpItemKindSnippet", { fg = fgdark, bg = "#D4A959" })
  hl(0, "CmpItemKindFolder", { fg = fgdark, bg = "#D4A959" })
  hl(0, "CmpItemKindTabNine", { fg = fgdark, bg = "#D4A959" })
  hl(0, "CmpItemKindCodeium", { fg = fgdark, bg = "#D4A959" })
  hl(0, "CmpItemKindMethod", { fg = fgdark, bg = "#6C8ED4" })
  hl(0, "CmpItemKindValue", { fg = fgdark, bg = "#6C8ED4" })
  hl(0, "CmpItemKindEnumMember", { fg = fgdark, bg = "#6C8ED4" })
  hl(0, "CmpItemKindInterface", { fg = fgdark, bg = "#58B5A8" })
  hl(0, "CmpItemKindColor", { fg = fgdark, bg = "#58B5A8" })
  hl(0, "CmpItemKindTypeParameter", { fg = fgdark, bg = "#58B5A8" })
end

return {
  "hrsh7th/nvim-cmp",
  config = function(_, opts)
    for _, source in ipairs(opts.sources) do
      source.group_index = source.group_index or 1
    end

    local parse = require("cmp.utils.snippet").parse
    ---@diagnostic disable-next-line: duplicate-set-field
    require("cmp.utils.snippet").parse = function(input)
      local ok, ret = pcall(parse, input)
      if ok then
        return ret
      end
      return require("utils.ui").snippet_preview(input)
    end

    local cmp = require("cmp")
    cmp.setup(opts)

    local cmd_mapping = {
      ["<Down>"] = {
        c = function()
          if cmp.visible() then
            cmp.select_next_item()
          else
            cmp.complete()
          end
        end,
      },
      ["<Up>"] = {
        c = function()
          if cmp.visible() then
            cmp.select_prev_item()
          else
            cmp.complete()
          end
        end,
      },
      -- Use default nvim history scrolling
      ["<C-n>"] = {
        c = false,
      },
      ["<C-p>"] = {
        c = false,
      },
    }
    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(cmd_mapping),
      sources = {
        { name = "buffer" },
      },
      completion = {
        completeopt = "menu,menuone,noselect",
      },
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(cmd_mapping),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      }),
      completion = {
        completeopt = "menu,menuone,noselect",
      },
    })
    setCompHL()
  end,
}
