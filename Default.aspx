<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="Consertando._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div  style="background-color:#2051a4; height:1200px; color:White;" >
    <h2 style=" color:White; padding:20px;" >
        
        Onde está o defeito?
    </h2>
    <!--<p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>-->
   

    


    <div id="Div1" style="float:left; position:absolute; width:200px; height:110px; margin-left:120px; margin-top:4px; background-color:#186ee2;"  
    runat="server" onmouseover="this.style.background ='white'; Button3.style.color ='white'; " onmouseout="this.style.background ='#186ee2'; Button3.style.color ='#186ee2';">
    <asp:button ID="Button3" 
    style="float:left; position:absolute; width:200px; height:100px; margin-left:0px; margin-top:0px; background-color:#2051a4; border:transparent; 
    color:#186ee2; " text="COMPUTADOR" runat="server" 
    onmouseover="this.style.color='white'; Div1.style.background='white'; " onmouseout="this.style.color ='#186ee2'; Div1.style.background='#186ee2';" />
    </div>
   


    <div id="Div2" style="float:left; position:absolute; width:200px; height:110px; margin-left:320px; margin-top:4px; background-color:#186ee2;"  
    runat="server" onmouseover="this.style.background ='white'; Button1.style.color ='white'; " onmouseout="this.style.background ='#186ee2'; Button1.style.color ='#186ee2';">
    <asp:button ID="Button1"  
    style="float:left; position:absolute; width:200px; height:100px; margin-left:0px; margin-top:0px; background-color:#2051a4; border:transparent; 
    color:#186ee2;" text="TV" runat="server" onmouseover="this.style.color='white'; Div2.style.background='white';" onmouseout="this.style.color ='#186ee2'; Div2.style.background='#186ee2';"/>
    </div>
    
    
    
    <div id="Div3" style="float:left; position:absolute; width:200px; height:110px; margin-left:520px; margin-top:4px; background-color:#186ee2;"  
    runat="server" onmouseover="this.style.background ='white'; Button2.style.color='white';" onmouseout="this.style.background ='#186ee2'; Button2.style.color='#186ee2';">
    <asp:button ID="Button2"  name="Button2"
    style="float:left; position:absolute; width:200px; height:100px; margin-left:0px; 
    margin-top:0px; background-color:#2051a4; border:transparent; color:#186ee2;" text="RADIO" runat="server" 
    onmouseover="this.style.color='white'; Div3.style.background='white';" onmouseout="this.style.color ='#186ee2'; Div3.style.background='#186ee2';"/></div>

    
  
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Qual o defeito?" 
        style="float:left; position:absolute;  margin-left:260px; margin-top:194px; width:320px; height:30px;    color:red; font-weight:500; text-transform:uppercase;" 
        Visible="False"></asp:TextBox>

    <div>
        <asp:ImageButton ID="ImageButton1" runat="server" style="float:left; position:absolute; width:27px; height:27px; margin-left:553px; margin-top:200px; background-image:url('Imagens/search-minor5.png'); background-repeat:no-repeat; clear:both;" Visible="False" BackColor="#DFECF2" EnableTheming="True" ImageUrl="~/Imagens/search-minor5.png" />
    </div>

    <asp:TextBox ID="TextBox2" runat="server" 
        style="float:left; position:absolute; margin-left:260px; margin-top:330px; width:320px; height:30px;" 
        Visible="False"></asp:TextBox>




  <div style="position:absolute; float:left; width:800px; ">
      <asp:Label ID="Label1" runat="server" Text="Solução:" Visible="False" style="float:left; position:absolute; margin-top:340px; margin-left:210px; margin-right:150px; font-weight:600; "></asp:Label>
      <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" style="float:left; position:absolute; margin-top:360px; margin-left:210px; margin-right:150px;"></asp:Label>
        </div>



<div style="position:absolute; float:left; margin-left:320px; margin-top:370px;">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" 
        Visible="False" >
        <AlternatingItemTemplate>
            <li style="">solucao:
                <asp:Label ID="solucaoLabel" runat="server" Text='<%# Eval("solucao") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="">solucao:
                <asp:TextBox ID="solucaoTextBox" runat="server" Text='<%# Bind("solucao") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">solucao:
                <asp:TextBox ID="solucaoTextBox" runat="server" Text='<%# Bind("solucao") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="">solucao:
                <asp:Label ID="solucaoLabel" runat="server" Text='<%# Eval("solucao") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" style="">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="">solucao:
                <asp:Label ID="solucaoLabel" runat="server" Text='<%# Eval("solucao") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
        
        <asp:ListView ID="ListView3" runat="server" DataSourceID="AccessDataSource3" 
            Visible="False">
            <AlternatingItemTemplate>
                <li style="">solucao:
                    <asp:Label ID="solucaoLabel" runat="server" Text='<%# Eval("solucao") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="">solucao:
                    <asp:TextBox ID="solucaoTextBox" runat="server" Text='<%# Bind("solucao") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">solucao:
                    <asp:TextBox ID="solucaoTextBox" runat="server" Text='<%# Bind("solucao") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="">solucao:
                    <asp:Label ID="solucaoLabel" runat="server" Text='<%# Eval("solucao") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul ID="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="">solucao:
                    <asp:Label ID="solucaoLabel" runat="server" Text='<%# Eval("solucao") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
            DataFile="~/App_Data/consertando.mdb" 
            SelectCommand="SELECT [solucao] FROM [RADIO]"></asp:AccessDataSource>
        
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/consertando.mdb" 
        
            SelectCommand="SELECT [solucao] FROM [COMPUTADOR]">
        </asp:AccessDataSource>












        <asp:ListView ID="ListView2" runat="server" DataSourceID="AccessDataSource2" 
            Visible="False">
        <AlternatingItemTemplate>
            <li style="">Solução:
                <asp:Label ID="solucaoLabel" runat="server" Text='<%# Eval("solucao") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="">Solução:
                <asp:TextBox ID="solucaoTextBox" runat="server" Text='<%# Bind("solucao") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">Solução:
                <asp:TextBox ID="solucaoTextBox" runat="server" Text='<%# Bind("solucao") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="">Solução:
                <asp:Label ID="solucaoLabel" runat="server" Text='<%# Eval("solucao") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" style="">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="">Solução:
                <asp:Label ID="solucaoLabel" runat="server" Text='<%# Eval("solucao") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
        </asp:ListView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/consertando.mdb" 
            SelectCommand="SELECT [solucao] FROM [TV]"></asp:AccessDataSource>
             
         
             


</div>





        


</div>

    
</asp:Content>
