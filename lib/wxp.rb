module Wxp
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

require 'wxp/version'
require 'wxp/translator'
