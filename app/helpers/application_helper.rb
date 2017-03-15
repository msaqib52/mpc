module ApplicationHelper
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

  def get_column_name
    if params[:q][:platform_eq] == "xbox"
      "Gamer Tag"
    elsif params[:q][:platform_eq] == "playstation"
      "Playstation ID"
    else
      "Player ID"
    end
  end
end
