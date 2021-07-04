class Question < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validates :name, presence: true
    validates :subject, presence: true

    # title,content,name,subject

end
