

package modelo;


       
import config.Conexion;
import java.sql.*;
import java.util.List;
import java.util.List;      
        
public class AlumnosDAO {
    
    
    Connection conexion;
    
    
    public AlumnosDAO (){
    
    Conexion con= new Conexion();
    conexion=con.getConection();
    
    }

    public List<Alumnos> listarAlumnos(){
        
        PreparedStatement ps;
        ResultSet rs;
        List<Alumnos> lista= new ArrayList<>();
        
    try{ps=conexion.prepareStatement("SELECT * FROM participantes");
        rs=ps.executeQuery();
        while (rs.next()){
        int id=rs.getInt("id");
        String nombres=rs.getString("nombre");
        String apellidos=rs.getString("apellido");
        String email=rs.getString("email");
        int telefono=rs.getInt("telefono");
        Alumnos alumnos=new Alumnos(id, nombres, apellidos, email, telefono);
        lista.add(alumnos);
        }return lista;

    } catch (SQLException e){
        System.out.println(e.toString());
        return null;
                }
        
}
        public Alumnos mostrarAlumno (int _id){

PreparedStatement ps;
        ResultSet rs;
        Alumnos alumno=null;
        
        try{
        ps=conexion.prepareStatement("SELECT * FROM"+ "participanntes WHERE id=?");
        ps.setInt (1, _id);
        
while (rs.next()){
        int id=rs.getInt("id");
        String nombres=rs.getString("nombre");
        String apellidos=rs.getString("apellido");
        String email=rs.getString("email");
        int telefono=rs.getInt("telefono");
        alumno= new Alumnos (id, nombres, apellidos, email, telefono);
}return alumno;
}
catch(SQLException e){
System.out.println(e.toString());
        return null;
}
        }
public boolean insertarAlumno(Alumnos alumno){
PreparedStatement ps;
        try{
        ps=conexion.prepareStatement( "INSERT INTO participantes"
        +"(nombres, apellidos, email, telefono)"
        + "VALUES (?,?,?,?)");
        ps.setString(1, alumno.getNombres());
         ps.setString(2, alumno.getApellidos());
         ps.setString(3, alumno.getEmail());
         ps.setInt(4, alumno.getTelefono());
        
        ps.execute();
        return true;
} catch(SQLException e){
    System.out.println(e.toString());
        return false;
        }
}

public boolean actualizarAlumno(Alumnos alumno){

PreparedStatement ps;
        try{
        ps=conexion.prepareStatement( "UPDATE"
        + " participantes SET 'nombres'=?"
        +"'apellidos'=?, 'email'=?"
        + "'telefono'=? WHERE id=?");
     
        ps.setString(1, alumno.getNombres());
         ps.setString(2, alumno.getApellidos());
         ps.setString(3, alumno.getEmail());
         ps.setInt(4, alumno.getTelefono());
        ps.setInt(5, alumno.getId());
        ps.execute();
        return true;
} catch(SQLException e){
    System.out.println(e.toString());
        return false;
        }


}

public boolean eliminarAlumno(int _id){
PreparedStatement ps;
        try{
ps=conexion.prepareStatement("DELETE FROM participantes WHERE id=?");
        ps.setInt(1, _id);
        ps.execute();
        return true;
    }catch (SQLException e){
    System.out.println(e.toString());
        return false;
}
}

public boolean ingresarUsuario(String email, String clave){

    PreparedStatement ps;
      ResultSet rs;
       try{
    ps=conexion.prepareStatement("SELECT * FROM usuarios WHERE email=?");
        ps.setString(1, email);
        rs= ps.executeQuery();
        while(rs.next()){
        return email.equals(rs.getString("email"))&& clave.equals(rs.getString("password"));
        }return false;
        }catch (SQLException e){
    System.out.println(e.toString());
        return false;
}

}
}