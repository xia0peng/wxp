module Wxp
  # freeze 冻结对象，将对象变成一个常量
  # unless 右边的代码块成立，才会运行左边的代码块
  # defined? 是用来判断本地变量是否存在，也可用来判断是否存在方法
  VERSION = "0.0.6".freeze unless defined? Wxp::VERSION
end
