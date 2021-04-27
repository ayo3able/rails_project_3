class Project < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :tasks
  accepts_nested_attributes_for :tasks
  validates_presence_of :title, :goal
  scope :alphabetize, -> { order(title: :desc) }
end
