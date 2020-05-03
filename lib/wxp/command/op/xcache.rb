module Wxp
  class Command
    class Op < Command
      class Xcache < Op

        self.summary = '打开Xcode 缓存文件夹'
        self.description = <<-DESC
        打开Xcode 缓存文件夹
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
          openXcodeCache
        end

        def openXcodeCache
          puts 'Xcode缓存路径为：~/Library/Developer/Xcode/DerivedData/'.green
          system 'open ~/Library/Developer/Xcode/DerivedData/'
        end
      end
    end
  end
end