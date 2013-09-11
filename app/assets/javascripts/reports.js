$(function(){
    $('.best_in_place').best_in_place()
});

$(document).on('best_in_place:error', function(event, request, error) {
    $.each($.parseJSON(request.responseText), function(index, value) {
        if( typeof(value) == "object") { value = index + " " + value.toString(); }
        $('.alert').alert('close');
        $('.content').prepend($("<div class='alert alert-error'><button type='button' class='close' data-dismiss='alert'>&times;</button></div>"));
        $('.alert-error').prepend(value);
    });
});
