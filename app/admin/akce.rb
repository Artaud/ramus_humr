ActiveAdmin.register Akce do
  permit_params :termin, :popis, :cena, :misto_srazu

  form do |f|
    f.inputs "Details" do
      f.input :termin, as: :just_datetime_picker
      f.input :popis, as: :string
      f.input :cena, as: :string
      f.input :misto_srazu, as: :string
    end
    f.actions do
      f.action :submit, as: :button
      f.action :cancel, as: :link
    end
  end

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
