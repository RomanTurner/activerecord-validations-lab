class Post < ActiveRecord::Base
    include ActiveRecord::Validations
    validates_with PostValidator, fields: :title 
    validates :content, length: {minimum:250} 
    validates :summary, length: {maximum:250}
    validates :category, inclusion: { in: %w(Fiction, Non-Fiction)}
end
