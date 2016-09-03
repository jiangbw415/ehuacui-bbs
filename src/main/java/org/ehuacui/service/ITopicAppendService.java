package org.ehuacui.service;

import org.ehuacui.model.TopicAppend;

import java.util.List;

/**
 * Created by jianwei.zhou on 2016/8/15.
 */
public interface ITopicAppendService {

    TopicAppend findById(Integer id);

    /**
     * 查询话题追加内容
     *
     * @param tid
     * @return
     */
    List<TopicAppend> findByTid(Integer tid);

    /**
     * 删除话题追加内容
     *
     * @param tid
     */
    void deleteByTid(Integer tid);
}