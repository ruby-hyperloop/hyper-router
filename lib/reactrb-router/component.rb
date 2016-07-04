module React
  # adds router_handler method, and overrides the built_in tag method
  module Component
    def route_handler(*args)
      Router::RR::RouteHandler(*args)
    end

    class << self
      alias _reactrb_router_original_included included
      def included(base)
        _reactrb_router_original_included(base)
        base.define_method :link do |opts = {}, &block|
          opts[:params] = opts[:params].to_n if opts[:params]
          Router::RR::Link(opts, &block)
        end
      end
    end
  end
end
