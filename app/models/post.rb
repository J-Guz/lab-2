class EmailAuthorValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      unless User.exists?(email: value)
        record.errors.add(attribute, "User not registered")
      end
    end
  end

class Post < ApplicationRecord
    has_many :comments
    validates :title, :content, :author, :published, presence: true
    validates :content, length: {minimum: 140}
    validates :title, length: {maximum: 100}
    validates :author, email_author: true

    enum published: {
        unpublished: 0,
        published: 1
    }
end