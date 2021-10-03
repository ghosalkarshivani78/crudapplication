<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="shivanii.aspx.cs" Inherits="WebApplication10.shivanii" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="table-responsive">
         <table class="table">
    <asp:Repeater ID="Repeaters1" runat="server">
           
        <HeaderTemplate>
          <thead>
                <tr>
                    <th>Email</th>
                      <th>Password</th>
                      <th>Address1</th>
                      <th>Address2</th>
                      <th>City</th>
                     <th>State</th>
                     <th>Zip</th>
                    <th>Action</th>
                </tr>
       </thead>
        </HeaderTemplate>

        <ItemTemplate>
            <tbody>
                <tr>
                <td><%#Eval("Email")%></td>
                <td><%#Eval("Password")%></td>
                <td><%#Eval("Address1")%></td>
                <td><%#Eval("Address2")%></td>
                <td><%#Eval("City")%></td>
                <td><%#Eval("State")%></td>
                <td><%#Eval("Zip") %></td>
                <td><a href="edit.aspx?id=<%#Eval("id")%>">Edit</a>
                <button onclick="deletedata">Delete</button></td>

                 </tr>
            </tbody>

        </ItemTemplate>
        
    </asp:Repeater>
         </table>
         </div>


    <div class="container">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
        <asp:TextBox ID="email" cssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
        <asp:TextBox ID="pass" cssClass="form-control" runat="server"></asp:TextBox>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
      <asp:TextBox ID="address1" cssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
      <asp:TextBox ID="address2" cssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
        <asp:TextBox ID="city" cssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
        <asp:TextBox ID="state" cssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
        <asp:TextBox ID="zip" cssClass="form-control" runat="server"></asp:TextBox>
    </div>
  </div>
    <asp:Button ID="Button1" OnClick="submitdata" class="btn btn-primary" runat="server" Text="Button" />

    <asp:Label ID="result" runat="server" Text=""></asp:Label>
    </div>
    </asp:Content>

