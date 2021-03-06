﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cabbage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kapusta</title>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/imagehover.min.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
                            <li><a href="#feature">Features</a></li>
                            <li><a href="#organisations">Organisations</a></li>
                            <li><a href="#courses">Courses</a></li>
                            <li><a href="#pricing">Pricing</a></li>
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
                                        <br>
                                        Наш сервис предоставляет услугу доставки здоровой еды (как отдельные ланчи, так и комплексное меню на день).
                                        <br>
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
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem nesciunt vitae,<br>
                                maiores, magni dolorum aliquam.
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
                                        <i class="fa fa-css3"></i>
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
                                        <i class="fa fa-drupal"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="fea">
                                <div class="col-md-4">
                                    <div class="heading pull-right">
                                        <h4>Экономим Ваше время</h4>
                                        <p>Гарантируем быструю доставку качественной сбалансированной еды.</p>
                                    </div>
                                    <div class="fea-img pull-left">
                                        <i class="fa fa-trophy"></i>
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
                                    <h3>10%</h3>
                                    <p>Заказ меню от 1-го месяца</p>
                                    <i class="fa fa-male"></i>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="orga-stru">
                                    <h3>5%</h3>
                                    <p>Заказ меню от 2-х недель</p>
                                    <i class="fa fa-male"></i>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="orga-stru">
                                    <h3>%</h3>
                                    <p>Пробний заказ 350 грн/box</p>
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
                                    Доступен заказ детского и постного меню<br>
                                    Заказ ланча с 7<sup>00</sup> до 15<sup>00</sup>
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
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem nesciunt vitae,<br />
                                maiores, magni dolorum aliquam.
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
                                    AutoGenerateColumns="false"
                                    GridLines="None" CssClass="gvtable">
                                    <AlternatingRowStyle BackColor="White" />
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="" HtmlEncode="False" />
                                        <asp:BoundField DataField="dishout" HeaderText="Выход блюда, г" />
                                        <asp:BoundField DataField="caloricity" HeaderText="Калорийность" />
                                        <asp:BoundField DataField="proteins" HeaderText="Белки" />
                                        <asp:BoundField DataField="fats" HeaderText="Жиры" />
                                        <asp:BoundField DataField="carbohydrates" HeaderText="Углеводы" />
                                    </Columns>
                                </asp:GridView>

                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="RadioButtonList1" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </section>
            <!--/ work-shop-->
            <!--Faculity member-->
            <section id="faculity-member" class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="header-section text-center">
                            <h2>Meet Our Faculty Member    
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem nesciunt vitae,<br>
                                    maiores, magni dolorum aliquam.
                                </p>
                            </h2>
                            <hr class="bottom-line">
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="pm-staff-profile-container">
                                <div class="pm-staff-profile-image-wrapper text-center">
                                    <div class="pm-staff-profile-image">
                                        <img src="images/mentor.jpg" alt="" class="img-thumbnail img-circle" />
                                    </div>
                                </div>
                                <div class="pm-staff-profile-details text-center">
                                    <p class="pm-staff-profile-name">SlimBox</p>
                                    <p class="pm-staff-profile-title">1250 кКал</p>

                                    <p class="pm-staff-profile-bio">Здоровая еда для тех, кто хочет быстро, а главное безвредно похудеть.</p>
                                    <div>
                                        <button class="accordion" type="button">Цена</button>
                                        <div class="panel">
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
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="pm-staff-profile-container">
                                <div class="pm-staff-profile-image-wrapper text-center">
                                    <div class="pm-staff-profile-image">
                                        <img src="images/mentor.jpg" alt="" class="img-thumbnail img-circle" />
                                    </div>
                                </div>
                                <div class="pm-staff-profile-details text-center">
                                    <p class="pm-staff-profile-name">FitBox</p>
                                    <p class="pm-staff-profile-title">1450 кКал</p>

                                    <p class="pm-staff-profile-bio">Здоровая еда для тех, кто худеет при физических нагрузках.</p>
                                    <div>
                                        <button class="accordion" type="button">Цена</button>
                                        <div class="panel">
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
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="pm-staff-profile-container">
                                    <div class="pm-staff-profile-image-wrapper text-center">
                                        <div class="pm-staff-profile-image">
                                            <img src="images/mentor.jpg" alt="" class="img-thumbnail img-circle" />
                                        </div>
                                    </div>
                                    <div class="pm-staff-profile-details text-center">
                                        <p class="pm-staff-profile-name">BalanceBox</p>
                                        <p class="pm-staff-profile-title">1750 кКал</p>

                                        <p class="pm-staff-profile-bio">Сбалансированное здоровое питание.</p>
                                        <div>
                                            <button class="accordion" type="button">Цена</button>
                                            <div class="panel">
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
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="pm-staff-profile-container">
                                        <div class="pm-staff-profile-image-wrapper text-center">
                                            <div class="pm-staff-profile-image">
                                                <img src="images/mentor.jpg" alt="" class="img-thumbnail img-circle" />
                                            </div>
                                        </div>
                                        <div class="pm-staff-profile-details text-center">
                                            <p class="pm-staff-profile-name">StrongBox</p>
                                            <p class="pm-staff-profile-title">2500/3000 кКал</p>

                                            <p class="pm-staff-profile-bio">Набор мышечной массы при физических нагрузках.</p>
                                            <div>
                                                <button class="accordion" type="button">Цена</button>
                                                <div class="panel">
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
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <div class="pm-staff-profile-container">
                                            <div class="pm-staff-profile-image-wrapper text-center">
                                                <div class="pm-staff-profile-image">
                                                    <img src="images/mentor.jpg" alt="" class="img-thumbnail img-circle" />
                                                </div>
                                            </div>
                                            <div class="pm-staff-profile-details text-center">
                                                <p class="pm-staff-profile-name">VegeterianBox</p>
                                                <p class="pm-staff-profile-title">1750/2000 кКал</p>

                                                <p class="pm-staff-profile-bio">Здоровая сбалансированная еда без мясных продуктов.</p>
                                                <div>
                                                    <button class="accordion" type="button">Цена</button>
                                                    <div class="panel">
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
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4">
                                            <div class="pm-staff-profile-container">
                                                <div class="pm-staff-profile-image-wrapper text-center">
                                                    <div class="pm-staff-profile-image">
                                                        <img src="images/mentor.jpg" alt="" class="img-thumbnail img-circle" />
                                                    </div>
                                                </div>
                                                <div class="pm-staff-profile-details text-center">
                                                    <p class="pm-staff-profile-name">FreshBox</p>
                                                    <p class="pm-staff-profile-title">- кКал</p>

                                                    <p class="pm-staff-profile-bio">Здоровая сбалансированная еда без продуктов животного происхождения.</p>
                                                    <div>
                                                        <button class="accordion" type="button">Цена</button>
                                                        <div class="panel">
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
                            <h2>Courses</h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem nesciunt vitae,<br>
                                maiores, magni dolorum aliquam.
                            </p>
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
                                    <h3>Course Name</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam atque, nostrum veniam consequatur libero fugiat, similique quis.</p>
                                </figcaption>
                                <a href="#"></a>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course02.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Course Name</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam atque, nostrum veniam consequatur libero fugiat, similique quis.</p>
                                </figcaption>
                                <a href="#"></a>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course03.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Course Name</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam atque, nostrum veniam consequatur libero fugiat, similique quis.</p>
                                </figcaption>
                                <a href="#"></a>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course04.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Course Name</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam atque, nostrum veniam consequatur libero fugiat, similique quis.</p>
                                </figcaption>
                                <a href="#"></a>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course05.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Course Name</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam atque, nostrum veniam consequatur libero fugiat, similique quis.</p>
                                </figcaption>
                                <a href="#"></a>
                            </figure>
                        </div>
                        <div class="col-md-4 col-sm-6 padleft-right">
                            <figure class="imghvr-fold-up">
                                <img src="images/course06.jpg" class="img-responsive" />
                                <figcaption>
                                    <h3>Course Name</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam atque, nostrum veniam consequatur libero fugiat, similique quis.</p>
                                </figcaption>
                                <a href="#"></a>
                            </figure>
                        </div>
                    </div>
                </div>
            </section>
            <!--/ Courses-->

            <!--Contact-->
            <section id="contact" class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="header-section text-center">
                            <h2>Форма заказа</h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem nesciunt vitae,<br>
                                maiores, magni dolorum aliquam.
                            </p>
                            <hr class="bottom-line" />
                        </div>
                        <div id="sendmessage">Your message has been sent. Thank you!</div>
                        <div id="errormessage"></div>
                        <!-- <form action="" method="post" role="form" class="contactForm"> -->
                        <div id="orderform">
                            <div class="col-md-6 col-sm-6 col-xs-12 left">
                                <div class="form-group">

                                    <asp:TextBox ID="txbName" runat="server" CssClass="form-control form" placeholder="Ваше имя"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txbPhone" runat="server" CssClass="form-control form" placeholder="Ваш телефон"></asp:TextBox>

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
                                        <asp:RadioButtonList ID="rblSex" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="0" Selected="true">Мужчина</asp:ListItem>
                                            <asp:ListItem Value="1">Женщина</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="BoxListOrders" runat="server" CssClass="ddlstyle">
                                        </asp:DropDownList>
                                        Количество дней: 
                                        <asp:DropDownList ID="Numdays" runat="server" CssClass="ddlstyle">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txbComment" runat="server" CssClass="form-control form" placeholder="Коментарии к заказу" TextMode="MultiLine" Rows="5"></asp:TextBox>

                                    </div>

                                </div>
                            </div>

                            <div class="col-xs-12">
                                <!-- Button -->
                                <%--<button type="submit" id="submit" name="submit" class="form contact-form-button light-form-button oswald light">SEND EMAIL</button> --%>
                                <asp:Button Text="Заказать " runat="server" OnClick="PlaceOrder"></asp:Button>
                            </div>
                            <!-- </form> -->
                        </div>
                    </div>
                </div>
            </section>
            <!--/ Contact-->
            <!--Footer-->
            <footer id="footer" class="footer">
                <div class="container text-center">
                    <!-- End newsletter-form -->
                    <ul class="social-links">
                        <li><a href="https://www.instagram.com/kapusta7day/"><i class="fa fa-instagram fa-fw"></i></a></li>
                        <li><a href="https://m.facebook.com/kapusta7day/"><i class="fa fa-facebook fa-fw"></i></a></li>
                        <li><a href="#link"><i class="fa fa-telegram fa-fw"></i></a></li>
                    </ul>
                    2016 Mentor Theme. All rights reserved
      <div class="credits">
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade.com</a>
      </div>
                </div>
            </footer>
            <!--/ Footer-->
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.easing.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/custom.js"></script>
            <script src="js/Accordion.js"></script>
        </div>
    </form>
</body>
</html>
