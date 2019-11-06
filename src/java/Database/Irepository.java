/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.util.List;

/**
 *
 * @author casperhasnsen
 */
public interface Irepository<T>  {
    
    T getById(int id);
    
    void Add(T item);  
    
    List<T> getAll();
    
    void deleteById(int id);
    
}
