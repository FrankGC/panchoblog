class Article < ActiveRecord::Base
validates :title, presence: true, length: {minimum:3, maximus:50}
validates :description, presence: true, length: {minimum:10,maximus:300}
end
