package com.kbstar.mapper;


import com.github.pagehelper.Page;
import com.kbstar.dto.Board;
import com.kbstar.dto.Room;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface BoardMapper extends KBMapper<Integer, Board> {
    Page<Board> getpage() throws Exception;
}