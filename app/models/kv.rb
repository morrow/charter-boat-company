class Kv < ActiveRecord::Base

  extend FriendlyId
  friendly_id :key, use: [:slugged, :finders]

end
