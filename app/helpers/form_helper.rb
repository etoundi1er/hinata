module FormHelper
  def setup_chapter(chapter)
    chapter.lessons ||= Lesson.new
    chapter.lessons.build
    chapter
  end
end