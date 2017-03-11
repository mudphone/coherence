defmodule <%= user_schema %> do
  @moduledoc false
  use Ecto.Schema
  use Coherence.Schema

  schema "<%= user_table_name %>" do
    field :name, :string
    field :email, :string
    coherence_schema()

    timestamps()
  end

end
