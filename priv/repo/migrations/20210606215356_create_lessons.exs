defmodule Accordionist.Repo.Migrations.CreateLessons do
  use Ecto.Migration

  def change do
    create table(:lessons, primary_key: false) do
      add :id, :uuid, primary_key: true, null: false
      add :name, :string
      add :video_url, :string
      add :difficulty, :integer

      timestamps()
    end

  end
end
