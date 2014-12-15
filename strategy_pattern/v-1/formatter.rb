#Formatter provides the Interface for the Strategies.

class Formatter
  def output_report title, text
    raise 'Abstract method: output_report'
  end
end
