ActiveAdmin.register Prihlaska do
  menu label: 'Přihlášky', priority: 4
  permit_params :jmeno, :prijmeni, :email, :telefon, :role, :vozickar, :prukaz, :vzkaz

  index do   
    selectable_column   
    column :jmeno
    column :prijmeni
    column :email
    column :telefon
    column :role
    column :vozickar
    column :prukaz
    column :vzkaz
  end

  sidebar "Prihlaska Details", only: [:show, :edit] do
    ul do
      li link_to("Prihlaskas", admin_cart_prihlaskas_path(cart))
    end
  end
end