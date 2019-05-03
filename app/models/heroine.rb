class Heroine < ApplicationRecord
  belongs_to :power

  validates :super_name, uniqueness: true


  def self.search(search)
    if search
      power = Power.find_by(name: search)
      if power
        self.where(power_id: power)
      else
        Heroine.all
      end
    else
      Heroine.all
    end
  end

end
