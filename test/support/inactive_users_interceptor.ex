defmodule Bamboo.InactiveUsersInterceptor do
  @behaviour Bamboo.Interceptor

  def call(%{to: %{active: false}} = email) do
    Bamboo.Email.block(email)
  end

  def call(%{to: %{email: nil}} = email) do
    Bamboo.Email.block(email)
  end

  def call(email), do: email
end
