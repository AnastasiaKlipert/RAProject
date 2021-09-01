<%@ Page Title="О системе" Language="vb" AutoEventWireup="false" MasterPageFile="~/Outer.Master" CodeBehind="About.aspx.vb" Inherits="RusAccreditation.About" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
            margin: 0px auto auto auto;
        }      
      


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

    </style>

    <div>

        <h2 class="mb-3 abouth2class">Сертификация в СДС «НРП» № РОСС RU.З2505.04АВИ0</h2>

        <div class="panel mb-3">
            <div class="row mb-2">
                <div class="col-lg-6 col-12">
                    <p style="text-align:justify">
                        Для решения проблемы неопределенности при проведении оценки квалификации участников закупок, проводимых по Федеральным законам № 44-ФЗ, 223-ФЗ, 53-ФЗ, 275-ФЗ, а также для реализации регламентов должной осмотрительности был создан Центральный орган по сертификации «Русаккредитация», силами специалистов которого была разработана система добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП»), зарегистрированная 01.08.2021 года Федеральным агентством по техническому регулированию и метрологии (Росстандарт) в едином реестре систем под № РОСС RU.З2505.04АВИ0
                    </p>
                </div>
                <div class="col-lg-6 col-12">
                    <p style="text-align:justify">
                        При разработке системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») нашими специалистами были изучены и учтены мнения различных государственных и частных заказчиков на предмет того, каким бы они хотели видеть своего исполнителя и какие критерии проверки к нему необходимо применить — именно поэтому система, разработанная нашими специалистами, пользуется признанием государственных, муниципальных и частных заказчиков.
                    </p>
                </div>
            </div>
        </div>

        <div class="panel mb-3">

            <h3 class="mb-4 abouth3class">Сертификат соответствия стандарту СТО 111-2021 «Оценка деловой репутации поставщиков»</h3>

            <div class="row mb-4" style="display:flex;">
                <div class="col-lg-7 col-12 mb-5 mb-lg-0">
                    <p class="mb-3" style="text-align:justify">
                        В идеале любому потребителю хотелось бы, чтобы необходимые работы или услуги всегда выполнялись на совесть, в срок, и, по возможности, недорого. Однако, зачастую компании пренебрегают своими прямыми обязанностями, что порождает недоверие среди клиентов по отношению к другим фирмам схожего профиля.
                    </p>
                    <p class="mb-3" style="text-align:justify">
                        В 2021 году нашими специалистами был разработан стандарт организации «Русаккредитация» СТО 111-2021 «Оценка деловой репутации поставщиков».
                    </p>
                    <p class="mb-3" style="text-align:justify">
                        Важнейшей миссией нового стандарта является поддержка надежных и добросовестных компаний с целью создания благоприятных условий для осуществления перспективных многосторонних проектов развития государственно-частного партнерства и повышения эффективности исполнения госзаказов и коммерческих закупок.
                    </p>
                    <p class="mb-3" style="text-align:justify">
                        В современных реалиях российского бизнеса для многих организаций и индивидуальных предпринимателей, занятых в той или иной сфере труда или производства — строительстве, металлургической и нефтехимической промышленности, медицинской отрасли и сфере общественного питания — получение того или иного сертификата соответствия становится не просто дополнением к регистрации и аккредитации, а осознанной необходимость.
                    </p>
                    <p class="mb-3" style="text-align:justify">
                        Сертификат соответствия стандарту СТО 111-2021 позволит субъекту предпринимательской деятельности доказать высокую деловую репутацию в вопросах поставок товаров, работ или услуг различных типов.
                    </p>
                    <p style="text-align:justify">
                        Получение сертификата соответствия стандарту СТО 111-2021 — своеобразный гарант, что компания или индивидуальный предприниматель работает на совесть, для них важно достижение наилучшего результата, что неотделимо от степени удовлетворенности заказчика результатом.
                    </p>
                </div>
                <div class="col-lg-5 col-12">
                    <div style="display:flex; justify-content:center; height:100%">

                       <%-- <a target="_blank" href="Content/Images/Certificate.svg">
                            <img style="height:500px; max-height:100%; max-width:100%; padding:0px;" src="Content/Images/Certificate.svg" />
                        </a>  --%>  
                        

                        <%-- Слайдер --%>
                        <div class="slideshow-container">

                            <div class="mySlides">
                                <a href="Content/Images/About01.png" target="_blank">
                                    <img src="Content/Images/About01.png" style="width: 100%">
                                </a>
                            </div>

                            <div class="mySlides">
                                <a href="Content/Images/About02.png" target="_blank">
                                    <img src="Content/Images/About02.png" style="width: 100%">
                                </a>
                            </div>

                            <div class="mySlides">
                                <a href="Content/Images/About03.png" target="_blank">
                                    <img src="Content/Images/About03.png" style="width: 100%">
                                </a>
                            </div>

                            <div class="mySlides">
                                <a href="Content/Images/About04.png" target="_blank">
                                    <img src="Content/Images/About04.png" style="width: 100%">
                                </a>
                            </div>

                            <div style="text-align: center; margin-top: 20px;">
                                <span class="dot" onclick="currentSlide(1)"></span>
                                <span class="dot" onclick="currentSlide(2)"></span>
                                <span class="dot" onclick="currentSlide(3)"></span>
                                <span class="dot" onclick="currentSlide(4)"></span>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="panel mb-3">

            <h3 class="mb-4 abouth3class">Порядок применения знака соответствия СДС «НРП»</h3>

            <div class="row mb-4">

                <div class="col-lg-6 col-12">
                    <p class="mb-3" style="text-align:justify">
                        Субъект предпринимательской деятельности, подтвердивший свое соответствие требованиям системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») и стандарта СТО 111-2021 вправе применять Знак системы (далее — знак).
                    </p>
                    <p class="mb-3" style="text-align:justify">
                        Правообладателем знака является ООО «Русаккредитация» (ИНН 2366027216).
                    </p>
                    <p class="mb-3" style="text-align:justify">
                        Разрешение на использование знака выдается одновременно с сертификатом соответствия, экспертным заключением и дает право на размещении знака на маркирование сопроводительной документации, рекламной продукции, договоров (контрактов), фирменных бланков предприятий и т.п.
                    </p>
                    <p class="mb-3" style="text-align:justify">
                        Знак системы представляет собой сочетание букв «р» и «п», вписанных в букву «Н».
                    </p>
                    <p class="mb-3" style="text-align:justify">
                        Размеры Знака соответствия устанавливаются лицом, получившим разрешение на применение Знака соответствия, с сохранением пропорций. Размер знака Системы должен гарантировать четкость и различимость его элементов невооруженным глазом.
                    </p>
                    <p class="mb-3" style="text-align:justify">
                        Разрешение на применение знака Системы выдается на срок, не превышающий срока действия сертификата.
                    </p>
                </div>

                <div class="col-lg-6 col-12">

                    <p style="text-align: justify; margin-bottom:5px;">
                        Организация – держатель сертификата и знака Системы не должна:
                    </p>
                    <ul>
                        <li style="text-align:justify">
                            наносить знак соответствия на продукцию, тару, упаковку продукции, этикетки, отчеты лабораторных исследований, поверки или испытаний, или использовать его иным способом, который может быть истолкован как подтверждение соответствия качества продукции;
                        </li>
                        <li style="text-align:justify">
                            распространять знак Системы на деятельность, не охваченную областью сертификации;
                        </li>
                        <li style="text-align:justify">
                            ссылаться на сертификат и использовать знак Системы при приостановлении, отмене или окончании срока действия сертификата.
                        </li>
                    </ul>   
                    <p style="text-align: justify">
                        Изображение знака на вывесках и рекламных щитах должна наноситься полностью и способом, не искажающим изображение знака.
                    </p>
                    
                    <div style="display:flex; justify-content:center; height:100%">
                        <img style="height:180px; max-height:100%; max-width:100%" src="Content/Images/Stamp2.svg" />
                    </div>

                </div>

            </div>            

        </div>

        <div class="mb-5" >

            <section style="text-align: center">

                <dx:ASPxButton ID="AboutSendRequestButton" runat="server" AutoPostBack="false" Text="Подать заявку" UseSubmitBehavior="true" Theme="MaterialCompact" BackColor="#E93353"
                    Font-Size="Large" Style="padding: 5px 15px 5px 15px">
                    <ClientSideEvents Click="function(s,e){ AboutSendRequestButtonClick(); }" />
                </dx:ASPxButton>

            </section>

        </div>

    </div>


    <script type="text/javascript">

        function AboutSendRequestButtonClick() {

            HiddenField.Set('Source', 'О системе');
            RequestFormPopup.Show();
        }

        //Слайдер

        var slideIndex = 1;
        currentSlide(1);

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


    </script>

</asp:Content>
