<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Q&A detail page</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/5af4c0ec93.js"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<!-- Fonts -->
<link rel="stylesheet" href="https://webfontworld.github.io/daegu/DalseoHealing.css">
			<!-- summernote editer -->
			<script src="cboard/summernote/summernote-lite.js"></script>
<script src="cboard/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="cboard/summernote/summernote-lite.css">

<style>

body {
	font-family : 'DalseoHealing';
	background-image: url('/image/background.png');
	color: white;
	background-size: 100% 100%;
}


nav {
	margin-bottom: 50px;
}

* {
	box-sizing: border-box;
}

/*div {
	border: 1px solid red;
}*/


/*  HEADER CSS  */
.navbar {
           top: 0;
           width: 100%;
           z-index: 1000;
           height:70px;
           background-color : #323232;
       }
       .navbar-brand{
          color:white;
       }
       .nav-link {
            color: white !important;         
       }

       .nav-link:hover {
          background-color: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
       }
       .nav-item{
           align-items: center;
          display: flex;
       }

      .btn{
         color:white;
      }
 
      .btn:hover{
         color:white;
      }
      .dropdown-menu{
         background-color: #323232;
         text-align: center; /* 중앙 정렬을 위한 설정 */
         width: 100%; /* 너비를 100%로 설정 */
      }
      .dropdown-item{
         background-color: #323232;
         color:white;
      }


  
      /*    end navbar css */




.btn-outline-success {
	border-radius: 0;
	color: white;
	border: 1px solid white;
}

.btn-outline-success:hover {
	border-color: white;
	border-radius: 0;
	color: #323232;
	background-color: white;
}

.center {
	display: flex;
	justify-content: center;
	align-items: center;
}

.container {
	width: 1100px;
	height: 750px;
	display: flex;
	flex-direction: column;
	margin: auto;
	align-items: center;
	background-color: #323232;
}

.content {
	height: 400px;
	width: 1100px;
	background: #323232;
	padding: 2rem;
	backdrop-filter: blur(10px);
	text-align: center;
	color: #00d4ff;
	display: flex;
	gap: 2rem;
}

.post-detail {
	width: 100%;
}

.post-header {
	margin-bottom: 10px;
	padding: 1rem;
	background: #272727;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
}

#post-header-title {
	display: flex;
	justify-content: left;
    align-items: center;
	color: white;
	padding-left: 20px;
	font-size: large;
	border-bottom: 1px solid darkgray;
}

#post-title {
	word-wrap: break-word;
	font-size: 1.5rem;
	margin: 0;
	color: white;
}

.post-body {
	height: 250px;
	display: flex;
    align-items: center;
    justify-content: center;
	background: #272727;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
	text-align: left;
	line-height: 1.8;
}

#post-content {
	word-wrap: break-word;
    height: 210px;
    width:980px;
    overflow-y: auto;
	margin: 0;
	color: #ffffff;
}

.dropdown-toggle::after { display: none; }
				
.note-editable {
	border: 1px solid #d3d3d3;
	color: white;
	font-family : 'DalseoHealing';
}
				
.note-dropdown-item:link, .note-dropdown-item:visited, .note-dropdown-item:hover{
	color:black;
}

.btnsdiv {
	display: flex;
	justify-content: right;
	align-items: center;
	margin-top: 80px;
	margin-bottom: 40px;
	width: 1000px;
}

.btnsdiv>button {
	margin-right: 5px;
}

.footer {
	margin-top: 50px;
}


