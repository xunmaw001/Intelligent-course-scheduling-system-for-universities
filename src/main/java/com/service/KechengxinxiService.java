package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KechengxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KechengxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KechengxinxiView;


/**
 * 课程信息
 *
 * @author 
 * @email 
 * @date 2021-04-14 13:17:19
 */
public interface KechengxinxiService extends IService<KechengxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KechengxinxiVO> selectListVO(Wrapper<KechengxinxiEntity> wrapper);
   	
   	KechengxinxiVO selectVO(@Param("ew") Wrapper<KechengxinxiEntity> wrapper);
   	
   	List<KechengxinxiView> selectListView(Wrapper<KechengxinxiEntity> wrapper);
   	
   	KechengxinxiView selectView(@Param("ew") Wrapper<KechengxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KechengxinxiEntity> wrapper);
   	
}

