(function(root) {
  'use strict';
  root.GeneralUtil = {
    fetch: function () {
      $.ajax({
        url: 'api/general',
        type: 'get',
        dataType: 'json',
        success: function(result) {
          root.GeneralActions.general(result);
        }
      });
    }
  };
}(this));
