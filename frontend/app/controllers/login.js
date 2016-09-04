import Ember from 'ember';

export default Ember.Controller.extend({
  actions:{
    login() {

      let { email, password } = this.getProperties('email', 'password');

      Ember.$.ajax({
        url: '/users/sign_in',
        type: 'POST',
        headers: {
          Accept: 'application/json, text/javascript'
        },
        data: {
          user: { email, password  }
        }
      }).then((authData) => {
        if(authData){
          this.transitionToRoute('dashboard')
        }
      });
    }
  }
});
