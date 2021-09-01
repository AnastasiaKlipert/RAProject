<%@ Page Title="Участникам закупок" Language="vb" AutoEventWireup="false" MasterPageFile="~/Outer.Master" CodeBehind="Providers.aspx.vb" Inherits="RusAccreditation.Providers" %>

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

        .flex-container {
            display: flex;
            flex-direction: row;
            background-color: transparent;
            flex-wrap: wrap;
            align-items:center;
        }       

            .flex-container > div {
                padding: 20px;
                margin:5px;
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

    </style>


    <h2 class="mb-5 abouth2class">Участникам закупок</h2>

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
                        2. Как приобрести сертификат соответствия СДС «НРП»?
                    </h3>
                    <h3 class="mb-3" style="font-family:Montserrat700; line-height:1.5; font-size:14px; color:#2F3A43;">
                        Схема получения и использования
                    </h3>

                    <div class="flex-container">

                        <div style="flex: 40%; background-color: #D4FBC2; color: darkgreen; height: 180px;">
                            <p style="font-family: Montserrat700; line-height: 1.5; font-size: 12px; text-align: center">
                                Заказчик закупки
                            </p>
                            <p style="line-height: 1.5; font-size: 10px; text-align: justify">
                                Использует сертификат соответствия СДС «НРП» в документации закупки, указав его в качестве неценового показателя «Деловая репутация» критерия «Квалификация участников закупки».
                            </p>
                        </div>
                        
                        <div style="flex:10%; text-align:center">
                            <div class="rc1" style="display:inline-block">                                
                                <i class="arrow right" style="margin-right:3px;" ></i>
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
                                    обращается в аккредитованные  СДС «НРП» представительства
                                </li>
                                <li>
                                    проходит проверку в СДС «НРП»
                                </li>
                                <li>
                                    получает сертификат соответствия СДС «НРП»
                                </li>
                                <li>
                                    готовит заявку на участие
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
                                Подает заявку на участие в закупке, прилагает сертификат соответствия СДС "НРП" в пакете документов
                            </p>                            
                        </div>
                        
                        <div style="flex:40%; text-align:center; padding:0px;">
                            <p class="rc1" style="display:inline-block">                                
                                <i class="arrow down" style="margin-bottom:1px;" ></i>
                            </p>                            
                        </div>
                        <div style="flex:10%"></div>
                        <div style="flex:40%"></div>

                        <div style="flex:40%; background-color:#CCE9F3; color:darkblue; height:180px;">
                            <p style="font-family:Montserrat700; line-height:1.5; font-size:12px; text-align:center">
                                Результат
                            </p>
                            <p class="mb-0" style="line-height:1.5; font-size:10px; text-align:justify">
                                Заказчик закупки заключает договор с наиболее квалифицированным, проверенным участником закупки
                            </p>                            
                        </div>

                        <div style="flex:10%"></div>
                        <div style="flex:40%"></div>
                    </div>

                </div>

                <div id="c3" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                       3. Выиграю ли я закупку если у меня есть сертификат соответствия СДС «НРП»?
                    </h3>
                    <p class="mb-3 textStyle">
                        Сертификат соответствия СДС «НРП» не гарантирует победу в закупке. Победа в закупке, особенно государственной, зависит от многих факторов. Есть заказчики, которые устанавливают сертификат соответствия СДС «НРП» в качестве нестоимостного показателя «Деловая репутация» критерия «Квалификация участников закупки» — в этом случае участник закупки, предоставивший сертификат, может получить до 100 баллов по данному показателю.
                    </p>
                    <p class="mb-3 textStyle">
                        <i>Одновременно с этим следует помнить, что отсутствие сертификата соответствия у участника закупки не может являться причиной для отклонения заявки!</i>
                    </p>
                    <p class="mb-3 textStyle">
                        Почему заказчики закупок вправе использовать сертификат соответствия СДС «НРП» как инструмент подтверждения деловой репутации и квалификации участников закупок?
                    </p>
                    <ul>
                        <li>
                            во-первых, заказчикам закупок известно, что участники закупки при прохождении сертификации в СДС «НРП» предоставляют сведения об обеспеченности трудовыми ресурсами, обеспеченности материально-техническими ресурсами (имущество), а кроме этого подтверждают все документально
                        </li>
                        <li>
                            во-вторых, заказчикам закупок известно, что все сведения, предоставленные участниками закупок, проверяются нашими экспертами на достоверность, а после проверки публикуются в реестре СДС «НРП»
                        </li>
                        <li>
                            в-третьих, заказчики закупок предпочитают надежных поставщиков, а сертификат соответствия СДС «НРП» — это исключительная возможность подтвердить свою надежность. Заказчикам закупок известно, что обладатели сертификата добросовестно исполняют свои обязательства перед контрагентами
                        </li>
                    </ul>
                </div>

                <div id="c4" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                       4. Почему сертификат соответствия СДС «НРП» не выпускается в бумажном виде?
                    </h3>
                    <p class="mb-3 textStyle">
                        В большинстве случаев, государственные и муниципальные заказчики проводят закупочные процедуры через электронные торговые площадки (ЭТП), поэтому практически все документы подаются участником закупки в виде скан-копий, подписанных электронной подписью (ЭП).
                    </p>
                    <p class="mb-3 textStyle">
                        Кроме этого, зачастую, на подачу заявки на участие в закупке отводится ограниченное количество времени, а выпуск сертификата на бумажном носителе и его пересылка отнимают это драгоценное время.
                    </p>
                    <p class="mb-3 textStyle">
                        Именно поэтому сертификат соответствия СДС «НРП» выпускается в виде документа, подписанного электронной подписью (ЭП) в системе электронного документооборота (ЭДО) «Тензор», а легитимность проверки подтверждается подписью Главного аудитора центрального органа по сертификации.
                    </p>
                </div>

                <div id="c5" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                       5. Чем отличается СДС «НРП» от других систем?
                    </h3>
                    <p class="mb-3 textStyle">
                        Отличия системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») кроются в области определения объектов сертификации и, непосредственно, в самой системе и методике проверки.
                    </p>
                    <p class="mb-3 textStyle">
                        Ввиду популярности системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») среди государственных, муниципальных и коммерческих заказчиков, компании, занимающиеся сертификацией, решили создать свои системы по сертификации, похожие по названию, но не имеющие ничего общего с СДС «НРП» ни по задачам, ни по миссии, ни по глубине проверки.
                    </p>
                </div>

                <div id="c6" class="mb-5">
                    <h3 class="mb-3 qStyle textStyle">
                       6. В каких закупках используется сертификат соответствия СДС «НРП»?
                    </h3>
                    <div class="col-8 offset-2 mb-4">
                        <img style="height:207px; max-height:100%; max-width:100%" src="../Content/Images/Providers1.png" />
                    </div>
                    <div class="col-8 offset-2 mb-4">
                        <img style="height:207px; max-height:100%; max-width:100%" src="../Content/Images/Providers2.png" />
                    </div>
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
                                <a href="#c2"style="text-decoration:none; color:dimgray">Как приобрести сертификат соответствия СДС «НРП»?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c3" style="text-decoration:none; color:dimgray">Выиграю ли я закупку если у меня есть сертификат соответствия СДС «НРП»?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c4" style="text-decoration:none; color:dimgray">Почему сертификат соответствия СДС «НРП» не выпускается в бумажном виде?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c5" style="text-decoration:none; color:dimgray">Чем отличается СДС «НРП» от других систем?</a>
                            </li>
                            <li class="mb-3">
                                <a href="#c6" style="text-decoration:none; color:dimgray">В каких закупках используется сертификат соответствия СДС «НРП»?</a>
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
                        Как приобрести сертификат соответствия СДС «НРП»?
                    </summary>
                    <div>
                        <hr class="mb-3" />

                        <h3 class="mb-3" style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; color: #2F3A43;">
                            Схема получения и использования
                        </h3>

                        <div class="flex-container">

                            <div style="flex: 100%; background-color: #D4FBC2; color: darkgreen">
                                <p style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; text-align: center">
                                    Заказчик закупки
                                </p>
                                <p style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    Использует сертификат соответствия СДС «НРП» в документации закупки, указав его в качестве неценового показателя «Деловая репутация» критерия «Квалификация участников закупки».
                                </p>
                            </div>

                            <div style="flex: 100%; text-align: center; padding: 0px;">
                                <i class="arrow down" style="margin-right: 1px; border-color: lightgray"></i>
                            </div>

                            <div style="flex: 100%; background-color: #FFFDB2; color: darkred">
                                <p style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; text-align: center">
                                    Участник закупки
                                </p>
                                <p class="mb-0" style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    При заинтересованности в данной закупке:
                                </p>
                                <ul style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    <li>обращается в аккредитованные  СДС «НРП» представительства
                                    </li>
                                    <li>проходит проверку в СДС «НРП»
                                    </li>
                                    <li>получает сертификат соответствия СДС «НРП»
                                    </li>
                                    <li>готовит заявку на участие
                                    </li>
                                </ul>
                            </div>

                            <div style="flex: 100%; text-align: center; padding: 0px;">
                                <i class="arrow down" style="margin-right: 1px; border-color: lightgray"></i>
                            </div>

                            <div style="flex: 100%; background-color: #FFFDB2; color: darkred">
                                <p style="font-family: Montserrat700; line-height: 1.5; font-size: 14px; text-align: center">
                                    Участник закупки
                                </p>
                                <p class="mb-0" style="line-height: 1.5; font-size: 12px; text-align: justify">
                                    Подает заявку на участие в закупке, прилагает сертификат соответствия СДС "НРП" в пакете документов
                                </p>
                            </div>

                            <div style="flex: 100%; text-align: center; padding: 0px;">
                                <i class="arrow down" style="margin-right: 1px; border-color: lightgray"></i>
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

                            <div style="flex: 100%; text-align: center; padding: 0px;">
                                <i class="arrow down" style="margin-right: 1px; border-color: lightgray"></i>
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
                        Выиграю ли я закупку если у меня есть сертификат соответствия СДС «НРП»?
                    </summary>
                    <div>
                        <hr class="mb-3" />
                        <p class="mb-3 textStyle">
                            Сертификат соответствия СДС «НРП» не гарантирует победу в закупке. Победа в закупке, особенно государственной, зависит от многих факторов. Есть заказчики, которые устанавливают сертификат соответствия СДС «НРП» в качестве нестоимостного показателя «Деловая репутация» критерия «Квалификация участников закупки» — в этом случае участник закупки, предоставивший сертификат, может получить до 100 баллов по данному показателю.
                        </p>
                        <p class="mb-3 textStyle">
                            <i>Одновременно с этим следует помнить, что отсутствие сертификата соответствия у участника закупки не может являться причиной для отклонения заявки!</i>
                        </p>
                        <p class="mb-3 textStyle">
                            Почему заказчики закупок вправе использовать сертификат соответствия СДС «НРП» как инструмент подтверждения деловой репутации и квалификации участников закупок?
                        </p>
                        <ul>
                            <li>во-первых, заказчикам закупок известно, что участники закупки при прохождении сертификации в СДС «НРП» предоставляют сведения об обеспеченности трудовыми ресурсами, обеспеченности материально-техническими ресурсами (имущество), а кроме этого подтверждают все документально
                            </li>
                            <li>во-вторых, заказчикам закупок известно, что все сведения, предоставленные участниками закупок, проверяются нашими экспертами на достоверность, а после проверки публикуются в реестре СДС «НРП»
                            </li>
                            <li>в-третьих, заказчики закупок предпочитают надежных поставщиков, а сертификат соответствия СДС «НРП» — это исключительная возможность подтвердить свою надежность. Заказчикам закупок известно, что обладатели сертификата добросовестно исполняют свои обязательства перед контрагентами
                            </li>
                        </ul>
                    </div>

                </details>

                <details class="mb-5">
                    <summary>  
                        Почему сертификат соответствия СДС «НРП» не выпускается в бумажном виде?
                    </summary>
                    <div>
                        <hr class="mb-3" />
                        <p class="mb-3 textStyle">
                            В большинстве случаев, государственные и муниципальные заказчики проводят закупочные процедуры через электронные торговые площадки (ЭТП), поэтому практически все документы подаются участником закупки в виде скан-копий, подписанных электронной подписью (ЭП).
                        </p>
                        <p class="mb-3 textStyle">
                            Кроме этого, зачастую, на подачу заявки на участие в закупке отводится ограниченное количество времени, а выпуск сертификата на бумажном носителе и его пересылка отнимают это драгоценное время.
                        </p>
                        <p class="mb-3 textStyle">
                            Именно поэтому сертификат соответствия СДС «НРП» выпускается в виде документа, подписанного электронной подписью (ЭП) в системе электронного документооборота (ЭДО) «Тензор», а легитимность проверки подтверждается подписью Главного аудитора центрального органа по сертификации.
                        </p>
                    </div>

                </details>

                <details class="mb-5">
                    <summary>  
                        Чем отличается СДС «НРП» от других систем?
                    </summary>
                    <div>
                        <hr class="mb-3" />
                        <p class="mb-3 textStyle">
                            Отличия системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») кроются в области определения объектов сертификации и, непосредственно, в самой системе и методике проверки.
                        </p>
                        <p class="mb-3 textStyle">
                            Ввиду популярности системы добровольной сертификации «Независимый реестр поставщиков» (СДС «НРП») среди государственных, муниципальных и коммерческих заказчиков, компании, занимающиеся сертификацией, решили создать свои системы по сертификации, похожие по названию, но не имеющие ничего общего с СДС «НРП» ни по задачам, ни по миссии, ни по глубине проверки.
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


</asp:Content>
