<%@ include file="/init.jsp" %>

<p>
	<b><liferay-ui:message key="myloginportlet_MyLogin.caption"/></b>
</p>

<c:choose>
	<c:when test="<%= themeDisplay.isSignedIn() %>">

		<%
		String signedInAs = HtmlUtil.escape(user.getFullName());
		%>

		<liferay-ui:message arguments="<%= signedInAs %>" key="you-are-signed-in-as-x" translateArguments="<%= false %>" />
	</c:when>
	<c:otherwise>
	
		<aui:form action="" autocomplete='on' cssClass="sign-in-form" method="post" name="loginForm">
		
			<aui:input autoFocus="true" cssClass="clearable" label="email-address" name="login" showRequiredLabel="<%= false %>" type="text" value="">
				<aui:validator name="required" />
			</aui:input>

			<aui:input name="password" showRequiredLabel="<%= false %>" type="password">
				<aui:validator name="required" />
			</aui:input>
			
			<aui:button-row>
				<aui:button cssClass="btn-lg" type="submit" value="sign-in" />
			</aui:button-row>
				
		</aui:form>
	</c:otherwise>
</c:choose>