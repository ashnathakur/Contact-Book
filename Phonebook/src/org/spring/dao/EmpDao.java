package org.spring.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import org.spring.model.Emp;    
    
public class EmpDao {    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    
public int save(Emp p){    
    String sql="insert into users(name,email,city,country,contact) values('"+p.getName()+"','"+p.getEmail()+"','"+p.getCity()+"','"+p.getCountry()+"','"+p.getContact()+"')";    
    return template.update(sql);    
}    
public int update(Emp p){    
    String sql="update users set name='"+p.getName()+"', email='"+p.getEmail()+"', city='"+p.getCity()+"', country='"+p.getCountry()+"',contact='"+p.getContact()+"' where id="+p.getId()+"";    
    return template.update(sql);    
}    
public int delete(int id){    
    String sql="delete from users where id="+id+"";    
    return template.update(sql);    
}    
public Emp getEmpById(int id){    
    String sql="select * from users where id=?";    
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));    
}    
public List<Emp> getEmployees(){    
    return template.query("select * from users",new RowMapper<Emp>(){    
        public Emp mapRow(ResultSet rs, int row) throws SQLException {    
            Emp e=new Emp();    
            e.setId(rs.getInt(1));    
            e.setName(rs.getString(2));    
            e.setEmail(rs.getString(3)); 
            e.setCity(rs.getString(4));
            e.setCountry(rs.getString(5)); 
            e.setContact(rs.getString(6));    
            return e;    
        }    
    });    
}    
}   