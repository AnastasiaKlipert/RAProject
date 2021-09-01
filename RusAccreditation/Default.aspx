<%@ Page Title="Независимая система аккредитации" Language="vb" AutoEventWireup="false" MasterPageFile="~/Outer.Master" CodeBehind="Default.aspx.vb" Inherits="RusAccreditation._Default" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <style type="text/css">



/*Слайдер*/

        * {
            box-sizing: border-box
        }

        .mySlides {
            display: none
        }

        img {
            vertical-align: middle;
        }


        .slideshow-container {
            max-width: 100%;
            position: relative;
            margin: 40px auto 40px auto;
        }


        /*.prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;


            color: red;

            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }


        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }


            .prev:hover, .next:hover {
                background-color: rgba(0,0,0,0.8);
            }*/


        /* The dots/bullets/indicators */
        
        
        
        .dot {
            cursor: pointer;
            height: 10px;
            width: 10px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

            .active, .dot:hover {
                background-color: #717171;
            }




/*Описание*/

        .infoItem {
            transition-duration: 0.6s;
            border-radius:15px;
            max-height:250px;
            margin:0 5px;
            position:relative;
        }

            .infoItem:hover {
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
            }

            .infoItem:active > .content {
                display:block;
            }

        .pnl {
            transition: ease-in-out 0.2s;
            height: 100%;
            background-color: #FFFFFF;
            border-radius: 10px;
            padding: 30px 20px 30px 10px; 
            position: relative;
            z-index: 10;
            overflow: hidden;
        }

            .pnl .icon {
                width: 40px;
                height: auto;
                margin-right: 20px;
                flex-shrink: 0;
            }


        .ContentShort {
            color: #AAAAAA;
            text-align: justify;
            font-size: smaller;
            line-height: 1.5;
            display: block;
            overflow: hidden;
        }

        .ContentFull {
            color: #AAAAAA;
            text-align: justify;
            font-size: smaller;
            line-height: 1.5;
            display: none;
            overflow: hidden;
        }

        .text h4 {
            margin-bottom:20px; 
            font-family:Montserrat600;
            font-size:medium; 
            line-height:1.4
        }

/*ФЗ*/

        .laws-block h3 {
            line-height: 1.5;
            font-family: Montserrat600;
            font-size:larger;
            padding: 0px;
        }

        .laws-block .panel {
            background-color: #F6F6F6;
            border-radius: 10px;
            position: relative;
            z-index: 10;
            overflow: hidden;
            transition-duration: 0.6s;
        }

            .laws-block .panel:hover {
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
            }

            .laws-block .panel .bg-text {
                font-family: "Montserrat700";
                color: #ffffff;
                position: absolute;
                z-index: -1;
                font-size: 7.15rem;
                right: -10px;
                bottom: -50px;
                user-select: none;
            }

        .FZtext {
            color: #AAAAAA;
            text-align: justify;
            font-size: smaller;
            line-height: 1.5;
            overflow: hidden;            
        }

        a.panel:not(.blue) h4 {
            color: #2F3A43 !important;
            margin-bottom: 5px;
        }

        a.panel:link {
            text-decoration:none;
        }

    </style>


    <%-- Слайдер --%>
    <div class="slideshow-container">

        <div class="mySlides">
            <a href="https://fsa.gov.ru/press-center/news/13490/" target="_blank">
                <img src="Content/Images/MainBanner1.png" style="width: 100%">
            </a>            
        </div>

        <div class="mySlides">
            <a href="https://fsa.gov.ru/press-center/covid-19/" target="_blank">
                <img src="Content/Images/MainBanner2.jpeg" style="width: 100%">
            </a>            
        </div>

<%--        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>--%>

        <div style="text-align: center; margin-top: 20px;">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
        </div>

    </div>




    <%-- Описание --%>
    <div class="row mb-5 flex-xl-nowrap flex-wrap">

        <div class="col-12 col-xl-4" style="position:relative">
       

        <div id="Item1" class="infoItem" style=" margin-bottom: 20px; " onclick="openContent(1)">  

            <div id="Panel1" class="pnl d-flex">
                <div class="icon">
                    <img src="Content/Icons/certification_privilleges.svg" alt="" style="max-height:100%; max-width:100%;" />
                </div>
                <div class="text">
                    <h4>
                        Преимущества системы
                    </h4>
                    <p id="ContentShort1" class="ContentShort">
                        Необходимость разработки системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») была продиктована, во-первых, проблемами неопределенности при...
                    </p>
                    <p id="ContentFull1" class="ContentFull">
                        Необходимость разработки системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») была продиктована, во-первых, проблемами неопределенности при проведении оценки квалификации участников закупок, проводимых по Федеральным законам № 44-ФЗ, 223-ФЗ, 53-ФЗ, 275-ФЗ, а во-вторых, необходимостью реализации регламентов о должной осмотрительности, разработанных Федеральной налоговой службой.
                        <br /><br />
                        Кроме того, при разработке системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») нашими специалистами были изучены и учтены мнения различных государственных заказчиков на предмет того, каким бы они хотели видеть своего исполнителя и какие критерии проверки к нему необходимо применить.
                        <br /><br />
                        Деятельность системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП»), также, направлена на выявление и поддержку наиболее качественных товаров и услуг на территории Российской Федерации и помогает организации или индивидуальному предпринимателю подтвердить свою состоятельность и ответственность перед заказчиком.
                    </p>
                </div>
            </div>

        </div>

         </div>

        <div class="col-12 col-xl-4" style="position:relative">

        

        <div id="Item2" class="infoItem" style="margin-bottom:20px;" onclick="openContent(2)">
            
            <div id="Panel2" class="pnl d-flex">
                <div class="icon">
                    <img src="Content/Icons/business_model.svg" alt="" style="max-height:100%; max-width:100%;" />
                </div>
                <div class="text">
                    <h4>
                        СТО 111-2021
                    </h4>
                    <p id="ContentShort2" class="ContentShort">
                        Специалистами системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») постоянно разрабатываются и совершенствуются стандарты, по которым...
                    </p>
                    <p id="ContentFull2" class="ContentFull">
                        Специалистами системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») постоянно разрабатываются и совершенствуются стандарты, по которым осуществляется проверка на соответствие организации или индивидуального предпринимателя требованиям системы.
                        <br /><br />
                        В 2020 году нашими специалистами был разработан стандарт организации СТО 111-2021 «Оценка деловой репутации поставщиков». Важнейшей миссией нового стандарта является поддержка надежных и добросовестных компаний с целью создания благоприятных условий для осуществления перспективных многосторонних проектов развития государственночастного партнерства и повышения эффективности исполнения госзаказов.
                    </p>
                </div>
            </div>

        </div>

        </div>
        
        <div class="col-12 col-xl-4" style="position:relative">

        

        <div id="Item3" class="infoItem" style="margin-bottom:20px" onclick="openContent(3)">
            
            <div id="Panel3" class="pnl d-flex">
                <div class="icon">
                    <img src="Content/Icons/description.svg" alt="" style="max-height:100%; max-width:100%;" />
                </div>
                <div class="text">
                    <h4>
                        Реестр системы
                    </h4>
                    <p id="ContentShort3" class="ContentShort">
                        На базе системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») создан специализированный реестр организаций и индивидуальных...
                    </p>
                    <p id="ContentFull3" class="ContentFull">
                        На базе системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») создан специализированный реестр организаций и индивидуальных предпринимателей, прошедших процедуру сертификации и подтвердивших свое соответствие стандартам системы.
                        <br /><br />
                        В данном реестре содержится информация, являющаяся логическим описанием бизнеса с точки зрения системы, призванная помочь устойчивому ведению операционной деятельности организации или индивидуальному предпринимателю. Информация, содержащаяся в реестре, может быть актуализирована в течение всего срока действия сертификата соответствия (1 календарный год) как по инициативе компании-заявителя, так и по инициативе Центрального органа по сертификации.
                    </p>
                </div>
            </div>

        </div>
    
        
        </div>

        </div>


    <%-- ФЗ --%>

    <div class="row mb-5">
        <div class="col-12 laws-block">
            <h3 class="mb-5">
                Федеральное законодательство и нормативные акты
            </h3>

            <div class="row">
                <div class="col-12 col-xl-4 mb-2 mb-xl-4">
                    <a href="http://www.consultant.ru/document/cons_doc_LAW_116964/" target="_blank" class="d-flex align-items-center panel">
                        <div class="bg-text">223</div>
                        <div class="text">
                            <h4 class="d-none d-xl-block">223 Федеральный закон</h4>
                            <h4 class="d-block d-xl-none">223-ФЗ</h4>
                            <p class="FZtext">
                                «О закупках товаров, работ, услуг отдельными видами юридических лиц» от 18.07.2011 № 223-ФЗ
                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-xl-4 mb-2 mb-xl-4">
                    <a href="http://www.consultant.ru/document/cons_doc_LAW_144624/be7f337d9b35705ac035531878c8d15c2b09b36d/" target="_blank" class="d-flex align-items-center panel">
                        <div class="bg-text">44</div>
                        <div class="text">
                            <h4 class="d-none d-xl-block">44 Федеральный закон</h4>
                            <h4 class="d-block d-xl-none">44-ФЗ</h4>
                            <p class="FZtext">
                                «О контрактной системе в сфере закупок» от 05.04.2013 № 44-ФЗ
                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-xl-4 mb-2 mb-xl-4">
                    <a href="http://www.consultant.ru/document/cons_doc_LAW_140175/" target="_blank" class="d-flex align-items-center panel">
                        <div class="bg-text">257</div>
                        <div class="text">
                            <h4 class="d-none d-xl-block">257 Федеральный закон</h4>
                            <h4 class="d-block d-xl-none">257-ФЗ</h4>
                            <p class="FZtext">
                                «О государственном оборонном заказе» от 29.12.2012 № 257-ФЗ
                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-xl-4 mb-2 mb-xl-4">
                    <a href="http://www.consultant.ru/document/cons_doc_LAW_40241/" target="_blank" class="d-flex align-items-center panel">
                        <div class="bg-text">184</div>
                        <div class="text">
                            <h4 class="d-none d-xl-block">184 Федеральный закон</h4>
                            <h4 class="d-block d-xl-none">184-ФЗ</h4>
                            <p class="FZtext">
                                «О техническом регулировании» от 27.12.2002 № 184-ФЗ (последняя редакция)
                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-xl-4">
                    <a href="http://www.consultant.ru/document/cons_doc_LAW_5108/" target="_blank" class="d-flex align-items-center panel">
                        <div class="bg-text">53</div>
                        <div class="text">
                            <h4 class="d-none d-xl-block">53 Федеральный закон</h4>
                            <h4 class="d-block d-xl-none">53-ФЗ</h4>
                            <p class="FZtext">
                                «О закупках и поставках сельскохозяйственной продукции» от 02.12.1994 № 53-ФЗ
                            </p>
                        </div>
                    </a>
                </div>
            </div>

        </div> 
    </div>



    <script type="text/javascript">       

        //Слайдер

           var slideIndex = 0;
           showSlides();

           function plusSlides(n) {
               showSlides(slideIndex += n);
           }

           function showSlides() {
               var i;
               var slides = document.getElementsByClassName("mySlides");
               var dots = document.getElementsByClassName("dot");
               for (i = 0; i < slides.length; i++) {
                   slides[i].style.display = "none";
               }
               slideIndex++;
               if (slideIndex > slides.length) { slideIndex = 1 }
               for (i = 0; i < dots.length; i++) {
                   dots[i].className = dots[i].className.replace(" active", "");
               }
               slides[slideIndex - 1].style.display = "block";
               dots[slideIndex - 1].className += " active";
               setTimeout(showSlides, 4000); 
           }

           function currentSlide(n) {
               showSlidesDot(slideIndex = n);
           }

           function showSlidesDot(n) {
               var i;
               var slides = document.getElementsByClassName("mySlides");
               var dots = document.getElementsByClassName("dot");
               if (n > slides.length) { slideIndex = 1 }
               if (n < 1) { slideIndex = slides.length }
               for (i = 0; i < slides.length; i++) {
                   slides[i].style.display = "none";
               }
               for (i = 0; i < dots.length; i++) {
                   dots[i].className = dots[i].className.replace(" active", "");
               }
               slides[slideIndex - 1].style.display = "block";
               dots[slideIndex - 1].className += " active";
           }



        //Описание

        function openContent(tabName) {

            var i, x, y;
            var j = Number(tabName) - 1;
            var k = Number(tabName);

            x = document.getElementsByClassName("ContentFull");
            for (i = 0; i < x.length; i++) {
                if (i != j) { x[i].style.display = "none"; };                
            }

            y = document.getElementsByClassName("ContentShort");
            for (i = 0; i < y.length; i++) {
                if (i != j) {
                    y[i].style.display = "block";
                };
            }

            if (document.getElementById('ContentShort' + tabName).style.display == 'none') {
                document.getElementById('ContentShort' + tabName).style.display = "block";
                document.getElementById('ContentFull' + tabName).style.display = "none";

                for (i = 1; i < 4; i++) {
                    if (i != k) {
                        document.getElementById('Item' + i).style.maxHeight = '250px';
                        document.getElementById('Item' + i).style.position = 'relative';
                        document.getElementById('Item' + i).style.zIndex = '10'
                    }
                    else {
                        document.getElementById('Item' + i).style.maxHeight = (document.getElementById('Panel' + tabName).scrollHeight + 30) + 'px';
                        document.getElementById('Item' + i).style.position = 'relative';
                        document.getElementById('Item' + i).style.zIndex = '10'
                    }
                }

            }
            else {
                document.getElementById('ContentShort' + tabName).style.display = "none";
                document.getElementById('ContentFull' + tabName).style.display = "block";

                for (i = 1; i < 4; i++) {
                    if (i != k) {
                        document.getElementById('Item' + i).style.maxHeight = '250px';
                        document.getElementById('Item' + i).style.position = 'relative';
                        document.getElementById('Item' + i).style.zIndex = '10'
                    }
                    else {
                        document.getElementById('Item' + i).style.maxHeight = (document.getElementById('Panel' + tabName).scrollHeight + 30) + 'px';
                        document.getElementById('Item' + i).style.position = 'absolute';
                        document.getElementById('Item' + i).style.zIndex = '999'
                    }
                }

            }

            
        }



    </script>
    




</asp:Content>
