package edu.nju.zhihudemo.dao.impl;

import edu.nju.zhihudemo.dao.DaoHelper;
import edu.nju.zhihudemo.dao.PeopleDao;
import edu.nju.zhihudemo.model.People;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 */
public class PeopleDaoImpl implements PeopleDao {
    private static PeopleDaoImpl peopleDao = new PeopleDaoImpl();
    private static DaoHelper daoHelper=DaoHelperImpl.getBaseDaoInstance();

    private PeopleDaoImpl(){
        super();
    }

    public static PeopleDaoImpl getInstance(){
        return peopleDao;
    }

    @Override
    public People find(String id) {
        Connection con=daoHelper.getConnection();
        PreparedStatement stmt=null;
        ResultSet result=null;
        try {
            stmt=con.prepareStatement("select * from people where id = ?");
            stmt.setString(1,id);
            result=stmt.executeQuery();
            if(result.next()) {
                People people = new People();
                people.setId(result.getString("id"));
                people.setName(result.getString("name"));
                people.setSex(result.getString("sex"));
                people.setIntroduction(result.getString("introduction"));
                return people;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
//            daoHelper.closeConnection(con);
            daoHelper.closePreparedStatement(stmt);
            daoHelper.closeResult(result);
        }
        return null;
    }
}