/* FOOTER CSS */
        .footer {
            width: 100%;
            background-color: #323232;
            position: relative;
            height: 150px;
        }
        .leftfooter{
           color : white;
           font-weight : bold;
           margin-top: 20px;
        }
        .rightfooter {
           display: flex;
           align-items: center;
       
       }
         .footerbox {
           width: 1000px;
           height: 100%;
           margin: auto;
           display: flex;
           justify-content: space-between;
           align-items: center;    
       }

        .iconbox {
            display: flex;
            align-items: center;
        }

        .iconbox a {
            margin: 0 10px;
            font-size: 50px;
            color: white;
        }
       .coinbox {
           display: flex;
           align-items: center;
           margin-left: 20px;
       }
        .coinbox img {
            width: 120px;
            height: 100px;
            margin-left : 20px;
        }
        
        .thumbnail{
           border-radius: 20px;
           width: 356px;
           height: 230px;
           object-fit: cover;
        }
        

        a {
          text-decoration: none !important;
      }
       a:link { color: white; text-decoration: none;}
       a:visited { color: white; text-decoration: none;}
       a:hover { color: white; text-decoration: underline;}


.addCommentBox {
	width: 900px;
	border: 1px solid white;
}

.addCommentBox>.btn {
	height: 100px;
}

#addCommentInput {
	overflow-x: auto;
	width: 898px;
	height: 100px;
	background-color: #323232;
	border-bottom: 1px solid gray;
}

#addCommentBtnDiv {
	display: flex;
	justify-content: right;
	width: 900px;
}

#addCommentBtnDiv>.btn {
	margin-right: 2px;
	border-radius: 0;
}

.commentListBox {
	flex-direction: column;
	display: flex;
	justify-content: center;
	align-items: center;
}

.replyListBoxBox {
	display: flex;
	justify-content: center;
	align-items: center;
	padding-bottom: 50px;
}

.replyListBox {
	padding-bottom: 50px;
	flex-direction: column;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 1100px;
	background-color: #323232;
}

.replycontainer {
	border-bottom: 1px solid gray;
	padding: 10px;
	width: 900px;
	height: 130px;
	background-color: #272727;
	dispaly: flex;
	flex-diraction: column;
}


.replycontainer>.col1 {
	padding-left: 10px;
	height: 30px;
	font-size: large;
}

.replycontainer>.col1>span {
	margin-right: 20px;
}


.replycontainer>.col2 {
	overflow-y: auto;
	padding-left: 30px;
	height: 70px;
	display: flex;
	align-items: left;
	flex-direction: column;
	word-wrap: break-word;
}

.replycontainer>.col3 {
	display: flex;
	justify-content: right;
	padding-bottom: 10px;
	padding-right: 30px;
	height: 45px;
}

.replyupdatebtn {
	margin-right: 10px;
}

.replydatetext {
	float: right;
}
</style>
</head>

<body>

