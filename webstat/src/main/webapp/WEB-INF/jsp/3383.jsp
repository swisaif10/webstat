<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--Load the AJAX API-->
   









    <title>Paynet</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="static/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/vendor/linearicons/style.css">
    <link rel="stylesheet" href="static/vendor/chartist/css/chartist-custom.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="static/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="static/css/demo.css">
    <link rel="stylesheet" href="static/css/style1.css">

    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="static/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="static/img/favicon.png">
    <script>
        function myFunction() {
            alert("Under Construction");
        }
    </script>

    <link rel="stylesheet" type="text/css" href="static/css/jquery.tablescroll.css"/>
    <style>


        td {
            text-align: center;
            padding: 8px;
            font-weight: lighter;
        }


        th {
            background-color: #0A7BAB;
            color: white;
            text-align: center;
            padding: 8px;


        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>
<body>
<!-- WRAPPER -->
<div id="wrapper">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="/home"><img src="static/img/logg.png" alt="Klorofil Logo" class="img-responsive logo"></a>
        </div>
        <div class="container-fluid">
            <div class="navbar-btn">
                <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
            </div>
            <div id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>A propos</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="#" onclick="myFunction()">Paynet</a></li>
                            <li><a href="http://www.monetiquetunisie.com/">Monétique</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="static/img/user.png" class="img-circle" alt="Avatar"> <span>${name} </span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                        
                        <ul class="dropdown-menu">
                            <li><a href="#" onclick="myFunction()"><i class="lnr lnr-cog"></i> <span>Paramètres</span></a></li>
                            <li><a href="/logout"><i class="lnr lnr-exit"></i> <span>Déconnexion</span></a></li>
                        </ul>
                    </li>
                    <!-- <li>
                        <a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
                    </li> -->
                </ul>
            </div>
        </div>
    </nav>
    <br/>
    <br/>

    <!-- END NAVBAR -->
    <!-- LEFT SIDEBAR -->
    <div id="sidebar-nav" class="sidebar">
    
        <div class="sidebar-scroll">
            <nav>
             
                <ul class="nav">

                    <li>
                    <%Boolean test2;
                    test2=request.isUserInRole("ADMIN");
                    if(test2){
                    
                    %>
                        <a href="#subPages" data-toggle="collapse" data-target="#subPages6" class="collapsed"><i class="lnr lnr-chart-bars"></i> <span>Statistique</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages6" class="collapse ">
                            <ul class="nav">
                                <li><a href="/3383" class="">Utilisation de TPE</a></li>
                                <li><a href="/serveur" class="">Les nbr utilisation par region</a></li>
                               

                            </ul>
                        </div>
                    </li>
                                        <li>
 
                        <a href="#subPages" data-toggle="collapse" data-target="#subPages2" class="collapsed"><i class="lnr lnr-user"></i> <span>Administration</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages2" class="collapse ">
                            <ul class="nav">
                                <li><a href="/oper" class="">Opérateurs</a></li>
                                <li><a href="/utilisateurs" class="">Utilisateurs</a></li>
                                <li><a href="/sda" class="">SDAs</a></li>


                            </ul>
                        </div>
                    </li>
                        <%} %>


                    <li>
                        <a href="#subPages" data-toggle="collapse" data-target="#subPages4"class="collapsed"><i class="lnr lnr-list"></i> <span>Général</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages4" class="collapse ">
                            <ul class="nav">
                                <li><a href="/hier" class="">Journée d'hier</a></li>
                                <li><a href="/moisencours" class="">Mois en cours</a></li>
                                <li><a href="/moisprecedent" class="">Mois précédent</a></li>
                            </ul>
                        </div>
                    </li>

                    <li>
                        <a href="#subPages" data-toggle="collapse" data-target="#subPages5" class="collapsed"><i class="lnr lnr-cog"></i> <span>Fonctions Avancées</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages5" class="collapse ">
                            <ul class="nav">
                                <li><a href="/recherche" class="">Recherche multi-critères</a></li>
                                <li><a href="#" class="">Détails des dernières opérations</a></li>
                                <li><a href="/preference" class="">Préférences</a></li>
                            </ul>
                        </div>
                    </li>




                   





















                    <li>
                        <a href="#" data-toggle="collapse" data-target="#subPages3" class="collapsed"><i class="lnr lnr-magic-wand"></i> <span>Qualité de services</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages3" class="collapse ">
                            <ul class="nav">
                                <li><a href="#" class="">Performances</a></li>
                                <li><a href="#" class="">Incidents par terminal</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- END LEFT SIDEBAR -->
    <!-- MAIN -->
    <div class="main">

        <div class="container">
            <div class="panel-body">
                <!-- TEST -->
                
                

                   
                            <div id="chart_div"></div>
                        
                        
                    </div>
                 
                </div>





 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {
        // Create the data table.
  
var x="${x}";
var x2="${x2}";
var x3="${x3}";
var x4="${x4}";
var x5="${x5}";

var y=Number(x);
var y2=Number(x2);
var y3=Number(x3);
var y4=Number(x4);
var y5=Number(x5);


	
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
        	 ["banque1 (3383)", y],
          ["banque2 (3384)", y2],
          ['banque3 (81101111)', y3],
          ["banque4 (81101104)",y4],
          ["banque5 (81101101)",y5],
        ]);

        // Set chart options
        var options = {'title':'Les utilisations des banques de TPE',
                       'width':1050,
                       'height':450};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>






            </div>
        </div>
        
        <!-- END MAIN CONTENT -->
    </div>
    <!-- END MAIN -->
    <div class="clearfix"></div>
