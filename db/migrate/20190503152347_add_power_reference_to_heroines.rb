class AddPowerReferenceToHeroines < ActiveRecord::Migration[5.1]
  def change
    add_reference :heroines, :power, foreign_key: true
  end
end