<!--  HEADER HTML -->
 <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
           
            <a class="navbar-brand" href="/index.jsp"><img src="/image/headerlogo.png" alt="" style="width: 80px; height: 60px;"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <button class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            게임
                        </button>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=1">2048</a></li>
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=2">GOLD BREAK!</a></li>
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=3">ICE CUBY</a></li>
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=4">똥 피하기</a></li>
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=5">탈출하기</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <button class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            게시판
                        </button>
                        <ul class="dropdown-menu">
                           <li><a class="dropdown-item" href="/list.nboard">공지사항</a></li>
                            <li><a class="dropdown-item" href="/list.cboard">커뮤니티</a></li>
                     <li><a class="dropdown-item" href="/list.review">게임리뷰</a></li>
                            <li><a class="dropdown-item" href="/list.qboard">Q&A게시판</a></li>
                            <li><a class="dropdown-item" href="/list.fboard">FAQ게시판</a></li>
                            
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/list.playrecord">랭킹</a>
                    </li>
                   

                </ul>
                <c:choose>
                   <c:when test="${not empty loginId}">
                   <ul class="navbar-nav ms-auto">
                   
                   <c:if test="${isAdmin eq true}">
                       <li class="nav-item">
                           <a class="nav-link" href="/dashBoard.admin">관리자페이지</a>
                       </li>
                   </c:if>   
                     <li class="nav-item">
                           <a class="nav-link" href="/logout.member">로그아웃</a>
                     </li>
                     
                    <li class="nav-item">
                       <a class="nav-link" href="/mypage.member">
                           <img src="/profile/${userProfileUrl}" class="rounded-circle" width="40" height="40" alt="Profile">
                       </a>
                    </li>                  


                   </ul>                          
                   </c:when>
                   <c:otherwise>
                      <ul class="navbar-nav ms-auto">
                          <li class="nav-item">
                              <a class="nav-link" href="/member/login/login.jsp"><i class="fas fa-user"></i></a>
                          </li>
                      </ul>
                   </c:otherwise>
                </c:choose>

            </div>
        </div>
    </nav>
	<div class="container">
		<div class="content">
			<div class="post-detail" id="post-detail">
				<c:choose>
					<c:when test="${isAdmin eq true}">
						<div id="post-header-title">
							문의내용  &nbsp; 
								<select id="selectBox" class="form-select"
									aria-label="Default select example" style="width:130px; background-color:whitesmoke; color:black; margin-bottom:5px; border:none;">
									<c:choose>
										<c:when test="${dto.qBoardAnswer eq 'N'}">
											<option selected>답변대기</option>
											<option value="1">답변완료</option>
										</c:when>
										<c:when test="${dto.qBoardAnswer eq 'Y'}">
											<option selected>답변완료</option>
											<option value="1">답변대기</option>
										</c:when>
									</c:choose>
								</select>
							<hr>
						</div>
					</c:when>
					<c:otherwise>
						<div id="post-header-title">
							문의내용  &nbsp; 
							<hr>
						</div>
					</c:otherwise>
				</c:choose>
				
				<div class="post-header">
					<div id="post-title" contenteditable="false">${dto.qBoardTitle}</div>
				</div>
				<div class="post-body">
					<div id="post-content">${dto.qBoardContent}</div>
				</div>
				<c:choose>
					    <c:when test="${file != null}">
					    <div style="float: left; color: white; padding-left: 10px; padding-top: 10px">
					        <span>파일다운로드▷ </span><a href="/download.qfile?oriname=${file.qFileOriname}&sysname=${file.qFileSysname}">${file.qFileSysname}</a>
					    </div>
					    </c:when>
				</c:choose>
			</div>
		</div>
		
		<div class="btnsdiv">
			<button class="backlist btn btn-secondary" type="button"
				onclick="location.href='/list.qboard'">목록으로</button>
			<c:choose>
				<c:when test="${loginId eq dto.userId and isAdmin eq false}">
					<button class="btn btn-secondary" id="updatebtn">수정</button>
					<button class="btn btn-secondary" id="deletebtn">삭제</button>
				</c:when>
				<c:when test="${isAdmin eq true}">
					<button class="btn btn-secondary" id="deletebtn">삭제</button>
				</c:when>
			</c:choose>
		</div>
		<div style="width: 900px; float: left; font-size: large;">의견쓰기</div>
		<div class="addCommentBox">
			<c:choose>
				<c:when test="${loginId eq dto.userId or isAdmin eq true}">
					<div id="addCommentInput" contenteditable="true"></div>
					<div id="addCommentBtnDiv">
						<button class="btn btn-outline-success" id="addCommentBtn">등록</button>
					</div>
				</c:when>
				<c:otherwise>
					<div class="center" contenteditable="false"
						style="width: 900px; height: 100px; border: 1px solid white">게시글
						작성자만 댓글을 작성할 수 있습니다.</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div class="commentListBox"></div>
	<div class="replyListBoxBox">
		<div class="replyListBox"></div>
	</div>
	<!-- FOOTER CSS -->
	<div class="footer">
	        <div class="footerbox">
	            <div class="leftfooter">
	                <p>회사명: 팀별빛</p>
	                <p>전화: 02-1234-5678</p>
	                <p>이메일: info@example.com</p>
	            </div>
	            <div class="rightfooter">
	                <div class="iconbox">
	                    <a href="#"><i class="fab fa-facebook"></i></a>
	                    <a href="#"><i class="fab fa-instagram"></i></a>
	                    <a href="#"><i class="fab fa-youtube"></i></a>
	                </div>
	                <div class="coinbox">
	                    <img src="/image/coin.png" alt="">
	                </div>
	            </div>
	        </div>
	    </div>
