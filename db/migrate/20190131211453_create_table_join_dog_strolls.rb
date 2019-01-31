class CreateTableJoinDogStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :table_join_dog_strolls do |t|
      t.belongs_to :chien, index: true
      t.belongs_to :stroll, inex:true
    end
  end
end