class Comment < ApplicationRecord 
  belongs_to :able ,polymorphic: true
end