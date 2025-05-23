<%@ Page language="c#" Inherits="Book_Store.AdminBooks" CodeFile="AdminBooks.cs" %>
<%@ Register TagPrefix="CC" TagName="Header" Src="Header.ascx" %><%@ Register TagPrefix="CC" TagName="Footer" Src="Footer.ascx" %><%@Register TagPrefix="CC" TagName="Pager" Src="CCPager.ascx"%>

<!-- comment 12-->
<html>
  <head>
	<title>Book Store</title>
	<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie3-2nav3-0">
	<meta name="GENERATOR" content="YesSoftware CodeCharge v.2.0.5 using 'ASP.NET C#.ccp' build 9/27/2001">
	<meta name="CODE_LANGUAGE" Content="C#">
	<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"></head>
  <body style="background-color: #FFFFFF; color: #000000; font-family: Arial, Tahoma, Verdana, Helveticabackground-color: #FFFFFF; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">

  <form method="post" runat="server">
<CC:Header id="Header" runat="server"/>
	
<table><tr><td valign="top" >



    <table id="Search_holder" runat="Server" style="width:100%">
	
	<tr>
      <td style="background-color: #FFEAC5; border-style: inset; border-width: 0"><font style="font-size: 10pt; color: #000000">Category</font></td>
      <td style="background-color: #FFFFFF; border-width: 1">
	<asp:DropDownList style="font-size: 10pt; color: #000000"
	id=Search_category_id

	DataTextField="name"
	DataValueField="category_id"
	runat="server"/>
	
	  </td><td style="background-color: #FFEAC5; border-style: inset; border-width: 0"><font style="font-size: 10pt; color: #000000">Recommended</font></td>
      <td style="background-color: #FFFFFF; border-width: 1">
	<asp:DropDownList style="font-size: 10pt; color: #000000"
	id=Search_is_recommended

	DataTextField=""
	DataValueField=""
	runat="server"/>
	
	  </td>
      <td >
	  <asp:Button
		id=Search_search_button
		Text="Search"
		runat="server"/>
	</td>
    </tr>
	</table>

</td></tr></table><table><tr><td valign="top" >


	<table   id="Items_holder" runat="Server" style="width:100%">
	<tr><td colspan="6"
        style="background-color: #336699; text-align: Center; border-style: outset; border-width: 1"
><font style="font-size: 12pt; color: #FFFFFF; font-weight: bold"><asp:label id="ItemsForm_Title" runat="server">Books</asp:label></font></td></tr>
<tr>
<td style="background-color: #FFFFFF; border-style: inset; border-width: 0">
<asp:Label id="Items_Column_Field1" Text="Edit"  style="font-size: 10pt; color: #CE7E00; font-weight: bold" runat="server"/></td>
	
<td style="background-color: #FFFFFF; border-style: inset; border-width: 0">
<asp:LinkButton id="Items_Column_name" Text="Title" CommandArgument="i.[name]" onClick="Items_SortChange" style="font-size: 10pt; color: #CE7E00; font-weight: bold" runat="server"/></td>
	
<td style="background-color: #FFFFFF; border-style: inset; border-width: 0">
<asp:LinkButton id="Items_Column_author" Text="Author" CommandArgument="i.[author]" onClick="Items_SortChange" style="font-size: 10pt; color: #CE7E00; font-weight: bold" runat="server"/></td>
	
<td style="background-color: #FFFFFF; border-style: inset; border-width: 0">
<asp:LinkButton id="Items_Column_price" Text="Price" CommandArgument="i.[price]" onClick="Items_SortChange" style="font-size: 10pt; color: #CE7E00; font-weight: bold" runat="server"/></td>
	
<td style="background-color: #FFFFFF; border-style: inset; border-width: 0">
<asp:LinkButton id="Items_Column_category_id" Text="Category" CommandArgument="c.[name]" onClick="Items_SortChange" style="font-size: 10pt; color: #CE7E00; font-weight: bold" runat="server"/></td>
	
