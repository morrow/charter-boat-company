module ApplicationHelper

  def current_class?(link)
    return true if controller.controller_name == link
    return true if controller.controller_name == 'crewmen' and link == 'crew'
    return true if controller.controller_name == 'static' and controller.action_name == link
    return false
  end

end
