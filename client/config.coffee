exports.config =
  # See http://brunch.io/#documentation for docs.
  paths:
    public: './../public'
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^(?!app)/
      order:
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.8.3.js'
        ]
        after: [
          'test/vendor/scripts/test-helper.js'
        ]
    stylesheets:
      joinTo: 'stylesheets/app.css'

    templates:
      joinTo: 'javascripts/app.js'
