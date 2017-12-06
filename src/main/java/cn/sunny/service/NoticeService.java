package cn.sunny.service;

import cn.sunny.entity.Notice;

import java.util.List;

public interface NoticeService {

    int insertNotice(Notice notice);

    Notice getLastNotice();

    List<Notice> getNoticeListByPage(Integer start, Integer size, String keyword);

    int getCount(String keyword);

    int deleteNotice(Integer id);
}
