import DS from 'ember-data';

export default DS.Model.extend({
  title:       DS.attr('string'),
  description: DS.attr('string'),
  url:         DS.attr('string'),
  image_url:   DS.attr('string'),
  sender:      DS.attr('string')
});
