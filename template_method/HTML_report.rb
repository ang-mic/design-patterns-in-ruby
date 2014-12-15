
class HTMLReport < Report

  def output_start
    puts '<html>'
  end

  def output_head
    puts "\t<head>
    \t\t<title>#{@title}</title>
    \t</head>"
  end

  def output_body_start
    puts "\t<body>"
  end

  def output_body
    @text.each do |line|
     output_line line
    end
  end

  def output_body_end
    puts "\t</body>"
  end

  def output_end
    puts '</html>'
  end

  def output_line line
     puts "\t\t\t<p>#{line}</p>"
  end
end
