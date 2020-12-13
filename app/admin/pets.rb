ActiveAdmin.register Pet do
  permit_params :name, :kind, :age, :sex, :description, :shelter_id

  index do
    selectable_column
    id_column
    column :name
    column :kind
    column :age
    column :sex
    column :description
    column :shelter_id
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :kind
      f.input :age
      f.input :sex
      f.input :description
      f.input :shelter_id
    end
    f.actions
  end

end