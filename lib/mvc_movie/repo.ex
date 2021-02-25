defmodule MvcMovie.Repo do
  use Ecto.Repo,
    otp_app: :mvc_movie,
    adapter: Ecto.Adapters.Postgres
end
