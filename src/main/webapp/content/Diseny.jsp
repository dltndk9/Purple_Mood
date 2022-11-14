<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
    crossorigin="anonymous" />
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
    crossorigin="anonymous"></script>
  <link
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.css"
    rel="stylesheet" />
</head>
<body>
    <div class="container-fluid text-center">
    
    <!-- 한번 검색결과 받고 각각 페이지에서 출력하는 방식
     <form action="/ott_search.content">
        <div class="header row">
          <div class="logo col-8">퍼플무드 이미지</div>
          <div class="col-4">
            <input type="text" name="ott_searchtext" placeholder="해당 Ott내 검색">
            <i class="fa-solid fa-magnifying-glass searchboxin" id="searchbtn"></i>
          </div>
        </div>
        </form>-->
        
        
	
	<!-- ott별로 출력하는 페이지 -->
		
	<form action="/d_search.content">
        	<div class="header row">
         	 <div class="logo col-8">퍼플무드 이미지</div>
          	<div class="col-4">
            	<input type="text" name="d_searchtext" placeholder="디즈니플러스 내 검색">
            	<i class="fa-solid fa-magnifying-glass searchboxin" id="searchbtn"></i>
          	</div>
        </div>
        </form>
        
           <div class="ott_logo col-12">
            <img src="/img/disbf.png">
        </div>
        <hr>
    
          	<!-- 디즈니 플러스 드라마 검색 결과 출력 -->
          <c:choose>
		<c:when test="${not empty d_dr_list}">
		
		<div class="list_title">
					드라마 검색 결과<span> ${d_dr_list.size()}개</span>
				</div>
		<hr>
		
		   <div class="row row-cols-2 row-cols-md-6 g-4 m-auto p-3">
            <c:set var="i" value="0" />
            <c:set var="j" value="1" />
            <c:forEach var="n" items="${d_dr_list}">			
                      <c:if test="${i%j == 0 }">
              <div class="col">
              </c:if>
      
                <div class="card">
         			<a href="/detailDr.content?dr_id=${d.dr_id}">
                  
                  <div class="poster">  
                    <img src="${d.dr_poster_path}" class="card-img-top" alt="...">
                  </div>
                  <p class="card-text">${d.dr_title}</p>
                  </a>
                </div>
                <c:if test="${i%j == j-1 }">
              </div>
              </c:if>
              <c:set var="i" value="${i+1 }" />
            </c:forEach>
            </div>
          
		</c:when>
		<c:otherwise>
			<hr>
		<div class="list_title pt-2">드라마</div>
		<hr>
		<div>검색 결과가 없습니다.</div>
		</c:otherwise>
		</c:choose>
		
		
		  	<!-- 넷플릭스 영화 검색 결과 출력 -->
          <c:choose>
		<c:when test="${not empty d_mv_list}">

		<div class="list_title">
					영화 검색 결과<span> ${d_mv_list.size()}개</span>
				</div>
		<hr>
		
		   <div class="row row-cols-2 row-cols-md-6 g-4 m-auto p-3">
            <c:set var="i" value="0" />
            <c:set var="j" value="1" />
            <c:forEach var="n" items="${d_mv_list}">			
                      <c:if test="${i%j == 0 }">
              <div class="col">
              </c:if>
      
                <div class="card">
         			<a href="/detailMv.content?mv_id=${d.mv_id}">
                  
                  <div class="poster">  
                    <img src="${d.mv_poster_path}" class="card-img-top" alt="...">
                  </div>
                  <p class="card-text">${d.mv_title}</p>
                  </a>
                </div>
                <c:if test="${i%j == j-1 }">
              </div>
              </c:if>
              <c:set var="i" value="${i+1 }" />
            </c:forEach>
            </div>
            </div>
		</c:when>
		<c:otherwise>
			<hr>
		<div class="list_title pt-2">영화</div>
		<hr>
		<div>검색 결과가 없습니다.</div>
		</c:otherwise>
		</c:choose>
          	</div>
          	</div>
		</div>

</body>
</html>