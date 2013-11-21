class Changeuseridtopersonid < ActiveRecord::Migration
  def change
    rename_column :messages, :user_id, :person_id
  end
end
