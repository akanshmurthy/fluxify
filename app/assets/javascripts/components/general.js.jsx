/* global React */

(function(root) {
  'use strict';
  root.General = React.createClass({
    getInitialState: function () {
      return({general: []});
    },
    _onChange: function () {
      this.setState({general: root.GeneralStore.general()});
    },
    componentDidMount: function () {
      root.GeneralUtil.get();
      root.GeneralStore.addChangeListener(this._onChange);
    },
    componentWillUnmount: function () {
      root.GeneralStore.removeChangeListener(this._onChange);
    },
    render: function () {
      var that = this;
      return(
         <ul>
           {that.state.general.map(function(el){
             return <li key={el.id}>{el}</li>;
           })}
         </ul>
      );
    }
  });
}(this));
