ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    column :name
    column :email
    column :gamer_tag
    column :platform
    column "Games" do |user|
      user.games.map{|game| game.name}.join(', ')
    end

    column :created_at
    column :current_sign_in_at

    actions
  end
end
