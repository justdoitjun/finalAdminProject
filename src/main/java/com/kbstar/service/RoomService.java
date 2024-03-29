package com.kbstar.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.kbstar.dto.Room;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.RoomMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Slf4j
@Service
public class RoomService implements KBService<Integer, Room> {



    @Resource(name = "roomMapper")
    RoomMapper mapper;
    @Override
    public void register(Room room) throws Exception {
        mapper.insert(room);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Room room) throws Exception {

    }

    @Override
    public Room get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Room> get() throws Exception {
        return mapper.selectall();
    }
    public Page<Room> getPage(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 6); // 3: 한화면에 출력되는 개수
        return mapper.getpage();
    }
    public List<Room> getHostRoom(String hostId) throws Exception{
        return mapper.getHostRoom(hostId);
    }

}
