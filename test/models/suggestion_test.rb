require "test_helper"

class SuggestionTest < ActiveSupport::TestCase

  def test_suggestion_not_valid_when_blank_topic_and_blank_beer
    s = Suggestion.new
    s.topic = "       "
    s.beer  = "       "
    assert_equal false, s.valid?, "should not be valid when neither topic, nor beer is provided"
  end

  def test_suggestion_not_valid_when_nil_topic_and_nil_beer
    s = Suggestion.new
    assert_equal false, s.valid?, "should not be valid when neither topic, nor beer is provided"
  end

  def test_suggestion_valid_when_blank_topic_and_not_blank_beer
    s = Suggestion.new
    s.beer = "any beer"
    assert s.valid?, "should be valid when a beer is provided"
  end

  def test_suggestion_valid_when_not_blank_topic_and_blank_beer
    s = Suggestion.new
    s.topic = "any topic"
    assert s.valid?, "should be valid when a topic is provided"
  end

  def test_suggestion_valid_when_both_topic_and_beer_provided
    s = Suggestion.new
    s.topic = "any topic"
    s.beer  = "any beer"
    assert s.valid?, "should be valid when both topic and beer are provided"
  end

end
