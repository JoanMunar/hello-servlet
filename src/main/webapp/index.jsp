<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Archive.Arxiu" %>

<html>
    <head>
        <title>Table</title>
    </head>
    <style>

        tr:nth-child(even) {
           background-color: #ccc;
        }

    </style>
    <body>
        <%! Arxiu a1 = new Arxiu("bacon.html","C://Pizza",100);
         Arxiu a2 = new Arxiu("carbonara.html","C://Pizza",120);
         Arxiu a3 = new Arxiu("bourbon.html","C://Pizza",500);
         Arxiu a4 = new Arxiu("cabra.html","C://Pizza",300);
         Arxiu a5 = new Arxiu("peperoni.html","C://Pizza",100); %>

        <table>
            <tr>
                <th>Nom</th>
                <th>Ruta</th>
                <th>Tamany</th>
              </tr>
              <tr>
                <td><%= a1.nom %></td>
                <td><%= a1.ruta %></td>
                <td><%= a1.tamany %></td>
              </tr>
              <tr>
                <td><%= a2.nom %></td>
                <td><%= a2.ruta %></td>
                <td><%= a2.tamany %></td>
              </tr>
              <tr>
                <td><%= a3.nom %></td>
                <td><%= a3.ruta %></td>
                <td><%= a3.tamany %></td>
              </tr>
              <tr>
                <td><%= a4.nom %></td>
                <td><%= a4.ruta %></td>
                <td><%= a4.tamany %></td>
              </tr>
              <tr>
                 <td><%= a5.nom %></td>
                 <td><%= a5.ruta %></td>
                 <td><%= a5.tamany %></td>
               </tr>
        </table>

    </body>
</html>
