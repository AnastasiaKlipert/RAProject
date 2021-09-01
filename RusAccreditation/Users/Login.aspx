<%@ Page Title="Авторизация пользователя" Language="vb" AutoEventWireup="false" MasterPageFile="~/Inner.Master" CodeBehind="Login.aspx.vb" Inherits="RusAccreditation.Login" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <dx:ASPxFormLayout ID="LoginForm" runat="server" Width="100%" Paddings-PaddingTop="20" >
        <Items>

            <dx:LayoutGroup Caption="Авторизация пользователя" HorizontalAlign="center" Paddings-PaddingTop="20" Paddings-PaddingLeft="40" 
                Paddings-PaddingRight="40" SettingsItemCaptions-Location="Top" CellStyle-Font-Names="Montserrat500"  >
                <GroupBoxStyle>
                    <Caption Font-Names="Montserrat500" />
                </GroupBoxStyle>
                
                <Items>

                    <dx:LayoutItem Caption="Электронная почта" CaptionCellStyle-Paddings-PaddingBottom="10">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxTextBox ID="LoginEmailTB" runat="server" Width="100%" Theme="Metropolis" Height="30" Font-Names="Montserrat500" Paddings-PaddingLeft="5" >
                                    <FocusedStyle Border-BorderColor="#E93353" />
                                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorTextPosition="Bottom" ErrorDisplayMode="Text">
                                        <RegularExpression ErrorText="Некорректные данные" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                        <RequiredField IsRequired="True" ErrorText="Введите email" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem Caption="Пароль" CaptionCellStyle-Paddings-PaddingBottom="10">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

