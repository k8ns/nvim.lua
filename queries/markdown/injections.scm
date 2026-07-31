; Overrides nvim-treesitter (master) markdown injections to drop the
; `#set-lang-from-info-string!` directive, which is broken on Neovim 0.11+
; (match captures are now node lists, not single nodes) and crashes with
; "attempt to call method 'range' (a nil value)" on fenced code blocks.
; This mirrors Neovim's bundled query, using plain @injection.language.

(fenced_code_block
  (info_string
    (language) @injection.language)
  (code_fence_content) @injection.content)

((html_block) @injection.content
  (#set! injection.language "html")
  (#set! injection.combined)
  (#set! injection.include-children))

((minus_metadata) @injection.content
  (#set! injection.language "yaml")
  (#offset! @injection.content 1 0 -1 0)
  (#set! injection.include-children))

((plus_metadata) @injection.content
  (#set! injection.language "toml")
  (#offset! @injection.content 1 0 -1 0)
  (#set! injection.include-children))

([
  (inline)
  (pipe_table_cell)
] @injection.content
  (#set! injection.language "markdown_inline"))
