require 'net/https'
require 'uri'
require 'json'

module Wxp
  class Command
    class Say < Command
        self.summary = '喝一碗鸡汤'
        self.description = <<-DESC
        这是一碗鸡汤
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
          say
        end

        def say

          base_path = "https://v1.hitokoto.cn"
          uri = URI.parse("#{base_path}/?c=e")

          res = Net::HTTP.start(uri.host, uri.port,
            :use_ssl => uri.scheme == 'https') do |http|
            request = Net::HTTP::Get.new uri
            http.request request
          end

          if res.code == "200"
            resbody = JSON.parse(res.body)
            puts
            puts resbody['hitokoto']
            puts
          else  
            puts                              
            puts "鸡汤因为 '#{res.message}' 没有熬好呀" 
            puts
          end
        end
     end
  end
end