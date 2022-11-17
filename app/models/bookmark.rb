class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_presence_of :movie
  validates_presence_of :list
  validates_length_of :comment, minimum: 6
  validates_uniqueness_of :movie_id, scope: :list_id
end
