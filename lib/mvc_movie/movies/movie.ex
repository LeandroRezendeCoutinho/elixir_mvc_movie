defmodule MvcMovie.Movies.Movie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies" do
    field :gender, :string
    field :price, :float
    field :release_date, :date
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title, :release_date, :gender, :price])
    |> validate_required([:title, :release_date, :gender, :price])
  end
end
