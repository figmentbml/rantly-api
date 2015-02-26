class FixAssoc < ActiveRecord::Migration
  def change
    remove_column :users, :rants_id

    change_table :users do |t|
      t.belongs_to :rant
    end

  end
end
