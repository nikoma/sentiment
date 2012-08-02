# -*- encoding: utf-8 -*-

require 'rubygems'
require 'test/unit'
require 'vcr'
require 'webmock'
require 'sentiment'

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock

end

class VCRTest < Test::Unit::TestCase
  $client = Sentiment::Client.new("8w7d64oqweryiqweo87qnxtqwi47xqn3i4tisq7")

  def test_sentiment_positive
    VCR.use_cassette('sentiment_positive') do
      sample = "I love ruby"
      sentiment = $client.sentiment(sample, "en")
      assert_equal 1, sentiment
    end
  end
  def test_sentiment_negative
    VCR.use_cassette('sentiment_negative') do
      sample = "I hate some random thing"
      sentiment = $client.sentiment(sample, "en")
      assert_equal -1, sentiment
    end
  end
  def test_sentiment_neutral
    VCR.use_cassette('sentiment_neutral') do
      sample = "Today it's 20 degrees outside and that's it"
      sentiment = $client.sentiment(sample, "en")
      assert_equal 0, sentiment
    end
  end
  def test_sentiment_positive_de_umlauts
    VCR.use_cassette('sentiment_positive_de_umlauts') do
      sample = "Wir freuen uns über Umlaute die Sätze ändern"
      sentiment = $client.sentiment(sample, "de")
      assert_equal 1, sentiment
    end
  end

end