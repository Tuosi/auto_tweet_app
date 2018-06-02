defmodule AutoTweetApp.Scheduler do
  use Quantum.Scheduler, otp_app: :auto_tweet_app

  def tweet_file(path) do
    AutoTweetApp.FileReader.get_string_to_tweet(path)
    |> AutoTweetApp.TweetServer.tweet
  end
end