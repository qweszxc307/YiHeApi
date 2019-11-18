package org.crown.projects.product.mapper;

import org.apache.ibatis.annotations.Mapper;

import org.crown.projects.product.model.entity.ProductImage;
import org.crown.framework.mapper.BaseMapper;

/**
 * <p>
 * 产品_图片关系表 Mapper 接口
 * </p>
 *
 * @author whZhang
 */
@Mapper
public interface ProductImageMapper extends BaseMapper<ProductImage> {

        }
