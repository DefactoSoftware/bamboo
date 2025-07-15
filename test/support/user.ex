defmodule Bamboo.User do
  defstruct [:name, :email, :active]
end

defimpl Bamboo.Formatter, for: Bamboo.User do
  def format_email_address(%{name: name, email: email}, _opts) do
    {name, email}
  end
end
