



function videoPlayback() {
    var video = document.getElementById('video');


    //获取视频标签
    //给视频标签添加缓存播放---video标签属性。
   video.setAttribute("autoplay", "autoplay")
    //给视频标签添加循环播放---video标签属性。
    video.setAttribute("loop", "loop")

    //播放视频
    video.play();

/*    $("#video").show();

    $("#video").load();//执行一次加载一次，从头开始播放*/
}
    //鼠标离开
    function videoStopped(){
        //获取视频标签
     var oDiv = document.getElementById('video');
        //停止播放

        video.pause();
  


    }