class MainViewLayout < BaseLayout
  def constraints
    [
      NSLayoutConstraint.constraintWithItem(
        subviews[:label],
        attribute: NSLayoutAttributeTrailing,
        relatedBy: NSLayoutRelationEqual,
        toItem: root_view,
        attribute: NSLayoutAttributeTrailingMargin,
        multiplier: 1,
        constant: 0
      ),
      NSLayoutConstraint.constraintWithItem(
        subviews[:label],
        attribute: NSLayoutAttributeTop,
        relatedBy: NSLayoutRelationEqual,
        toItem: controller.topLayoutGuide,
        attribute: NSLayoutAttributeBottom,
        multiplier: 1,
        constant: 0
      ),
      NSLayoutConstraint.constraintWithItem(
        subviews[:label],
        attribute: NSLayoutAttributeLeading,
        relatedBy: NSLayoutRelationEqual,
        toItem: root_view,
        attribute: NSLayoutAttributeLeadingMargin,
        multiplier: 1,
        constant: 0
      ),
      NSLayoutConstraint.constraintWithItem(
        subviews[:text_view],
        attribute: NSLayoutAttributeTop,
        relatedBy: NSLayoutRelationEqual,
        toItem: subviews[:label],
        attribute: NSLayoutAttributeBottom,
        multiplier: 1,
        constant: 8
      ),
      NSLayoutConstraint.constraintWithItem(
        subviews[:text_view],
        attribute: NSLayoutAttributeTrailing,
        relatedBy: NSLayoutRelationEqual,
        toItem: root_view,
        attribute: NSLayoutAttributeTrailingMargin,
        multiplier: 1,
        constant: 0
      ),
      NSLayoutConstraint.constraintWithItem(
        subviews[:text_view],
        attribute: NSLayoutAttributeLeading,
        relatedBy: NSLayoutRelationEqual,
        toItem: root_view,
        attribute: NSLayoutAttributeLeadingMargin,
        multiplier: 1,
        constant: 0
      ),
      NSLayoutConstraint.constraintWithItem(
        subviews[:text_view],
        attribute: NSLayoutAttributeBottom,
        relatedBy: NSLayoutRelationEqual,
        toItem: controller.bottomLayoutGuide,
        attribute: NSLayoutAttributeTop,
        multiplier: 1,
        constant: -20
      ),
    ]
  end
end
