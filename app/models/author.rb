class Author < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

  has_many :books
  has_many :tags, as: :tagable
end
