<%-- 
    Document   : index
    Created on : 11/06/2022, 05:50:23 PM
    Author     : Adrián Gutiérrez Nava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String[] alumno1 = new String[]{"1101", "Adrián", "Gutiérrez", "Nava", "10", "9", "8"};
    String[] alumno2 = new String[]{"1102", "María", "Alejo", "Angeles", "4", "7", "10"};
    String[] alumno3 = new String[]{"1103", "Paula", "Nava", "Cerros", "2", "6", "8"};
    String[] alumno4 = new String[]{"1104", "Carlos", "Isidro", "Fernandez", "10", "4", "5"};
    String[] alumno5 = new String[]{"1105", "Fernando", "Rendon", "Tenorio", "1", "1", "7"};
    String[] alumno6 = new String[]{"1106", "Migue", "Morales", "Nava", "7", "7", "8"};
    String[] alumno7 = new String[]{"1107", "Isabel", "Jaimes", "Mora", "6", "6", "7"};
    String[] alumno8 = new String[]{"1108", "Felipe", "Torres", "Vegas", "8", "8", "9"};
    String[] alumno9 = new String[]{"1109", "Laura", "Hernandez", "Díaz", "4", "9", "9"};
    String[] alumno10 = new String[]{"1110", "Aimee", "Gutiérrez", "Alejo", "10", "10", "10"};

    Double[] promedios = new Double[10];

    String[] arreglo = new String[1];

%>

<%
    for (int i = 0; i < 10; i++) {

        double suma = 0;
        double promedio = 0;

        switch (i) {
            case 0:
                arreglo = alumno1;
                break;
            case 1:
                arreglo = alumno2;
                break;
            case 2:
                arreglo = alumno3;
                break;
            case 3:
                arreglo = alumno4;
                break;
            case 4:
                arreglo = alumno5;
                break;
            case 5:
                arreglo = alumno6;
                break;
            case 6:
                arreglo = alumno7;
                break;
            case 7:
                arreglo = alumno8;
                break;
            case 8:
                arreglo = alumno9;
                break;
            default:
                arreglo = alumno10;
        }

        for (int x = 4; x <= 6; x++) {
            int calificacion = Integer.parseInt(new String(arreglo[x]));
            suma += calificacion;
        }

        promedio = Math.round((suma / 3)*100.0)/100.0;

        promedios[i] = promedio;
    }

%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla Calificaciones</title>
        <link rel="stylesheet" href="./style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </head>
    <body>
        <div id="content">
            <nav class="navbar navbar-dark bg-dark">
                <a class="navbar-brand" href="#"> Tabla Alumnos :</a>
            </nav>

            <table class="table table-striped" id="tabla">
                <thead >
                    <tr class="bg-warning">
                        <th scope="col">Matricula</th>
                        <th scope="col">Alumno</th>
                        <th scope="col">DDI</th>
                        <th scope="col">DWI</th>
                        <th scope="col">ECBD</th>
                        <th scope="col">Promedio</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td scope="row"><%=alumno1[0]%></td>
                        <td><%=alumno1[1]%> <%=alumno1[2]%> <%=alumno1[3]%></td>
                        <td><%=alumno1[4]%></td>
                        <td><%=alumno1[5]%></td>
                        <td><%=alumno1[6]%></td>
                        <td><%=promedios[0]%></td>
                    </tr>
                    <tr>
                        <td scope="row"><%=alumno2[0]%></td>
                        <td><%=alumno2[1]%> <%=alumno2[2]%> <%=alumno2[3]%></td>
                        <td><%=alumno2[4]%></td>
                        <td><%=alumno2[5]%></td>
                        <td><%=alumno2[6]%></td>
                        <td><%=promedios[1]%></td>

                    </tr>
                    <tr>
                        <td scope="row"><%=alumno3[0]%></td>
                        <td><%=alumno3[1]%> <%=alumno3[2]%> <%=alumno3[3]%></td>
                        <td><%=alumno3[4]%></td>
                        <td><%=alumno3[5]%></td>
                        <td><%=alumno3[6]%></td>
                        <td><%=promedios[2]%></td>
                    </tr>
                    <tr>
                        <td scope="row"><%=alumno4[0]%></td>
                        <td><%=alumno4[1]%> <%=alumno4[2]%> <%=alumno4[3]%></td>
                        <td><%=alumno4[4]%></td>
                        <td><%=alumno4[5]%></td>
                        <td><%=alumno4[6]%></td>
                        <td><%=promedios[3]%></td>

                    </tr>
                    <tr>
                        <td scope="row"><%=alumno5[0]%></td>
                        <td><%=alumno5[1]%> <%=alumno5[2]%> <%=alumno5[3]%></td>
                        <td><%=alumno5[4]%></td>
                        <td><%=alumno5[5]%></td>
                        <td><%=alumno5[6]%></td>
                        <td><%=promedios[4]%></td>

                    </tr>
                    <tr>
                        <td scope="row"><%=alumno6[0]%></td>
                        <td><%=alumno6[1]%> <%=alumno6[2]%> <%=alumno6[3]%></td>
                        <td><%=alumno6[4]%></td>
                        <td><%=alumno6[5]%></td>
                        <td><%=alumno6[6]%></td>
                        <td><%=promedios[5]%></td>

                    </tr>
                    <tr>
                        <td scope="row"><%=alumno7[0]%></td>
                        <td><%=alumno7[1]%> <%=alumno7[2]%> <%=alumno7[3]%></td>
                        <td><%=alumno7[4]%></td>
                        <td><%=alumno7[5]%></td>
                        <td><%=alumno7[6]%></td>
                        <td><%=promedios[6]%></td>

                    </tr>
                    <tr>
                        <td scope="row"><%=alumno8[0]%></td>
                        <td><%=alumno8[1]%> <%=alumno8[2]%> <%=alumno8[3]%></td>
                        <td><%=alumno8[4]%></td>
                        <td><%=alumno8[5]%></td>
                        <td><%=alumno8[6]%></td>
                        <td><%=promedios[7]%></td>

                    </tr>
                    <tr>
                        <td scope="row"><%=alumno9[0]%></td>
                        <td><%=alumno9[1]%> <%=alumno9[2]%> <%=alumno9[3]%></td>
                        <td><%=alumno9[4]%></td>
                        <td><%=alumno9[5]%></td>
                        <td><%=alumno9[6]%></td>
                        <td><%=promedios[8]%></td>

                    </tr>
                    <tr>
                        <td scope="row"><%=alumno10[0]%></td>
                        <td><%=alumno10[1]%> <%=alumno10[2]%> <%=alumno10[3]%></td>
                        <td><%=alumno10[4]%></td>
                        <td><%=alumno10[5]%></td>
                        <td><%=alumno10[6]%></td>
                        <td><%=promedios[9]%></td>

                    </tr>
                </tbody>
            </table>
        </div>




        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>

    </body>
</html>
