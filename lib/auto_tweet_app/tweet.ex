defmodule AutoTweetApp.Tweet do
  def send(str) do
    config = [
      consumer_key: System.get_env("AUTO_TWEET_APP_CONSUMER_KEY"),
      consumer_secret: System.get_env("AUTO_TWEET_APP_COMSUMER_SECRET"),
      access_token: System.get_env("AUTO_TWEET_APP_ACCESS_TOKEN"),
      access_token_secret: System.get_env("AUTO_TWEET_APP_ACCESS_SECRET")
    ]

    ExTwitter.configure(:process, config)
    ExTwitter.update(str)
  end

  def send_random(filepath) do
    AutoTweetApp.FileReader.get_string_to_tweet(filepath)
    |> send
  end
end
