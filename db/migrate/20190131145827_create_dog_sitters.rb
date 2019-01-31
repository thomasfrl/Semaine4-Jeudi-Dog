class CreateDogSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_sitters do |t|
      t.string :name
      t.belongs_to :city, index: true
    end
  end
end