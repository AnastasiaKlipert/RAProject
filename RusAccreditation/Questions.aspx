<%@ Page Title="Вопросы и ответы" Language="vb" AutoEventWireup="false" MasterPageFile="~/Outer.Master" CodeBehind="Questions.aspx.vb" Inherits="RusAccreditation.Questions" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">


        .img1 {
            height: 350px;
            width: auto;
            display: block;
            margin-left: auto;
            margin-right: -1px;
        }

        .img2 {
            height: 350px;
            width: auto;
            display: none;
            margin-left: auto;
            margin-right: -1px;
        }

        .img3 {
            height: 350px;
            width: auto;
            display: block;
            margin-right: auto;
            margin-left: -1px;
        }

        .img4 {
            height: 350px;
            width: auto;
            display: none;
            margin-right: auto;
            margin-left: -1px;
        }


        .pStyle {
            text-align: justify;
            transition-duration: 0.6s;
            line-height: 24px;
            font-size: 0.9rem;
        }

        .btnStyle {
            border: 0 !important;
            background-color: white;
            transition-duration: 0.6s;
            width: 100%;
        }

            .btnStyle:hover {
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
            }

                .btnStyle:hover h6 {
                    color: #E93353;
                }


                .btnStyle:hover .img1 {
                    display:none;
                }

                .btnStyle:hover .img2 {
                    display:block;
                }

                .btnStyle:hover .img3 {
                    display: none;
                }

                .btnStyle:hover .img4 {
                    display:block;
                }




        @media screen and (min-width: 1200px) {

            .h5style {
                text-align: justify;
                color: #2F3A43;
                font-family: Montserrat700;
                transition-duration: 0.6s;
            }

            .btnStyle {
                height:370px;
                padding: 0em;
            }

            .toCustomers{
                margin:auto 0;
                padding-left:30px; 
                padding-right:0px;
            }

            .toProviders{
                margin:auto 0;
                padding-left:0px; 
                padding-right:30px;
            }
        }


        @media screen and (max-width: 1199.98px) {

            .h5style {
                text-align: justify;
                color: #E93353;
                font-family: Montserrat700;
                transition-duration: 0.6s;
            }

            .btnStyle {
                height: 100%;
                padding: 3em;
            }

            .toCustomers {
                margin: auto 0;
                padding-left: 0px;
                padding-right: 0px;
            }

            .toProviders {
                margin: auto 0;
                padding-left: 0px;
                padding-right: 0px;
            }
        }  

        </style>


          

    <dx:ASPxFormLayout ID="qForm" runat="server" Width="100%" ColumnCount="2" Paddings-PaddingTop="40" Paddings-PaddingBottom="40" >
        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="1199" />
        <Styles>
            <LayoutGroup Cell-Paddings-Padding="0" />
        </Styles>
        <Items>
            <dx:LayoutItem ShowCaption="False">                
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                       
                        <div class="btnStyle" onclick="var redirectWindow = window.open('../Questions/Customers.aspx', '_self');">

                            <div class="container-fluid" style="padding-top:10px;">

                                <div class="row">

                                    <div class="col-12 col-xl-5 toCustomers">
                                        <h6 class="h5style mb-4">ЗАКАЗЧИКАМ</h6>

                                        <p class="pStyle">
                                            Вы заказчик и хотите, благодрая применению стандартов СДС «НРП» РОСС RU.З2505.04АВИ0 в составе документации закупок, работать с проверенными и надежными поставщиками (исполнителями)?                                
                                        </p>
                                    </div>

                                    <div class="col-12 col-xl-7 d-none d-xl-flex" style="padding: 0px;">
                                        <img src="Content/Images/customers_grey.png" class="img1" />
                                        <img src="Content/Images/customers_change.png" class="img2" />
                                    </div>
                                </div>

                            </div>                            

                        </div>

                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">

                        <div class="btnStyle" onclick="var redirectWindow = window.open('../Questions/Providers.aspx', '_self');">

                            <div class="container-fluid" style="padding-top: 10px;">

                                <div class="row">

                                    <div class="col-12 col-xl-7 d-none d-xl-flex" style="padding: 0px;">
                                        <img src="Content/Images/provider_grey.png" class="img3" />
                                        <img src="Content/Images/provider_change.png" class="img4" />
                                    </div>

                                    <div class="col-12 col-xl-5 toProviders">

                                        <h6 class="h5style mb-4">ПОСТАВЩИКАМ</h6>

                                        <p class="pStyle">
                                            Вы поставщик (исполнитель) и хотите чаще побеждать в закупках, продвигать свою продукцию или услуги? Вам интересно, как стандарты СДС «НРП» РОСС RU.З2505.04АВИ0 помогут в этом?                         
                                        </p>
                                    </div>

                                </div>

                            </div>

                        </div>

                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>


</asp:Content>
