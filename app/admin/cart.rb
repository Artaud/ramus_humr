ActiveAdmin.register Cart do
  menu label: 'Přihlášky', priority: 3

  index do   
    selectable_column   
    # id_column 
    column :jmeno
    column :prijmeni
    column :email
    column :akces do |cart|
      table_for cart.prihlaskas do
        column do |prihlaska|
          prihlaska.akce.popis
        end
      end
    end
  end

  sidebar "Prihlaska Details", only: [:show, :edit] do
    ul do
      li link_to("Prihlaskas", admin_cart_prihlaskas_path(cart))
    end
  end
  # before_filter :only => [:index] do
  #   if params['commit'].blank?
  #     params['q'] = {:potvrzeno => true}
  #   end
  # end

  # filter :



  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
