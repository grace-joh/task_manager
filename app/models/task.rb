class Task < ApplicationRecord
  def laundry?
    title.downcase.include?('laundry') || description.downcase.include?('laundry')
  end
end
