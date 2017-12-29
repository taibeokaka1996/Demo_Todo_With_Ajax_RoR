//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

$(function(){
    $("form").submit(function(e){
        e.preventDefault();
        //this debugger should be hit when u click the submit button!
        var action = $(this).attr('action');
        var method = $(this).attr('method');

        //var descripton = $(this).find('#todo_description').val();
        //var priority = $(this).find('#todo_priority').val();
        var data = $(this).serializeArray();

        $.ajax({
            method: method,
            url: action, 
            data: data,
            //data: {descripton: descripton, priority: priority}

            // This line makes the response format Javascript 
            //and not html
            dataType: 'script' 
        });
    });
});

