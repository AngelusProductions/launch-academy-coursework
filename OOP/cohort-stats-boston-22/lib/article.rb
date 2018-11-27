require_relative 'lesson'

class Article < Lesson
  attr_reader :title

  def initialize (title)
    @title = title
  end

end
