class ViewerDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def status
    decorated = ''
    if object.status === 'watch_later'
      decorated = 'Ver Depois'
    elsif object.status === 'watched'
      decorated = 'Já Vi'
    elsif object.status === 'watching'
      decorated = 'Assistindo'
    end

    decorated
  end

end
