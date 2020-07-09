$(document).ready(function () {
    $("#reviews_Click").click(function () {
       alert("弹出来");
    })

    //鼠标移进去






})

function videoPlayback() {
    //获取视频标签
    var video = document.getElementById('video');
    //给视频标签添加缓存播放---video标签属性。
    video.setAttribute("autoplay", "autoplay")
    //给视频标签添加循环播放---video标签属性。
    video.setAttribute("loop", "loop")
    //播放视频
    video.play();
}
    //鼠标离开
    function videoStopped(){
        //获取视频标签
        var oDiv = document.getElementById('video');
        //停止播放
        video.pause();
    }