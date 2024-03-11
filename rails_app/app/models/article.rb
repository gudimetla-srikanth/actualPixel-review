class Article < ApplicationRecord
  belongs_to :author ,foreign
  has_secure_password
end
