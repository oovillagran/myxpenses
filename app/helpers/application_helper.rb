module ApplicationHelper
  def available_icons
    Dir.glob('app/assets/images/icons/*.png').map { |path| path.split('/').last }
  end
end
