class Article < ApplicationRecord
  extend Pagy::Search

  searchkick searchable: %i[title contents],
             filterable: %i[created_at updated_at],
             word_start: [:title],
             callbacks: :queue
end
