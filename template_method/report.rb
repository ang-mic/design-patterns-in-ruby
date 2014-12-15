#Report class encapsulates the Template Method (output_report).

class  Report

  def initialize
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well']
  end
  #Template Method
  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  # Hook method
  def output_start
  end

  # Hook method
  def  output_head
    # puts "----#{@title}----"
    output_line @title
  end

  # Hook method
  def output_body_start
  end

  # Hook method
  def output_body
    @text.each do |line|
      output_line line
    end
  end

  # Hook method
  def output_body_end
  end

  # Hook method
  def output_end
  end

  def output_line line
    raise 'Called abstract method: output_line'
  end

end
