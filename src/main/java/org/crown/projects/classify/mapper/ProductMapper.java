package org.crown.projects.classify.mapper;

import org.apache.ibatis.annotations.Mapper;

import org.crown.projects.classify.model.entity.Product;
import org.crown.framework.mapper.BaseMapper;

/**
 * <p>
 * 产品表 Mapper 接口
 * </p>
 *
 * @author whZhang
 */
@Mapper
public interface ProductMapper extends BaseMapper<Product> {

        }
