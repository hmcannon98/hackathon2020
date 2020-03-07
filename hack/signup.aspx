<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="hack.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0;
        }
    </style>

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
            <asp:Panel ID="pnlSignup" runat="server" BackColor="#EAFFEA" GroupingText="Sign Up">
                Username:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbxUser" runat="server" CssClass="auto-style1"></asp:TextBox>
                <br />
                Password:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbxPass" runat="server" CssClass="auto-style1"></asp:TextBox>
                <br />
                Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbxName" runat="server" CssClass="auto-style1"></asp:TextBox>
                <br />
                Height:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbxHeight" runat="server" CssClass="auto-style1"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="In inches"></asp:Label>
                <br />
                Weight:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbxWeight" runat="server" CssClass="auto-style1"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="In lbs"></asp:Label>
                <br />
                Sex:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddSex" runat="server" Width="168px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <br />
                Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbxAge" runat="server" CssClass="auto-style1"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnSign2" runat="server" OnClick="btnSign2_Click" Text="Sign Up" />
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Fill all text boxes" Visible="False"></asp:Label>
                            </asp:Panel>
                </div>
                    </div>
                </div>
            </div>
        
        </div>
    </form>
</body>
</html>
