defmodule Accordionist.Lessons.Lesson do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  schema "lessons" do
    field :difficulty, :integer
    field :name, :string
    field :video_url, :string

    timestamps()
  end

  @doc false
  def changeset(lesson, attrs) do
    lesson
    |> cast(attrs, [:name, :video_url, :difficulty])
    |> validate_required([:name, :difficulty])
  end
end
