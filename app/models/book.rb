class Book < ApplicationRecord
  belongs_to :author

  validates :title, presence: true

  before_validation :clean_title

  def clean_title
    self.title = title.strip.titleize
  end
end
