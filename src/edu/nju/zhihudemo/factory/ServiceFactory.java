package edu.nju.zhihudemo.factory;

import edu.nju.zhihudemo.service.PeopleMessageService;
import edu.nju.zhihudemo.service.impl.PeopleMessageServiceImpl;

public class ServiceFactory {

	public static PeopleMessageService getPeopleMessageService(){
		return PeopleMessageServiceImpl.getInstance();
	}
}
