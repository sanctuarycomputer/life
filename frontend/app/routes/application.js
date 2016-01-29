import Ember from 'ember';
import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, {
  session: Ember.inject.service(),
  life: Ember.inject.service(),

  beforeModel() {
    if (this.get('session.isAuthenticated')) {
      let id = parseInt(this.get('session.data.authenticated.token').split('-')[0]);
      return this.store.findRecord('user', id).then(user => {
        this.get('life').set('currentUser', user);
      });
    }
  }
});
