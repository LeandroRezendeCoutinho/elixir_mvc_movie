defmodule MvcMovie.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :title, :string
      add :release_date, :date
      add :gender, :string
      add :price, :float

      timestamps()
    end

  end
end
