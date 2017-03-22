RSpec.configure do |config|
  config.before(:each) do
    on_client do
      class App < Hyperloop::Component
        param optional_param: nil
        collect_other_params_as :router_params
        def render
          div do
            if children.count > 0
              children.each { |child| div { child.render } }
            elsif params.optional_param
              params.optional_param
            else
              "Rendering App: No Children"
            end
          end
        end
      end

      class Index < Hyperloop::Component
        def render
          "Index got routed"
        end
      end

      class Child1 < Hyperloop::Component
        param optional_param: nil

        def render
          if params.optional_param
            params.optional_param
          else
            "Child1 got routed"
          end
        end
      end

      class Child2 < Hyperloop::Component
        param optional_param: nil

        def render
          if params.optional_param
            params.optional_param
          else
            "Child2 got routed"
          end
        end
      end

      class Child3 < Hyperloop::Component
        def render
          "Child3 got routed"
        end
      end

      class ParamChild < Hyperloop::Component
        param :route

        def render
          "param1 = #{params.route[:param1]}"
        end
      end

      class QueryChild < Hyperloop::Component
        param :location

        def render
          "query props = #{params.location[:query]}"
        end
      end

      class LinkChild < Hyperloop::Component
        param optional_param: nil

        def render
          TestRouter::Link('/child1', query: { foo: 12 }) { 'child1' }
        end
      end

      class NativeTestRouter < Hyperloop::Component
        def render
          Hyperloop::Router::Native::Router(routes: ROUTES.to_n)
        end
      end

      class TestRouter < Hyperloop::Router
        class << self
          attr_accessor :promise
        end
      end
    end
  end
end