<td style="background-color: #FFFFFF; border-style: inset; border-width: 0">
<asp:LinkButton id="Items_Column_is_recommended" Text="Recommended" CommandArgument="i.[is_recommended]" onClick="Items_SortChange" style="font-size: 10pt; color: #CE7E00; font-weight: bold" runat="server"/></td>
	
</tr><tr id=Items_no_records runat="server"><td style="background-color: #FFFFFF; border-width: 1" colspan="6"><font style="font-size: 10pt; color: #000000">No records</font></td></tr>
	<tr><td><asp:Repeater id=Items_Repeater runat="server">
	<HeaderTemplate>
	</td></tr>
	</HeaderTemplate>
	<ItemTemplate>

	<tr>

<td style="background-color: #FFFFFF; border-width: 1">

<asp:HyperLink id=Items_Field1 NavigateUrl='<%# "BookMaint.aspx"+"?"+"item_id="+Server.UrlEncode(DataBinder.Eval(Container.DataItem, "i_item_id").ToString()) +"&" +"category_id=" + Server.UrlEncode(Utility.GetParam("category_id")) + "&is_recommended=" + Server.UrlEncode(Utility.GetParam("is_recommended")) + "&"%>' style="font-size: 10pt; color: #000000" runat="server">Edit</asp:HyperLink>&nbsp;
</td>
<td style="background-color: #FFFFFF; border-width: 1">

 <asp:Label id=Items_name style="font-size: 10pt; color: #000000" runat="server">  <%# Server.HtmlEncode(DataBinder.Eval(Container.DataItem, "i_name").ToString()) %> </asp:Label>&nbsp;
</td>
<td style="background-color: #FFFFFF; border-width: 1">

 <asp:Label id=Items_author style="font-size: 10pt; color: #000000" runat="server">  <%# Server.HtmlEncode(DataBinder.Eval(Container.DataItem, "i_author").ToString()) %> </asp:Label>&nbsp;
</td>
<td style="background-color: #FFFFFF; border-width: 1">

 <asp:Label id=Items_price style="font-size: 10pt; color: #000000" runat="server">  <%# Server.HtmlEncode(DataBinder.Eval(Container.DataItem, "i_price").ToString()) %> </asp:Label>&nbsp;
</td>
<td style="background-color: #FFFFFF; border-width: 1">

 <asp:Label id=Items_category_id style="font-size: 10pt; color: #000000" runat="server">  <%# Server.HtmlEncode(DataBinder.Eval(Container.DataItem, "c_name").ToString()) %> </asp:Label>&nbsp;
</td>
<td style="background-color: #FFFFFF; border-width: 1">

 <asp:Label id=Items_is_recommended style="font-size: 10pt; color: #000000" runat="server"> <%# Server.HtmlEncode(Book_Store.CCUtility.GetValFromLOV(DataBinder.Eval(Container.DataItem, "i_is_recommended").ToString(),Items_is_recommended_lov).ToString()) %> </asp:Label>&nbsp;
</td></tr>
</ItemTemplate>

	<FooterTemplate>
	<tr><td>
	</FooterTemplate>
	</asp:Repeater></td></tr>

    <tr><td
        style="background-color: #FFFFFF; border-style: inset; border-width: 0"
        colspan=6>

<asp:LinkButton id="Items_insert" style="font-size: 10pt; color: #CE7E00; font-weight: bold" runat="server">Add New</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="font-size: 10pt; color: #CE7E00; font-weight: bold">
<CC:Pager id=Items_Pager 
	style="font-size: 10pt; color: #CE7E00; font-weight: bold"
	ShowFirst=False
	showLast=False
	showprev=True
	shownext=True
	ShowFirstCaption=""
	showLastCaption=""
	showtotal=False
	showtotalstring="of"
	shownextCaption="Next"
	showprevCaption="Previous"
	PagerStyle=1
	NumberOfPages=10
	runat="server"/>
</font></td></tr>
	</table>


</td>
    </tr></table>


<CC:Footer id="Footer" runat="server"/>

    </form>
</body>
</html>
