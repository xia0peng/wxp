module Wxp
  class Command
    class Op < Command
      class Gems < Op

        self.summary = '打开gems文件夹'
        self.description = <<-DESC
        打开gems文件夹
      DESC

        self.arguments = [
        ]

        def initialize(argv)
          super
        end

        def validate!
          super
        end

        def run
          openGems
        end

        def openGems
          puts 'gem路径为：/Library/Ruby/Gems/'.green
          system 'open /Library/Ruby/Gems/'
        end
      end
    end
  end
end