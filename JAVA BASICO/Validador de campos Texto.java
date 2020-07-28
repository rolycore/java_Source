       public void ValidacionDatos() {
 
    	String Validadnombre="";
    	try {
    		Validadnombre = JOptionPane.showInputDialog(null, "Ingresa un nombre", "Entrada", 1);
	    	if(!esNombreValido(Validadnombre))
	    		JOptionPane.showMessageDialog(null, "Escriba un nombre correcto para el archivo", "Nombre no valido", 0);
	    	else
	    		//modelo.crearArchivo(Validadnombre);
 
    	}
    	catch(Exception e) {
    		JOptionPane.showMessageDialog(null, "No escribio nada", "Error", 0);
    	}
    }
 
    private boolean esNombreValido(String Validadnombre) {
    	if(Validadnombre.matches("\\d+\\s+([a-zA-Z]+|[a-zA-Z]+\\s[a-zA-Z]+)"))
    		return false;
    	else
    		return true;
    }