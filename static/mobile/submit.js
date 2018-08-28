$(".deadline").datepicker();

var sh = [];
var refer_obj = '';
var refer_name = '';

if($.cookie('refer_obj')){
    refer_obj = $.cookie('refer_obj');
    refer_name = $.cookie('refer_name');

    $('#refer_video').text('参考视频: '+refer_name);
    $('#refer_video').attr('href','/mobile/share/'+refer_obj);

    $.cookie('refer_name', '', {expires: -1, path: '/'});
    $.cookie('refer_obj', '', {expires: -1, path: '/'});
}

$("#requirement_add_publish").unbind("clicked").click(function(){
    submit(1);
});
$("#requirement_add_commit").unbind("clicked").click(function(){
    submit(0);
});

function submit(status){
    if(!$("#requirement_title").val()){
        alert('请填写视频标题');
        return;
    }
    if(!$("#requirement_detail").val()){
        alert('请填写需求描述');
        return;
    }
    if(!$(".deadline").val()){
        alert('请填写截止日期');
        return;
    }else{
        var myDate = new Date();
        var m = $(".deadline").val()[0]+$(".deadline").val()[1];
        var d = $(".deadline").val()[3]+$(".deadline").val()[4];
        var y = $(".deadline").val()[6]+$(".deadline").val()[7]+$(".deadline").val()[8]+$(".deadline").val()[9];
        if(y<myDate.getYear()+1900){
            alert("截止日期必须在今天之后");
            $(".deadline").focus();
            return 0;
        }else if (y == myDate.getYear()+1900){
            if(m<myDate.getMonth()+1){
                alert("截止日期必须在今天之后");
                $(".deadline").focus();
                return 0;
            }else if (m == myDate.getMonth()+1){
                if(d<=myDate.getDate()){
                    alert("截止日期必须在今天之后");
                    $(".deadline").focus();
                    return 0;
                }
            }
        }
    }
    if(!$("#requirement_amount").val()){
        alert('请填写预算金额');
        return;
    }

    var refer = '';
    var referName = '';

    if($.cookie('refer_url'))
        refer = $.cookie('refer_url');

    if($.cookie('refer_name'))
        referName = $.cookie('refer_name');

    var params = {
        Title: $("#requirement_title").val(),
        Detail: $("#requirement_detail").val(),
        Long:$("#requirement_long").val(),
        Amount: $("#requirement_amount").val(),
        Deadline: $(".deadline").val(),
        refer:refer_obj,
        referName:refer_name,
        Status: status,
        specifyProducers:sh,
    };

    $.ajax({
        type: "POST",
        url: "/mobile/submit",
        dataType: "json",
        contentType: "application/json",
        data: JSON.stringify(params),
        success: function (data) {
            if( data['bSuccess'])
                $.cookie('refer_name', '', {expires: -1, path: '/'});
            else
                alert(data['error']);

            if( data['Path'])
                window.location.href = data['Path'];
        },
        error: function () {
            alert("需求提交失败，网络异常!");
        }
    });
}