require 'colored2'
require 'claide'
require 'molinillo/errors'

module Molinillo
    class ResolverError
      include CLAide::InformativeError
    end
end

module Wxp

    class PlainInformative
        include CLAide::InformativeError
    end

    class Command < CLAide::Command # < 继承
        require 'wxp/command/op'
        require 'wxp/command/say'

        self.abstract_command = true
        self.command = 'wxp'
        self.version = VERSION
        self.description = 'wxp, a tool to manager pod'
        self.plugin_prefixes = %w(claide wxp)

        def self.options
            [
              ['--silent', 'Show nothing'],
            ].concat(super)
        end

        # 类方法使用 def self.methodname() 定义
        def self.run(argv)
            super(argv)
        end

        # initialize 方法是一个标准的 Ruby 类方法，是类的构造函数
        def initialize(argv) 
            super
            
            unless self.ansi_output?
              Colored2.disable!
              String.send(:define_method, :colorize) { |string, _| string }
            end
        end
    end
end
