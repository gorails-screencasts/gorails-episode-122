class HasSavedMessage
  constructor: (elem) ->
    @element = $(elem)
    @setCallbacks()

  setCallbacks: ->
    @element.find("[data-behavior='saved-message-select']").on "change", @handleChange

  handleChange: (e) =>
    saved_message_text = @element.find("[data-behavior='saved-message-select']").find(":selected").data("body")
    comment_body = @element.find("[data-behavior='comment-body']")
    comment_body.val comment_body.val() + saved_message_text

jQuery ->
  $.map $("[data-behavior='has-saved-messages']"), (elem) ->
    new HasSavedMessage(elem)
