class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates_presence_of :title, :instructions, :start, :deadline
  scope :alphabetize, -> { order(title: :desc) }
end
