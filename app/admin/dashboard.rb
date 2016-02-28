ActiveAdmin.register_page "Nástěnka" do

  menu priority: 1, label: "Nástěnka"

  content do
    columns do
        column do 
            panel "Přihlášky na aktivní Humry" do
                table do 
                    thead do 
                        tr do
                            %w[Akce Jméno Příjmení Role].each &method(:th)
                        end
                    end
                    tbody do
                        Prihlaska.all.map do |prihl|
                            tr do
                                td do end
                                td do prihl.jmeno end
                                td do prihl.prijmeni end
                                td do end
                            end
                        end
                    end
                end
            end
        end
        column do            
            panel "Přihlášky na aktivní Humry" do
                table do 
                    thead do 
                        tr do
                            %w[Akce Jméno Příjmení Role].each &method(:th)
                        end
                    end
                    tbody do
                        Prihlaska.all.map do |prihl|
                            tr do
                                td do end
                                td do prihl.jmeno end
                                td do prihl.prijmeni end
                                td do end
                            end
                        end
                    end
                end
            end
        end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end