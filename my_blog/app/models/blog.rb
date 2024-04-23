class Blog < ApplicationRecord
  validates :title,:description,presence: true 
  has_one_attached :image
  belongs_to :user
  def self.generate_csv 
    CSV.generate do |csv|
      csv << column_names
      all.each do |record|
        csv << record.attributes.values
      end
    end
  end
end
