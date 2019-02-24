defmodule Coinjackpot.Repo do
  use Ecto.Repo,
    otp_app: :coinjackpot,
    adapter: Ecto.Adapters.Postgres
end
