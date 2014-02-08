# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# wizard with options and events
$(document).ready(function() {
    $('#rootwizard').bootstrapWizard({
        tabClass: 'nav nav-pills',
        onNext: function(tab, navigation, index) {
            alert('next');
        }
  });
});