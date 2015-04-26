`import DS from 'ember-data'`

User = DS.Model.extend
  # relations
  company: DS.belongsTo 'company', async: true
  aliases: DS.hasMany 'alias', async: true

  # attributes
  uuid: DS.attr 'string'
  email: DS.attr 'string'
  password: DS.attr 'string'

`export default User`
