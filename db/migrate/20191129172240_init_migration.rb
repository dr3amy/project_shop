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
      p.integer :size_id, :null => false
      p.text :desc
      p.float :price, :null => false
      p.float :discount
      p.timestamps
    end
    create_table :sizes do |s|
      s.string :type, :null => false
      s.string :size, :null => false
      s.timestamps
    end
    create_table :orders do |o|
      o.integer :user_id, :null => false
      o.timestamps
    end
    create_table :order_products do |op|
      op.integer :order_id, :null => false
      op.integer :product_id, :null => false
      op.timestamps
    end
  end
  def down
    drop_table :users
    drop_table :products
    drop_table :sizes
    drop_table :orders
    drop_table :order_products
  end
end
