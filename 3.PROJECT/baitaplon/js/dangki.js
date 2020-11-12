$("#username").keyup(function(e) {
    var taikhoan = $(this).val();
    $.post('check_dangki.php', { 'taikhoan': taikhoan }, function(data) {
        $("#tk").html(data);
    });
});