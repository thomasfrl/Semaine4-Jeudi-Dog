class CreateChiens < ActiveRecord::Migration[5.2]
  def change
    create_table :chiens do |t|
      t.string :name
      t.belongs_to :city, index: true
    end
  end
end
