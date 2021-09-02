<%@ Page Title="Пользователи" Language="vb" AutoEventWireup="false" MasterPageFile="~/Inner.Master" CodeBehind="Users.aspx.vb" Inherits="RusAccreditation.Users" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TextPH" runat="server">
    <p class="text-end mb-0" style="font-family:Montserrat500; font-size:larger; padding-right:26px; color:#E93353;">
        ПОЛЬЗОВАТЕЛИ
    </p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">

        .adaptHeaderClass{
            display:none;
        }

    </style>

    <div class="container-fluid">

        <dx:ASPxGridView ID="UsersGrid" ClientInstanceName="UsersGrid" runat="server" Width="100%" DataSourceID="UsersDS" KeyFieldName="ID" 
            AutoGenerateColumns="false" Styles-Cell-Paddings-Padding="5px" Settings-AutoFilterCondition="Contains"  SettingsBehavior-AllowEllipsisInText="false" 
            Styles-Header-Wrap="True" Font-Size="10" SettingsResizing-ColumnResizeMode="NextColumn" EnableRowsCache="false" 
            OnRowInserting="UsersGrid_RowInserting" OnRowUpdating="UsersGrid_RowUpdating" OnRowUpdated="UsersGrid_RowUpdated">

            <ClientSideEvents ToolbarItemClick="function(s,e) { if(e.item.name == 'ChangePassword') { fChangePassword(); } }" />

            <Settings VerticalScrollBarMode="Hidden" ShowHeaderFilterButton="True" ShowFilterRow="false" ShowFooter="false" />

            <SettingsSearchPanel Visible="true" />

            <SettingsContextMenu Enabled="true" RowMenuItemVisibility-EditRow="false" RowMenuItemVisibility-NewRow="false" />

            <SettingsPager PageSize="15" />

            <SettingsBehavior AllowFocusedRow="true" />

            <SettingsDataSecurity AllowDelete="false" AllowEdit="true" AllowInsert="true"/>

            <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" HideDataCellsAtWindowInnerWidth="991" AllowOnlyOneAdaptiveDetailExpanded="true">
                <AdaptiveDetailLayoutProperties>
                    <Items>
                        <dx:GridViewLayoutGroup Width="100%" GroupBoxDecoration="None">
                            <GridSettings StretchLastItem="True">
                                <Breakpoints>
                                    <dx:LayoutBreakpoint MaxWidth="575" ColumnCount="1" Name="S" />
                                    <dx:LayoutBreakpoint MaxWidth="991" ColumnCount="2" Name="M" />
                                </Breakpoints>
                            </GridSettings>
                            <Items>

                                <dx:GridViewLayoutGroup Width="100%" GroupBoxDecoration="None" UseDefaultPaddings="false" AlignItemCaptions="true">
                                    <SpanRules>
                                        <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                        <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M" />
                                    </SpanRules>
                                    <Items>
                                        <dx:GridViewColumnLayoutItem ColumnName="LastName" />
                                        <dx:GridViewColumnLayoutItem ColumnName="FirstName" />
                                        <dx:GridViewColumnLayoutItem ColumnName="SecondName" />
                                        <dx:GridViewColumnLayoutItem ColumnName="BirthDate" />
                                    </Items>
                                </dx:GridViewLayoutGroup>

                                <dx:GridViewLayoutGroup Width="100%" GroupBoxDecoration="None" UseDefaultPaddings="false" AlignItemCaptions="true" ParentContainerStyle-CssClass="grclass">
                                    <SpanRules>
                                        <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                        <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M" />
                                    </SpanRules>
                                    <Items>
                                        <dx:GridViewColumnLayoutItem ColumnName="Phone" />
                                        <dx:GridViewColumnLayoutItem ColumnName="Email" />
                                        <dx:GridViewColumnLayoutItem ColumnName="Role" />
                                        <dx:GridViewColumnLayoutItem ColumnName="Status" />
                                    </Items>
                                </dx:GridViewLayoutGroup>

                            </Items>
                        </dx:GridViewLayoutGroup>
                    </Items>
                </AdaptiveDetailLayoutProperties>
            </SettingsAdaptivity>

            <Styles>
                <AdaptiveHeaderPanel Border-BorderStyle="None" HorizontalAlign="Center" CssClass="adaptHeaderClass" />
                <FocusedRow BackColor="#F0F0F0" ForeColor="DimGray" />
            </Styles>

            <EditFormLayoutProperties ColumnCount="2">
                <Items>

                    <dx:GridViewLayoutGroup ColumnSpan="1" GroupBoxDecoration="None">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColumnName="LastName" />
                            <dx:GridViewColumnLayoutItem ColumnName="FirstName" />
                            <dx:GridViewColumnLayoutItem ColumnName="SecondName" />
                            <dx:GridViewColumnLayoutItem ColumnName="BirthDate" />
                        </Items>
                    </dx:GridViewLayoutGroup>

                    <dx:GridViewLayoutGroup ColumnSpan="1" GroupBoxDecoration="None">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColumnName="Phone" />
                            <dx:GridViewColumnLayoutItem ColumnName="Email" />
                            <dx:GridViewColumnLayoutItem ColumnName="Role" />
                            <dx:GridViewColumnLayoutItem ColumnName="Status" />
                        </Items>
                    </dx:GridViewLayoutGroup>

                    <dx:EditModeCommandLayoutItem ColumnSpan="2" HorizontalAlign="Right" />

                </Items>
                <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="991" />

            </EditFormLayoutProperties>

            <Columns>

                <dx:GridViewDataTextColumn FieldName="ID" Visible="false" />

                <dx:GridViewDataTextColumn FieldName="LastName" Caption="Фамилия" >
                    <PropertiesTextEdit>
                        <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                            <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                            <ErrorFrameStyle Font-Size="X-Small" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>

                <dx:GridViewDataTextColumn FieldName="FirstName" Caption="Имя" >
                    <PropertiesTextEdit>
                        <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                            <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                            <ErrorFrameStyle Font-Size="X-Small" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>

                <dx:GridViewDataTextColumn FieldName="SecondName" Caption="Отчество" />

                 <dx:GridViewDataTextColumn FieldName="Email" Caption="Email" >
                     <PropertiesTextEdit>
                         <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorTextPosition="Bottom" ErrorDisplayMode="Text">
                             <RegularExpression ErrorText="Проверьте корректность введенных данных" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                             <RequiredField IsRequired="True" ErrorText="Поле должно быть заполнено" />
                             <ErrorFrameStyle Font-Size="X-Small" />
                         </ValidationSettings>
                     </PropertiesTextEdit>
                 </dx:GridViewDataTextColumn>

                <dx:GridViewDataDateColumn FieldName="BirthDate" Caption="Дата рождения" />

                <dx:GridViewDataTextColumn FieldName="Phone" Caption="Телефон" PropertiesTextEdit-DisplayFormatString="+7 (###) ###-##-##" 
                    CellStyle-HorizontalAlign="Left" PropertiesTextEdit-DisplayFormatInEditMode="true"  >
                    <PropertiesTextEdit SelectInputTextOnClick="true" NullText="Введите номер телефона 10 цифр">
                        <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorTextPosition="Bottom" ErrorDisplayMode="Text">
                            <RegularExpression ValidationExpression="^[0-9]*$" ErrorText="Проверьте корректность введенных данных" />
                            <ErrorFrameStyle Font-Size="X-Small" />
                        </ValidationSettings>
                        <ClientSideEvents Validation="function(s,e) { PhoneValidation(s,e); }" />
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>

                <dx:GridViewDataComboBoxColumn FieldName="Role" Caption="Роль">
                    <PropertiesComboBox DataSourceID="RoleDS" TextField="MetaName" ValueField="ID" >
                        <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                            <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                            <ErrorFrameStyle Font-Size="X-Small" />
                        </ValidationSettings>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>

                <dx:GridViewDataComboBoxColumn FieldName="Status" Caption="Статус">
                    <PropertiesComboBox DataSourceID="StatusDS" TextField="MetaName" ValueField="ID" >
                        <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                            <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                            <ErrorFrameStyle Font-Size="X-Small" />
                        </ValidationSettings>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>

            </Columns>

            <Toolbars>
                <dx:GridViewToolbar>
                    <Items>
                        <dx:GridViewToolbarItem Command="New" Text="Новый пользователь" />
                        <dx:GridViewToolbarItem Command="Edit" Text="Редактировать" BeginGroup="true" />
                        <dx:GridViewToolbarItem Command="Custom" Text="Изменить пароль" BeginGroup="true" Name="ChangePassword" />
                        <dx:GridViewToolbarItem Command="Refresh" Text="Обновить" BeginGroup="true" Alignment="Right" />
                    </Items>
                </dx:GridViewToolbar>
            </Toolbars>

        </dx:ASPxGridView>

    </div>

    <asp:SqlDataSource ID="RoleDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        SelectCommand="select ID, MetaName FROM [u1390960_saadmin].[MetaNamesTable] where [Category] = 'Роль'" />

    <asp:SqlDataSource ID="StatusDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        SelectCommand="select ID, MetaName FROM [u1390960_saadmin].[MetaNamesTable] where [Category] = 'Статус пользователя'" />

    <asp:SqlDataSource ID="UsersDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        
        SelectCommand="exec [u1390960_saadmin].[GetUsers] @UserGUID" 
        
        InsertCommand="if (select count(*) from [u1390960_saadmin].[Users] where Email = @Email) = 0
                       BEGIN

	                       insert into [u1390960_saadmin].[Users] (Email, LastName, FirstName, SecondName, BirthDate, Phone, Role, Status)
	                       values (@Email, @LastName, @FirstName, @SecondName, @BirthDate, @Phone, @Role, @Status)

                       END" 
        
        UpdateCommand="update [u1390960_saadmin].[Users]
                       SET Email = @Email
	                     , LastName = @LastName
	                     , FirstName = @FirstName
	                     , SecondName = @SecondName
	                     , Phone = @Phone
	                     , BirthDate = @BirthDate
	                     , Role = @Role
	                     , Status = @Status
                       WHERE ID = @ID">

        <SelectParameters>
            <asp:SessionParameter Name="UserGUID" SessionField="GUID" />
        </SelectParameters>

        <InsertParameters>
            <asp:Parameter Name="Email" />
            <asp:Parameter Name="LastName" />
            <asp:Parameter Name="FirstName" />
            <asp:Parameter Name="SecondName" />
            <asp:Parameter Name="BirthDate" />
            <asp:Parameter Name="Phone" />
            <asp:Parameter Name="Role" />
            <asp:Parameter Name="Status" />
        </InsertParameters>

        <UpdateParameters>
            <asp:Parameter Name="ID" />
            <asp:Parameter Name="Email" />
            <asp:Parameter Name="LastName" />
            <asp:Parameter Name="FirstName" />
            <asp:Parameter Name="SecondName" />
            <asp:Parameter Name="BirthDate" />
            <asp:Parameter Name="Phone" />
            <asp:Parameter Name="Role" />
            <asp:Parameter Name="Status" />
        </UpdateParameters>

    </asp:SqlDataSource>

    <dx:ASPxLoadingPanel ID="LoadingPanel" ClientInstanceName="LoadingPanel" runat="server" Modal="true" />

    <dx:ASPxCallback ID="CBackChangePassword" ClientInstanceName="CBackChangePassword" runat="server" OnCallback="CBackChangePassword_Callback">
        <ClientSideEvents CallbackComplete="function(s,e) { CBackChangePasswordResult(e.result); }" />
    </dx:ASPxCallback>

    <script type="text/javascript">

        //Проверка телефона
        function PhoneValidation(s, e) {

            var name = e.value;
            if (name == null)
                return;
            if (name.length != 10)
                e.isValid = false;
        }

        //Изменение пароля
        function fChangePassword() {

            if (UsersGrid.GetFocusedRowIndex() >= 0) {

                if (confirm('Изменить пароль?') == true) {
                    LoadingPanel.Show();
                    CBackChangePassword.PerformCallback();
                }

            }
            else {
                alert('Выберите пользователя');
            }

        }

        function CBackChangePasswordResult(vl) {

            LoadingPanel.Hide();

            if (vl.split('|')[0] == '0') {
                alert(vl.split('|')[1]);
            }
            else if (vl.split('|')[0] == '1') {
                alert('Новый пароль успешно отправлен на почту!');
            }
        }

    </script>

</asp:Content>
