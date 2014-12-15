#Formatter provides the Interface for the Strategies.

class Formatter
  def output_report context
    raise 'Abstract method: output_report'
  end
end
