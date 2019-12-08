class InitMigration < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |u|
      u.string :email, :null => false
      u.string :password, :null => false
      u.string :country, :null => false
      u.string :town, :null => false
      u.string :address_line1, :null => false
      u.string :address_line2
      u.integer :postcode, :null => false
      u.timestamps
    end
    create_table :products do |p|
      p.text :name, :null => false
      p.string :s_type, :null => false
      p.string :size, :null => false
      p.text :desc
      p.float :price, :null => false
      p.string :currency, :null => false
      p.float :discount
      p.timestamps
    end
    create_table :sizes do |s|
      s.string :s_type, :null => false
      s.string :size, :null => false
      s.timestamps
    end
    create_table :orders do |o|
      o.integer :user_id, :null => false
      o.timestamps
    end
  end
  def down
    drop_table :users
    drop_table :products
    drop_table :sizes
    drop_table :orders
  end
end
