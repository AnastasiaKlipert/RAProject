<%@ Page Title="Заказчикам закупок" Language="vb" AutoEventWireup="false" MasterPageFile="~/Outer.Master" CodeBehind="Customers.aspx.vb" Inherits="RusAccreditation.Customers" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">


        .arrow {
            border: solid white;
            border-width: 0 3px 3px 0;
            display: inline-block;
            padding: 4px;
        }

        .right {
            transform: rotate(-45deg);
            -webkit-transform: rotate(-45deg);
        }

        .left {
            transform: rotate(135deg);
            -webkit-transform: rotate(135deg);
        }

        .up {
            transform: rotate(-135deg);
            -webkit-transform: rotate(-135deg);
        }

        .down {
            transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
        }

        .qStyle {
            line-height: 1.5;
            font-family: Montserrat700;
            font-size: 18px;
            padding: 0px;
            color: #2F3A43;
        }

        .textStyle {
            text-align: justify;
        }

        table {
            border: 1px solid white;
            border-collapse: collapse;
            font-size: 12px;
            width: 100%;
        }

        th, .tdStyle {
            border: 1px solid white;
            border-collapse: collapse;
            padding:10px;
        }

        thead {
            text-align: center;
            background-color: #ededed;
            /*color: #0645AD;*/

        }


        tr:hover td {background-color:#ededed;}


        .hiddenTR {
            visibility:collapse;

        }

        .flex-container {
            display: flex;
            flex-direction: row;
            background-color: transparent;
            flex-wrap: wrap;
            align-items:center;
        }

            .flex-container > div {
                padding: 20px;
                margin: 5px;
            }

        .rc1 {
            border-radius: 50px;
            background-color:#DADADA;
            width: 40px;
            height: 40px;
            padding:7px;
        }

        details > summary {
            /*list-style: none;*/
            line-height: 1.5;
            font-family: Montserrat600;
            font-size: 18px;
            text-align:justify;
        }


        /*details summary:before {
            content: '\f0fe';
            font-family: "Font Awesome 5 free";
            margin-right: 7px;
        }

        details[open] summary:before {
            content: '\f146';
        }*/

    </style>



    <h2 class="mb-5 abouth2class">Заказчикам закупок</h2>

    <div class="row mb-5" style="padding:0px 5px 0px 5px">

        <div class="d-none d-xl-flex">
            <div class="col-12 col-xl-8">                

                <div id="c1" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                        1. Что такое сертификат соответствия СДС «НРП» по СТО 111-2021 «Оценка деловой репутации поставщиков»?
                    </h3>
                    <p class="mb-3 textStyle">
                        Это сертификат соответствия, использующийся рядом государственных и муниципальных заказчиков как инструмент подтверждения деловой репутации, опыта и квалификации участников закупок.
                    </p>
                    <p class="mb-3 textStyle">
                        Сертификат соответствия по СТО 111-2021 «Оценка деловой репутации поставщиков» выдается участнику закупки по итогу успешной сертификации в  СДС «НРП», зарегистрированной в Росстандарте под № РОСС RU.З2505.04АВИ0
                    </p>
                </div>

                <div id="c2" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                        2. Почему заказчики закупок используют именно СДС «НРП», а не другие системы сертификации или источники информации?
                    </h3>
                    <p class="mb-3 textStyle">
                        Участник закупки при прохождении сертификации в СДС «НРП» предоставляет сведения об обеспеченности трудовыми ресурсами, их квалификации, услуг или поставок товаров, обеспеченности материально-техническими ресурсами (имущество). Все эти сведения подтверждаются участником закупки документально и проверяются нашими экспертами на достоверность. Именно поэтому реестр СДС «НРП» уникален, не имеет аналогов в России, а наличие сертификата соответствия СДС «НРП» у участника закупки может служить неким индикатором надежности для заказчика закупки.
                    </p>
                    <p class="mb-3 textStyle">
                        <i>Кроме этого стоит отметить, что использование реестра СДС «НРП», в отличие от остальных сервисов, абсолютно бесплатно для заказчиков закупок, а количество проверок потенциальных исполнителей не ограничено!</i>
                    </p>
                </div>

                <div id="c3" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                        3. Как применить сертификат соответствия СДС «НРП» при проведении закупки?
                    </h3>
                    <p class="mb-3 textStyle">
                        Заказчик закупки вправе установить сертификат соответствия СДС «НРП» по СТО 111-2021 «Оценка деловой репутации поставщиков» в качестве нестоимостного показателя «Деловая репутация» критерия «Квалификация участников закупки», однако сертификат соответствия СДС «НРП» не может быть установлен заказчиком закупки в качестве обязательного требования.
                    </p>
                    <p class="mb-3 textStyle">
                        При этом, устанавливая величину значимости нестоимостных критериев оценки заявок, необходимо руководствоваться таблицей предельных величин значимости критериев, являющейся <a href="http://pravo.gov.ru/proxy/ips/?docbody=&nd=102169427" style="text-decoration:none" target="_blank">приложением к ПП РФ от 28.11.2013 №1085</a> или положением о закупках.
                    </p>

                    <table class="table-main">
                        <thead>
                            <tr>
                                <th colspan="3">
                                    Предельные величины значимости критериев оценки
                                </th>
                            </tr>
                            <tr>
                                <th>Закупки</th>
                                <th>минимальная значимость стоимостных критериев, %</th>
                                <th>максимальная значимость нестоимостных критериев, %</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="tdStyle"><strong>Товары</strong></td>
                                <td class="tdStyle" style="text-align:center">70</td>
                                <td class="tdStyle" style="text-align: center">30</td>
                            </tr>
                            <tr>
                                <td class="tdStyle"><strong>Работы, услуги</strong></td>
                                <td class="tdStyle" style="text-align:center">60</td>
                                <td class="tdStyle" style="text-align:center">40</td>
                            </tr>
                            <tr class="hiddenTR">
                                <th colspan="3">
                                    Отдельные виды товаров, работ, услуг:
                                </th>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Разработка документов, регламентирующих обучение, воспитание, контроль качества образования в соответствии с законодательством РФ в области образования</td>
                                <td class="tdStyle" style="text-align:center">40</td>
                                <td class="tdStyle" style="text-align:center">60</td>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Выполнение аварийно-спасательных работ</td>
                                <td class="tdStyle" style="text-align:center">40</td>
                                <td class="tdStyle" style="text-align:center">60</td>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Проведение реставрации объектов культурного наследия (памятников истории и культуры) народов РФ</td>
                                <td class="tdStyle" style="text-align:center">40</td>
                                <td class="tdStyle" style="text-align:center">60</td>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Оказание медицинских услуг, образовательных услуг (обучение, воспитание), юридических услуг</td>
                                <td class="tdStyle" style="text-align:center">40</td>
                                <td class="tdStyle" style="text-align:center">60</td>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Оказание услуг по проведению экспертизы, аудиторских услуг</td>
                                <td class="tdStyle" style="text-align:center">30</td>
                                <td class="tdStyle" style="text-align:center">70</td>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Оказание услуг специализированной организации</td>
                                <td class="tdStyle" style="text-align:center">40</td>
                                <td class="tdStyle" style="text-align:center">60</td>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Работы по созданию, развитию, обеспечению функционирования и обслуживанию государственных (муниципальных) информационных систем, официальных сайтов государственных (муниципальных) органов, учреждений</td>
                                <td class="tdStyle" style="text-align:center">30</td>
                                <td class="tdStyle" style="text-align:center">70</td>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Создание произведений литературы и искусства</td>
                                <td class="tdStyle" style="text-align:center">0</td>
                                <td class="tdStyle" style="text-align:center">100</td>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Исполнение (как результат интеллектуальной деятельности), финансирование проката или показа национального фильма, выполнение научно-исследовательских, опытно-конструкторских или технологических работ</td>
                                <td class="tdStyle" style="text-align:center">20</td>
                                <td class="tdStyle" style="text-align:center">80</td>
                            </tr>
                            <tr class="hiddenTR">
                                <td class="tdStyle">Выполнение работ по строительству, реконструкции, капитальному ремонту особо опасных, технически сложных и уникальных объектов капитального строительства, а также искусственных дорожных сооружений, включенных в состав автомобильных дорог федерального, регионального или межмуниципального, местного значения</td>
                                <td class="tdStyle" style="text-align:center">80</td>
                                <td class="tdStyle" style="text-align:center">20</td>
                            </tr>                           
                        </tbody>
                    </table>

                    <div class="row mb-4">
                        <div class="col-4 offset-8" style="text-align:right">
                            <dx:ASPxButton ID="ExpandButton" ClientInstanceName="ExpandButton" runat="server" Text="Развернуть" RenderMode="Link" AutoPostBack="false" ForeColor="#0645AD" >
                                <ClientSideEvents Click="function(s,e){ExpandButtonClick();}" />
                            </dx:ASPxButton>
                        </div>
                    </div>

                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Схема использования
                    </h3>

                    <div class="flex-container">

                        <div style="flex: 40%; background-color: #D4FBC2; color: darkgreen; height: 180px;">
                            <p style="font-family: Montserrat700; line-height: 1.5; font-size: 12px; text-align: center">
                                Заказчик закупки
                            </p>
                            <p style="line-height: 1.5; font-size: 10px; text-align: justify">
                                Использует сертификат соответствия СДС "НРП" в документации закупки, указав его в качестве неценового показателя "Деловая репутация" критерия "Квалификация участников закупки". Использовать сертификат "НРП" в качестве обязательного требования не рекомендуется.
                            </p>
                        </div>
                        
                        <div style="flex:10%; text-align:center">
                            <div class="rc1" style="display:inline-block">                                
                                <i class="arrow right" style="margin-right:3px;" ></i>
                            </div>                            
                        </div>

                        <div style="flex:40%; background-color:#D4FBC2; color:darkgreen; height:180px;">
                            <p style="font-family:Montserrat700; line-height:1.5; font-size:12px; text-align:center">
                                Заказчик закупки
                            </p>
                            <p class="mb-0" style="line-height:1.5; font-size:10px; text-align:justify">
                                Публикует закупку (извещение) в виде:
                            </p>
                            <ul style="line-height:1.5; font-size:10px; text-align:justify">
                                <li>
                                    конкурса
                                </li>
                                <li>
                                    запроса цен
                                </li>
                                <li>
                                    запроса предложений
                                </li>
                            </ul>
                        </div>

                        <div style="flex:40%"></div>

                        <div style="flex:10%"></div>

                        <div style="flex:40%; text-align:center; padding:0px">
                            <p class="rc1" style="display:inline-block">                                
                                <i class="arrow down" style="margin-bottom:1px;" ></i>
                            </p>
                        </div>

                        <div style="flex:40%; background-color:#FFFDB2; color:darkred; height:180px;">
                            <p style="font-family:Montserrat700; line-height:1.5; font-size:12px; text-align:center">
                                Участник закупки
                            </p>
                            <p class="mb-0" style="line-height:1.5; font-size:10px; text-align:justify">
                                Подает заявку на участие в закупке, прилагает сертификат соответствия СДС "НРП" в пакете документов
                            </p>                            
                        </div>

                        <div style="flex:10%; text-align:center">
                            <div class="rc1" style="display:inline-block">                                
                                <i class="arrow left" style="margin-left:3px;" ></i>
                            </div>
                        </div>

                        <div style="flex:40%; background-color:#FFFDB2; color:darkred; height:180px;">
                            <p style="font-family:Montserrat700; line-height:1.5; font-size:12px; text-align:center">
                                Участник закупки
                            </p>
                            <p class="mb-0" style="line-height:1.5; font-size:10px; text-align:justify">
                                При заинтересованности в данной закупке:
                            </p>
                            <ul style="line-height:1.5; font-size:10px; text-align:justify">
                                <li>
                                    готовит заявку на участие
                                </li>
                                <li>
                                    проходит проверку в СДС "НРП"
                                </li>
                                <li>
                                    получает сертификат соответствия СДС "НРП"
                                </li>
                            </ul>
                        </div>                        
                        
                        <div style="flex:40%; text-align:center; padding:0px;">
                            <p class="rc1" style="display:inline-block">                                
                                <i class="arrow down" style="margin-bottom:1px;" ></i>
                            </p>                            
                        </div>
                        <div style="flex:10%"></div>
                        <div style="flex:40%"></div>

                        <div style="flex:40%; background-color:#D4FBC2; color:darkgreen; height:180px;">
                            <p style="font-family:Montserrat700; line-height:1.5; font-size:12px; text-align:center">
                                Заказчик закупки
                            </p>
                            <ul style="line-height:1.5; font-size:10px; text-align:justify">
                                <li>
                                    рассматривает и проверяет поступившие заявки
                                </li>
                                <li>
                                    проверяет наличие сертификата соответствия СДС "НРП" у каждого участника закупки
                                </li>
                                <li>
                                    бесплатно проверяет участников закупки в реестре на сайте http://nsagov.ru
                                </li>
                                <li>
                                    в пару кликов выбирает наиболее квалифицированного участника
                                </li>
                            </ul>
                        </div>

                        <div style="flex: 10%; text-align: center">
                            <div class="rc1" style="display: inline-block">
                                <i class="arrow right" style="margin-right:3px;"></i>
                            </div>
                        </div>
                        
                        <div style="flex:40%; background-color:#CCE9F3; color:darkblue; height:180px;">
                            <p style="font-family:Montserrat700; line-height:1.5; font-size:12px; text-align:center">
                                Результат
                            </p>
                            <p class="mb-0" style="line-height:1.5; font-size:10px; text-align:justify">
                                Заказчик закупки заключает договор с наиболее квалифицированным, проверенным участником закупки
                            </p>                            
                        </div>
                    </div>

                   <%-- <div class="d-flex flex-column align-items-center">
                        <img style="width:1000px; max-height:100%; max-width:100%; padding:0px;" src="../Content/Images/CustomersQuestionsSchema.svg" />
                    </div>--%>

                </div>

                <div id="c4" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                        4. Сколько баллов присвоить участнику закупки за сертификат соответствия СДС «НРП»?
                    </h3>
                    <p class="mb-3 textStyle">
                        За наличие у участника закупки сертификата соответствия СДС «НРП» заказчик закупки вправе присвоить дополнительные баллы при оценке показателя «Квалификация участника закупки». При оценке показателей, не связанных с ценой, количество баллов может вычисляться по формулам. Каждый заказчик закупки может использовать свои, но чаще всего формулы берутся из <a href="http://pravo.gov.ru/proxy/ips/?docbody=&nd=102169427" target="_blank" style="text-decoration:none">ПП РФ от 28.11.2013 №1085</a>.
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Если закупка проводится в рамках Федерального закона № 223-ФЗ
                    </h3>
                    <p class="mb-3 textStyle">
                        Заказчик закупки вправе самостоятельно определять количество баллов, которое следует присвоить участнику закупки за предоставленный сертификат соответствия СДС «НРП», как правило, руководствуясь положениям о закупках, при этом заказчику закупки также рекомендуется руководствоваться <a href="http://pravo.gov.ru/proxy/ips/?docbody=&nd=102169427" target="_blank" style="text-decoration:none">приложением к ПП РФ от 28.11.2013 №1085</a>.
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Если закупка проводится в рамках Федерального закона № 44-ФЗ
                    </h3>
                    <p class="mb-3 textStyle">
                        Заказчик закупки должен руководствоваться <a href="http://pravo.gov.ru/proxy/ips/?docbody=&nd=102169427" target="_blank" style="text-decoration:none">ПП РФ от 28.11.2013 №1085</a>, а также нормами <a href="http://publication.pravo.gov.ru/Document/View/0001201304080023" target="_blank" style="text-decoration:none">Федерального закона №44-ФЗ </a>для определения количества баллов, которое следует присвоить участнику закупки за предоставленный сертификат соответствия СДС «НРП».
                    </p>
                    <p class="mb-3 textStyle">
                        <i>Одновременно с этим следует помнить, что отсутствие сертификата соответствия у участника закупки не может являться причиной для отклонения заявки!</i>
                    </p>
                </div>

                <div id="c5" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                        5. Как заказчику закупки указать (прописать) сертификат соответствия СДС «НРП» в качестве квалификационного критерия в документации закупки?
                    </h3>
                    <p class="mb-3 textStyle">
                        С момента своего создания СДС «НРП» используется при проведении государственных, муниципальных и коммерческих закупок. Заказчики закупок по-разному называют сертификат соответствия СДС «НРП», поэтому в документации закупок можно встретить различные варианты его названия. Мы собрали наиболее часто используемые:
                    </p>
                    <ul>
                        <li>
                            наличие у участника закупки действующего сертификата соответствия требованиям стандарта СТО 111-2021 «Оценка деловой репутации поставщиков»
                        </li>
                        <li>
                            наличие у участника закупки сертификата НРП (Независимый реестр поставщиков) РОСС RU.З2505.04АВИ0 
                        </li>
                    </ul>
                </div>

                <div id="c6" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                        6. Как заказчику закупки отвечать на поступающие запросы на разъяснение документации от участников закупки?
                    </h3>
                    <p class="mb-5 textStyle">
                        Сертификат соответствия СДС «НРП» используется относительно недавно в качестве инструмента подтверждения деловой репутации и квалификации участников закупок, поэтому бывают случаи, когда участники закупок направляют заказчику закупки запросы на разъяснение документации. При поступлении запросов на разъяснение документации возможно использование следующих вариантов ответов:
                    </p>
                    
                    <h3 class="mb-5" style="text-align:center; line-height:1.5;font-family: Montserrat600;color: #2F3A43; font-size:16px;">
                        Примеры ответов заказчиков на поступающие запросы на разъяснение документации закупок, проводимых в рамках Федерального закона № 223-ФЗ
                    </h3>
                    <h3 class="mb-5" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#E93353;">
                        Конкурс в электронной форме
                    </h3>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>По нашему мнению, наличие у участника сертификата, подтверждающего наличие участника в «Независимом реестре поставщиков», является ограничением конкуренции, так как для проверки надежности компаний существует «Реестр недобросовестных поставщиков». Просим вас удалить данные требования из критериев оценки заявок участников закупки.</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-5 textStyle">
                        <i>В регистре проверенных организаций (далее по тексту — НРП) отображаются самые обстоятельные сведения обо всех организациях. Информация предполагает использование для проведения строгой оценки возможностей и гарантий надёжности организации, поскольку перед оформлением сертификата НРП юридическое лицо подвергается проверке соответствия условиям различных органов: прокуратуры, ФАС России, ФНС России, профильных надзорных органов.</i>
                    </p>
                    <h3 class="mb-5" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#E93353;">
                        Запрос предложений (цен)
                    </h3>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>Просим разъяснить на основании чего установлено требование о предоставлении участником закупки сертификата независимого реестра поставщиков (НРП).</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-5 textStyle">
                        <i>На основании Положения о закупке заказчик имеет право устанавливать дополнительные требования к поставщику продукции и услуг. При этом данное условие не является ограничением конкуренции, ввиду того, что в данный реестр (НРП) включено более 1000 организаций.</i>
                    </p>
                    <h3 class="mb-5" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#E93353;">
                        Запрос котировок
                    </h3>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>Прошу дать разъяснения относительно сертификата Независимый реестр поставщиков. В каком нормативном документе изложена его юридическая сила? Какова его регуляторная мера воздействия на предмет закупки?</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-5 textStyle">
                        <i>Наличие сертификата добровольной сертификации подтверждает соответствие требованиям, предъявляемым участникам закупок согласно 44-ФЗ, 223-ФЗ, степени надежности фирмы, достаточного опыта, наличие ресурсов для оказания услуг надлежащего качества, наличия необходимых разрешительных документов, удостоверяет соответствующую деловую репутацию.</i>
                    </p>

                    <h3 class="mb-5" style="text-align:center; line-height:1.5;font-family: Montserrat600;color: #2F3A43; font-size:16px;">
                        Примеры ответов заказчиков на поступающие запросы на разъяснение документации закупок, проводимых в рамках Федерального закона № 44-ФЗ
                    </h3>
                    <h3 class="mb-5" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#E93353;">
                        Конкурс в электронной форме
                    </h3>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>Согласно Федеральному закону № 44-ФЗ, ПП РФ от 28.11.2013 № 1085 и ПП РФ от 04.02.2015 № 99 считаем, что показатель квалификации участника: «Деловая репутация участника закупки» (наличие у участника закупки сертификата соответствия стандарту СТО 111-2021 «Оценка деловой репутации поставщиков») выбран необоснованно и просим внести изменения в конкурсную документацию.</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>В рамках настоящей закупки требования к участникам закупки и критерии оценки заявок участников установлены в соответствии с требованиями Федерального закона № 44-ФЗ от 05.04.2013.</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>
                            Каким образом сертификат НРП, не имеющий никакого отношения к пищевому производству, может предотвратить нарушение СанПин 2.4.5.2409-08 или халатное отношение к организации питания на пищевом производстве?<br />
                            По каким параметрам данный сертификат подтверждает уровень квалификации участника закупки на оказание услуг по организации питания?<br />
                            При анализе каких данных вы пришли к мнению, что обладатели сертификата НРП добросовестно выполняют свои обязательства перед государством и клиентами?<br />
                            Получение участником закупки данного сертификата требует значительных временных и определенных финансовых затрат, зависит от воли третьих лиц и может рассматриваться как административный барьер, что в свою очередь, может оказать влияние на результат закупки, привести к невозможности стать победителем конкурса.
                        </i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>
                            Наличие у участника сертификата НРП подтверждает квалификацию участника торговой процедуры. Этот документ свидетельствует о том, что компания проверялась по разным параметрам независимым экспертом, что позволяет заметно уменьшить риски невыполнения или ненадлежащего исполнения взятых на себя обязательств по выполнению работ и услуг.<br />
                            Наличие документов, подтверждающих соответствие требованиям стандарта СТО 111-2021 «Оценка деловой репутации поставщиков» указано нами в критериях оценки заявок, а не в требованиях к участникам закупок, что не нарушает ст. 31 44-ФЗ от 05.04.2013 года.<br />
                            Критерии были составлены таким образом, что компания победитель должна быть высококвалифицированной компанией, подтверждающей свой профессионализм, документально наличием сертификатов указанных в критериях.<br />
                            Согласно п. 1 ч. 1 ст. 31 заказчик имеет право запросить сертификаты соответствия.
                        </i>
                    </p>
                </div>

                <div id="c7" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                        7. Практика рассмотрения жалоб в ФАС на установление сертификата соответствия СДС «НРП» в качестве квалификационного критерия в документации закупки
                    </h3>
                    <p class="mb-5 textStyle">
                        Встречаются случаи, когда проигравшие участники закупки подают жалобы в ФАС на действия заказчика закупки, полагая, что использование им сертификата соответствия СДС «НРП» в качестве инструмента подтверждения деловой репутации и квалификации неправомерно, однако практика рассмотрения подобных жалоб и решения контролирующего органа говорят об обратном.
                    </p>
                </div>

                <div class="mt-4" style="padding:30px; text-align:center">
                    <dx:ASPxButton ID="AboutSystem" runat="server" AutoPostBack="false" Text="Сертификация в СДС НРП" Paddings-Padding="5">
                            <ClientSideEvents Click="function(s,e){ var redirectWindow = window.open('../About.aspx', '_self'); }" />
                        </dx:ASPxButton>
                </div>

            </div>
            <div class="col-12 col-xl-4">
                <div style="position:sticky; top:30px;">
                    <div class="mb-4" style="padding:0px 16px 0px 40px">
                        <h6 class="mb-3" style="padding-left:20px;">
                            Выберите интересующий Вас вопрос:
                        </h6>
                        <ol class="mb-4" style="font-size:small; color:dimgray">
                            <li class="mb-3">
                                <a href="#c1" style="text-decoration:none; color:dimgray">Что такое сертификат соответствия СДС «НРП» по СТО 111-2021 «Оценка деловой репутации поставщиков»?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c2"style="text-decoration:none; color:dimgray">Почему заказчики закупок используют именно СДС «НРП», а не другие системы сертификации или источники информации?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c3" style="text-decoration:none; color:dimgray">Как применить сертификат соответствия СДС «НРП» при проведении закупки?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c4" style="text-decoration:none; color:dimgray">Сколько баллов присвоить участнику закупки за сертификат соответствия СДС «НРП»?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c5" style="text-decoration:none; color:dimgray">Как заказчику закупки указать (прописать) сертификат соответствия СДС «НРП» в качестве квалификационного критерия в документации закупки?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c6" style="text-decoration:none; color:dimgray">Как заказчику закупки отвечать на поступающие запросы на разъяснение документации от участников закупки?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c7" style="text-decoration:none; color:dimgray">Практика рассмотрения жалоб в ФАС на установление сертификата соответствия СДС «НРП» в качестве квалификационного критерия в документации закупки</a>
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="d-xl-none">
            <div class="col-12 mb-4">

                <details class="mb-5">
                    <summary>  
                        Что такое сертификат соответствия СДС «НРП» по СТО 111-2021 «Оценка деловой репутации поставщиков»?
                    </summary>
                    <div>
                        <hr class="mb-3" />
                        <p class="mb-3 textStyle">
                            Это сертификат соответствия, использующийся рядом государственных и муниципальных заказчиков как инструмент подтверждения деловой репутации, опыта и квалификации участников закупок.
                        </p>
                        <p class="mb-3 textStyle">
                            Сертификат соответствия по СТО 111-2021 «Оценка деловой репутации поставщиков» выдается участнику закупки по итогу успешной сертификации в  СДС «НРП», зарегистрированной в Росстандарте под № РОСС RU.З2505.04АВИ0
                        </p>
                    </div>
                </details>

                <details class="mb-5">
                    <summary>  
                        Почему заказчики закупок используют именно СДС «НРП», а не другие системы сертификации или источники информации?
                    </summary>
                    <div>
                        <hr class="mb-3" />
                    </div>
                    <p class="mb-3 textStyle">
                        Участник закупки при прохождении сертификации в СДС «НРП» предоставляет сведения об обеспеченности трудовыми ресурсами, их квалификации, услуг или поставок товаров, обеспеченности материально-техническими ресурсами (имущество). Все эти сведения подтверждаются участником закупки документально и проверяются нашими экспертами на достоверность. Именно поэтому реестр СДС «НРП» уникален, не имеет аналогов в России, а наличие сертификата соответствия СДС «НРП» у участника закупки может служить неким индикатором надежности для заказчика закупки.
                    </p>
                    <p class="mb-3 textStyle">
                        <i>Кроме этого стоит отметить, что использование реестра СДС «НРП», в отличие от остальных сервисов, абсолютно бесплатно для заказчиков закупок, а количество проверок потенциальных исполнителей не ограничено!</i>
                    </p>
                </details>
                                             
                <details class="mb-5">
                    <summary>  
                        Как применить сертификат соответствия СДС «НРП» при проведении закупки?
                    </summary>
                    <div>
                        <hr class="mb-3" />
                        <p class="mb-3 textStyle">
                            Заказчик закупки вправе установить сертификат соответствия СДС «НРП» по СТО 111-2021 «Оценка деловой репутации поставщиков» в качестве нестоимостного показателя «Деловая репутация» критерия «Квалификация участников закупки», однако сертификат соответствия СДС «НРП» не может быть установлен заказчиком закупки в качестве обязательного требования.
                        </p>
                        <p class="mb-3 textStyle">
                            При этом, устанавливая величину значимости нестоимостных критериев оценки заявок, необходимо руководствоваться таблицей предельных величин значимости критериев, являющейся <a href="http://pravo.gov.ru/proxy/ips/?docbody=&nd=102169427" style="text-decoration: none" target="_blank">приложением к ПП РФ от 28.11.2013 №1085</a> или положением о закупках.
                        </p>
                        <h3 class="mb-3" style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; color: #2F3A43;">
                            Схема использования
                        </h3>

                        <div class="flex-container">

                            <div style="flex:100%; background-color:#D4FBC2; color:darkgreen;">
                                <p style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; text-align: center">
                                    Заказчик закупки
                                </p>
                                <p style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    Использует сертификат соответствия СДС "НРП" в документации закупки, указав его в качестве неценового показателя "Деловая репутация" критерия "Квалификация участников закупки". Использовать сертификат "НРП" в качестве обязательного требования не рекомендуется.
                                </p>
                            </div>

                            <div style="flex: 100%; text-align: center; padding:0px;">
                                <i class="arrow down" style="margin-right: 1px; border-color:lightgray"></i>
                            </div>

                            <div style="flex: 100%; background-color: #D4FBC2; color: darkgreen">
                                <p style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; text-align: center">
                                    Заказчик закупки
                                </p>
                                <p class="mb-0" style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    Публикует закупку (извещение) в виде:
                                </p>
                                <ul style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    <li>конкурса
                                    </li>
                                    <li>запроса цен
                                    </li>
                                    <li>запроса предложений
                                    </li>
                                </ul>
                            </div>

                            <div style="flex: 100%; text-align: center; padding:0px;">
                                <i class="arrow down" style="margin-right: 1px; border-color:lightgray"></i>
                            </div>

                            <div style="flex: 100%; background-color: #FFFDB2; color: darkred">
                                <p style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; text-align: center">
                                    Участник закупки
                                </p>
                                <p class="mb-0" style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    При заинтересованности в данной закупке:
                                </p>
                                <ul style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    <li>готовит заявку на участие
                                    </li>
                                    <li>проходит проверку в СДС "НРП"
                                    </li>
                                    <li>получает сертификат соответствия СДС "НРП"
                                    </li>
                                </ul>
                            </div>

                            <div style="flex: 100%; text-align: center; padding:0px;">
                                <i class="arrow down" style="margin-right: 1px; border-color:lightgray"></i>
                            </div>

                            <div style="flex: 100%; background-color: #FFFDB2; color: darkred">
                                <p style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; text-align: center">
                                    Участник закупки
                                </p>
                                <p class="mb-0" style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    Подает заявку на участие в закупке, прилагает сертификат соответствия СДС "НРП" в пакете документов
                                </p>
                            </div>                            

                            <div style="flex: 100%; text-align: center; padding:0px;">
                                <i class="arrow down" style="margin-right: 1px; border-color:lightgray"></i>
                            </div>

                            <div style="flex: 100%; background-color: #D4FBC2; color: darkgreen">
                                <p style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; text-align: center">
                                    Заказчик закупки
                                </p>
                                <ul style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    <li>рассматривает и проверяет поступившие заявки
                                    </li>
                                    <li>проверяет наличие сертификата соответствия СДС "НРП" у каждого участника закупки
                                    </li>
                                    <li>бесплатно проверяет участников закупки в реестре на сайте http://nsagov.ru
                                    </li>
                                    <li>в пару кликов выбирает наиболее квалифицированного участника
                                    </li>
                                </ul>
                            </div>

                            <div style="flex: 100%; text-align: center; padding:0px;">
                                <i class="arrow down" style="margin-right: 1px; border-color:lightgray"></i>
                            </div>

                            <div style="flex: 100%; background-color: #CCE9F3; color: darkblue">
                                <p style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; text-align: center">
                                    Результат
                                </p>
                                <p class="mb-0" style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    Заказчик закупки заключает договор с наиболее квалифицированным, проверенным участником закупки
                                </p>
                            </div>

                        </div>

                    </div>
                    
                </details>
                                
                <details class="mb-5">
                    <summary>  
                        Сколько баллов присвоить участнику закупки за сертификат соответствия СДС «НРП»?
                    </summary>
                    <div>
                        <hr class="mb-3" />
                        <p class="mb-3 textStyle">
                        За наличие у участника закупки сертификата соответствия СДС «НРП» заказчик закупки вправе присвоить дополнительные баллы при оценке показателя «Квалификация участника закупки». При оценке показателей, не связанных с ценой, количество баллов может вычисляться по формулам. Каждый заказчик закупки может использовать свои, но чаще всего формулы берутся из <a href="http://pravo.gov.ru/proxy/ips/?docbody=&nd=102169427" target="_blank" style="text-decoration:none">ПП РФ от 28.11.2013 №1085</a>.
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Если закупка проводится в рамках Федерального закона № 223-ФЗ
                    </h3>
                    <p class="mb-3 textStyle">
                        Заказчик закупки вправе самостоятельно определять количество баллов, которое следует присвоить участнику закупки за предоставленный сертификат соответствия СДС «НРП», как правило, руководствуясь положениям о закупках, при этом заказчику закупки также рекомендуется руководствоваться <a href="http://pravo.gov.ru/proxy/ips/?docbody=&nd=102169427" target="_blank" style="text-decoration:none">приложением к ПП РФ от 28.11.2013 №1085</a>.
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Если закупка проводится в рамках Федерального закона № 44-ФЗ
                    </h3>
                    <p class="mb-3 textStyle">
                        Заказчик закупки должен руководствоваться <a href="http://pravo.gov.ru/proxy/ips/?docbody=&nd=102169427" target="_blank" style="text-decoration:none">ПП РФ от 28.11.2013 №1085</a>, а также нормами <a href="http://publication.pravo.gov.ru/Document/View/0001201304080023" target="_blank" style="text-decoration:none">Федерального закона №44-ФЗ </a>для определения количества баллов, которое следует присвоить участнику закупки за предоставленный сертификат соответствия СДС «НРП».
                    </p>
                    <p class="mb-3 textStyle">
                        <i>Одновременно с этим следует помнить, что отсутствие сертификата соответствия у участника закупки не может являться причиной для отклонения заявки!</i>
                    </p>
                    </div>
                    
                </details>

                <details class="mb-5">
                    <summary>  
                        Как заказчику закупки указать (прописать) сертификат соответствия СДС «НРП» в качестве квалификационного критерия в документации закупки?
                    </summary>
                    <div>
                        <hr class="mb-3" />
                        <p class="mb-3 textStyle">
                            С момента своего создания СДС «НРП» используется при проведении государственных, муниципальных и коммерческих закупок. Заказчики закупок по-разному называют сертификат соответствия СДС «НРП», поэтому в документации закупок можно встретить различные варианты его названия. Мы собрали наиболее часто используемые:
                        </p>
                        <ul>
                            <li>наличие у участника закупки действующего сертификата соответствия требованиям стандарта СТО 111-2021 «Оценка деловой репутации поставщиков»
                            </li>
                            <li>наличие у участника закупки сертификата НРП (Независимый реестр поставщиков) РОСС RU.З2505.04АВИ0 
                            </li>
                        </ul>
                    </div>
                    
                </details>

                <details class="mb-5">
                    <summary>  
                        Как заказчику закупки отвечать на поступающие запросы на разъяснение документации от участников закупки?
                    </summary>
                    <div>
                        <hr class="mb-3" />
                        <p class="mb-5 textStyle">
                        Сертификат соответствия СДС «НРП» используется относительно недавно в качестве инструмента подтверждения деловой репутации и квалификации участников закупок, поэтому бывают случаи, когда участники закупок направляют заказчику закупки запросы на разъяснение документации. При поступлении запросов на разъяснение документации возможно использование следующих вариантов ответов:
                    </p>
                    
                    <h3 class="mb-5" style="text-align:center; line-height:1.5;font-family: Montserrat600;color: #2F3A43; font-size:16px;">
                        Примеры ответов заказчиков на поступающие запросы на разъяснение документации закупок, проводимых в рамках Федерального закона № 223-ФЗ
                    </h3>
                    <h3 class="mb-5" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#E93353;">
                        Конкурс в электронной форме
                    </h3>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>По нашему мнению, наличие у участника сертификата, подтверждающего наличие участника в «Независимом реестре поставщиков», является ограничением конкуренции, так как для проверки надежности компаний существует «Реестр недобросовестных поставщиков». Просим вас удалить данные требования из критериев оценки заявок участников закупки.</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-5 textStyle">
                        <i>В регистре проверенных организаций (далее по тексту — НРП) отображаются самые обстоятельные сведения обо всех организациях. Информация предполагает использование для проведения строгой оценки возможностей и гарантий надёжности организации, поскольку перед оформлением сертификата НРП юридическое лицо подвергается проверке соответствия условиям различных органов: прокуратуры, ФАС России, ФНС России, профильных надзорных органов.</i>
                    </p>
                    <h3 class="mb-5" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#E93353;">
                        Запрос предложений (цен)
                    </h3>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>Просим разъяснить на основании чего установлено требование о предоставлении участником закупки сертификата независимого реестра поставщиков (НРП).</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-5 textStyle">
                        <i>На основании Положения о закупке заказчик имеет право устанавливать дополнительные требования к поставщику продукции и услуг. При этом данное условие не является ограничением конкуренции, ввиду того, что в данный реестр (НРП) включено более 1000 организаций.</i>
                    </p>
                    <h3 class="mb-5" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#E93353;">
                        Запрос котировок
                    </h3>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>Прошу дать разъяснения относительно сертификата Независимый реестр поставщиков. В каком нормативном документе изложена его юридическая сила? Какова его регуляторная мера воздействия на предмет закупки?</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-5 textStyle">
                        <i>Наличие сертификата добровольной сертификации подтверждает соответствие требованиям, предъявляемым участникам закупок согласно 44-ФЗ, 223-ФЗ, степени надежности фирмы, достаточного опыта, наличие ресурсов для оказания услуг надлежащего качества, наличия необходимых разрешительных документов, удостоверяет соответствующую деловую репутацию.</i>
                    </p>

                    <h3 class="mb-5" style="text-align:center; line-height:1.5;font-family: Montserrat600;color: #2F3A43; font-size:16px;">
                        Примеры ответов заказчиков на поступающие запросы на разъяснение документации закупок, проводимых в рамках Федерального закона № 44-ФЗ
                    </h3>
                    <h3 class="mb-5" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#E93353;">
                        Конкурс в электронной форме
                    </h3>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>Согласно Федеральному закону № 44-ФЗ, ПП РФ от 28.11.2013 № 1085 и ПП РФ от 04.02.2015 № 99 считаем, что показатель квалификации участника: «Деловая репутация участника закупки» (наличие у участника закупки сертификата соответствия стандарту СТО 111-2021 «Оценка деловой репутации поставщиков») выбран необоснованно и просим внести изменения в конкурсную документацию.</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>В рамках настоящей закупки требования к участникам закупки и критерии оценки заявок участников установлены в соответствии с требованиями Федерального закона № 44-ФЗ от 05.04.2013.</i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Запрос участника закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>
                            Каким образом сертификат НРП, не имеющий никакого отношения к пищевому производству, может предотвратить нарушение СанПин 2.4.5.2409-08 или халатное отношение к организации питания на пищевом производстве?<br />
                            По каким параметрам данный сертификат подтверждает уровень квалификации участника закупки на оказание услуг по организации питания?<br />
                            При анализе каких данных вы пришли к мнению, что обладатели сертификата НРП добросовестно выполняют свои обязательства перед государством и клиентами?<br />
                            Получение участником закупки данного сертификата требует значительных временных и определенных финансовых затрат, зависит от воли третьих лиц и может рассматриваться как административный барьер, что в свою очередь, может оказать влияние на результат закупки, привести к невозможности стать победителем конкурса.
                        </i>
                    </p>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Ответ заказчика закупки:
                    </h3>
                    <p class="mb-3 textStyle">
                        <i>
                            Наличие у участника сертификата НРП подтверждает квалификацию участника торговой процедуры. Этот документ свидетельствует о том, что компания проверялась по разным параметрам независимым экспертом, что позволяет заметно уменьшить риски невыполнения или ненадлежащего исполнения взятых на себя обязательств по выполнению работ и услуг.<br />
                            Наличие документов, подтверждающих соответствие требованиям стандарта СТО 111-2021 «Оценка деловой репутации поставщиков» указано нами в критериях оценки заявок, а не в требованиях к участникам закупок, что не нарушает ст. 31 44-ФЗ от 05.04.2013 года.<br />
                            Критерии были составлены таким образом, что компания победитель должна быть высококвалифицированной компанией, подтверждающей свой профессионализм, документально наличием сертификатов указанных в критериях.<br />
                            Согласно п. 1 ч. 1 ст. 31 заказчик имеет право запросить сертификаты соответствия.
                        </i>
                    </p>
                    </div>
                    
                </details>

                <details class="mb-5">
                    <summary>  
                        Практика рассмотрения жалоб в ФАС на установление сертификата соответствия СДС «НРП» в качестве квалификационного критерия в документации закупки
                    </summary>
                    <div>
                        <hr class="mb-3" />
                        <p class="mb-5 textStyle">
                            Встречаются случаи, когда проигравшие участники закупки подают жалобы в ФАС на действия заказчика закупки, полагая, что использование им сертификата соответствия СДС «НРП» в качестве инструмента подтверждения деловой репутации и квалификации неправомерно, однако практика рассмотрения подобных жалоб и решения контролирующего органа говорят об обратном.
                        </p>
                    </div>
                </details>

                <div style="text-align: center">
                    <dx:ASPxButton ID="AboutSystemMobile" runat="server" AutoPostBack="false" Text="Сертификация в СДС НРП" Paddings-Padding="5" Font-Size="Medium" Font-Names="Montserrat700">
                        <ClientSideEvents Click="function(s,e){ var redirectWindow = window.open('../About.aspx', '_self'); }" />
                    </dx:ASPxButton>
                </div>
            </div>
        </div>

    </div>
        
    <script type="text/javascript">

        function ExpandButtonClick() {

            var items = document.getElementsByClassName('hiddenTR');

            if (ExpandButton.GetText() == 'Развернуть') {

                for (let i = 0; i < items.length; i++) {
                    items[i].style.visibility = 'visible';
                }
                ExpandButton.SetText('Свернуть');
            }

            else if (ExpandButton.GetText() == 'Свернуть') {

                for (let i = 0; i < items.length; i++) {
                    items[i].style.visibility = 'collapse';
                }
                ExpandButton.SetText('Развернуть');
            }

        }

    </script>

</asp:Content>
