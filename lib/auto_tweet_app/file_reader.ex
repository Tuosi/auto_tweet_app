defmodule AutoTweetApp.FileReader do
  @doc """
    this function will take a path to a file
    and find string that can be tweet out.

    pick_str will trim all the strings,
    and the eliminate strings that are larger than 140 chars

    iex> AutoTweetApp.FileReader.get_string_to_tweet("priv/test/too_long_sample.txt")
    "normal one"
  """
  def get_string_to_tweet(filepath) do
    filepath
    |> File.read!()
    |> pick_str()
  end

  def pick_str(str) do
    str
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&(String.length(&1) <= 140))
    |> Enum.random()
  end
end
