defmodule Accordionist.Repo do
  use Ecto.Repo,
    otp_app: :accordionist,
    adapter: Ecto.Adapters.Postgres
end
