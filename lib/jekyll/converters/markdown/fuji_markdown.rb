require 'fuji_markdown'

module Jekyll
  module Converters
    class Markdown
      class FujiMarkdown
        def initialize(_config)
        end

        def convert(content, parser: ::FujiMarkdown)
          parser.render(content)
        end
      end
    end
  end
end
