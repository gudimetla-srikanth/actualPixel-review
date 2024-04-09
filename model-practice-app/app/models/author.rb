class Author < ApplicationRecord
  belongs_to :friend,class_name: "Author"
end
