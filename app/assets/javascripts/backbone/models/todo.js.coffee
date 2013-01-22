class TodoBackbone.Models.Todo extends Backbone.Model
  paramRoot: 'todo'

  defaults:
    title: null
    description: null
    date_to: null

class TodoBackbone.Collections.TodosCollection extends Backbone.Collection
  model: TodoBackbone.Models.Todo
  url: '/todos'
