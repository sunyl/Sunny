package cn.sunny.dao;

import cn.sunny.entity.Notice;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoticeDao {

    int insertNotice(Notice notice);

    Notice getLastNotice();

    List<Notice> getNoticeListByPage(@Param("start") Integer start, @Param("size") Integer size, @Param("keyword") String keyword);

    int getCount(@Param("keyword") String keyword);

    int deleteNotice(Integer id);
}
