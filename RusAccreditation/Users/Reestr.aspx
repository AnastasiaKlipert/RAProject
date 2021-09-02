<%@ Page Title="Реестр" Language="vb" AutoEventWireup="false" MasterPageFile="~/Inner.Master" CodeBehind="Reestr.aspx.vb" Inherits="RusAccreditation.Reestr" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="NamePage" ContentPlaceHolderID="TextPH" runat="server">
    <p class="text-end mb-0" style="font-family:Montserrat500; font-size:larger; padding-right:26px; color:#E93353;">
        РЕЕСТР ПОСТАВЩИКОВ
    </p>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">

        .adaptHeaderClass{
            display:none;
        }

    </style>


    <dx:ASPxGridView ID="ReestrGrid" ClientInstanceName="ReestrGrid" runat="server" Width="100%" DataSourceID="ReestrDS" KeyFieldName="ID" AutoGenerateColumns="false" Styles-Cell-Paddings-Padding="5px"
        Settings-AutoFilterCondition="Contains"  SettingsBehavior-AllowEllipsisInText="false" Styles-Header-Wrap="True" Font-Size="10" SettingsResizing-ColumnResizeMode="NextColumn"   
        EnableRowsCache="false" SettingsBehavior-ConfirmDelete="true" OnInit="ReestrGrid_Init" OnRowDeleted="ReestrGrid_RowDeleted" OnRowUpdated="ReestrGrid_RowUpdated">

        <ClientSideEvents RowDblClick="function(s,e){ if (s.GetDetailRow(s.GetFocusedRowIndex()) == null) 
                                        {s.ExpandDetailRow(s.GetFocusedRowIndex());}
                                        else {s.CollapseDetailRow(s.GetFocusedRowIndex());} }" />

        <Settings VerticalScrollBarMode="Hidden" ShowHeaderFilterButton="True" ShowFilterRow="false" ShowFooter="false" />

        <SettingsSearchPanel Visible="true" />

        <SettingsContextMenu Enabled="true" />

        <SettingsPager PageSize="15" />

        <SettingsBehavior AllowFocusedRow="true" AllowSelectSingleRowOnly="true" AllowSelectByRowClick="true" />

        <SettingsDataSecurity AllowEdit="true" AllowInsert="true"/>

        <SettingsExport ExcelExportMode="WYSIWYG" EnableClientSideExportAPI="true" FileName="Реестр" />

        <SettingsDetail ShowDetailRow="true" AllowOnlyOneMasterRowExpanded="true" ShowDetailButtons="false" />

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
                                    <dx:GridViewColumnLayoutItem ColumnName="Representative" />
                                    <dx:GridViewColumnLayoutItem ColumnName="Phone" />
                                    <dx:GridViewColumnLayoutItem ColumnName="Email" />
                                </Items>
                            </dx:GridViewLayoutGroup>

                            <dx:GridViewLayoutGroup Width="100%" GroupBoxDecoration="None" UseDefaultPaddings="false" AlignItemCaptions="true" ParentContainerStyle-CssClass="grclass" >
                                <SpanRules>
                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M" />
                                </SpanRules>
                                <Items>
                                    <dx:GridViewColumnLayoutItem ColumnName="CompanyName" />
                                    <dx:GridViewColumnLayoutItem ColumnName="INN" />
                                    <dx:GridViewColumnLayoutItem ColumnName="KPP" />
                                    <dx:GridViewColumnLayoutItem ColumnName="OGRN" /> 
                                    <dx:GridViewColumnLayoutItem ColumnName="City" />
                                    <dx:GridViewColumnLayoutItem ColumnName="RegisterDate" />
                                    <dx:GridViewColumnLayoutItem ColumnName="LastCertificate" />
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

                        <dx:GridViewColumnLayoutItem ColumnName="CompanyName" />                        
                        <dx:GridViewColumnLayoutItem ColumnName="INN" />
                        <dx:GridViewColumnLayoutItem ColumnName="KPP" />
                        <dx:GridViewColumnLayoutItem ColumnName="OGRN" />
                        <dx:GridViewColumnLayoutItem ColumnName="RegisterDate" />                        
                        <dx:GridViewColumnLayoutItem ColumnName="City"  />
                    </Items>
                </dx:GridViewLayoutGroup>

                <dx:GridViewLayoutGroup ColumnSpan="1" GroupBoxDecoration="None">
                    <Items>
                        <dx:GridViewColumnLayoutItem ColumnName="LastName" Caption="Фамилия" />
                        <dx:GridViewColumnLayoutItem ColumnName="FirstName" Caption="Имя" />
                        <dx:GridViewColumnLayoutItem ColumnName="SecondName" Caption="Отчество" />
                        <dx:GridViewColumnLayoutItem ColumnName="Phone" />
                        <dx:GridViewColumnLayoutItem ColumnName="Email" />

                    </Items>
                </dx:GridViewLayoutGroup>
                
                <dx:EditModeCommandLayoutItem ColumnSpan="2" HorizontalAlign="Right"  />

            </Items>

            <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="991" />

        </EditFormLayoutProperties>

        <Columns>           

            <dx:GridViewDataTextColumn FieldName="ID" Width="50" />

            <dx:GridViewDataDateColumn FieldName="Created" Caption="Дата добавления" Width="9%" MinWidth="80" Visible="false" SortOrder="Descending" />

            <dx:GridViewDataTextColumn FieldName="Creator" Caption="Автор" Width="9%" MinWidth="80" />

            <dx:GridViewDataTextColumn FieldName="CompanyName" Caption="Компания" MinWidth="90" >
                <PropertiesTextEdit>
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="INN" Caption="ИНН" Width="7%" MinWidth="80" >
                <PropertiesTextEdit>
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom" ErrorText="Проверьте корректность введенных данных">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <RegularExpression ValidationExpression="^[0-9]*$" ErrorText="Проверьте корректность введенных данных" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                    <ClientSideEvents Validation="function(s,e){ INNVal(s,e); }" />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="KPP" Caption="КПП" Width="7%" MinWidth="80" >
                <PropertiesTextEdit>
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom" ErrorText="Проверьте корректность введенных данных">
                        <%--<RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />--%>
                        <RegularExpression ValidationExpression="^[0-9]*$" ErrorText="Проверьте корректность введенных данных" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="OGRN" Caption="ОГРН" Width="9%" MinWidth="80" >
                <PropertiesTextEdit>
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom" ErrorText="Проверьте корректность введенных данных">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <RegularExpression ValidationExpression="^[0-9]*$" ErrorText="Проверьте корректность введенных данных" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="Representative" Caption="Представитель" MinWidth="90" />

            <dx:GridViewDataTextColumn FieldName="Phone" Caption="Телефон" Width="9%" MinWidth="80" PropertiesTextEdit-DisplayFormatString="+7 (###) ###-##-##" CellStyle-HorizontalAlign="Left">
                <PropertiesTextEdit>
                    <MaskSettings Mask="+7 (000) 000-00-00" IncludeLiterals="None" ErrorText="Проверьте корректность введенных данных" />
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorTextPosition="Bottom" ErrorDisplayMode="Text">
                        <RequiredField IsRequired="True" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="Email" Caption="Email" Width="9%" MinWidth="80" >
                <PropertiesTextEdit>
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorTextPosition="Bottom" ErrorDisplayMode="Text">
                        <RegularExpression ErrorText="Проверьте корректность введенных данных" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                        <RequiredField IsRequired="True" ErrorText="Поле должно быть заполнено" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="City" Caption="Город" Width="9%" MinWidth="80" />

            <dx:GridViewDataDateColumn FieldName="RegisterDate" Caption="Дата вступления в реестр" Width="9%" MinWidth="80" >
                <PropertiesDateEdit>
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>



            <dx:GridViewDataTextColumn FieldName="LastCertificate" Caption="Сертификат" Width="9%" MinWidth="80" />



            <dx:GridViewDataTextColumn FieldName="LastName" Visible="false" >
                <PropertiesTextEdit>
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="FirstName" Visible="false" >
                <PropertiesTextEdit>
                    <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                        <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                        <ErrorFrameStyle Font-Size="X-Small" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="SecondName" Visible="false" />

        </Columns>
              
        <FormatConditions>
            <dx:GridViewFormatConditionHighlight FieldName="LastCertificate" Expression="[LastCertificate] = 'Действителен'" Format="GreenFillWithDarkGreenText" />
        </FormatConditions>


        <Templates>
            <DetailRow>

                <dx:ASPxGridView ID="CertificateGrid" ClientInstanceName="CertificateGrid" runat="server" Width="100%" DataSourceID="CertificateDS" KeyFieldName="ID" AutoGenerateColumns="false"
                    Styles-Cell-Paddings-Padding="5px" Settings-AutoFilterCondition="Contains"  SettingsBehavior-AllowEllipsisInText="false" Styles-Header-Wrap="True" Font-Size="10" 
                    SettingsResizing-ColumnResizeMode="NextColumn" EnableRowsCache="false" SettingsBehavior-ConfirmDelete="true" OnBeforePerformDataSelect="CertificateGrid_BeforePerformDataSelect" 
                    OnRowDeleted="CertificateGrid_RowDeleted" OnRowUpdated="CertificateGrid_RowUpdated">

                    <ClientSideEvents EndCallback="function(s,e) { ReestrGrid.Refresh(); }" />

                    <SettingsDataSecurity AllowDelete="true" AllowEdit="true" AllowInsert="true" />

                    <SettingsBehavior AllowFocusedRow="true" AllowSelectSingleRowOnly="true" AllowSelectByRowClick="true" />

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
                                                <dx:GridViewColumnLayoutItem ColumnName="Number" />
                                                <dx:GridViewColumnLayoutItem ColumnName="Creator" />
                                                <dx:GridViewColumnLayoutItem ColumnName="CTypeID" />
                                                <dx:GridViewColumnLayoutItem ColumnName="BeginDate" />
                                            </Items>
                                        </dx:GridViewLayoutGroup>

                                        <dx:GridViewLayoutGroup Width="100%" GroupBoxDecoration="None" UseDefaultPaddings="false" AlignItemCaptions="true" ParentContainerStyle-CssClass="grclass">
                                            <SpanRules>
                                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M" />
                                            </SpanRules>
                                            <Items>
                                                <dx:GridViewColumnLayoutItem ColumnName="EndDate" />
                                                <dx:GridViewColumnLayoutItem ColumnName="Summa" />
                                                <dx:GridViewColumnLayoutItem ColumnName="CIndex" />
                                                <dx:GridViewColumnLayoutItem ColumnName="CStatus" />
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
                                    <dx:GridViewColumnLayoutItem ColumnName="Number" />
                                    <dx:GridViewColumnLayoutItem ColumnName="CTypeID" />
                                    <dx:GridViewColumnLayoutItem ColumnName="BeginDate" />
                                    <dx:GridViewColumnLayoutItem ColumnName="EndDate" />
                                </Items>
                            </dx:GridViewLayoutGroup>

                            <dx:GridViewLayoutGroup ColumnSpan="1" GroupBoxDecoration="None">
                                <Items>
                                    <dx:GridViewColumnLayoutItem ColumnName="Summa" />
                                    <dx:GridViewColumnLayoutItem ColumnName="CIndex" />
                                    <dx:GridViewColumnLayoutItem ColumnName="CStatus" />
                                </Items>
                            </dx:GridViewLayoutGroup>

                            <dx:EditModeCommandLayoutItem ColumnSpan="2" HorizontalAlign="Right" />

                        </Items>
                        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="991" />
                    </EditFormLayoutProperties>

                    <Columns>

                        <dx:GridViewDataTextColumn FieldName="ID" Visible="false" />

                        <dx:GridViewDataTextColumn FieldName="Number" Caption="Номер" >
                            <PropertiesTextEdit>
                                <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                    <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                                    <ErrorFrameStyle Font-Size="X-Small" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataDateColumn FieldName="Created" Caption="Дата добавления" Visible="false" SortOrder="Descending" />

                        <dx:GridViewDataTextColumn FieldName="Creator" Caption="Автор" />

                        <dx:GridViewDataComboBoxColumn FieldName="CTypeID"  Caption="Тип">
                            <PropertiesComboBox DataSourceID="CTypeDS" ValueField="ID" TextField="Name"  >
                                <ValidationSettings SetFocusOnError="true" Display="Dynamic" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                    <RequiredField IsRequired="true" ErrorText="Поле должно быть заполнено" />
                                    <ErrorFrameStyle Font-Size="X-Small" />
                                </ValidationSettings>
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>

                        <dx:GridViewDataDateColumn FieldName="BeginDate" Caption="Дата выдачи" >
                            <PropertiesDateEdit AllowNull="false" NullText="По умолчания текущая дата" />
                        </dx:GridViewDataDateColumn>

                        <dx:GridViewDataDateColumn FieldName="EndDate" Caption="Дата окончания" >
                            <PropertiesDateEdit AllowNull="false" NullText="По умолчания 1 год" />
                        </dx:GridViewDataDateColumn>

                        <dx:GridViewDataSpinEditColumn FieldName="Summa" Caption="Стоимость">
                            <PropertiesSpinEdit NumberType="Float" SpinButtons-ShowIncrementButtons="false" MinValue="0" MaxValue="1000000" DisplayFormatString="N2" DisplayFormatInEditMode="true" />
                        </dx:GridViewDataSpinEditColumn>

                        <dx:GridViewDataSpinEditColumn FieldName="CIndex" Caption="Баллы">
                            <PropertiesSpinEdit NumberType="Float" SpinButtons-ShowIncrementButtons="false" MinValue="0" MaxValue="100" />
                        </dx:GridViewDataSpinEditColumn>

                        <dx:GridViewDataComboBoxColumn FieldName="CStatus"  Caption="Статус" >
                            <PropertiesComboBox AllowNull="false" NullText="По умолчания Действителен" DataSourceID="CStatusDS" ValueField="ID" TextField="MetaName" />
                        </dx:GridViewDataComboBoxColumn>

                    </Columns>

                    <Toolbars>
                        <dx:GridViewToolbar>
                            <Items>
                                <dx:GridViewToolbarItem Command="New" Text="Добавить сертификат" />
                                <dx:GridViewToolbarItem Command="Edit" Text="Редактировать" />
                                <dx:GridViewToolbarItem Command="Delete" Text="Удалить" />
                                <dx:GridViewToolbarItem Command="Refresh" BeginGroup="true" Alignment="Right" Text="Обновить" />
                            </Items>
                        </dx:GridViewToolbar>
                    </Toolbars>

                </dx:ASPxGridView>

            </DetailRow>
        </Templates>

        <Toolbars>
            <dx:GridViewToolbar>
                <Items>                    
                    <dx:GridViewToolbarItem Command="New" Text="Добавить компанию" />
                    <dx:GridViewToolbarItem Command="Edit" Text="Редактировать" />
                    <dx:GridViewToolbarItem Command="Delete" Text="Удалить" />

                    <dx:GridViewToolbarItem Command="ExpandDetailRow" Text="Сертификаты" DisplayMode="Text" BeginGroup="true" />
                    

                    <dx:GridViewToolbarItem Command="Refresh" BeginGroup="true" Alignment="Right" Text="Обновить" />
                    <dx:GridViewToolbarItem Command="ExportToXlsx" BeginGroup="true" Alignment="Right" Text="Экспорт в XLSX" />
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
               
    </dx:ASPxGridView>

    <asp:SqlDataSource ID="ReestrDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        
        SelectCommand="exec [u1390960_saadmin].[GetReestr]" 
        
        InsertCommand="insert into [u1390960_saadmin].[CompanyRegister] ([Creator], [CompanyName], [INN], [KPP], [OGRN], [LastName], [FirstName], [SecondName], [Phone], [Email], [RegisterDate], [City])
                       values (@UserGUID, @CompanyName, @INN, @KPP, @OGRN, @LastName, @FirstName, @SecondName, @Phone, @Email, @RegisterDate, @City)
        
        /*declare @ReestrID int = SCOPE_IDENTITY()

        if @LastCertificateNumber is not null
        begin

            insert into [u1390960_saadmin].[CertificateRegister] ([Number],[Creator],[CTypeID],[CompanyID],[BeginDate],[EndDate],[CStatus])
            values (@LastCertificateNumber,@UserGUID,1,@ReestrID,@RegisterDate,DATEADD(y,-1, @RegisterDate), 15)

        end*/
        
        " 
        
        DeleteCommand="delete from [u1390960_saadmin].[CompanyRegister] where ID = @ID
                       delete from [u1390960_saadmin].[CertificateRegister] where [CompanyID] = @ID " 
        
        UpdateCommand="update [u1390960_saadmin].[CompanyRegister]
                       SET CompanyName = @CompanyName
                         , INN = @INN
	                     , KPP = @KPP
	                     , OGRN = @OGRN
	                     , LastName = @LastName
	                     , FirstName = @FirstName
	                     , SecondName = @SecondName
	                     , Phone = @Phone
	                     , Email = @Email
	                     , RegisterDate = @RegisterDate
	                     , City = @City
                       WHERE ID = @ID">

        <InsertParameters>
            <asp:SessionParameter Name="UserGUID" SessionField="GUID" />
            <asp:Parameter Name="CompanyName" />
            <asp:Parameter Name="INN" />
            <asp:Parameter Name="KPP" />
            <asp:Parameter Name="OGRN" />
            <asp:Parameter Name="LastName" />
            <asp:Parameter Name="FirstName" />
            <asp:Parameter Name="SecondName" />            
            <asp:Parameter Name="Phone" />
            <asp:Parameter Name="Email" />
            <asp:Parameter Name="RegisterDate" />
            <asp:Parameter Name="City" />
           <%-- <asp:Parameter Name="LastCertificateNumber" />--%>
        </InsertParameters>

        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>

        <UpdateParameters>
            <asp:Parameter Name="ID" />
            <asp:Parameter Name="CompanyName" />
            <asp:Parameter Name="INN" />
            <asp:Parameter Name="KPP" />
            <asp:Parameter Name="OGRN" />
            <asp:Parameter Name="LastName" />
            <asp:Parameter Name="FirstName" />
            <asp:Parameter Name="SecondName" />            
            <asp:Parameter Name="Phone" />
            <asp:Parameter Name="Email" />
            <asp:Parameter Name="RegisterDate" />
            <asp:Parameter Name="City" />
        </UpdateParameters>

    </asp:SqlDataSource>
        

    <asp:SqlDataSource ID="CertificateDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        
        SelectCommand="exec [u1390960_saadmin].[GetCertificates] @ID" 
        
        InsertCommand="insert into [u1390960_saadmin].[CertificateRegister] ([Number],[Creator],[CTypeID],[CompanyID],[BeginDate],[EndDate],[CIndex],[CStatus],[Summa])
                       values (@Number,@Creator,@CTypeID,@CompanyID,isnull(@BeginDate, convert(date,getdate())),isnull(@EndDate, DATEADD(y,-1, isnull(@BeginDate, convert(date, getdate()) )  )),@CIndex, isnull(@CStatus,15),@Summa)" 
        
        DeleteCommand="delete from [u1390960_saadmin].[CertificateRegister] where ID = @ID" 
        
        UpdateCommand="update [u1390960_saadmin].[CertificateRegister]
                       set Number = @Number
                         , CTypeID = @CTypeID
                         , BeginDate = @BeginDate
                         , EndDate = @EndDate
                         , CIndex = @CIndex
                         , CStatus = @CStatus
                         , Summa = @Summa
                       WHERE ID = @ID">
        
        <SelectParameters>
            <asp:SessionParameter Name="ID" SessionField="CompanyID" />
        </SelectParameters>

        <InsertParameters>
            <asp:SessionParameter Name="Creator" SessionField="GUID" />
            <asp:Parameter Name="Number" />
            <asp:Parameter Name="CTypeID" />
            <asp:SessionParameter Name="CompanyID" SessionField="CompanyID" />
            <asp:Parameter Name="BeginDate" />
            <asp:Parameter Name="EndDate" />
            <asp:Parameter Name="CIndex" />
            <asp:Parameter Name="CStatus" />            
            <asp:Parameter Name="Summa" />
        </InsertParameters>

        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>

        <UpdateParameters>
            <asp:Parameter Name="Number" />
            <asp:Parameter Name="CTypeID" />
            <asp:Parameter Name="BeginDate" />
            <asp:Parameter Name="EndDate" />
            <asp:Parameter Name="CIndex" />
            <asp:Parameter Name="CStatus" />            
            <asp:Parameter Name="Summa" />
        </UpdateParameters>

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="CTypeDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        SelectCommand="select ID, Name from [u1390960_saadmin].[CertificateTypes]" />

    <asp:SqlDataSource ID="CStatusDS" runat="server" ConnectionString='<%$ ConnectionStrings:nsagovConnectionString %>' 
        SelectCommand="select ID, MetaName from [u1390960_saadmin].[MetaNamesTable] where Category = 'Статус сертификата'" />

    <script type="text/javascript">

        function INNVal(s, e) {
            var name = e.value;
            if (name == null)
                return;
            if (name.length != 10 && name.length != 12)
                e.isValid = false;
        }

        //function SetVisibleCNumber(s, e) {

        //    var c = document.getElementsByClassName('captstyle');

        //    if (ReestrGrid.IsNewRowEditing() == false) {
        //        s.SetVisible(0);
        //        c[0].style.display = 'none';  
        //    }
        //}

    </script>

</asp:Content>