</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="static/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="static/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="static/vendor/chartist/js/chartist.min.js"></script>
<script src="static/scripts/klorofil-common.js"></script>
<script type="text/javascript" src="static/jquery/jquery.tablescroll.js"></script>
<script type="text/javascript">


    $(document).ready(function() {
        $("#btnExport").click(function(e) {
            e.preventDefault();

            //getting data from our table
            var data_type = 'data:application/vnd.ms-excel';
            var table_div = document.getElementById('table_wrapper');
            var table_html = table_div.outerHTML.replace(/ /g, '%20');

            var a = document.createElement('a');
            a.href = data_type + ', ' + table_html;
            a.download = 'exported_table_' + Math.floor((Math.random() * 9999999) + 1000000) + '.xls';
            a.click();
        });
    });
</script>

<script type="text/javascript">


    function download_csv(csv, filename) {
        var csvFile;
        var downloadLink;

        // CSV FILE
        csvFile = new Blob([csv], {type: "text/csv"});

        // Download link
        downloadLink = document.createElement("a");

        // File name
        downloadLink.download = filename;

        // We have to create a link to the file
        downloadLink.href = window.URL.createObjectURL(csvFile);

        // Make sure that the link is not displayed
        downloadLink.style.display = "none";

        // Add the link to your DOM
        document.body.appendChild(downloadLink);

        // Lanzamos
        downloadLink.click();
    }

    function export_table_to_csv(html, filename) {
        var csv = [];
        var rows = document.querySelectorAll("table tr");

        for (var i = 0; i < rows.length; i++) {
            var row = [], cols = rows[i].querySelectorAll("td, th");

            for (var j = 0; j < cols.length; j++)
                row.push(cols[j].innerText);

            csv.push(row.join(","));
        }

        // Download CSV
        download_csv(csv.join("\n"), filename);
    }

    document.getElementById("btnExport2").addEventListener("click", function () {
        var html = document.querySelector("table").outerHTML;
        export_table_to_csv(html, "table.csv");
    });

</script>
<script>
    /*<![CDATA[*/

    jQuery(document).ready(function($)
    {
        $('#thetable2').tableScroll({height:450});
    });

    /*]]>*/
</script>

</body>
</html>
