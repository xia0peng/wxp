require 'wxp/command/op/gems'
require 'wxp/command/op/gitconf'
require 'wxp/command/op/xcache'

module Wxp
  class Command
    class Op < Command
      self.abstract_command = true
      self.summary = '打开常用文件'
      self.description =  <<-DESC
        打开常用文件夹，并输出路径
      DESC
    end
  end
end