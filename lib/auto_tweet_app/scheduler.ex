defmodule AutoTweetApp.Scheduler do
  use Quantum.Scheduler, otp_app: :auto_tweet_app

  def tweet_file(filepath) do
    AutoTweetApp.Tweet.send_random(filepath)
  end

  ## fail
  # def tweet_file(filepath) do
  #   filepath
  #   |> AutoTweetApp.FileReader.get_string_to_tweet()
  #   |> AutoTweetApp.TweetServer.tweet()
  # end
end