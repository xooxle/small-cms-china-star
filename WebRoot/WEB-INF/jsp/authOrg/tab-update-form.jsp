<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<td>
		<label class="checkbox">
			<input type="checkbox" name="${trTarget}Chk" value="${trIndex}"/>
			<i></i></label>
		<input type="hidden" name="rowGuard${trIndex}" value="1"/>
	</td>
				<td>
								<label class="input">
										<input name="${propName}[${trIndex}].name"
											id="${propName}[${trIndex}].name"
											class="textInput required"
											 value="<c:out value="${tmpTmpBean.name}"/>"
											maxlength="255" />
								</label>
				</td>
				<td>
								<label class="input">
										<input name="${propName}[${trIndex}].tel"
											id="${propName}[${trIndex}].tel"
											class="textInput required"
											 value="<c:out value="${tmpTmpBean.tel}"/>"
											maxlength="255" />
								</label>
				</td>
				<td>
								<label class="input">
										<input name="${propName}[${trIndex}].address"
											id="${propName}[${trIndex}].address"
											class="textInput required"
											 value="<c:out value="${tmpTmpBean.address}"/>"
											maxlength="255" />
								</label>
				</td>
				<td>
								<label class="input">
								<i class="icon-append fa fa-calendar"></i>
								<input name="${propName}[${trIndex}].coroprateFrom" id="${propName}[${trIndex}].coroprateFrom" onclick="WdatePicker({dateFmt:'${applicationScope.EN_YEAR_MONTH_DAY_HOUR_MIN_SEC}'});"
								value="<fmt:formatDate pattern='${applicationScope.EN_YEAR_MONTH_DAY_HOUR_MIN_SEC}' value='${tmpTmpBean.coroprateFrom}'/>" class="date_required required textInput valid"/>
								</label>
				</td>
				<td>
								<label class="input">
								<i class="icon-append fa fa-calendar"></i>
								<input name="${propName}[${trIndex}].coroprateTo" id="${propName}[${trIndex}].coroprateTo" onclick="WdatePicker({dateFmt:'${applicationScope.EN_YEAR_MONTH_DAY_HOUR_MIN_SEC}'});"
								value="<fmt:formatDate pattern='${applicationScope.EN_YEAR_MONTH_DAY_HOUR_MIN_SEC}' value='${tmpTmpBean.coroprateTo}'/>" class="date_required required textInput valid"/>
								</label>
				</td>
				<td>
										<label class="select">
										<select id="${propName}[${trIndex}].certFile.id" name="${propName}[${trIndex}].certFile.id" class="required comboxed">
											<option value=""><spring:message code="base.common.selectone"/></option>
											<c:forEach items="${commonFileList}" var="commonFile" >
												<option value="${commonFile.id}" ${tmpTmpBean.certFile.id eq commonFile.id ? 'selected' : ''}><c:out value="${commonFile.manageKey}"/></option>
											</c:forEach>
										</select><i></i>
										</label>
				</td>