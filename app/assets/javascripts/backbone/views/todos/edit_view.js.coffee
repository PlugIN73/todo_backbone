TodoBackbone.Views.Todos ||= {}

class TodoBackbone.Views.Todos.EditView extends Backbone.View
  template : JST["backbone/templates/todos/edit"]

  events :
    "submit #edit-todo" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (todo) =>
        @model = todo
        window.location.hash = "/#{@model.id}"
      error: (todo, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
