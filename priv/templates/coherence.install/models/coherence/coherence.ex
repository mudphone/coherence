defmodule <%= base %>.Coherence do
  @moduledoc """
  The boundary for the Coherence system.
  """

  import Ecto.{Query, Changeset}, warn: false
  use Coherence.Schema
  alias <%= base %>.Coherence.User
  
  def user_changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name, :email] ++ coherence_fields())
    |> validate_required([:name, :email])
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
    |> validate_coherence(attrs)
  end
end
