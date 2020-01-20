<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">

	<div class="card shadow mb-4">
<c:forEach items="${ answers }" var="answers">
		<div class="card-header py-3">
			<span class="m-0 font-weight-bold text-default">답변</span>
		</div>
		<div class="card-body">
				<div class="form-group">
					<input type="hidden" class="form-control fixed" rows="3" id='ans_no'
						name='ans_no'>${ answers.ans_no }</input>
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control fixed" rows="3" id='ans_content'
						name='ans_content'>${ answers.ans_content }</textarea>
				</div>
		</div>
</c:forEach>
	</div>

</div>