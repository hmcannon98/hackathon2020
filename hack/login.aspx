<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="hack.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="w3-content w3-margin-top">
            <div class="w3-row-padding">
                <h2>Wellness Tracker</h2>
                <div class="w3-third">
                    <div class="w3-white w3-text-grey w3-card-4">
                        <div class="w3-display-container">

                        </div>
                    </div>
                </div>
                <div class="w3-twothird">
                    <div class="w3-white w3-text-grey w3-card-4">
                        <div class="w3-display-container">

                            <asp:Panel ID="pnlLogin" runat="server" BackColor="#EAFFEA" GroupingText="Log In">
                                Username:
                                <asp:TextBox ID="TextBox1" runat="server" Width="204px"></asp:TextBox>
                                <br />
                                Password:&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Width="204px"></asp:TextBox>
                                <asp:Label ID="lblLogin" runat="server" ForeColor="Red" Text="You must provide a Username and Password." Visible="False"></asp:Label>
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log In" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Or you can sign up
                                <asp:LinkButton ID="link1" runat="server" ForeColor="#339933" PostBackUrl="~/signup.aspx">here</asp:LinkButton>
                                
                            
                            
                            </asp:Panel>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
