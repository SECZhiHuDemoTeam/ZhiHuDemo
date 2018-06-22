package edu.nju.zhihudemo.factory;

import edu.nju.zhihudemo.dao.PeopleDao;
import edu.nju.zhihudemo.dao.impl.PeopleDaoImpl;


public class DaoFactory {
/*	public static UserDao getUserDao()
	{
		return UserDaoImpl.getInstance();
	}*/

	public static PeopleDao getPeopleDao(){
		return PeopleDaoImpl.getInstance();
	}
	/*	public static TradeDao getTradeDao()
	{
		return TradeDaoImpl.getInstance();
	}*/
}