<%--                                <dx:ASPxTextBox ID="PasswordTB" runat="server" Password="true" Width="100%" Theme="Metropolis" Height="30" Font-Names="Montserrat500">
                                    <FocusedStyle Border-BorderColor="#E93353" />
                                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorTextPosition="Bottom" ErrorDisplayMode="Text">
                                        <RequiredField IsRequired="True" ErrorText="Введите пароль" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>--%>

                                <dx:ASPxButtonEdit ID="PasswordBE" ClientInstanceName="OldPasswordBE" runat="server" Width="100%" Password="true" Theme="Metropolis" Height="30" Font-Names="Montserrat500" Paddings-PaddingLeft="5">
                                    <FocusedStyle Border-BorderColor="#E93353" />
                                    <ClientSideEvents ButtonClick=" function(s,e) { SetVisiblePassword(s,e); } " />
                                    <Buttons>
                                        <dx:EditButton Image-Url="../Content/Icons/HideEye.png" Position="Right" Width="50" />
                                    </Buttons>
                                    <ButtonStyle PressedStyle-BackColor="Transparent" HoverStyle-BackColor="Transparent" />
                                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorTextPosition="Bottom" ErrorDisplayMode="Text">
                                        <RequiredField IsRequired="True" ErrorText="Введите пароль" />
                                    </ValidationSettings>
                                </dx:ASPxButtonEdit>

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem ShowCaption="False" HorizontalAlign="Center" Paddings-PaddingTop="20">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxButton ID="LoginButton" runat="server" Text="Войти" Width="200" AutoPostBack="false" Theme="MaterialCompact" 
                                    BackColor="#E93353" OnClick="LoginButton_Click"   />
                                

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem ShowCaption="False" HorizontalAlign="Center" Paddings-PaddingTop="10">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxButton ID="GetNewPasswordButton" runat="server" AutoPostBack="false" Text="Забыли пароль?" RenderMode="Link" ForeColor="DimGray" CausesValidation="false">
                                    <HoverStyle ForeColor="Gray" />
                                    <ClientSideEvents Click="function(s,e){ GetNewPasswordPopup.Show(); }" />
                                </dx:ASPxButton>

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem ShowCaption="False" HorizontalAlign="Center">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">

                                <dx:ASPxLabel ID="ErrorLabel" runat="server" Text="" Width="100%" ForeColor="Red" Font-Size="Smaller"  />

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                </Items>
            </dx:LayoutGroup>

        </Items>
    </dx:ASPxFormLayout>

    <dx:ASPxPopupControl ID="GetNewPasswordPopup" ClientInstanceName="GetNewPasswordPopup" runat="server" HeaderText="Получить новый пароль" ShowFooter="true" Theme="Metropolis" AutoUpdatePosition="true" 
            PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" CloseAction="CloseButton">
        <ClientSideEvents Closing="function(s,e){ ErrorLabel.SetText(''); EmailTB.SetText(''); }" />
        <HeaderStyle ForeColor="#E93353" Font-Names="Montserrat500" Font-Size="Medium" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowTop" HorizontalAlign="WindowCenter"  MaxWidth="400" FixedFooter="false" FixedHeader="false"/>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">

                <dx:ASPxTextBox ID="EmailTB" ClientInstanceName="EmailTB" runat="server" Caption="Выслать пароль на почту" Theme="MaterialCompact"
                    CaptionSettings-Position="Top" Height="30" Font-Names="Montserrat400" Width="100%" NullText="Введите email" >
                    <FocusedStyle Border-BorderColor="#E93353" />
                </dx:ASPxTextBox>

            </dx:PopupControlContentControl>
        </ContentCollection>

        <ContentStyle Paddings-PaddingLeft="20" Paddings-PaddingRight="20" />

        <FooterStyle HorizontalAlign="Center" Paddings-PaddingBottom="20" Paddings-PaddingTop="20" />

        <FooterTemplate>

            <dx:ASPxButton ID="GetPasswordButton" runat="server" AutoPostBack="false" Text="Получить пароль" Theme="MaterialCompact" ForeColor="#E93353" Width="200"
                BackColor="White" CausesValidation="false">
                <ClientSideEvents Click="function(s,e){ if(EmailTB.GetValue() != null) { ErrorLabel.SetText(''); LoadingPanel.Show(); CBackNewPassword.PerformCallback(EmailTB.GetText()); } else { EmailTB.SetFocus(1); } }" />
            </dx:ASPxButton>

            <section style="text-align:center; margin-top:10px;">
                <dx:ASPxLabel ID="ErrorLabel" ClientInstanceName="ErrorLabel" runat="server" Text="" ForeColor="Red" />
            </section>
        </FooterTemplate>

    </dx:ASPxPopupControl>

    <dx:ASPxPopupControl ID="ResultPopup" ClientInstanceName="ResultPopup" runat="server" HeaderText="" Theme="Metropolis" AutoUpdatePosition="true" 
            PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" CloseAction="CloseButton">
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowTop" HorizontalAlign="WindowCenter"  MaxWidth="400" FixedFooter="false" FixedHeader="false"/>
        <ContentCollection>
          <dx:PopupControlContentControl runat="server">

              <p style="text-align:center; font-family:Montserrat500; font-size:medium; margin-top:-20px;">
                  Пароль отправлен на почту!
              </p>

          </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>



    <dx:ASPxLoadingPanel ID="LoadingPanel" ClientInstanceName="LoadingPanel" runat="server" Modal="true" Theme="RedWine" BackColor="Transparent" Border-BorderStyle="None" />

    <dx:ASPxCallback ID="CBackNewPassword" ClientInstanceName="CBackNewPassword" runat="server" OnCallback="CBackNewPassword_Callback">
        <ClientSideEvents CallbackComplete="function(s,e){CBackNewPasswordResult(e.result)}" />
    </dx:ASPxCallback>

    <script type="text/javascript">

        function CBackNewPasswordResult(vl) {
            LoadingPanel.Hide();

            if (vl.split('|')[0] == '0') {
                ErrorLabel.SetText(vl.split('|')[1]);
            }
            else if (vl.split('|')[0] == '1') {
                GetNewPasswordPopup.Hide();
                ResultPopup.Show();
            }
        }

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

    </script>

</asp:Content>
