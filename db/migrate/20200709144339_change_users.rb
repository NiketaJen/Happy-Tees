class ChangeUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.remove :password
      t.integer :password_digest
    end
  end
end
