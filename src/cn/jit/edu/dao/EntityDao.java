package cn.jit.edu.dao;
import java.util.List;

public interface EntityDao {   
    public List<Object> createQuery(final String queryString);   
    public Object save(final Object model);   
    public void update(final Object model);   
    public void delete(final Object model);  
    public List<Object> findPage(final String queryString,String first,String pagesize);
    public void delete(final String queryString);
    public void update(final String queryString);
    public int count(final String queryString);
}  
