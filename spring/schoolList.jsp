<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학교 상세정보</title>
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
  
  <script type="text/javascript">
  $( document ).ready(function() {
	  $("#btn_insert").on('click', function(){
		  fn_insertSchool();
	  })
	});
  
  	function fn_insertSchool(){
  		
  		var frm = $("#frm").serialize();

  		$.ajax({
  			type : 'POST',
  			url : '/school/insertSchoolInfo.do',
  			data : frm,
  			dataType : 'json',
  			beforeSend: function(jqXHR, settings){
  				console.log("beforeSend");
  			},
  			success : function(data, textStatus, jqXHR){
  				if(data.resultChk > 0){
  					alert("저장되었습니다.");	
  				}
  				
  			},  				
  			error: function(jqXHR, textStatus, errorThrown){
  				console.log("error");
  			},
  			complete : function(jqXHR, textStatus){
  				console.log("complete");
  			}
  		});
  	}
  </script>
  
</head>
<body>
	<form id="frm" name="frm">
		<input type="hidden" id="schoolId" name="schoolId" value="" />
		<table>
			<tr>
				<th>학교명</th>
				<td><input type="text" id="schoolName" name="schoolName" value=""/></td>
			</tr>
			<tr>
				<th>지역구</th>
				<td><input type="text" id="schoolArea" name="schoolArea" value=""/></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" id="schoolAddr" name="schoolAddr" value=""/></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" id="schoolPhone" name="schoolPhone" value=""/></td>
			</tr>
		</table>
	</form>
	<input type="button" id="btn_insert" name="btn_insert" value="저장"/>
	
</body>
</html>
