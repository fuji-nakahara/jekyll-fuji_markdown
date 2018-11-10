require 'fuji_markdown'

module Jekyll
  module Converters
    class Markdown
      class FujiMarkdown
        def initialize(config)
          @config = config['FujiMarkdown'] || {}
        end

        def convert(content, parser: ::FujiMarkdown)
          option = @config['output']&.upcase&.to_sym

          if option
            parser.render(content, option)
          else
            parser.render(content)
          end
        end
      end
    end
  end
end
