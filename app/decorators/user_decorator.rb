class UserDecorator < Draper::Decorator
  delegate_all

  def short_name
    "#{last_name} #{first_name[0]}."
  end
end
