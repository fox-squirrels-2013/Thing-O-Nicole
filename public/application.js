$(document).ready(function() {
  $('form#add').on('submit', function(e) {
    e.preventDefault()
    var form_data = $(this).serialize()
    $.ajax({
      url: '/create/new',
      method: 'post',
      data: form_data
    }).done(function(server_data) {
      $('div#cats').html(server_data)
    })
  })  

  $('form.update').on('submit', function(e) {
    e.preventDefault()
    var form_data = $(this).serialize()
    var id = this.id
    var url = '/cat/' + id + '/update'
    $.ajax({
      url: url,
      type: 'put',
      data: form_data
    }).done(function(server_data) {
      $('div#cats').html(server_data)
    }).fail(function() {
      console.log("failed")
    })
  })

  $('form.delete').on('submit', function(e) {
    e.preventDefault()
    var form_data = $(this).serialize()
    var id = this.id
    var url = '/cat/' + id + '/delete'
    $.ajax({
      url: url,
      type: 'delete',
      data: form_data
    }).done(function(server_data) {
      $(e.target).closest('div').remove()
    }).fail(function() {
      console.log("failed")
    })
  })
});
