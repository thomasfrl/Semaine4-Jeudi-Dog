class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.date :date
      t.belongs_to :chien
      t.belongs_to :dog_sitter
    end
  end
end
