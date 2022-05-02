ActiveAdmin.register Category do
  permit_params :name

  index do
    selectable_column
    id_column
    column "Name" do |category|
      category.name
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
  
  show do
    panel "Category Details" do
      attributes_table_for category do
        row "First Name" do |category|
          category.name
        end
        row "Doctors" do |category|
          category.doctors
        end
      end
    end
  end
end
