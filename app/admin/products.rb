ActiveAdmin.register Product do
  permit_params :name

  filter :name

  index do
    selectable_column
    id_column
    column :name
    column :s_type
    column :size
    column :desc
    column :price
    column :currency
    column :discount
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :s_type
      f.input :size
      f.input :desc
      f.input :price
      f.input :currency
      f.input :discount
    end
    f.actions
  end
end