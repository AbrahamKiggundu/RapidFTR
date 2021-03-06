RapidFTR::Application.configure do

    # The production environment is meant for finished, "live" apps.
    # Code is not reloaded between requests
    config.cache_classes = true

    # Log error messages when you accidentally call methods on nil.
    config.whiny_nils = false

    # Full error reports are disabled and caching is turned on
    config.consider_all_requests_local = true
    config.action_controller.perform_caching = true

    # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
    # the I18n.default_locale when a translation can not be found)
    config.i18n.fallbacks = true

    # See everything in the log (default is :info)
    config.log_level = :error

    # Asset pipeline
    config.serve_static_assets = true
    config.static_cache_control = "public, max-age=#{1.year.to_i}"
    config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'
    config.assets.compile = false
    config.assets.digest = true
    config.assets.compress = true

end
