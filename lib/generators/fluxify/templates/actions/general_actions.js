(function(root) {
  'use strict';
  root.GeneralActions = {
    general: function (result) {
      root.AppDispatcher.dispatch({
        actionType: root.GeneralConstants.GENERAL,
        general: result
      });
    },

  };
}(this));
