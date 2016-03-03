ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Erlang.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Erlang.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Erlang.Repo)

