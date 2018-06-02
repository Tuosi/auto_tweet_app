defmodule TestApp.FileReader do
  def get_string_to_tweet(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&(String.length(&1) <= 140))
    |> Enum.random()
  end
end

# iex -S mix

# cd("lib/test_app")
# ls

# TestApp.FileReader.get_string_to_tweet("sample.txt")

