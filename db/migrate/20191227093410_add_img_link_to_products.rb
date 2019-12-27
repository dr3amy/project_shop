class AddImgLinkToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :img_link, :text
  end
end
