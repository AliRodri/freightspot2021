module ApplicationHelper
  def action?(*action)
    action.include?(params[:action])
  end

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def pack_exists?(filename)
    puts "\n\n\nRUTA:"
    puts File.join(Rails.root, 'app', 'javascript', 'packs', "#{filename}.js")
    File.exists?(File.join(Rails.root, 'app', 'javascript', 'packs', "#{filename}.js"))
  end

  def toastr_flash
    flash.each_with_object([]) do |(type, message), flash_messages|
      type = alert_type(type)
      puts 'Type:'
      puts "Type:#{type}"
      text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true })</script>"
      flash_messages << text.html_safe if message
    end.join("\n").html_safe
  end

  def alert_type(type)
    case (type)
    when 'success'
      'success'
    when 'error'
      'error'
    when 'alert'
      'warning'
    else
      'success'
    end
  end
end
