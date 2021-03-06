<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="customtag" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxpath" value="<%=request.getContextPath()%>" />


<div class="w3-section">
	<!-- 왼쪽 half -->
	<div class="w3-half">
		<table class="w3-table">
			<tr>
				<td colspan="3">
					<div class="w3-panel w3-xlarge w3-baemint"
						style="margin-top: 0px; padding: 5px 0px 5px 5px;">평균별점</div>
				</td>
			</tr>
			<tr>
				<td colspan="3"><customtag:starRank rank="${shopdto.rank}"
						width="210" />&nbsp;&nbsp;<strong><font
						style="vertical-align: middle;" size="5">${shopdto.rank}</font></strong></td>
			</tr>
			<tr>
				<td colspan="3">
					<div class="w3-panel w3-xlarge w3-baemint"
						style="padding: 5px 0px 5px 5px;">지난 24시간 판매정보</div>
				</td>
			</tr>
			<tr>
				<td width="150px;"><b class="w3-xlarge">판매건수</b></td>
				<td><b class="w3-xlarge w3-right" id="countSum"></b></td>
				<td><b class="w3-xlarge">&nbsp;&nbsp;건</b></td>
			</tr>
			<tr>
				<td><b class="w3-xlarge">총 매출</b></td>
				<td><b class="w3-xlarge w3-right" id="countPrice"> <fmt:formatNumber
							value="${totalMoney }" pattern="#,###" />
				</b></td>
				<td><b class="w3-xlarge">&nbsp;&nbsp;원</b></td>
			</tr>

		</table>
	</div>
	<!-- 왼쪽 half 끝 -->
	<!-- 오른쪽 half -->
	<div class="w3-half w3-padding">
		<table class="w3-table-all">
			<tr id="reviewHead" class="w3-baemint">

				<td>별점</td>
				<td>등록일</td>
				<td>내용</td>
			</tr>
		</table>
		<table id="reviewCell" class="w3-table">
			<c:forEach var="dto" items="${reviewList}">
				<tr style="border: 1px solid black;">
					<td style="width: 25%">
						<!-- 별점 이미지 --> <span width="100px"> <customtag:starRank
								rank="${dto.rank+0.001}" width="100" />
					</span>
					</td>
					<!-- 별점 이미지 -->
					<td style="width: 30%">${dto.regDate}</td>
					<td style="width: 45%">${dto.content}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<!-- 오른쪽 half -->
</div>
<!-- 섹션끝 -->
<script>
	
</script>