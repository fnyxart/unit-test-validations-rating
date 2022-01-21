require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid if score is between 0 and 10" do
    0.upto(10).each do |i|
      rating = Rating.new(score: i)
      rating.valid?
      # Assert that the array of errors on our model for the score field is empty
      assert_empty rating.errors[:score]
    end
  end
end
