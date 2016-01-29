import Ember from 'ember';

export default Ember.Controller.extend({
  session: Ember.inject.service(),

  actions: {
    authenticate() {
      let { identification, password } = this.getProperties('identification', 'password');

      this.get('session').authenticate('authenticator:token', { identification, password }).catch(reason => {
        // This is where you handle wrong password or wrong email
      });
    }  
  }
});
