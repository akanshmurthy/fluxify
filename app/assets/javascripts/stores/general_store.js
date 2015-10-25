/* global EventEmitter */
(function(root) {
  'use strict';
  var CHANGE_EVENT = "change";
  var _general = [];
  var generalMethod = function(data) {
    var _general = data;
  };

  root.GeneralStore = $.extend({}, EventEmitter.prototype, {
    general: function () {
      return _general.slice();
    },
    addChangeListener: function (callback) {
      this.on(CHANGE_EVENT, callback);
    },
    removeChangeListener: function(callback){
      this.removeListener(CHANGE_EVENT, callback);
    },
    dispatcherID: root.AppDispatcher.register(function(payload){
     switch(payload.actionType){
       case root.GeneralConstants.GENERAL:
         generalMethod(payload.general);
         root.GeneralStore.emit(CHANGE_EVENT);
         break;
     }
    })
  });
}(this));
