defmodule TestApp.Scheduler do
  use Quantum.Scheduler, otp_app: :test_app

  def tweet_file(path) do
    TestApp.FileReader.get_string_to_tweet(path)
  end
end