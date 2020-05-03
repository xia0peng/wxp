module Wxp
  class Command
    class Op < Command
      class Gitconf < Op

        self.summary = '打开.gitconfig文件'
        self.description = <<-DESC
          打开.gitconfig文件
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
          openGitConfig
        end

        def openGitConfig
          puts 'git config路径为：~/.gitconfig'.green
          puts 'git命令为: git config --list'
          `git config --list`
        end
      end
    end
  end
end