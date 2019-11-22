package org.crown.projects.classify.mapper;

import org.apache.ibatis.annotations.Mapper;

import org.crown.projects.classify.model.entity.Image;
import org.crown.framework.mapper.BaseMapper;

/**
 * <p>
 * 存储所有图片信息 Mapper 接口
 * </p>
 *
 * @author whZhang
 */
@Mapper
public interface ImageMapper extends BaseMapper<Image> {

        }
