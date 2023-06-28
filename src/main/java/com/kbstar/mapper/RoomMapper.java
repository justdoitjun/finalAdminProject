package com.kbstar.mapper;


import com.github.pagehelper.Page;
import com.kbstar.dto.Marker;
import com.kbstar.dto.Room;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface RoomMapper extends KBMapper<Integer, Room> {
    Page<Room> getpage() throws Exception;

    public List<Room> getloc(String loc);
    public List<Room> getHostRoom(String hostId);
}