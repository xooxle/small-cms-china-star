<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<td>${tempBean.id}</td>
		<td>
		${tempBean.title}
		</td>
		<td>
		${tempBean.corporateName}
		</td>
			<td>${tempBean.creator.name}</td>
			<td><fmt:formatDate value="${tempBean.createTime}" pattern="${applicationScope.EN_YEAR_MONTH_DAY_HOUR_MIN_SEC}"/></td>
			<td><fmt:formatDate value="${tempBean.updateTime}" pattern="${applicationScope.EN_YEAR_MONTH_DAY_HOUR_MIN_SEC}"/></td>
		<td>
		${tempBean.orderNum}
		</td>
		<td>
		${useStatusMap[tempBean.status]}
		</td>