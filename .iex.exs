IO.puts """
        `
       ;:
      `+;
      ++',
     .+++,
     :'++'.
    .+'++';       Welcome to elixir-land
    ,+'+''':
   `:+'+';';;     http://elixir-lang.org
   ,:++';;;;'.    http://www.phoenixframework.org/
   ::'+';;;;''    https://hex.pm/
   :;;++;;';''    http://www.elixirschool.com/
   .;;'''';;;:    https://github.com/christopheradams/elixir_style_guide
    ,:::'';,,.
    ,,,,,:::,
     ,,,,,,,
      ``.`
"""
IEx.configure(
  alive_prompt: "%prefix(%node):%counter>",
  default_prompt: "%prefix:%counter>",
  inspect: [pretty: true, char_lists: :as_lists, limit: :infinity],
  history_size: -1,
  colors: [
    ls_directory: :cyan,
    ls_device: :yellow,
    doc_code: :green,
    doc_inline_code: :magenta,
    doc_headings: [:cyan, :underline],
    doc_title: [:cyan, :bright, :underline],
    eval_result: [ :cyan, :bright ]
  ]
)

import_file_if_available(".secret.exs")

rs = fn ->
  Process.exit(self(), :normal)
end
