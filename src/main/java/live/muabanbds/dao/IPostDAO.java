package live.muabanbds.dao;

import live.muabanbds.model.PostModel;

import java.util.List;

public interface IPostDAO extends GenericDAO<PostModel> {
    PostModel findOne(int id);
    List<PostModel> findAll();
    int save(PostModel postModel);
    int getTotalItem();

    PostModel update(PostModel postModel);

    void delete(int id);

    List<PostModel> findByStatus();
    int getTotalItemByStatus(int status);
    int getTotalItemByMonth(int month);

    int upNewPost(PostModel postModel);
}
