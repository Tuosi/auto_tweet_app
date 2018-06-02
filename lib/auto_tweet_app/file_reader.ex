defmodule AutoTweetApp.FileReader do
  def get_string_to_tweet(filepath) do
    filepath
    |> File.read!()
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&(String.length(&1) <= 140))
    |> Enum.random()
  end
end
