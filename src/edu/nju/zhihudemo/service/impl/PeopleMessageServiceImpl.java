package edu.nju.zhihudemo.service.impl;

import edu.nju.zhihudemo.factory.DaoFactory;
import edu.nju.zhihudemo.model.People;
import edu.nju.zhihudemo.service.PeopleMessageService;

/**
 *
 */
public class PeopleMessageServiceImpl implements PeopleMessageService {

    private static PeopleMessageService peopleMessageService=new PeopleMessageServiceImpl();
    public static PeopleMessageService getInstance()
    {
        return peopleMessageService;
    }

    private PeopleMessageServiceImpl(){
        super();
    }

    @Override
    public People getPeopleMessage(String id) {
        return DaoFactory.getPeopleDao().find(id);
    }
}
