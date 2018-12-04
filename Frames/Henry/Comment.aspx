<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comment.aspx.cs" EnableEventValidation="false" Inherits="Frames.Comment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript">
        //GridView Comment 
        var prevComment = [];
        function showReply(n) {
            $("#divReply" + n).show();
            return false;
        }
        function closeReply(n) {
            $("#divReply" + n).hide();
            return false;
        }
    </script>
    <style type="text/css">
        .link {
            text-decoration:none;
            color:#808080;
        }
            .link:hover {
                color:#dddddd;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding:15px 20px; width:560px;">
        <br />
        <asp:Image ID="Img" runat="server" ImageUrl="~/Images/blog-2.jpg" />
        <br />
        <br />
        <br />
      <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Width="562px" Height="60px"></asp:TextBox>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/default-profile.png" style="width:30px; height:30px; border-radius:50%;" />
        <asp:Label ID="Label1" runat="server" Text='<% #Eval("Username") %>'></asp:Label>
        <asp:Button ID="btnCommentPublish" Text="Comment" runat="server" style="background-color:#4800ff; border:1px solid #4800ff; padding:7px 25px; border-radius:5px; color:#fff; float:right;" OnClick="btnCommentPublish_Click" />
       
    </div>
        <br />
    <div>
        <asp:GridView ID="GridViewComment" runat="server" AutoGenerateColumns="false" BorderWidth="0" Width="50%" OnRowDataBound="GridViewComment_RowDataBound">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                    <div style="width:100%;">
                                    <table style="margin:3px 5px; width:100%;">
                                        <tr>
                                            <td style="width:55px; vertical-align:text-top;">                                                                                                               
                                                <asp:Image ID="ImageParent" runat="server" style="width:50px; height:50px;" ImageUrl="~/Images/default-profile.png" /> 
                                                <asp:Label ID="Label1" runat="server" Text='<% #Eval("Username") %>'></asp:Label>
                                            </td>
                                            <td style="padding:0px 5px; text-align:left; vertical-align:top;">
                                              <asp:Label ID="lblCommentID" runat="server" Visible="false" Text='<% #Eval("CommentID") %>'></asp:Label>
                                              <asp:Label ID="lblCommentMessage" runat="server" Text='<% #Eval("CommentMessage") %>'></asp:Label><br />
                                               <a class="link" id='lnkReplyParent<%# Eval("CommentID") %>' href="javascript:void(0)" onclick="showReply(<%# Eval("CommentID") %>); return false;">Reply</a>&nbsp;
                                               <a class="link" id="lnkCancel" href="javascript:void(0)" onclick="closeReply(<%# Eval("CommentID") %>); return false;">Cancel</a>
                                               <div id='divReply<%# Eval("CommentID") %>' style="display:block; margin-top:5px;">
                                                    <asp:TextBox ID="txtCommentReplyParent" runat="server" TextMode="MultiLine" Width="560px" Height="60px"></asp:TextBox>
                                                    <asp:Button ID="btnReplyParent" runat="server" Text="Reply" style="float:right;margin:5px;" OnClick="btnReplyParent_Click" />
                                               </div>
                                            </td>
                                        </tr>
                                     </table>
                     </div>
                        <div style="padding-left:75px;">
                            <asp:GridView ID="GridViewChild" runat="server" AutoGenerateColumns="false" BorderWidth="0" Width="50%">
                                 <Columns>
                                  <asp:TemplateField>
                                    <ItemTemplate>
                                        <div style="width:100%;">
                                    <table style="margin:3px 5px; width:100%;">
                                        <tr>
                                            <td style="width:55px; vertical-align:text-top;">                                                                                                               
                                                <asp:Image ID="ImageChild" runat="server" style="width:50px; height:50px;" ImageUrl="~/Images/default-profile.png" />
                                                <asp:Label ID="Label1" runat="server" Text='<% #Eval("ChildUsername") %>'></asp:Label>
                                            </td>
                                            <td style="padding:0px 5px; text-align:left; vertical-align:top;">
                                              <asp:Label ID="lblParentCommentID" runat="server" Visible="false" Text='<% #Eval("ParentCommentID") %>'></asp:Label>
                                              <asp:Label ID="lblChildCommentID" runat="server" Visible="false" Text='<% #Eval("ChildCommentID") %>'></asp:Label>
                                              <asp:Label ID="lblChildCommentMessage" runat="server" Text='<% #Eval("ChildCommentMessage") %>'></asp:Label><br />
                                               <a class="link" id='lnkReplyChild<%# Eval("ChildCommentID") %>' href="javascript:void(0)" onclick="showReply(<%# Eval("ChildCommentID") %>); return false;">Reply</a>&nbsp;
                                               <a class="link" id="lnkCancel" href="javascript:void(0)" onclick="closeReply(<%# Eval("ChildCommentID") %>); return false;">Cancel</a>
                                               <div id='divReply<%# Eval("ChildCommentID") %>' style="display:none; margin-top:5px;">
                                                    <asp:TextBox ID="txtCommentReplyChild" runat="server" TextMode="MultiLine" Width="560px" Height="60px"></asp:TextBox>
                                                    <asp:Button ID="btnReplyChild" runat="server" Text="Reply" style="float:right;margin:5px;" OnClick="btnReplyChild_Click" />
                                               </div>  
                                            </td>
                                        </tr>
                                     </table>
                     </div>
                                    </ItemTemplate>
                                  </asp:TemplateField>
                                 </Columns>
                            </asp:GridView>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
