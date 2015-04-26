`import DS from 'ember-data'`

Domain = DS.Model.extend
  # relations
  company: DS.belongsTo 'company', async: true

  # attributes
  name: DS.attr 'string'

`export default Domain`
