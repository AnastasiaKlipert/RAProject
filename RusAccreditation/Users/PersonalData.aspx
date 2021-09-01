<%@ Page Title="Личный кабинет" Language="vb" AutoEventWireup="false" MasterPageFile="~/Inner.Master" CodeBehind="PersonalData.aspx.vb" Inherits="RusAccreditation.InnerData" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="NamePage" ContentPlaceHolderID="TextPH" runat="server">
    <p class="text-end mb-0" style="font-family:Montserrat500; font-size:larger; padding-right:26px; color:#E93353;">
        ПЕРСОНАЛЬНЫЕ ДАННЫЕ
    </p>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">

        .PersonalGroupClass{
            max-width:500px;
        }

    </style>

    <div class="container">    

    <dx:ASPxFormLayout ID="PersonalForm" runat="server" DataSourceID="PersonalDS" ColumnCount="10" Paddings-PaddingTop="30">
        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="991" />
        <Styles>
            <LayoutItem Paddings-Padding="10" />
        </Styles>
        <Items>

            <dx:EmptyLayoutItem ColumnSpan="1" Height="0" />

            <dx:LayoutGroup Caption="Персональные данные" GroupBoxDecoration="HeadingLine" CssClass="PersonalGroupClass" ColumnSpan="4">                
                <Items>

                    <dx:LayoutItem Caption="Фамилия" FieldName="LastName" Paddings-PaddingTop="20">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxTextBox ID="LastNameTB" runat="server" Width="100%" Enabled="false" ForeColor="DimGray" />

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem Caption="Имя" FieldName="FirstName">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxTextBox ID="FirstNameTB" runat="server" Width="100%" Enabled="false" ForeColor="DimGray" />

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem Caption="Отчество" FieldName="SecondName">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxTextBox ID="SecondNameTB" runat="server" Width="100%" Enabled="false" ForeColor="DimGray" />

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem Caption="Дата рождения" FieldName="BirthDate">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxDateEdit ID="BirthDateDE" runat="server" Width="100%" Enabled="false" ForeColor="DimGray" />

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem Caption="Электронная почта" FieldName="Email">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxTextBox ID="EmailTB" runat="server" Width="100%" Enabled="false" ForeColor="DimGray" />

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem Caption="Телефон" FieldName="Phone">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxTextBox ID="PhoneTB" runat="server" Width="100%" Enabled="false" ForeColor="DimGray" DisplayFormatString="+7 (###) ###-##-##" />

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem Caption="Роль" FieldName="UserRole">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxTextBox ID="UserRoleTB" runat="server" Width="100%" Enabled="false" ForeColor="DimGray" />

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                </Items>
            </dx:LayoutGroup>

            <dx:LayoutGroup Caption="Изменение пароля" GroupBoxDecoration="HeadingLine" CssClass="PersonalGroupClass" ColumnSpan="4">
                <Items>

                    <dx:LayoutItem Caption="Старый пароль" Paddings-PaddingTop="20">
                          <LayoutItemNestedControlCollection>
                              <dx:LayoutItemNestedControlContainer runat="server">
                                  
                                  <dx:ASPxButtonEdit ID="OldPasswordBE" ClientInstanceName="OldPasswordBE" runat="server" Width="100%" Password="false">
                                      <%--<ClientSideEvents ButtonClick=" function(s,e) { SetVisiblePassword(s,e); } " />
                                      <Buttons>
                                          <dx:EditButton Image-Url="../Content/Icons/ShowEye.png" Position="Right" Width="50" />
                                      </Buttons>
                                      <ButtonStyle PressedStyle-BackColor="Transparent" HoverStyle-BackColor="Transparent" />--%>
                                  </dx:ASPxButtonEdit>


                              </dx:LayoutItemNestedControlContainer>
                          </LayoutItemNestedControlCollection>
                      </dx:LayoutItem>

                      <dx:LayoutItem Caption="Новый пароль" >
                          <LayoutItemNestedControlCollection>
                              <dx:LayoutItemNestedControlContainer runat="server">

                                  <dx:ASPxButtonEdit ID="NewPasswordBE" ClientInstanceName="NewPasswordBE" runat="server" Width="100%" Password="false">
                                      <%--<ClientSideEvents ButtonClick=" function(s,e) { SetVisiblePassword(s,e); } " />
                                      <Buttons>
                                          <dx:EditButton Image-Url="../Content/Icons/ShowEye.png" Position="Right" Width="50" />
                                      </Buttons>
                                      <ButtonStyle PressedStyle-BackColor="Transparent" HoverStyle-BackColor="Transparent" />--%>
                                  </dx:ASPxButtonEdit>

                              </dx:LayoutItemNestedControlContainer>
                          </LayoutItemNestedControlCollection>
                      </dx:LayoutItem>

                      <dx:LayoutItem Caption="Повтор" >
                          <LayoutItemNestedControlCollection>
                              <dx:LayoutItemNestedControlContainer runat="server">

                                  <dx:ASPxButtonEdit ID="RepeatNewPasswordBE" ClientInstanceName="RepeatNewPasswordBE" runat="server" Width="100%" Password="false">
                                      <%--<ClientSideEvents ButtonClick=" function(s,e) { SetVisiblePassword(s,e); } " />
                                      <Buttons>
                                          <dx:EditButton Image-Url="../Content/Icons/ShowEye.png" Position="Right" Width="50" />
                                      </Buttons>
                                      <ButtonStyle PressedStyle-BackColor="Transparent" HoverStyle-BackColor="Transparent" />--%>
                                  </dx:ASPxButtonEdit>

                              </dx:LayoutItemNestedControlContainer>
                          </LayoutItemNestedControlCollection>
                      </dx:LayoutItem>

                    <dx:LayoutItem ShowCaption="False" HorizontalAlign="Center">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxButton ID="ChangePasswordButton" runat="server" AutoPostBack="false" Text="Изменить пароль" RenderMode="Secondary" ForeColor="#E93353" 
                                    Paddings-PaddingRight="5" Paddings-PaddingLeft="5">
                                    <ClientSideEvents Click="function(s,e) { ChangePasswordButtonClick(); }" />
                                </dx:ASPxButton>

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem ShowCaption="False" HorizontalAlign="Center">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxLabel ID="ErrorLabel" ClientInstanceName="ErrorLabel" runat="server" ForeColor="Red" Text="" />

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                </Items>
            </dx:LayoutGroup>

            <dx:EmptyLayoutItem ColumnSpan="1" Height="0" />

        </Items>
    </dx:ASPxFormLayout>
 
        </div>

    <asp:SqlDataSource ID="PersonalDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        SelectCommand="SELECT [Email]
                            , [LastName]
                            , [FirstName]
                            , [SecondName]
                            , [BirthDate]
                            , [Phone]
                            , mn.MetaName UserRole
                        FROM [u1390960_nsagov].[u1390960_saadmin].[Users] u join [u1390960_nsagov].[u1390960_saadmin].[MetaNamesTable] mn on u.Role = mn.ID
                        WHERE u.GUID = @GUID" >
        <SelectParameters>
            <asp:SessionParameter SessionField="GUID" Name="GUID" DbType="Guid" />
        </SelectParameters>
    </asp:SqlDataSource>


    <dx:ASPxLoadingPanel ID="LoadingPanel" ClientInstanceName="LoadingPanel" runat="server" Modal="true" Theme="RedWine" BackColor="Transparent" Border-BorderStyle="None" />


    <dx:ASPxCallback ID="CBackGetNewPassword" ClientInstanceName="CBackGetNewPassword" runat="server" OnCallback="CBackGetNewPassword_Callback">
        <ClientSideEvents CallbackComplete="function(s,e){ CBackGetNewPasswordResult(e.result); }" />
    </dx:ASPxCallback>


    <dx:ASPxPopupControl ID="ResultPopup" ClientInstanceName="ResultPopup" runat="server" HeaderText="" Theme="Metropolis" AutoUpdatePosition="true" 
            PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" CloseAction="CloseButton">
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowTop" HorizontalAlign="WindowCenter"  MaxWidth="400" FixedFooter="false" FixedHeader="false"/>
        <ContentCollection>
          <dx:PopupControlContentControl runat="server">

              <p style="text-align:center; font-family:Montserrat500; font-size:medium; margin-top:-20px;">
                  Пароль успешно изменен!
              </p>

          </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>


    <script type="text/javascript">

        function InitVisiblePassword(s, e) {

            var tt

            if (s.GetInputElement().getAttribute("type") == "password") {
                tt = "HideEye"
            }
            else {
                tt = "ShowEye"
            }

            var button = s.GetButton(0);
            var image = button.getElementsByTagName("img")[0];
            image.src = "../Content/Icons/" + tt + ".png";

        }

        function SetVisiblePassword(s, e) {

            if (s.GetInputElement().getAttribute("type") == "password") {
                s.GetInputElement().setAttribute("type", "text");
            }
            else {
                s.GetInputElement().setAttribute("type", "password");
            }
            InitVisiblePassword(s, e);
        }


        function ChangePasswordButtonClick() {

            ErrorLabel.SetText('');

            if (OldPasswordBE.GetText() == '' || NewPasswordBE.GetText() == '' || RepeatNewPasswordBE.GetText() == '') {
                ErrorLabel.SetText('Заполните все поля!');
            }
            else if (NewPasswordBE.GetText() != RepeatNewPasswordBE.GetText()) {
                ErrorLabel.SetText('Пароли не совпадают');
            }
            else {
                LoadingPanel.Show();
                CBackGetNewPassword.PerformCallback();
            }
        }

        function CBackGetNewPasswordResult(vl) {
            LoadingPanel.Hide();

            if (vl == "0") {
                ErrorLabel.SetText('Неверный пароль!');
            }
            else if (vl == "1") {
                ResultPopup.Show();
                OldPasswordBE.SetText('');
                NewPasswordBE.SetText('');
                RepeatNewPasswordBE.SetText('');
            }
            else {
                ErrorLabel.SetText('Что-то пошло не так...');
            }

        }

    </script>

</asp:Content>
