package live.muabanbds.dao;

import live.muabanbds.mapper.RowMapper;

import java.util.List;

public interface GenericDAO<T> {
    <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
    // sửa, xoá
    void update (String sql, Object... parameters);
    // thêm
    int insert (String sql, Object... parameters);
    int count (String sql, Object... parameters);
}
