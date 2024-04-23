class User < ApplicationRecord
  def self.gen 
    CSV.generate do |csv|
      csv << User.column_names
      User.all.each do |record|
        csv << record.attributes.values
      end
    end
  end
end
