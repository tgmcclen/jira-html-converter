require "thor"
require "csv"
require "ansi/code"
require "reverse_markdown"

module JiraHtmlConverter
  class MyCLI < Thor
    desc "convert SOURCE", "converts the SOURCE file"

    def convert(source)
      file_in = "#{Dir.pwd}/#{source}"
      file_out = "#{File.dirname(file_in)}/#{File.basename(file_in, ".*")}-converted.csv"
      puts "Source: #{ANSI::Code.yellow { file_in } }"
      puts "Destination: #{ANSI::Code.yellow { file_out } }"

      csv_text = File.read(file_in)
      csv_in = CSV.parse(csv_text, headers: true)
      CSV.open(file_out, "wb") do |csv_out|
        csv_out << csv_in.headers
        csv_in.each do |row|
          row['Description'] = ReverseMarkdown.convert row['Description'] if row.include? 'Description'
          csv_out << row.fields
        end
      end
    end
  end
end
