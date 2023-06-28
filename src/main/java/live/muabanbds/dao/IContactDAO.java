package live.muabanbds.dao;

import live.muabanbds.dao.GenericDAO;
import live.muabanbds.model.ContactModel;

import java.util.List;

public interface IContactDAO extends GenericDAO<ContactModel> {
    int save(ContactModel contactModel);
    ContactModel findOne(int id);
    List<ContactModel> findAll();
    List<ContactModel> findAllWithSort(String sort);
    void delete(int id);
    int getTotalItemByDate(String date);
    List<ContactModel> findByPage(int start, int end, List<ContactModel> lst);
}
