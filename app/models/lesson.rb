class Lesson < ActiveRecord::Base
  belongs_to :language
  scope :in_order, -> { order("number ASC") }
  scope :desc_order, -> { order("number DESC") }

  validates :name, :presence => true

  def next
    if self == Lesson.last
      return Lesson.first
    else
      return Lesson.where("number > ?", self.number).first
    end
  end
end
