class Book < ApplicationRecord
  belongs_to :client

  ETATBOOK = ["Neuf", "Occasion", "Reconditionné"]

  include PgSearch::Model
  pg_search_scope :search_all,
    against: [:name, :etat, :sursite],
    associated_against: {
      client: [:username]
    },
    using: {
      tsearch: { prefix: true }
    }
end
