$(function() {
  $('#modal-form').dialog({
    autoOpen: false,
    height: 300,
    width: 350,
    modal: true,
    buttons: {
      Cancel: function() {
        $(this).dialog("close");
      }
    }
  });
  $('#create-user')
    .click(function() {
      $('#modal-form').dialog("open");
    });
});
