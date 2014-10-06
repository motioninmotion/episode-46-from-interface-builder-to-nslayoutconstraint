class BaseLayout
  attr_reader :controller, :root_view, :subviews

  def initialize(controller, subviews)
    @controller = controller
    @root_view = controller.view
    @subviews = subviews
  end

  def layout!
    remove_all_constraints
    add_constraints
  end

  def remove_all_constraints
    root_view.translatesAutoresizingMaskIntoConstraints = false
    root_view.removeConstraints(root_view.constraints)

    subviews.each do |k, sv|
      sv.translatesAutoresizingMaskIntoConstraints = false
      sv.removeConstraints(sv.constraints)
    end
  end

  def add_constraints
    root_view.addConstraints(constraints)
  end
end
