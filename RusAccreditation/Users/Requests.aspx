<%@ Page Title="Заявки" Language="vb" AutoEventWireup="false" MasterPageFile="~/Inner.Master" CodeBehind="Requests.aspx.vb" Inherits="RusAccreditation.Requests" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="NamePage" ContentPlaceHolderID="TextPH" runat="server">
    <p class="text-end mb-0" style="font-family:Montserrat500; font-size:larger; padding-right:26px; color:#E93353;">
        ЖУРНАЛ ЗАЯВОК
    </p>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">

        .adaptHeaderClass{
            display:none;
        }

    </style>

    <div class="container-fluid">    

    <dx:ASPxGridView ID="RequestsGrid" ClientInstanceName="RequestsGrid" runat="server" Width="100%" DataSourceID="RequestsDS" KeyFieldName="ID" AutoGenerateColumns="false" Styles-Cell-Paddings-Padding="5px"
        Settings-AutoFilterCondition="Contains"  SettingsBehavior-AllowEllipsisInText="false" Styles-Header-Wrap="True" Font-Size="10" SettingsResizing-ColumnResizeMode="NextColumn"   
        EnableRowsCache="false" OnRowDeleting="RequestsGrid_RowDeleting" OnRowUpdating="RequestsGrid_RowUpdating" SettingsBehavior-ConfirmDelete="true">
        
        <Settings VerticalScrollBarMode="Hidden" ShowHeaderFilterButton="True" ShowFilterRow="false" ShowFooter="false" />

        <SettingsSearchPanel Visible="true" />

        <SettingsContextMenu Enabled="true" RowMenuItemVisibility-DeleteRow="false" RowMenuItemVisibility-EditRow="false" RowMenuItemVisibility-NewRow="false" />

        <SettingsPager PageSize="15" />

        <SettingsBehavior AllowFocusedRow="true" />

        <SettingsDataSecurity AllowDelete="true" AllowEdit="true" AllowInsert="true"/>

        <SettingsExport ExcelExportMode="WYSIWYG" EnableClientSideExportAPI="true" FileName="Журнал заявок" />

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

                            <dx:GridViewLayoutGroup Width="100%" GroupBoxDecoration="None" UseDefaultPaddings="false" AlignItemCaptions="true" >
                                <SpanRules>
                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M" />
                                </SpanRules>                                       
                                <Items>                                    
                                    <dx:GridViewColumnLayoutItem ColumnName="ID" />
                                    <dx:GridViewColumnLayoutItem ColumnName="Created" />
                                    <dx:GridViewColumnLayoutItem ColumnName="Creator" />
                                    <dx:GridViewColumnLayoutItem ColumnName="RequestStatus" />
                                </Items>
                            </dx:GridViewLayoutGroup>

                            <dx:GridViewLayoutGroup Width="100%" GroupBoxDecoration="None" UseDefaultPaddings="false" AlignItemCaptions="true" ParentContainerStyle-CssClass="grclass" >
                                <SpanRules>
                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M" />
                                </SpanRules>
                                <Items>
                                    <dx:GridViewColumnLayoutItem ColumnName="FIO" />
                                    <dx:GridViewColumnLayoutItem ColumnName="INN" />
                                    <dx:GridViewColumnLayoutItem ColumnName="Phone" />
                                    <dx:GridViewColumnLayoutItem ColumnName="Email" />
                                    <dx:GridViewColumnLayoutItem ColumnName="Source" />
                                </Items>
                            </dx:GridViewLayoutGroup>

                        </Items>
                    </dx:GridViewLayoutGroup>
                </Items>
            </AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>


        <Styles>
            <AdaptiveHeaderPanel Border-BorderStyle="None" HorizontalAlign="Center" CssClass="adaptHeaderClass"  />
            <FocusedRow BackColor="#F0F0F0" ForeColor="DimGray" />
        </Styles>
                    

        <EditFormLayoutProperties ColumnCount="2">
            <Items>

                <dx:GridViewLayoutGroup ColumnSpan="1" GroupBoxDecoration="None">
                    <Items>
                        <dx:GridViewColumnLayoutItem ColumnName="LastName" Caption="Фамилия" />
                        <dx:GridViewColumnLayoutItem ColumnName="FirstName" Caption="Имя" />
                        <dx:GridViewColumnLayoutItem ColumnName="SecondName" Caption="Отчество" />
                        <dx:GridViewColumnLayoutItem ColumnName="INN" />                        
                    </Items>
                </dx:GridViewLayoutGroup>

                <dx:GridViewLayoutGroup ColumnSpan="1" GroupBoxDecoration="None">
                    <Items>
                        <dx:GridViewColumnLayoutItem ColumnName="Phone" />
                        <dx:GridViewColumnLayoutItem ColumnName="Email" />
                        <dx:GridViewColumnLayoutItem ColumnName="Source" />
                        <dx:GridViewColumnLayoutItem ColumnName="RequestStatus" />
                    </Items>
                </dx:GridViewLayoutGroup>
                
                <dx:EditModeCommandLayoutItem ColumnSpan="2" HorizontalAlign="Right"  />

            </Items>
            <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="991" />

        </EditFormLayoutProperties>

        <Columns>

            <dx:GridViewDataColumn FieldName="ID" SortOrder="Descending" Width="7%" MinWidth="80" />

            <dx:GridViewDataDateColumn FieldName="Created" Caption="Дата создания" PropertiesDateEdit-DisplayFormatString="dd.MM.yyyy HH:mm" Width="10%" MinWidth="100" />

            <dx:GridViewDataColumn FieldName="Creator" Caption="Автор" Width="10%" MinWidth="100" />

            <dx:GridViewDataColumn FieldName="FIO" Caption="ФИО" MinWidth="150" />

            <dx:GridViewDataTextColumn FieldName="INN" Caption="ИНН" Width="10%" MinWidth="100" >
                <PropertiesTextEdit>
                    <ClientSideEvents Init="function(s,e){ CheckEdit(s,e) }" />
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom" ErrorText="Проверьте корректность введенных данных">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <RegularExpression ValidationExpression="^[0-9]*$" ErrorText="Проверьте корректность введенных данных" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                    <ClientSideEvents Validation="function(s,e){ INNVal(s,e); }" />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="Phone" Caption="Телефон" Width="10%" MinWidth="100" PropertiesTextEdit-DisplayFormatString="+7 (###) ###-##-##" CellStyle-HorizontalAlign="Left">
                <PropertiesTextEdit>
                    <ClientSideEvents Init="function(s,e){ CheckEdit(s,e) }" />
                    <MaskSettings Mask="+7 (000) 000-00-00" IncludeLiterals="None" ErrorText="Проверьте корректность введенных данных" />
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorTextPosition="Bottom" ErrorDisplayMode="Text">
                        <RequiredField IsRequired="True" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="Email" Caption="Email" Width="10%" MinWidth="100">
                <PropertiesTextEdit>
                    <ClientSideEvents Init="function(s,e){ CheckEdit(s,e) }" />
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorTextPosition="Bottom" ErrorDisplayMode="Text">
                        <RegularExpression ErrorText="Проверьте корректность введенных данных" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                        <RequiredField IsRequired="True" ErrorText="Поле должно быть заполнено" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="Source" Caption="Источник" Width="15%" MinWidth="100" >
                <PropertiesTextEdit>
                    <ClientSideEvents Init="function(s,e){ CheckEdit(s,e) }" />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataComboBoxColumn FieldName="RequestStatus" Caption="Статус заявки" Width="10%" MinWidth="100">
                <PropertiesComboBox DataSourceID="RequestStatusDS" ValueField="ID" TextField="MetaName" >
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>



            <dx:GridViewDataTextColumn FieldName="LastName" Visible="false" >
                <PropertiesTextEdit>
                    <ClientSideEvents Init="function(s,e){ CheckEdit(s,e) }" />
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="FirstName" Visible="false" >
                <PropertiesTextEdit>
                    <ClientSideEvents Init="function(s,e){ CheckEdit(s,e) }" />
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="SecondName" Visible="false" >
                <PropertiesTextEdit>
                    <ClientSideEvents Init="function(s,e){ CheckEdit(s,e) }" />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="CreatorGUID" Visible="false" />

        </Columns>

        <Toolbars>
            <dx:GridViewToolbar>
                <Items>                    
                    <dx:GridViewToolbarItem Command="New" Text="Создать" />
                    <dx:GridViewToolbarItem Command="Edit" Text="Редактировать" />
                    <dx:GridViewToolbarItem Command="Delete" Text="Удалить" />
                    <dx:GridViewToolbarItem Command="Refresh" BeginGroup="true" Alignment="Right" Text="Обновить" />
                    <dx:GridViewToolbarItem Command="ExportToXlsx" BeginGroup="true" Alignment="Right" Text="Экспорт в XLSX" />
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>

        <TotalSummary>
            <dx:ASPxSummaryItem SummaryType="Count" FieldName="ID" />
        </TotalSummary>

        <FormatConditions>
            <dx:GridViewFormatConditionHighlight FieldName="Source" Expression="[Source] = 'ПОЛУЧИТЬ СЕРТИФИКАТ'" Format="YellowFillWithDarkYellowText" />
            <dx:GridViewFormatConditionHighlight FieldName="Source" Expression="[Source] = 'ПОЛУЧИТЬ ВЫПИСКУ'" Format="YellowFillWithDarkYellowText" />
            <dx:GridViewFormatConditionHighlight FieldName="Source" Expression="[Source] = 'Поиск в реестре (ошибка поиска)'" Format="LightRedFillWithDarkRedText" />
        </FormatConditions>

    </dx:ASPxGridView>

    </div>

    <asp:SqlDataSource ID="RequestsDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        
        SelectCommand="exec [u1390960_saadmin].[GetRequests]" 
        
        InsertCommand="insert into [u1390960_saadmin].[Requests] (Creator, LastName, FirstName, SecondName, INN, Phone, Email, Source)
                       values(@UserGUID, @LastName, @FirstName, @SecondName, @INN, @Phone, @Email, @Source)
        
                       declare @ObjID int = SCOPE_IDENTITY()

                       insert into [u1390960_saadmin].[MetaDataTable] ([Creator], [MetaNameID], [ObjectTypeID], [ObjectID], [MetaData])
                       values (@UserGUID, 11, 13, @ObjID, @RequestStatus)
                       " 
        
        DeleteCommand="delete from [u1390960_saadmin].[Requests] where ID = @ID
        
                       delete from [u1390960_saadmin].[MetaDataTable] where [ObjectID] = @ID and [ObjectTypeID] = 13
                       " 
        
        UpdateCommand="insert into [u1390960_saadmin].[MetaDataTable] ([Creator], [MetaNameID], [ObjectTypeID], [ObjectID], [MetaData])
                       values (@UserGUID, 11, 13, @ID, @RequestStatus)" >

        <InsertParameters>
            <asp:SessionParameter Name="UserGUID" SessionField="GUID" />
            <asp:Parameter Name="LastName" />
            <asp:Parameter Name="FirstName" />
            <asp:Parameter Name="SecondName" />
            <asp:Parameter Name="INN" />
            <asp:Parameter Name="Phone" />
            <asp:Parameter Name="Email" />
            <asp:Parameter Name="Source" />
            <asp:Parameter Name="RequestStatus" />
        </InsertParameters>

        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>

        <UpdateParameters>
            <asp:SessionParameter Name="UserGUID" SessionField="GUID" />
            <asp:Parameter Name="ID" />
            <asp:Parameter Name="RequestStatus" />
        </UpdateParameters>

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="RequestStatusDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        SelectCommand="SELECT ID, MetaName
                       FROM [u1390960_saadmin].[MetaNamesTable]
                       where Category = 'Статус заявки' and NoShow = 0" />


    <script type="text/javascript">

        function INNVal(s, e) {
            var name = e.value;
            if (name == null)
                return;
            if (name.length != 10 && name.length != 12)
                e.isValid = false;
        }

        function CheckEdit(s,e) {
            if (RequestsGrid.IsNewRowEditing() == false) {
                s.SetEnabled(0);
            }
        }

        //function CheckEdit(s,e) {
        //    if (RequestsGrid.IsNewRowEditing() == false) {
        //        RequestsGrid.GetRowValues(0, 'Creator', function OnGetRW(vl) { if (vl == 'System') { s.SetEnabled(0); } });
        //    }
        //}

    </script>

</asp:Content>
