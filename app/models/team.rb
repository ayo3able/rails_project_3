class Team < ApplicationRecord
  has_many :projects
  has_many :users, through: :projects
  accepts_nested_attributes_for :projects
  validates_presence_of :name
end
