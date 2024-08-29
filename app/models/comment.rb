class EmailAuthorValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      unless User.exists?(email: value)
        record.errors.add(attribute, "User not registered")
      end
    end
  end
  

class Comment < ApplicationRecord
    validates :content, :author, presence: true
    validates :author, email_author: true
end