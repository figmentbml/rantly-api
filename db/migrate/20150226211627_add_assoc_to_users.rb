class AddAssocToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.belongs_to :rant
    end
  end
end
