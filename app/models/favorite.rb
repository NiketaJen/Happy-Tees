class Favorite < ApplicationRecord
  belongs_to :favorited, polymorphic: true
end
