import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['life-nav'],
  tagName: 'nav',
  session: Ember.inject.service(),
  life: Ember.inject.service(),

  actions: {
    invalidateSession() {
      this.get('session').invalidate();
    } 
  }
});
