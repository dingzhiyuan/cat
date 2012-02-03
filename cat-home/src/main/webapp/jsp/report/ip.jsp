<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="a" uri="/WEB-INF/app.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="res" uri="http://www.ebay.com/webres"%>
<jsp:useBean id="ctx" type="com.dianping.cat.report.page.ip.Context" scope="request"/>
<jsp:useBean id="payload" type="com.dianping.cat.report.page.ip.Payload" scope="request"/>
<jsp:useBean id="model" type="com.dianping.cat.report.page.ip.Model" scope="request"/>

<a:body>

	<res:useCss value='${res.css.local.default_css}' target="head-css" />
	<res:useCss value='${res.css.local.style_css}' target="head-css" />
	<res:useCss value='${res.css.local.failure_css}' target="head-css" />

	<res:useJs value='${res.js.local.mootools_js}' target="head-js" />
	<res:useJs value='${res.js.local.jquery_min_js}' target="head-js" />
	<res:useJs value='${res.js.local.sql_scripts_js}' target="head-js" />

	<table width="100%" border="0" cellpadding="6" cellspacing="0"
		class="fancy-header">
		<tbody>
			<tr>
				<td nowrap="">Dian Ping CAT Reports: \${model.reportTitle}</td>
				<td width="100%" align="right" nowrap="">Generated: XXXXXX</td>
				<td style="display:none"><input id="currentDomain" value="\${model.currentDomain}">
				<input id="currentIp" value="\${model.currentIp}"></input></td>
			</tr>
		</tbody>
	</table>
	
	<pre>
	${model.reportInJson}
	</pre>
	
	<table width="100%" border="0" cellpadding="6" cellspacing="0"
		class="fancy-footer">
		<tbody>
			<tr>
				<td nowrap="" width="100%">[ end ]</td>
			</tr>
		</tbody>
	</table>
	<res:useJs value="${res.js.local.failure_js}" target="bottom-js" />

</a:body>