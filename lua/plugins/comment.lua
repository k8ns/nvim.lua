return {
  "numToStr/Comment.nvim",
  keys = { "gc", "gcc" },
  config = function()
    local comment = require("Comment")
    comment.setup()
  end,
}
