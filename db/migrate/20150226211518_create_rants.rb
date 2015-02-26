class CreateRants < ActiveRecord::Migration
  def change
    create_table :rants do |t|
      t.timestamps
      t.string :title
      t.text :body
      t.belongs_to :user
    end
  end
end
