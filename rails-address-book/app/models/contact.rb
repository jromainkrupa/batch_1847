require 'csv'
class Contact < ApplicationRecord
  validates :last_name, presence: true

  def full_name
    return last_name if first_name.blank?

    "#{first_name} #{last_name}"
  end

  def self.to_csv
    CSV.generate(headers: true) do |csv|
      csv << column_names

      all.each do |contact|
        csv << contact.attributes.values_at(*column_names)
      end
    end
  end
end
