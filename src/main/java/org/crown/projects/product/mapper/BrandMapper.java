package org.crown.projects.product.mapper;

import org.apache.ibatis.annotations.Mapper;

import org.crown.projects.product.model.entity.Brand;
import org.crown.framework.mapper.BaseMapper;

/**
 * <p>
 * 品牌表 Mapper 接口
 * </p>
 *
 * @author whZhang
 */
@Mapper
public interface BrandMapper extends BaseMapper<Brand> {

        }
