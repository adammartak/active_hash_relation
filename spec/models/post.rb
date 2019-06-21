require_relative './application_record'

class Post < ApplicationRecord
  translates :title, :content

  belongs_to :user

  scope :published, -> { where(published: true) }
end
