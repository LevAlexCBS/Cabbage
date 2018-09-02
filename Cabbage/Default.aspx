<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cabbage.Default" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="ru">
<head runat="server">
    <title>Kapusta</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="css/font.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/imagehover.min.css" />
    <link rel="stylesheet" type="text/css" href="css/style.min.css" />


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>

    <script async src="js/bootstrap-formhelpers-phone.format.min.js"></script>
    <script async src="js/bootstrap-formhelpers-phone.min.js"></script>
    <script async src="js/bootstrap.min.js"></script>

    <link runat="server" rel="shortcut icon" href="~/favicon.ico" type="image/x-icon" />
    <link runat="server" rel="icon" href="~/favicon.ico" type="image/ico" />
</head>
<body>
    <div id="background"></div>

    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a class="navbar-brand" href="#"></a>

                    </div>

                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#feature">О нас</a></li>
                            <li><a href="#organisations">Акции</a></li>
                            <li><a href="#work-shop">Меню</a></li>
                            <li><a href="#faculity-member">Боксы</a></li>
                            <li><a href="#courses">Фото</a></li>
                            <!-- <li><a href="#" data-target="#login" data-toggle="modal">Sign in</a></li> -->
                            <li class="btn-trial"><a href="#contact">Заказать</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!--/ Navigation bar-->

            <!--Banner-->
            <div class="banner">
                <div class="bg-color">
                    <div class="container">
                        <div class="row">
                            <div class="banner-text text-center">
                                <div class="text-border">

                                    <h2 class="text-dec">Kapusta</h2>
                                </div>
                                <div class="intro-para text-center quote">
                                    <%--<p class="big-text">Learning Today . . . Leading Tomorrow.</p>--%>
                                    <p class="small-text">
                                        Вы постоянно заняты, и не хвататет времени для приготовления здоровой еды? Kapusta сделает это за Вас.
                                        <br />
                                        Наш сервис предоставляет услугу доставки здоровой еды (как отдельные ланчи, так и комплексное меню на день).
                                        <br />
                                        Поторопитесь сделать свой вкусный, а главное полезный заказ!
                                    </p>
                                    <a href="#contact" class="btn get-quote">Сделать заказ</a>
                                </div>
                                <%--<a href="#feature" class="mouse-hover">
              <div class="mouse"></div>
            </a>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ Banner-->
            <!--Feature-->
            <section id="feature" class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="header-section text-center">
                            <h2>Почему Kapusta? :)</h2>
                            <p>
                                Капуста - сервис приготовления и доставки здоровой еды. 
                                Есть три причины, почему нужно обратиться именно к нам:
                            </p>
                            <hr class="bottom-line" />
                        </div>
                        <div class="feature-info">
                            <div class="fea">
                                <div class="col-md-4">
                                    <div class="heading pull-right">
                                        <h4>Здоровое питание</h4>
                                        <p>У нас только свежие продукты. Блюда готовятся с минимальным количеством соли и сахара.</p>
                                    </div>
                                    <div class="fea-img pull-left">
                                        <img src="images/food.jpg" alt="dostavka" />
                                    </div>
                                </div>
                            </div>
                            <div class="fea">
                                <div class="col-md-4">
                                    <div class="heading pull-right">
                                        <h4>Индивидуальный подход</h4>
                                        <p>Разнообразие боксов. Подбор программы питания.</p>
                                    </div>
                                    <div class="fea-img pull-left">
                                        <img src="images/individ.jpg" alt="dostavka" />
                                    </div>
                                </div>
                            </div>
                            <div class="fea">
                                <div class="col-md-4">
                                    <div class="heading pull-right">
                                        <h4>Экономия времени</h4>
                                        <p>Гарантируем быструю доставку качественной сбалансированной еды.</p>
                                    </div>
                                    <div class="fea-img pull-left">
                                        <img src="images/dostavka.jpg" alt="dostavka" />

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--/ feature-->
            <!--Organisations-->
            <section id="organisations" class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="orga-stru">
                                    <h3>%</h3>
                                    <p>Действует скидка на заказ от 21 дня</p>
                                    <i class="fa fa-male"></i>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="orga-stru">
                                    <h3>%</h3>
                                    <p>Действует скидка на заказ от 5 дней</p>
                                    <i class="fa fa-male"></i>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="orga-stru">
                                    <h3>%</h3>
                                    <p>Первый заказ 350 грн/box</p>
                                    <i class="fa fa-male"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="detail-info">
                                <hgroup>
                                    <h3 class="det-txt">Специальное предложение</h3>
                                    <%--<h4 class="sm-txt">(Revised and Updated for 2016)</h4>--%>
                                </hgroup>
                                <p class="det-p">
                                    Доступен заказ детского и постного меню<br />
                                    Заказ ланча с 7<sup>00</sup> до 15<sup>00</sup>
                                    
                                    <table  class ="table table-active" cellspacing="0"  border="1">
                                        <tbody>
                                            <tr>
                                                <th scope="col">Наименование</th>
                                                <th scope="col">Выход блюда</th>
                                            </tr>
                                            <tr class ="table-success">
                                                <td>Суп дня</td>
                                                <td>200 г</td>
                                            </tr>
                                            <tr>
                                                <td>Блюдо с мяса/рыбы</td>
                                                <td>130 г</td>
                                            </tr>
                                            <tr class ="table-success">
                                                <td>Гарнир</td>
                                                <td>150 г</td>
                                            </tr>
                                            <tr>
                                                <td>Овощной салат</td>
                                                <td>180 г</td>
                                            </tr>
                                            <tr class ="table-success">
                                                <td>Напиток</td>
                                                <td>200 мл</td>
                                            </tr>
                                            <tr>
                                                <td><b>Всего</b></td>
                                                <td>660 г/200 мл</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--/ Organisations-->

            <!--work-shop-->
            <section id="work-shop" class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="header-section text-center">
                            <h2>Примеры меню для одного дня</h2>
                            <p>
                                Выбрав бокс и пол, Вы можете просмотреть полноценное меню на целый день.
                            </p>
                            <hr class="bottom-line" />
                        </div>

                        <asp:ScriptManager runat="server" />
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                                <asp:DropDownList ID="BoxList" runat="server"
                                    CssClass="ddlstyle"
                                    AutoPostBack="True"
                                    OnSelectedIndexChanged="BoxList_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server"
                                    AutoPostBack="True"
                                    OnSelectedIndexChanged="BoxList_SelectedIndexChanged"
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Value="0">Мужчина</asp:ListItem>
                                    <asp:ListItem Value="1">Женщина</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:GridView ID="GridView1" runat="server"
                                    CellPadding="4"
                                    ForeColor="#333333"
                                    AutoGenerateColumns="False"
                                    GridLines="None" CssClass="gvtable">
                                    <AlternatingRowStyle BackColor="White" />
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" CssClass="text-center" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="" HtmlEncode="False" />
                                        <asp:BoundField DataField="dishout" HeaderText="Выход блюда, г" ItemStyle-Width="100px">
                                            <HeaderStyle CssClass="text-center" />
                                            <ItemStyle CssClass="text-center" Width="100px" />
                                        </asp:BoundField> 
                                    </Columns>
                                </asp:GridView>

                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="RadioButtonList1" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                        <div>
                        </div>
                    </div>
                </div>
            </section>
            <!--/ work-shop-->
            <!--Faculity member-->
            <section id="faculity-member" class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="header-section text-center">
                            <h2>Описание боксов и цены  
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem nesciunt vitae,<br />
                                    maiores, magni dolorum aliquam.
                                </p>
                            </h2>
                            <hr class="bottom-line" />
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="pm-staff-profile-container">
                                <div class="pm-staff-profile-image-wrapper text-center">
                                    <div class="pm-staff-profile-image">
                                        <img src="images/slimbox.jpg" alt="" class="img-thumbnail img-circle" />
                                    </div>
                                </div>
                                <div class="pm-staff-profile-details text-center">
                                    <p class="pm-staff-profile-name">SlimBox</p>


                                    <div class="panel content-for-popover_1 hidden">
                                        <table>
                                            <tr>
                                                <th>Тип заказа</th>
                                                <th>Женщинам:</th>
                                                <th>Мужчинам:</th>
                                            </tr>
                                            <tr>
                                                <td>от 1 дня</td>
                                                <td>370 грн</td>
                                                <td>370 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 5 дня</td>
                                                <td>350 грн</td>
                                                <td>350 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 21 дня</td>
                                                <td>330 грн</td>
                                                <td>330 грн</td>
                                            </tr>
                                            <tr>
                                                <td>Пробный заказ</td>
                                                <td>340 грн</td>
                                                <td>340 грн</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <p class="pm-staff-profile-title">1250 кКал</p>

                                    <p class="pm-staff-profile-bio">Здоровая еда для тех, кто хочет быстро, а главное безвредно похудеть.</p>
                                    <button class="accordion" data-toggle="popover"
                                        data-popover-content="content-for-popover_1"
                                        data-placement="bottom" type="button">
                                        Цена</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="pm-staff-profile-container">
                                <div class="pm-staff-profile-image-wrapper text-center">
                                    <div class="pm-staff-profile-image">
                                        <img src="images/fitbox.jpg" alt="" class="img-thumbnail img-circle" />
                                    </div>
                                </div>
                                <div class="pm-staff-profile-details text-center">
                                    <p class="pm-staff-profile-name">FitBox</p>


                                    <div class="panel content-for-popover_2 hidden">
                                        <table>
                                            <tr>
                                                <th>Тип заказа</th>
                                                <th>Женщинам:</th>
                                                <th>Мужчинам:</th>
                                            </tr>
                                            <tr>
                                                <td>от 1 дня</td>
                                                <td>390 грн</td>
                                                <td>390 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 5 дня</td>
                                                <td>370 грн</td>
                                                <td>370 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 21 дня</td>
                                                <td>350 грн</td>
                                                <td>350 грн</td>
                                            </tr>
                                            <tr>
                                                <td>Пробный заказ</td>
                                                <td>360 грн</td>
                                                <td>360 грн</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <p class="pm-staff-profile-title">1450 кКал</p>
                                    <p class="pm-staff-profile-bio">Здоровая еда для тех, кто худеет при физических нагрузках.</p>
                                    <button class="accordion" data-toggle="popover"
                                        data-popover-content="content-for-popover_2"
                                        data-placement="bottom" type="button">
                                        Цена</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="pm-staff-profile-container">
                                <div class="pm-staff-profile-image-wrapper text-center">
                                    <div class="pm-staff-profile-image">
                                        <img src="images/balancebox.jpg" alt="" class="img-thumbnail img-circle" />
                                    </div>
                                </div>
                                <div class="pm-staff-profile-details text-center">
                                    <p class="pm-staff-profile-name">BalanceBox</p>


                                    <div class="panel content-for-popover_3 hidden">
                                        <table>
                                            <tr>
                                                <th>Тип заказа</th>
                                                <th>Женщинам:</th>
                                                <th>Мужчинам:</th>
                                            </tr>
                                            <tr>
                                                <td>от 1 дня</td>
                                                <td>420 грн</td>
                                                <td>420 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 5 дня</td>
                                                <td>400 грн</td>
                                                <td>400 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 21 дня</td>
                                                <td>380 грн</td>
                                                <td>380 грн</td>
                                            </tr>
                                            <tr>
                                                <td>Пробный заказ</td>
                                                <td>390 грн</td>
                                                <td>390 грн</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <p class="pm-staff-profile-title">1750 кКал</p>
                                    <p class="pm-staff-profile-bio">Сбалансированное здоровое питание.</p>
                                    <button class="accordion" data-toggle="popover"
                                        data-popover-content="content-for-popover_3"
                                        data-placement="bottom" type="button">
                                        Цена</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="pm-staff-profile-container">
                                <div class="pm-staff-profile-image-wrapper text-center">
                                    <div class="pm-staff-profile-image">
                                        <img src="images/strongbox.jpg" alt="" class="img-thumbnail img-circle" />
                                    </div>
                                </div>
                                <div class="pm-staff-profile-details text-center">
                                    <p class="pm-staff-profile-name">StrongBox</p>


                                    <div class="panel content-for-popover_4 hidden">
                                        <table>
                                            <tr>
                                                <th>Тип заказа</th>
                                                <th>Женщинам:</th>
                                                <th>Мужчинам:</th>
                                            </tr>
                                            <tr>
                                                <td>от 1 дня</td>
                                                <td>470 грн</td>
                                                <td>500 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 5 дня</td>
                                                <td>440 грн</td>
                                                <td>470 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 21 дня</td>
                                                <td>410 грн</td>
                                                <td>440 грн</td>
                                            </tr>
                                            <tr>
                                                <td>Пробный заказ</td>
                                                <td>440 грн</td>
                                                <td>470 грн</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <p class="pm-staff-profile-title">2500/3000 кКал</p>
                                    <p class="pm-staff-profile-bio">Набор мышечной массы при физических нагрузках.</p>
                                    <button class="accordion" data-toggle="popover"
                                        data-popover-content="content-for-popover_4"
                                        data-placement="bottom" type="button">
                                        Цена</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="pm-staff-profile-container">
                                <div class="pm-staff-profile-image-wrapper text-center">
                                    <div class="pm-staff-profile-image">
                                        <img src="images/vegeterianbox.jpg" alt="" class="img-thumbnail img-circle" />
                                    </div>
                                </div>
                                <div class="pm-staff-profile-details text-center">
                                    <p class="pm-staff-profile-name">VegeterianBox</p>


                                    <div class="panel content-for-popover_5 hidden">
                                        <table>
                                            <tr>
                                                <th>Тип заказа</th>
                                                <th>Женщинам:</th>
                                                <th>Мужчинам:</th>
                                            </tr>
                                            <tr>
                                                <td>от 1 дня</td>
                                                <td>420 грн</td>
                                                <td>440 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 5 дня</td>
                                                <td>400 грн</td>
                                                <td>420 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 21 дня</td>
                                                <td>380 грн</td>
                                                <td>400 грн</td>
                                            </tr>
                                            <tr>
                                                <td>Пробный заказ</td>
                                                <td>390 грн</td>
                                                <td>410 грн</td>
                                            </tr>
                                        </table>
                                    </div>


                                    <p class="pm-staff-profile-title">1750/2000 кКал</p>
                                    <p class="pm-staff-profile-bio">Здоровая сбалансированная еда без мясных продуктов.</p>
                                    <button class="accordion" data-toggle="popover"
                                        data-popover-content="content-for-popover_5"
                                        data-placement="bottom" type="button">
                                        Цена</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="pm-staff-profile-container">
                                <div class="pm-staff-profile-image-wrapper text-center">
                                    <div class="pm-staff-profile-image">
                                        <img src="images/freshbox.jpg" alt="" class="img-thumbnail img-circle" />
                                    </div>
                                </div>
                                <div class="pm-staff-profile-details text-center">
                                    <p class="pm-staff-profile-name">FreshBox</p>

                                    <div class="panel content-for-popover_6 hidden">
                                        <table>
                                            <tr>
                                                <th>Тип заказа</th>
                                                <th>Женщинам:</th>
                                                <th>Мужчинам:</th>
                                            </tr>
                                            <tr>
                                                <td>от 1 дня</td>
                                                <td>420 грн</td>
                                                <td>440 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 5 дня</td>
                                                <td>400 грн</td>
                                                <td>420 грн</td>
                                            </tr>
                                            <tr>
                                                <td>от 21 дня</td>
                                                <td>380 грн</td>
                                                <td>400 грн</td>
                                            </tr>
                                            <tr>
                                                <td>Пробный заказ</td>
                                                <td>390 грн</td>
                                                <td>410 грн</td>
                                            </tr>
                                        </table>
                                    </div>

                                    <p class="pm-staff-profile-title">- кКал</p>
                                    <p class="pm-staff-profile-bio">Здоровая сбалансированная еда без продуктов животного происхождения.</p>
                                    <button class="accordion" data-toggle="popover"
                                        data-popover-content="content-for-popover_6"
                                        data-placement="bottom" type="button">
                                        Цена</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--/ Faculity member-->

            <!--Courses-->
            <section id="courses" class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="header-section text-center">
                            <h2>Фото наших блюд</h2>
                           
                            <hr class="bottom-line" />
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course01.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Завтрак</h3>
                                    <p>Нежные сырники с ягодами на завтрак поднимут Ваше настроение:)</p>
                                </figcaption>
                                <%--<a href="#"></a>--%>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course02.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Завтрак</h3>
                                    <p>Легкая овсяная каша с карамелизированными яблоками и корицей сделает Ваш завтрак вкусным и полезным:)</p>
                                </figcaption>
                                <%--<a href="#"></a>--%>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course04.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Ланч</h3>
                                    <p>Легкий салат с лососем, яйцом и овощами станет вкусным и полезным ланчем для Вас:)</p>
                                </figcaption>
                                <%--<a href="#"></a>--%>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course06.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Обед</h3>
                                    <p>Посреди дня нужно больше энергии! Например, вкусные куриные рулеты с овощами гриль станут подходящим обедом для Вас:)</p>
                                </figcaption>
                                <%--<a href="#"></a>--%>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course05.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Обед</h3>
                                    <p>Почему бы  не пообедать крем-супом с зеленого горошка? Вкусно, легко, а главное - полезно:)</p>
                                </figcaption>
                                <%--<a href="#"></a>--%>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course03.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Ужин</h3>
                                    <p>Как насчет сочного лосося на пару с овощами  на ужин?:)</p>
                                </figcaption>
                                <%--<a href="#"></a>--%>
                            </figure>
                        </div>
                    </div>
                </div>
            </section>
            <!--/ Courses-->

            <!--Contact-->
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <section id="contact" class="section-padding">
                        <div class="container">
                            <div class="row">
                                <div class="header-section text-center">
                                    <h2>Форма заказа</h2>
                                    <p>
                                        Заказы принимаются с 7<sup>00</sup> до 15<sup>00</sup> с доставкой на следующий день. Доставка боксов с 6<sup>00</sup>.
                                Доставка ланчей с 12<sup>00</sup> до 15<sup>00</sup>.
                                    </p>
                                    <hr class="bottom-line" />
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="NameValidator" runat="server"
                                        ErrorMessage="Пожалуйста, введите свое имя"
                                        ControlToValidate="txbName"
                                        ForeColor="red"
                                        Display="None">
                                    </asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="PhoneValidator" runat="server"
                                        ErrorMessage="Пожалуйста, введите свой номер телефона"
                                        ControlToValidate="txbPhone"
                                        ForeColor="red"
                                        Display="None">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="PhoneValidatorExp"
                                        runat="server"
                                        ErrorMessage="Номер телефона в формате +38 (0XX) XXX-XXXX"
                                        ForeColor="red"
                                        ControlToValidate="txbPhone"
                                        ValidationExpression="^\+38 \(\d{3}\) \d{3}-\d{2}\d{2}$"
                                        Display="None">            
                                    </asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="AddressValidator" runat="server"
                                        ErrorMessage="Пожалуйста, введите адрес доставки"
                                        ControlToValidate="txbAdr"
                                        ForeColor="red"
                                        Display="None">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="MailValidator" runat="server"
                                        ErrorMessage="Пожалуйста, введите првильный email"
                                        ControlToValidate="txbEmail"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        Display="None"></asp:RegularExpressionValidator>
                                    <asp:ValidationSummary ID="ValidationSummary"
                                        runat="server"
                                        ShowMessageBox="true"
                                        ShowSummary="false" />

                                </div>
                                <div id="errormessage"></div>

                                <div id="orderform">

                                    <div class="col-md-6 col-sm-6 col-xs-12 left">
                                        <div class="form-group">

                                            <asp:TextBox ID="txbName" runat="server" CssClass="form-control form" placeholder="Ваше имя"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txbPhone" runat="server" CssClass="form-control form input-medium bfh-phone"
                                                data-format="+38 (ddd) ddd-dddd"
                                                placeholder="Ваш телефон (+380XXXXXXXXX)"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txbEmail" runat="server" CssClass="form-control form" placeholder="Ваш e-mail"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txbAdr" runat="server" CssClass="form-control form" placeholder="Адрес доставки"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-sm-6 col-xs-12 right">
                                        <div class="form-group">


                                            <div class="form-group">
                                                <asp:RadioButtonList ID="rblSex" runat="server" RepeatDirection="Horizontal"
                                                    AutoPostBack="True" OnSelectedIndexChanged="CalculatePrice">
                                                    <asp:ListItem Value="0" Selected="true">Мужчина</asp:ListItem>
                                                    <asp:ListItem Value="1">Женщина</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="form-group">
                                                <asp:DropDownList ID="BoxListOrders" runat="server" CssClass="ddlstyle"
                                                    AutoPostBack="True"
                                                    OnSelectedIndexChanged="CalculatePrice">
                                                </asp:DropDownList>
                                                Количество дней:
                                      
                                            <asp:DropDownList ID="Numdays" runat="server" CssClass="ddlstyle"
                                                AutoPostBack="True"
                                                OnSelectedIndexChanged="CalculatePrice">
                                            </asp:DropDownList>

                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="txbComment" runat="server" CssClass="form-control form" placeholder="Коментарии к заказу. Напишите удобное для вас время доставки с промежутком в 1 час." TextMode="MultiLine" Rows="5"></asp:TextBox>
                                                Итого:
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                грн
                                            </div>

                                        </div>
                                    </div>

                                    <div class="col-xs-12">
                                        <!-- Button -->

                                        <asp:Button Text="Заказать" ID="orderbtn" runat="server" OnClick="PlaceOrder" CssClass="form contact-form-button light-form-button oswald light" CausesValidation="true" ></asp:Button>

                                    </div>

                                    <!-- </form> -->
                                </div>
                            </div>
                        </div>
                    </section>
                </ContentTemplate>
            </asp:UpdatePanel>
            <!--/ Contact-->
            <!--Footer-->
            <footer id="footer" class="footer">
                <div class="container text-center">
                    <!-- End newsletter-form -->

                    <div class="footer-col-content">
                        <ul class="list-contacts-footer">
                            <li>Address: <a href="#">Glasgow D04 89GR</a>
                            </li>
                            <li>Phones:
                                <a href="callto:380961072510">+38(096)10-725-10</a>
                                
                            </li>
                            <li>E-mail: <a href="#">info@demolink.org</a>
                            </li>
                            <li>Hours: 7 days a week from 9:00 am to 7:00 pm
                            </li>
                        </ul>

                    </div>
                    <ul class="social-links">
                        <li><a href="https://www.instagram.com/kapusta7day/"><i class="fa fa-instagram fa-fw"></i></a></li>
                        <li><a href="https://facebook.com/kapusta7day/"><i class="fa fa-facebook fa-fw"></i></a></li>
                        <li><a href="https://twitter.com/kapusta7day"><i class="fa fa-twitter fa-fw"></i></a></li>
                    </ul>
     
                </div>
            </footer>
            <!--/ Footer-->
            <script src="js/custom.js"></script>

        </div>
    </form>


</body>
</html>
