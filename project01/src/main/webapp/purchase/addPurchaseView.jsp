<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

/* Purchase vo = (Purchase)request.getAttribute("vo");
System.out.println("readPurchase.jsp========= "+vo); */

%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����</title>
<link rel="stylesheet" href="/css/admin.css" type="text/css">
<script src="../javascript/calendar.js" type="text/javascript"></script>
</head>
<script type="text/javascript">

	function buyProduct(){
		document.detailForm.action='/addPurchase.do';
		document.detailForm.submit();
	}
	
</script>
<body bgcolor="#ffffff" text="#000000">
<form name="detailForm"  method="post" >
<input type="hidden" name="prodNo" value="${purchase.purchaseProd.prodNo}">
<input type="hidden" name="prodNm" value="${purchase.purchaseProd.prodName }">
<input type="hidden" name="manDate" value="${purchase.purchaseProd.manuDate}"><!--������  -->
<input type="hidden" name="price" value="${purchase.purchaseProd.price}">
<input type="hidden" name="regDate" value="${purchase.purchaseProd.regDate}"><!-- ������� -->
<input type="hidden" name="userId" value="${purchase.buyer.userId}">
<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37">
			<img src="/images/ct_ttl_img01.gif" width="15" height="37">
		</td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="93%" class="ct_ttl01">����</td>
				<td width="20%" align="right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			��ǰ��ȣ <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td class="ct_write01">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105">${purchase.purchaseProd.prodNo}</td>
					<td>	</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			��ǰ�� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle">
		</td>
				<td class="ct_write01">${purchase.purchaseProd.prodName }</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
		�������� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
				<td class="ct_write01">${purchase.purchaseProd.manuDate}	</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			����<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
				<td class="ct_write01">${purchase.purchaseProd.price} ��</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
		��ǰ�̹���<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td class="ct_write01">
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
		�������<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
			<td class="ct_write01">${purchase.purchaseProd.regDate} </td>
	</tr>

	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			�����ھ��̵�<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td class="ct_write01" >
		${purchase.buyer.userId}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			�������̸�<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
				<td><input 	type="text" name="purName"  class="ct_input_g" value="${purchase.buyer.userName}"
                  				style="width:180px; height:19px"  maxLength='50'/></td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			���Ź��<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td class="ct_input_g">
			<select 	name="bySelect" class="ct_input_g" style="width:180px" 
							onChange="document.detailForm.phone2.focus();">
				<option value="0" >���ݱ���</option>
				<option value="1" >ī�屸��</option>
			</select>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			�����ڿ���ó<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
				<td class="ct_input_g">
				<input 	type="text" name="purTel"  class="ct_input_g" value="${purchase.buyer.phone}"
                  				style="width:180px; height:19px"  maxLength='50'/></td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			�������ּ�<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td class="ct_input_g">
		<input 	type="text" name="addr" value="${purchase.buyer.addr}" class="ct_input_g" 
							style="width:180px; height:19px"  maxLength="100">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			���ſ�û����<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td class="ct_input_g">
		<input 	type="text" name="byRequest" class="ct_input_g" 
							style="width:180px; height:19px"  maxLength="100">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			����������<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td class="ct_input_g">
		<input 	type="text" name="manDay" class="ct_input_g" 
							style="width:150px; height:19px"  maxLength="10" minLength="6" readonly="readonly" />
			<img src="../images/ct_icon_date.gif" width="15" height="15" 
										onclick="show_calendar('document.detailForm.manDay', document.detailForm.manDay.value)" style="cursor:pointer"
										/>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td width="53%"></td>
		<td align="right">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<a href="javascript:buyProduct()">����</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>
</body>
</html>