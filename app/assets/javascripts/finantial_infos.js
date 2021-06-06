$(document).ready(function () {
    $("#edit").click(function (event) {
        event.preventDefault();
        var id = $(this).data("id");
        var formData = {
            salary: $("#salary").val(),
            salary_extra: $("#salary_extra").val(),
            working_time: $("#working_time").val(),
            visa_type_id: $("#visa_type_id").val(),
            worker_type_id: $("#worker_type_id").val()
        };
        $.ajax({
            type: "PUT",
            url: '/finantial_infos/'+id+'/edit/',
            data: formData
        });
    });
});