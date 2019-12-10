<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="person.aspx.cs" Inherits="bio_data_form.person" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">

            <div>
                <asp:TextBox ID="nameTxtBox" runat="server" placeholder="Name"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="fnTxtBox" runat="server" placeholder="Father Name"></asp:TextBox>
            </div>
            <br />
            <div>
                <label for="gender">Gender</label>
                <br />
                Male:
                <asp:RadioButton ID="maleRadioBtn" value="male" GroupName="gender" runat="server" />
                Female:
                <asp:RadioButton ID="femaleRadioBtn" value="female" GroupName="gender" runat="server" />
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox3" placeholder="Date of Birth" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <label for="maritalStatus">Marital Status</label>
                <br />
                Single:
                <asp:RadioButton GroupName="maritialStatus" ID="RadioButton3" runat="server" />
                Married:
                <asp:RadioButton GroupName="maritialStatus" ID="RadioButton4" runat="server" />
            </div>
            <br />
            <div>
                <label for="religion">Religion</label>
                <br />
                Islam:
                <asp:RadioButton GroupName="religion" ID="RadioButton5" runat="server" />
                Other:
                <asp:RadioButton GroupName="religion" ID="RadioButton6" runat="server" />
            </div>
            <br />
            <div>
                <label for="qualification">Qualification</label>
                <br />
                Matric:
                <asp:CheckBox GroupName="qualification" ID="CheckBox1" runat="server" />
                Fsc:
                <asp:CheckBox GroupName="qualification" ID="CheckBox2" runat="server" />
                Bs/Bsc Engineering
                <asp:CheckBox GroupName="qualification" ID="CheckBox3" runat="server" />
                Other:
                <asp:CheckBox GroupName="qualification" ID="CheckBox4" runat="server" />

            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox4" placeholder="Address" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox5" placeholder="Phone Number" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox6" placeholder="Email" runat="server"></asp:TextBox>
            </div>
            <h2>DECLARATION</h2>
            <p>
                I hereby declare that the above information is true and correct to the best of my knowledge
and belief.
            </p>
            <br />
            <div>
                <asp:Label ID="Label1" style= "color:red" runat="server" Text=""></asp:Label>

            </div>
            <br />
            <div>
                <asp:Button ID="Button1" runat="server" Text="I do agree and submit" OnClick="Button1_Click" />
            </div>
            <br />
            <div>
                <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
            </div>
        </div>

    </form>
</body>
</html>
