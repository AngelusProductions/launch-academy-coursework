require_relative 'lesson'

class Video < Lesson
  attr_reader :title, :url

  def initialize (title, url)
    @title = title
    @url = url
  end

end
