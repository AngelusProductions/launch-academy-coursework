require_relative 'lesson'

class Challenge < Lesson
  attr_reader :title

  def initialize (title)
    @title = title
  end

end
