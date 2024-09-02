-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("render-markdown").setup({
  filetype = { "markdown", "quatro" },
  render_modes = { "n", "i", "v", "c" },
  enabled = true,

  quote = { repeat_linebreak = true, enabled = true, icon = "▋", highlight = "RenderMarkdownQuote" },

  win_options = {
    showbreak = { default = "", rendered = "  " },
    breakindent = { default = false, rendered = true },
    breakindentopt = { default = "", rendered = "" },
  },
  callout = {
    note = { raw = "[!NOTE]", rendered = "󰋽 Note", highlight = "RenderMarkdownInfo" },
    tip = { raw = "[!TIP]", rendered = "󰌶 Tip", highlight = "RenderMarkdownSuccess" },
    important = { raw = "[!IMPORTANT]", rendered = "󰅾 Important", highlight = "RenderMarkdownHint" },
    warning = { raw = "[!WARNING]", rendered = "󰀪 Warning", highlight = "RenderMarkdownWarn" },
    caution = { raw = "[!CAUTION]", rendered = "󰳦 Caution", highlight = "RenderMarkdownError" },
    abstract = { raw = "[!ABSTRACT]", rendered = "󰨸 Abstract", highlight = "RenderMarkdownInfo" },
    todo = { raw = "[!TODO]", rendered = "󰗡 Todo", highlight = "RenderMarkdownInfo" },
    success = { raw = "[!SUCCESS]", rendered = "󰄬 Success", highlight = "RenderMarkdownSuccess" },
    question = { raw = "[!QUESTION]", rendered = "󰘥 Question", highlight = "RenderMarkdownWarn" },
    failure = { raw = "[!FAILURE]", rendered = "󰅖 Failure", highlight = "RenderMarkdownError" },
    danger = { raw = "[!DANGER]", rendered = "󱐌 Danger", highlight = "RenderMarkdownError" },
    bug = { raw = "[!BUG]", rendered = "󰨰 Bug", highlight = "RenderMarkdownError" },
    example = { raw = "[!EXAMPLE]", rendered = "󰉹 Example", highlight = "RenderMarkdownHint" },
    quote = { raw = "[!QUOTE]", rendered = "󱆨 Quote", highlight = "RenderMarkdownQuote" },
  },
  checkbox = {
    enabled = true,
    position = "overlay",
    custom = {
      unchecked = { raw = "[ ]", rendered = "󰄱 ", highlight = "RenderMarkdownUnchecked" },
      checked = { raw = "[x]", rendered = "󰱒 ", highlight = "RenderMarkdownChecked" },
      todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo" },
      important = { raw = "[~]", rendered = "󰓎 ", highlight = "DiagnosticWarn" },
    },
  },
  code = {
    enabled = true,
    sign = true,
    style = "full",
    position = "left",
    language_pad = 0,
    disable_background = { "diff" },
    width = "full",
    left_pad = 0,
    right_pad = 0,
    min_width = 45,
    border = "thick",
    above = "▄",
    below = "▀",
    highlight = "RenderMarkdownCode",
    highlight_inline = "RenderMarkdownCodeInline",
  },
  dash = {
    enabled = true,
    icon = "─",
    width = "full",
    highlight = "RenderMarkdownDash",
  },
  heading = {
    enabled = true,
    sign = true,
    position = "overlay",
    icons = { "󰼏", "󰎨" },
    signs = { "󰫎 " },
    width = "block",
    left_pad = 2,
    right_pad = 4,
    min_width = 0,
    border = false,
    border_prefix = false,
    above = "▄",
    below = "▀",
    backgrounds = {
      "RenderMarkdownH1Bg",
      "RenderMarkdownH2Bg",
      "RenderMarkdownH3Bg",
      "RenderMarkdownH4Bg",
      "RenderMarkdownH5Bg",
      "RenderMarkdownH6Bg",
    },
    foregrounds = {
      "RenderMarkdownH1",
      "RenderMarkdownH2",
      "RenderMarkdownH3",
      "RenderMarkdownH4",
      "RenderMarkdownH5",
      "RenderMarkdownH6",
    },
  },
  indent = {
    enabled = true,
    per_level = 2,
  },
  latex = {
    enabled = true,
    converter = "latex2text",
    highlight = "RenderMarkdownMath",
    top_pad = 0,
    bottom_pad = 0,
  },
  link = {
    enabled = true,
    image = "󰔉 ",
    email = " ",
    hyperlink = "󰌹 ",
    highlight = "RenderMarkdownLink",
    custom = {
      web = { pattern = "^http[s]?://", icon = "󰈹 ", highlight = "RenderMarkdownLink" },
      python = { pattern = "%.py$", icon = "󰌠 ", highlight = "RenderMarkdownLink" },
      javascript = { pattern = "%.js$", icon = " ", highlight = "RenderMarkdownLink" },
    },
  },
  bullet = {
    enabled = true,
    icons = { "●", "○", "◆", "◇" },
    left_pad = 0,
    right_pad = 0,
    highlight = "RenderMarkdownBullet",
  },
  sign = {
    enabled = true,
    highlight = "RenderMarkdownSign",
  },
  pipe_table = {
    preset = "round",
    alignment_indicator = "┅",
  },
})
--require("supermaven-nvim").setup({
--  keymaps = {
--    accept_suggestion = "<Tab>",
--    clear_suggestion = "<C-]>",
--    accept_word = "<C-j>",
--  },
--  ignore_filetypes = { cpp = true },
--  color = {
--    suggestion_color = "#2f7b8f",
--    cterm = 244,
--  },
--  log_level = "info", -- set to "off" to disable logging completely
--  disable_inline_completion = false, -- disables inline completion for use with cmp
--  disable_keymaps = false, -- disables built in keymaps for more manual control
--  condition = function()
--    return false
--  end, -- condition to check for stopping supermaven, `true` means to stop supermaven when the condition is true.
--})
