<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script>
    let pic = {
        myVideoStream:null,
        init:function(){
            this.myVideoStream = document.querySelector('#myVideo');
            $('#cfr_btn').click(function(){
                $('#cfr_form').attr({
                    'method':'post',
                    'action':'/mycfr'
                });
                $('#cfr_form').submit();
            });
        },
        getVideo:function(){
            navigator.getMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia;
            navigator.getMedia(
                {video: true, audio: false},
                function(stream) {
                    pic.myVideoStream.srcObject = stream
                    pic.myVideoStream.play();
                },
                function(error) {
                    alert('webcam not working');
                });
        },
        takeSnapshot:function(){
            var myCanvasElement = document.querySelector('#myCanvas');
            var myCTX = myCanvasElement.getContext('2d');
            myCTX.drawImage(this.myVideoStream, 0, 0, myCanvasElement.width, myCanvasElement.height);
        },
        send:function(){
            const canvas = document.querySelector('#myCanvas');
            const imgBase64 = canvas.toDataURL('image/jpeg', 'image/octet-stream');
            const decodImg = atob(imgBase64.split(',')[1]);
            let array = [];
            for (let i = 0; i < decodImg .length; i++) {
                array.push(decodImg .charCodeAt(i));
            }
            const file = new Blob([new Uint8Array(array)], {type: 'image/jpeg'});
            const fileName = 'snapshot_' + new Date().getMilliseconds() + '.jpg';
            let formData = new FormData();
            formData.append('file', file, fileName);
            $.ajax({
                type: 'post',
                url: '/saveimg/',
                enctype: 'multipart/form-data',
                cache: false,
                data: formData,
                processData: false,
                contentType: false,
                success: function (data) {
                    $('#imgname').val(data);
                }
            });
        },
        takeAuto:function(interval){
            this.getVideo();
            myStoredInterval = setInterval(function(){
                pic.takeSnapshot();
                pic.send();
            }, interval);
        }
    };
    </script>

<script>
    function toggleCamera() {
        var camera = document.getElementById("camera");
        var button = document.getElementById("toggleButton");

        if (camera.style.display === "none") {
            // Load the camera functionality
            camera.innerHTML = `
            <video id="myVideo" width="400" height="300" style="border: 1px solid #ddd;"></video>
            <canvas id="myCanvas" width="160" height="140" style="border: 1px solid #ddd;"></canvas><br>
            <input type="button" value="카메라 켜기" onclick="pic.getVideo();">
            <input type="button" value="사진 찍기" onclick="pic.takeSnapshot();">
            <input type="button" value="사진 보내기" onclick="pic.send();"><br>
            <input type=button value="Auto Pic" onclick="pic.takeAuto(5000);">
            Image Name:<input type="text" name="imgname" id="imgname"><br>
        `;
            camera.style.display = "block";
            button.innerText = "Close camera";

            // Initialize the 'pic' object for camera functionality
            pic.init();
        } else {
            // Remove the camera functionality
            camera.innerHTML = "";
            camera.style.display = "none";
            button.innerText = "Take a photo";
        }
    }
</script>

<div class="col-lg-9 ps-lg-5">
    <div class="container">
        <div class="row">
            <div class="col-md-9 offset-md-2">
                <h2> <svg class="svg-icon text-primary svg-icon-md"><use xlink:href="#edit-1"> </use></svg> Update your profile </h2>
                <form>
                    <div class="form-group">
                        <label for="hostImage">프로필 사진</label>
                        <div class="d-flex align-items-center">
                            <input type="file" class="form-control" id="hostImage" style="margin-right: 10px;">
                            <button type="button" class="btn-primary" id="toggleButton" onclick="toggleCamera()">Take a photo</button>
                        </div>

                        <div id="camera" style="display: none;"></div>

                    </div>
                    <div class="form-group">
                        <label for="hostId">아이디(이메일)</label>
                        <input type="email" class="form-control" id="hostId" placeholder=${loginHost.hostId} disabled>
                    </div>
                    <div class="form-group">
                        <label for="hostName">이름(본인)</label>
                        <input type="name" class="form-control" id="hostName" placeholder=${loginHost.hostName}>
                    </div>
                    <div class="form-group">
                        <label for="hostPwd">Password</label>
                        <input type="password" class="form-control" id="hostPwd" placeholder="Enter your password">
                    </div>

                    <div class="form-group">
                        <label for="confirmPassword">Confirm Password</label>
                        <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm your password">
                    </div>


                    <hr>
                    <div class="mb-4">
                        <label class="form-label" for="hostLang">구사언어</label>
                        <table >
                            <tr>
                                <td valgn="top">
                                    <select name="hostLang" id="hostLang" class="form-control">
                                        <option value=""> ===선택안함===</option>
                                        <option value="ko">한국어</option>
                                        <option value="en">영어(English)</option>
                                        <option value="ja">일본어(日本語)</option>
                                        <option value="hi">힌디어(हिंदी)</option>
                                        <option value="zh-CN">중국어 간체(简体中文)</option>
                                        <option value="zh-TW">중국어 번체(簡體中文)</option>
                                        <option value="es">스페인어(Español)</option>
                                        <option value="fr">프랑스어(Français)</option>
                                        <option value="de">독일어(Deutsch)</option>
                                        <option value="pt">포르투갈어(Português)</option>
                                        <option value="vi">베트남어(Tiếng Việt)</option>
                                        <option value="id">인도네시아어(bahasa Indonesia)</option>
                                        <option value="ar">아랍어(عربي)</option>
                                        <option value="th">태국어(แบบไทย)</option>
                                        <option value="it">이탈리아어(Italiano)</option>
                                        <option value="ru">러시아어(Русский)</option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="mb-4">
                        <label class="form-label" for="hostJob">직업</label>
                        <table>
                            <tr>
                                <td valign="top">
                                    <select name="hostJob" id="hostJob" class="form-control">
                                        <option value="비공개">===비공개===</option>
                                        <option value="학생">학생</option>
                                        <option value="금융권 종사자">금융권</option>
                                        <option value="회사원">회사원</option>
                                        <option value="변호사">변호사</option>
                                        <option value="회계사">회계사</option>
                                        <option value="의료계 종사자">의료계</option>
                                        <option value="교육계 종사자">교육계</option>
                                        <option value="사업가">사업가</option>
                                        <option value="프리랜서">프리랜서</option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <label for="hostIntro">자기소개</label>
                        <textarea class="form-control" id="hostIntro"> </textarea>
                    </div>

                    <br>
                    <button type="submit" class="btn btn-primary">Update</button>

                </form>
            </div>
        </div>
    </div>
</div>
