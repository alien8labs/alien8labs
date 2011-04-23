module ApplicationHelper
  def navigation_link(name, controller_name, url)
    content_tag :li, :class => navigation_class(controller_name) do
      link_to name, url
    end
  end


  private

  def navigation_class(controller_name)
    'current' if controller.controller_name == controller_name
  end
end
