class CreateUsers < ActiveRecord::Migration
  def change
    create_table  :users do |t|
      t.string    :first_name
      t.string    :last_name
      t.string    :user_name
      t.string    :email
      t.string    :password_hash
      t.boolean   :admin, default: false



      t.timestamps
    end
  end
end
