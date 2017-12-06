package cn.sunny.service.impl;

import cn.sunny.dao.NoticeDao;
import cn.sunny.entity.Notice;
import cn.sunny.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeDao noticeDao;

    @Override
    public int insertNotice(Notice notice) {
        return noticeDao.insertNotice(notice);
    }

    @Override
    public Notice getLastNotice() {
        return noticeDao.getLastNotice();
    }

    @Override
    public List<Notice> getNoticeListByPage(Integer start, Integer size, String keyword) {
        return noticeDao.getNoticeListByPage(start, size, keyword);
    }

    @Override
    public int getCount(String keyword) {
        return noticeDao.getCount(keyword);
    }

    @Override
    public int deleteNotice(Integer id) {
        return noticeDao.deleteNotice(id);
    }
}
