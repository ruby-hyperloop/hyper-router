module React
  class RouterHistory
    include Native

    def initialize(native)
      @native = native
    end

    def to_n
      @native
    end

    alias_native :create_href,                :createHref
    alias_native :create_key,                 :createKey
    alias_native :create_location,            :createLocation
    alias_native :create_path,                :createPath
    alias_native :go
    alias_native :go_back,                    :goBack
    alias_native :go_forward,                 :go_forward
    alias_native :listen_before,              :listenBefore
    alias_native :listen
    alias_native :push
    alias_native :push_state,                 :pushState
    alias_native :register_transition_hook,   :registerTransitionHook
    alias_native :replace
    alias_native :replace_state,              :replaceState
    alias_native :set_state,                  :setState
    alias_native :transition_to,              :transitionTo
    alias_native :unregister_transition_hook, :unregisterTransitionHook
  end
end
