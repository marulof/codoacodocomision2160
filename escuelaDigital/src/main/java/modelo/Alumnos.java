

package modelo;


public class Alumnos {
private int id;
private String nombres;
private String apellidos;
private String email;
private int telefono;

public int getId(){
    return id; 
}

public void setId(int id){
    this.id=id;
    
}
public int getTelefono(){
    return telefono; 
}

public void setTelefono(int telefono){
    this.telefono=telefono;
    
}

public String getNombres(){
    return nombres;
}

public String getApellidos(){
    return apellidos;
}
public String getEmail(){
    return email;
}

public void setNombres(String nombres){
    this.nombres=nombres;
    
}

public void setApellidos(String apellidos){
    this.apellidos=apellidos;
    
}
public void setEmail(String email){
    this.email=email;
    
}


public Alumnos(int id, String nombres, String apellidos, String email, int telefono){
    this.id=id;
    this.nombres=nombres;
    this.apellidos=apellidos;
    this.email=email;
    this.telefono=telefono;
    
    
}
}
