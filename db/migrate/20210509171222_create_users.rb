class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age 
      t.integer :zipcode 
      t.text :mantra 
      t.text :goal 
      t.integer :u_id
      t.string :provider 
      t.string :password_digest 



      t.timestamps
    end
  end
end
