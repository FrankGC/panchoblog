class Article < ActiveRecord::Base
belongs_to :user
validates :title, presence: true, length: {minimum:2, maximum:300}
validates :description, presence: true, length: {minimum:10,maximum:5000}
validates :user_id,presence: true
end
