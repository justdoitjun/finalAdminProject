<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="col-lg-9 ps-lg-5">
    <div class="container">
        <div class="row">
            <div class="col-md-9 offset-md-2">
                <h2 class="mb-4">Update Personal Information</h2>
                <form>
                    <div class="form-group">
                        <label for="hostImage">프로필 사진</label>
                        <input type="file" class="form-control" id="hostImage" placeholder="사진 넣는 걸로 바꿔야함">
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
                    <div class="form-group">
                        <label for="confirmPassword">구사언어</label>
                        <table >
                            <tr >
                                <td valgn="top">
                                    <select name="items" class="form-control">
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