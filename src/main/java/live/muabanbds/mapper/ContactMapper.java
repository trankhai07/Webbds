package live.muabanbds.mapper;

import live.muabanbds.model.ContactModel;

import java.sql.ResultSet;

public class ContactMapper implements RowMapper<ContactModel> {
    @Override
    public ContactModel mapRow(ResultSet resultSet) {
        try {
            ContactModel contact = new ContactModel();
            contact.setId(resultSet.getInt("id"));
            contact.setName(resultSet.getString("name"));
            contact.setEmail(resultSet.getString("email"));
            contact.setPhone(resultSet.getString("phone"));
            contact.setRequest(resultSet.getString("request"));
            contact.setCreateddate(resultSet.getDate("createddate"));
            return contact;
        } catch (Exception e) {
            return null;
        }
    }
}
