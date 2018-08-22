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
  inspect: [pretty: true, char_lists: :as_lists],
  history_size: -1
)

import_file_if_available(".secret.exs")

rs = fn ->
  Process.exit(self(), :normal)
end
