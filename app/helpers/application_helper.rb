module ApplicationHelper
  def flash_icon(type)
    case type
    when 'notice'
      image_tag 'icons/success.svg', width: '25'
    when 'error'
      image_tag 'icons/error.svg', width: '25'
    when 'warning'
      image_tag 'icons/warning.svg', width: '25'
    else
      image_tag 'icons/message.svg', width: '25'
    end
  end
end
