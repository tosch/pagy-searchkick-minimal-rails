class Article < ApplicationRecord
  extend Pagy::Searchkick

  searchkick searchable: %i[title contents],
             filterable: %i[created_at updated_at],
             word_start: [:title],
             callbacks: :queue
end
