class MainController < UIViewController
  def loadView
    self.view = MainView.new

    MainViewLayout.new(self, {
      label: view.label,
      text_view: view.text_view
    }).layout!
  end
end
