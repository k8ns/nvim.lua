-- import comment plugin safely
local setup, comment = pcall(require, "Comment")
if not setup then
  return
end


-- enable comment
comment.setup()

-- io.write("comment enabled \n")
