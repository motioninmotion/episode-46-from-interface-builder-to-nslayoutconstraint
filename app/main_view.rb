class MainView < UIView
  attr_reader :label, :text_view

  def init
    super

    setBackgroundColor UIColor.whiteColor

    addSubview(@label = UILabel.new)
    @label.text = "Label"
    @label.font = UIFont.boldSystemFontOfSize(24)
    @label.textAlignment = NSTextAlignmentCenter

    addSubview(@text_view = UITextView.new)
    @text_view.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
    @text_view.font = UIFont.systemFontOfSize(18)
    @text_view.textAlignment = NSTextAlignmentCenter

    self
  end
end
