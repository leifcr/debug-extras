require "erb"

module DebugExtras
  class ErrorPage
    def initialize(exception, request_path)
      @exception = exception
      @request_path = request_path
      @template = File.read(File.expand_path("../templates/main.html.erb", __FILE__))
    end

    def render
      ERB.new(@template).result( binding )
    end
  end
end