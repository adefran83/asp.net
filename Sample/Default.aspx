<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        </style>
    <link href="Styles/Styles.css" rel="stylesheet" />
    <script src="Scripts/modernizr-2.6.2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="PageWrapper">
            <header>Header goes here</header>
            <nav>Menu goes here</nav>
            <section id="MainContent">
                <h1>Hi there visitor and welcome to Planet Wrox</h1>
                <p class="Introduction">
                    We&#39;re glad you&#39;re paying a visit to <a href="http://www.planetwrox.com">www.PlanetWrox.com</a>,
			the coolest music community site on the Internet.
                </p>
                <p class="Introduction">
                    Feel free to have a <a href="Default.aspx">look around</a>; there are lots of interesting <strong>reviews and concert pictures</strong> to be found here.
                </p>
            </section>
            <aside id="Sidebar">Sidebar goes here</aside>
            <footer>footer goes here</footer>
        </div>
    </form>
</body>
</html>
