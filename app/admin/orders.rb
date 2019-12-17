ActiveAdmin.register Order do
  permit_params :user_id

  index do
    selectable_column
    id_column
    column :user_id
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :user_id
      f.input :created_at
    end
    f.actions
  end
end
