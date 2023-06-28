package live.muabanbds.dao.impl;

import live.muabanbds.dao.IContactDAO;
import live.muabanbds.mapper.ContactMapper;
import live.muabanbds.model.ContactModel;
import live.muabanbds.model.UserModel;

import java.util.ArrayList;
import java.util.List;

public class ContactDAO extends AbstractDAO<ContactModel> implements IContactDAO {
    @Override
    public int save(ContactModel contactModel) {
        String sql = "INSERT INTO contact(name, email, phone, request) VALUES(?, ?, ?, ?)";
        return insert(sql, contactModel.getName(), contactModel.getEmail(), contactModel.getPhone(), contactModel.getRequest());
    }

    @Override
    public ContactModel findOne(int id) {
        String sql = "SELECT * FROM contact WHERE id = ?";
        List<ContactModel> contact = query(sql, new ContactMapper(), id);
        return contact.isEmpty() ? null : contact.get(0);
    }

    @Override
    public List<ContactModel> findAll() {
        String sql = "SELECT * FROM contact";
        return query(sql, new ContactMapper());
    }

    @Override
    public List<ContactModel> findAllWithSort(String sort) {
        String sql = "SELECT * FROM contact ORDER BY " + sort;
        return query(sql, new ContactMapper());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM contact WHERE id = ?";
        update(sql, id);
    }

    @Override
    public int getTotalItemByDate(String date) {
        String sql = "SELECT COUNT(*) FROM contact WHERE DATE(createddate) = ?";
        return count(sql, date);
    }

    @Override
    public List<ContactModel> findByPage(int start, int end, List<ContactModel> lst) {
        List<ContactModel> arr = new ArrayList<>();
        for (int i = start; i <= end; i++) {
            arr.add(lst.get(i));
        }
        return arr;
    }
}
