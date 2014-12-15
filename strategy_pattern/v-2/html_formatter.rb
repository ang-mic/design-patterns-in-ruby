#HtmlFormatter is one of the Strategies

class HtmlFormatter < Formatter

  def output_report context
    puts '<html>'
    puts "\t<head>"
    puts "\t\t<title>#{context.title}</title>"
    puts "\t</head>"
    puts "\t<body>"
    context.text.each do |line|
      puts "\t\t<p>#{line}</p>"
    end
    puts "\t</body>"
    puts "</html>"
  end

end
