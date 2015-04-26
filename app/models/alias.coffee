`import DS from 'ember-data'`

Alias = DS.Model.extend
  # relations
  user: DS.belongsTo 'user', async: true

  # attributes
  source: DS.attr 'string'

`export default Alias`
