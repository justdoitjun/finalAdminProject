package com.kbstar.mapper;

import com.kbstar.dto.Host;
import com.kbstar.dto.HostRoom;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface HostMapper extends KBMapper<String, Host> {
    public void updatePwd(Host host);
    public List<HostRoom> selectMyAllRoom(String hostId);
}