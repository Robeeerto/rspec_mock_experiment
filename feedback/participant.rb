# frozen_string_literal: true

class Participant
  attr_reader :name

  def initialize(**args)
    @name = args[:name] || 'anonymous'
  end

  def evaluate(feedback)
    like_factor = feedback.nudged? ? 10 : 1
    (rand 0..like_factor).positive? ? feedback.like : feedback.dislike
  end
end