</body>
<script>


		// 제목 입력 필드의 입력 길이 제한
		$("#post-title").on("input", function () {
		    var maxLength = 33;
		    if ($(this).val().length > maxLength) {
		        alert("제목은 최대 33글자까지 입력할 수 있습니다.");
		        $(this).val($(this).val().substring(0, maxLength));
		    }
		});
			
			$("#selectBox").on("change",function(){
                     let form = $('<form>', {
                         action: '/selectAnswer.qboard',
                         method: 'post'
                     }); // 동적 form 생성

                     let formData = [
                         $('<input>', { type: 'hidden', name: 'selected', value: $("#selectBox option:selected").text() }),
                         $('<input>', { type: 'hidden', name: 'qBoardSeq', value: ${ dto.qBoardSeq } })
                 ];

         		form.append(formData);
         		form.appendTo('body').submit();
			
			})
				
            window.onload = function () {
                $.ajax({
                    url: "/select.qreply",
                    dataType: "json",
                    data: {
                        qBoardSeq: ${ dto.qBoardSeq }
        		}
    		}).done(function (data) {
               let replylist = data.replylist;
               let loginId = data.loginId;
               for (let reply of replylist) {
	               if (reply.qBoardSeq == ${ dto.qBoardSeq }) {
		               let replycontainer = $("<div>").addClass("replycontainer col").attr("data-reply-seq", reply.qReplySeq);
		               let col1 = $("<div>").addClass("col1").css("flex","1").html(reply.nickname);
		               let admini=$("<i>").addClass("fa-solid fa-user-gear").css("color","#ffffff");
	                   let useri=$("<i>").addClass("fa-solid fa-person-circle-question").css("color","#ffffff");
		               if(reply.admin=='Y'){
		            	   col1.append(admini);
		               }
	            
		               let span = $("<span>").css("float","right").html(reply.qReplyDate);
		               col1.append(span);
		               replycontainer.append(col1);
		               
		               //문제지점
		               let col2 = $("<div>").addClass("replycontents col2").css("flex","1").html(reply.qReplyContent);
		               replycontainer.append(col2);
		               
		               
		               if (reply.userId == loginId && ${isAdmin}==false) {
		                  let col3 = $("<div>").addClass("col3").css("flex","1");
		                  let replyupdatebtn = $("<button>").addClass("replyupdatebtn btn btn-outline-success").html("수정");
		                  let replydeletebtn = $("<button>").addClass("replydeletebtn btn btn-outline-success").html("삭제");
		                  col3.append(replyupdatebtn, replydeletebtn);
		                  replycontainer.append(col3);
		               }else if(${isAdmin}==true){
			                  let col3 = $("<div>").addClass("col3").css("flex","1");
			                  let replydeletebtn = $("<button>").addClass("replydeletebtn btn btn-outline-success").html("삭제");
			                  col3.append(replydeletebtn);
			                  replycontainer.append(col3);
			           }else{
			        	   let col3 = $("<div>").addClass("col3").css("flex","1");
			        	   replycontainer.append(col3);
			           }
		               
		               $(".replyListBox").append(replycontainer);
		      
	            	}
        	}

            $(".replyupdatebtn").on("click", function () {
                let replyContainer = $(this).closest('.replycontainer');
                let replySeq = replyContainer.data("reply-seq");
                let replyContents = replyContainer.find('.replycontents');
                let updatebtn = $(this);
                let deletebtn = $(this).next();

                if (updatebtn.html() == "수정") {
                    replyContents.attr("contenteditable", "true"); //편집 열기
                    updatebtn.html("완료");
                    deletebtn.html("취소");
                    
                } else if (updatebtn.html() == "완료") {
                    replyContents.attr("contenteditable", "false"); //편집 닫기
                    updatebtn.html("수정");
                    deletebtn.html("삭제");

                    let form = $('<form>', {
                        action: '/update.qreply',
                        method: 'post'
                    }); // 동적 form 생성

                    let formData = [
                        $('<input>', { type: 'hidden', name: 'replyseq', value: replySeq }),
                        $('<input>', { type: 'hidden', name: 'boardseq', value: ${ dto.qBoardSeq }}),
                $('<input>', { type: 'hidden', name: 'replycontent', value: replyContents.html().trim() })
                ];

            form.append(formData);
            form.appendTo('body').submit();
            }
        });

            $(".replydeletebtn").on("click", function () {
                let replyContainer = $(this).closest('.replycontainer');
                let replySeq = replyContainer.data("reply-seq");
                let updatebtn = $(this).prev();
                let deletebtn = $(this);

                if (deletebtn.html() == "삭제") {
                    let result = confirm("정말 삭제하시겠습니까?");
                    if (result) {
                        let form = $('<form>', {
                            action: '/delete.qreply',
                            method: 'post'
                        }); // 동적 form 생성

                        let formData = [
                            $('<input>', { type: 'hidden', name: 'replyseq', value: replySeq }),
                            $('<input>', { type: 'hidden', name: 'boardseq', value: ${ dto.qBoardSeq } })
                    ];

            form.append(formData);
            form.appendTo('body').submit();
                }
            } else if (deletebtn.html() == "취소") {
                location.href = "/detail.qboard?seq=${dto.qBoardSeq}";
            }
        });
    });
}


            $("#addCommentBtn").on("click", function () {
                $.ajax({
                    url: "/insert.qreply",
                    type: "GET",
                    dataType: "json",
                    data: {
                        qBoardSeq: '${dto.qBoardSeq}',
                        loginId: '${loginId}',
                        comment: $('#addCommentInput').html().trim()
                    }
                }).done(function (replydto) {  
                    let replycontainer = $("<div>").addClass("replycontainer col").attr("data-reply-seq", replydto.qReplySeq);
                    let col1 = $("<div>").addClass("col1").css("flex","1").html('${loginnickname}');
                    let admini=$("<i>").addClass("fa-solid fa-user-gear").css("color","#ffffff");
                    let useri=$("<i>").addClass("fa-solid fa-person-circle-question").css("color","#ffffff");
 	                if(${isAdmin}==true){
 	                	col1.append(admini);
 	                }                
                    let span = $("<span>").css("float","right").html(replydto.qReplyDate);
                    col1.append(span);
                    replycontainer.append(col1);
                    
                    let col2 = $("<div>").addClass("replycontents col2").css("flex","1").html(replydto.qReplyContent);
                    replycontainer.append(col2);
                    
                    if (replydto.userId == '${loginId}' && ${isAdmin}==false) {
                    	let col3 = $("<div>").addClass("col3").css("flex","1");
                    	let replyupdatebtn = $("<button>").addClass("replyupdatebtn btn btn-outline-success").html("수정");
                    	let replydeletebtn = $("<button>").addClass("replydeletebtn btn btn-outline-success").html("삭제");
                    	col3.append(replyupdatebtn, replydeletebtn);
                    	replycontainer.append(col3);
                    }else if(${isAdmin}==true){
                    	let col3 = $("<div>").addClass("col3").css("flex","1");
                    	let replydeletebtn = $("<button>").addClass("replydeletebtn btn btn-outline-success").html("삭제");
                    	col3.append(replydeletebtn);
                    	replycontainer.append(col3);
                    }else{
                    	let col3 = $("<div>").addClass("col3").css("flex","1");
                    	replycontainer.append(col3);
                    }
                    $(".replyListBox").prepend(replycontainer);
                    $("#addCommentInput").html("");
                    
                    $(".replyupdatebtn").on("click", function () {
                        let replyContainer = $(this).closest('.replycontainer');
                        let replySeq = replyContainer.data("reply-seq");
                        let replyContents = replyContainer.find('.replycontents');
                        let updatebtn = $(this);
                        let deletebtn = $(this).next();

                        if (updatebtn.html() == "수정") {
                            replyContents.attr("contenteditable", "true"); //편집 열기
                            updatebtn.html("완료");
                            deletebtn.html("취소");
                        } else if (updatebtn.html() == "완료") {
                            replyContents.attr("contenteditable", "false"); //편집 닫기
                            updatebtn.html("수정");
                            deletebtn.html("삭제");

                            let form = $('<form>', {
                                action: '/update.qreply',
                                method: 'post'
                            }); // 동적 form 생성

                            let formData = [
                                $('<input>', { type: 'hidden', name: 'replyseq', value: replySeq }),
                                $('<input>', { type: 'hidden', name: 'boardseq', value: ${ dto.qBoardSeq }}),
                        $('<input>', { type: 'hidden', name: 'replycontent', value: replyContents.html().trim() })
                        ];

                    form.append(formData);
                    form.appendTo('body').submit();
                    }
                });

                    $(".replydeletebtn").on("click", function () {
                        let replyContainer = $(this).closest('.replycontainer');
                        let replySeq = replyContainer.data("reply-seq");
                        let updatebtn = $(this).prev();
                        let deletebtn = $(this);

                        if (deletebtn.html() == "삭제") {
                            let result = confirm("정말 삭제하시겠습니까?");
                            if (result) {
                                let form = $('<form>', {
                                    action: '/delete.qreply',
                                    method: 'post'
                                }); // 동적 form 생성

                                let formData = [
                                    $('<input>', { type: 'hidden', name: 'replyseq', value: replySeq }),
                                    $('<input>', { type: 'hidden', name: 'boardseq', value: ${ dto.qBoardSeq } })
                            ];

                    		form.append(formData);
                    		form.appendTo('body').submit();
                        	}
                    } else if (deletebtn.html() == "취소") {
                        location.href = "/detail.qboard?seq=${dto.qBoardSeq}";
                    }
                });
                })
            })

            //게시판 수정 버튼을 클릭했을 때
            $("#updatebtn").on("click", function () {
                updatebtn = $(this);
                deletebtn = $(this).next();

                if (updatebtn.html() == "수정") {
                    updatebtn.html("완료");
                    deletebtn.html("취소");
                    
                    $("#post-title").attr("contenteditable", "true");
                    $(document).ready(function(){
        				$('#post-content').summernote({
        					width: '980px',
        					height: '190px', // 에디터 높이
        					disableResizeEditor: true, // 에디터 사이즈 조절 옵션 끄기
        					focus: true, // 에디터 로딩후 포커스를 맞출지 여부
        					lang: "ko-KR", // 한글 설정
        					toolbar: [ // 툴바 설정
        							['fontname', ['fontname']],
        							['fontsize', ['fontsize']],
        							['color', ['color']],
        							['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
        							['para', ['ul', 'ol', 'paragraph']],
        							['height', ['height']]
        						],
        						fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
        						fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','32','36','48','60']
        				});
        				$('#post-content').summernote('fontSize', '16'); // 기본 폰트 사이즈 설정
                    });
        	
                	
                    


                } else if (updatebtn.html() == "완료") {
                    $("div[contenteditable]").attr("contenteditable", "false");

                    let form = $('<form>', {
                        action: '/update.qboard',
                        method: 'post'
                    }); // 동적  form 생성


                    let formData = [$('<input>', {
                        type: 'hidden',
                        name: 'seq',
                        value: '${dto.qBoardSeq}'
                    }), $('<input>', {
                        type: 'hidden',
                        name: 'title',
                        value: $('#post-title').html().trim()
                    }), $('<input>', {
                        type: 'hidden',
                        name: 'content',
                        value: $('.note-editable').html().trim()
                    })];


                    form.append(formData);
                    form.appendTo('body').submit();
                }
            })


            //게시판 삭제 번튼을 클릭했을 때
            $("#deletebtn").on("click", function () {
                updatebtn = $(this).prev();
                deletebtn = $(this);

                if (deletebtn.html() == "삭제") {
                    let result = confirm("정말 삭제하시겠습니까?");
                    if (result) {
                        location.href = "/delete.qboard?seq=${dto.qBoardSeq}"
                    }
                } else if (deletebtn.html() == "취소") {
                    location.href = "/detail.qboard?seq=${dto.qBoardSeq}";
                }

            })
        </script>

</html>