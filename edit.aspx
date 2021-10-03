<%@ Page Language="C#" enableEventValidation="false" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="edit.aspx.cs" Inherits="WebApplication10.edit" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <asp:Repeater ID="Repeaters1" runat="server">
         <ItemTemplate>

    <div class="container">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
        <asp:TextBox ID="email" cssClass="form-control" Text='<%#Eval("Email")%>' runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
        <asp:TextBox ID="pass" cssClass="form-control" Text='<%#Eval("Password")%>' runat="server"></asp:TextBox>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
      <asp:TextBox ID="address1" cssClass="form-control" Text='<%#Eval("Address1")%>' runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
      <asp:TextBox ID="address2" cssClass="form-control" Text='<%#Eval("Address2")%>' runat="server"></asp:TextBox>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
        <asp:TextBox ID="city" cssClass="form-control" Text='<%#Eval("City")%>' runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
        <asp:TextBox ID="state" cssClass="form-control" Text='<%#Eval("State")%>' runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
        <asp:TextBox ID="zip" cssClass="form-control" Text='<%#Eval("Zip")%>' runat="server"></asp:TextBox>
    </div>
  </div>    
        <asp:Button ID="Button1" runat="server" onClick="update" Text="Update" />
        </div>
             </ItemTemplate>
         </asp:Repeater>
    </asp:Content>

