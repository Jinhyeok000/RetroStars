<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
 <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css"
        integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://webfontworld.github.io/daegu/DalseoHealing.css">
      
       <style>
       
        * {
            box-sizing: border-box;
        }

        body {
            background-color: black;
            margin-bottom:0;
            padding:0;
           	color:white;	/*헤더 글자색 흰색으로 */
           	font-family : 'DalseoHealing';
           
        }

   		.video-background{
      		position : fixed;
      		top : 0;
      		left : 0;
      		min-width : 100%;
      		min-height : 100%;
      		width: auto;
      		height : auto;
      		z-index: -1;
   		}
    	.navbar {
        	position: fixed;
        	top: 0;
        	width: 100%;
        	z-index: 1000;
        	height:70px;
    	}

    
      /*    navbar css */
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


      a {
		  text-decoration: none !important;
	  }
	  
	  a:link { color: white; text-decoration: none;}
 	  a:visited { color: white; text-decoration: none;}
	  a:hover { color: white; text-decoration: underline;}
      /*    end navbar css */

	/*container css*/
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 2000px;
            height: 900px;
            position: relative;

        }

        .container img {
            position: absolute;
            width: 100%;
            height: 100%;
            /* object-fit: cover; */
            /* filter: grayscale(30%); */

            z-index: 0;

        }

        .mainbox {
            width: 750px;
            height: 400px;
            background-color: rgb(52, 255, 147);
            z-index: 1;
            margin-top: 200px;
            border-radius: 20px;
            display: flex;
            margin-left: 60px;
            min-width: 750px;
            min-height: 400px;

            background-image: url(/image/introbg.jpg);
            background-size: cover;
            /* 이미지를 커버하도록 설정 */
            background-repeat: no-repeat;
            /* 이미지 반복 중지 */
            padding: 20px;

        }

        .gamelist {
            /* background-color: white; */
            flex: 4;
            border: 5px dashed white;
            margin: 20px;
            display: flex;
            flex-direction: column;
            height: 300px;
        }

        .zen-dots-regular {
            font-family: "Zen Dots", sans-serif;
            font-weight: 400;
            font-style: normal;
            font-size: 20px;
        }

        .gamelist div {
            flex: 1;
            /* border: 2px dashed white; */
            color: white;
            font-weight: bold;
            display: flex;
            justify-content: center;
            align-items: center;
           cursor: pointer;
           transition: background-color 0.3s ease;
        }
        
    	.gamelist .game:hover {
        	background-color: rgba(255, 255, 255, 0.2);
        	border-radius: 10px;
    	}


        .gameintro {
            flex: 6;
            /* background-color: white; */
            display: flex;
            flex-direction: column;
        }

        .gameintro .playVideo {
            flex: 7;
            background-color: black;
            border-radius: 20px;
            margin: 20px;
        }

        .gameintro .startbtn {
            flex: 3;
            position: relative;

        }

        .startbtn img {
            /* position: absolute; */
            width: 60%;
            height: 100%;
            margin-top: -20px;
            margin-left: 90px;
        }




        .footer {
            width: 100%;
            background-color: #323232;
            position: relative;
            margin-top: auto;
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


    </style>
</head>
<body>
      <!-- Video Background -->
         <video class="video-background" autoplay muted loop>
           <source src="/image/video.mp4" type="video/mp4">
           Your browser does not support the video tag.
       </video>
       
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
        <img src="/image/1.png">

        <div class="mainbox">

            <div class="gamelist">
                <div class="listtitle zen-dots-regular">GAME LIST</div>
                <div class = "game" id="listgame1"><a href="#" data-seq="1"> 2048 </a> </div>
                <div class = "game" id="listgame2"><a href="#" data-seq="2"> GOLD BREAK! </a> </div>
                <div class = "game" id="listgame3"><a href="#" data-seq="3"> ICE CUBY </a> </div>
                <div class = "game" id="listgame4"><a href="#" data-seq="4"> 똥 피하기 </a> </div>
                <div class = "game" id="listgame5"><a href="#" data-seq="5"> 탈출하기 </a> </div>
            </div> 
            <div class="gameintro">
                <div class="playVideo">
                    <video class="thumbnail" id="gameVideo" autoplay muted loop>
                    </video>                
                </div>
                <div class="startbtn">
                    <a id="startGameLink" href="#"><img src="/image/startbtn.png" alt=""></a>
                </div>
            </div>

        </div>

    </div>
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
	$(document).ready(function() {
	    var videoList = [
	        {src: "/upload/G1.mp4", seq: 1},
	        {src: "/upload/G2.mp4", seq: 2},
	        {src: "/upload/G3.mp4", seq: 3},
	        {src: "/upload/G4.mp4", seq: 4},
	        {src: "/upload/G5.mp4", seq: 5}
	    ];
	    
	    function playVideoBySeq(seq){
	    	let videoElement = $('#gameVideo');
        	// find로 첫번째 요소 반환, 화살표 함수로 배열의 각 요소에 대해 실행. 현재 요소의 seq값이 함수에 전달된 seq와 같은지 비교
	    	let selectedVideo = videoList.find(video => video.seq == seq);
	    	
	    	videoElement.attr('src', selectedVideo.src);
	    	$('#startGameLink').attr('href', '/viewGame.gboard?gameSeq=' + selectedVideo.seq);
	    	videoElement[0].load();
	    	videoElement[0].play();
	    }
	
	    function playRandomVideo() {
	        let randomIndex = Math.floor(Math.random() * videoList.length); // 비디오 랜덤 재상
			playVideoBySeq(videoList[randomIndex].seq);
	    }
	
	    $('.gamelist .game a').on('click', function(event) {
	    	event.preventDefault();
	    	let seq = $(this).data('seq');
	    	playVideoBySeq(seq);
	    });
	
	    playRandomVideo(); 
	});
	    
    
</script>

</html>