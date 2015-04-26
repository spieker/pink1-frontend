/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp({
  compassOptions: {
    importPath: [
      'bower_components/bootstrap-sass/assets/stylesheets',
      'bower_components/sweetalert/lib'
    ]
  }
});

// Bootstrap
app.import('bower_components/bootstrap-sass/assets/javascripts/bootstrap/modal.js');
app.import('bower_components/bootstrap-sass/assets/fonts/bootstrap/glyphicons-halflings-regular.eot', { destDir: 'fonts/bootstrap' });
app.import('bower_components/bootstrap-sass/assets/fonts/bootstrap/glyphicons-halflings-regular.svg', { destDir: 'fonts/bootstrap' });
app.import('bower_components/bootstrap-sass/assets/fonts/bootstrap/glyphicons-halflings-regular.ttf', { destDir: 'fonts/bootstrap' });
app.import('bower_components/bootstrap-sass/assets/fonts/bootstrap/glyphicons-halflings-regular.woff', { destDir: 'fonts/bootstrap' });
app.import('bower_components/bootstrap-sass/assets/fonts/bootstrap/glyphicons-halflings-regular.woff2', { destDir: 'fonts/bootstrap' });

// sweetalert
app.import('bower_components/sweetalert/lib/sweet-alert.js');

module.exports = app.toTree();
