class Blog < ApplicationRecord
  validates :title,:description,presence: true 
  has_one_attached :image
  belongs_to :user
  def self.generate_csv
    attributes = %w[title description]
    CSV.generate do |csv|
      csv << attributes
      all.each do |record|
        csv << record.attributes.values_at(*attributes)
      end
    end
  end
end
