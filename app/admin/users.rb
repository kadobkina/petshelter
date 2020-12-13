ActiveAdmin.register User do

  index do
    selectable_column
    id_column
    column :email
  end

  filter :email
  filter :created_at
  filter :updated_at
end