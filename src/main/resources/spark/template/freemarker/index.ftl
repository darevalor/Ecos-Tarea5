<!DOCTYPE html>
<html lang="en">
    <head>
        <title>File Upload</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function validar(xRange, dof){
                x = document.getElementById(xRange);
                gdl = document.getElementById(dof);
                
                if(x.value == "" || !validarSiNumero(x.value)){
                    x.focus();
                    alert("El rango X no es un numero valido");
                    return false;
                }else if(gdl.value == "" || !validarSiNumero(gdl.value)){
                    gdl.focus();
                    alert("Los grados de libertad no es un numero valido");
                    return false;
                }
                return true;
            }
            
            function validarSiNumero(texto){
                if (!/^([0-9])*$/.test(texto) && !/^\d+(?:\.\d{0,4})$/.test(texto))
                    return false;
                else 
                    return true;
            }
        </script>
    </head>
    <body>
        <form method="GET" action="upload" onsubmit="return validar('xRange','dof')">
            <table style="width: 50%" border="1">
                <tr>
                    <td colspan="2">
                        <h2>Ingrese los siguientes valores y de clic en calcular 
                            <br><br>
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        Rango superior X: 
                    </td>
                    <td>
                        <input type="text" name="xRange" id="xRange" /> <br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Grados de Libertad (dof): 
                    </td>
                    <td>
                        <input type="text" name="dof" id="dof" /> <br/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Calcular" name="calcular" id="calcular" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>