require 'fuji_markdown'

module Jekyll
  module Converters
    class Markdown
      class FujiMarkdown
        def initialize(config)
          @config = config['FujiMarkdown'] || {}
        end

        def convert(content, parser: ::FujiMarkdown)
          option = @config['output']&.upcase&.to_sym || :HTML
          parser.render(content, option)
        end
      end
    end
  end
end
