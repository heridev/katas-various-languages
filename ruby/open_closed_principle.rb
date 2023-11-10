# Without following the Open and closed principle
# the problem with this approach is that whenever there is a new
# report type, you will be making changes to the report and it
# won't be really closed for modification
class ReportGenerator
  def initialize(data)
    @data = data
  end

  class << self
    def generate(data, report_type)
      case report_type
      when 'json'
        generate_json_report(data)
      when 'pdf'
        generate_pdf_report(data)
      else
        generate_html_report(data)
      end
    end

    def generate_json_report(data)
      "json report #{data}"
    end

    def generate_pdf_report(data)
      "pdf report #{data}"
    end

    def generate_html_report(_data)
      '<!DOCTYPE html><html><body><header><h1></h1></header></body></html>'
    end
  end
end

data = [
  {
    something: 'value'
  },
  { name: 'name' }
]

puts ReportGenerator.generate(data, 'json')
puts ReportGenerator.generate(data, 'pdf')
puts ReportGenerator.generate(data, 'html')
puts ReportGenerator.generate(data, 'invalid')

## There are plenty of ways to follow the principles

## Using inheritance in Ruby
# Following the Open/Closed principle
# class ReportGenerator
#   # new(data).g
# end

class OptimizedReportGenerator
  def initialize(data)
    @data = data
  end

  class << self
    def generate(data)
      new(data).generate
    end
  end
end

class JsonReport < OptimizedReportGenerator
  def generate
    "generation of json report #{@data}"
  end
end

class HtmlReport < OptimizedReportGenerator
  def generate
    puts 'generation of HTML report'
    '<!DOCTYPE html><html><header></header><body><h1>html report following Open/Closed Principle in SOLID</h1></body></html>'
  end
end

puts JsonReport.generate(data)
puts HtmlReport.generate(data)

## 2. Following Open/Closed Principle using composition
class CompositionReportGenerator
  attr_reader :report_class

  def initialize(report_class)
    @report_class = report_class
  end

  def generate
    report_class.generate
  end
end

class CompositionJsonReport
  def initialize(data)
    @data = data
  end

  def generate
    "json report using composition #{@data}"
  end
end

json_report = CompositionJsonReport.new(data)
report = CompositionReportGenerator.new(json_report)
puts report.generate
