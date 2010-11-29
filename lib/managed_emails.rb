module ManagedEmails

  # If your app is in a subdirectory you need to be able to indicate
  # that all routes should be scoped to a directory. Of course leave
  # as nil if your app is in the root directory.
  #
  # Who misses the days of relative_uri_root
  mattr_accessor :route_scope

  class Engine < Rails::Engine
  end
end
