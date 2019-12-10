package org.crown.projects.mine.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.crown.framework.mapper.BaseMapper;
import org.crown.projects.mine.model.entity.Label;

import java.util.List;

/**
 * <p>
 * 标签表 Mapper 接口
 * </p>
 *
 * @author ykMa
 */
@Mapper
public interface LabelMapper extends BaseMapper<Label> {
    /**
     * 根据openId和标签类型Id查询标签
     * @param openId
     * @param brandId
     * @return
     */
    List<Integer> queryLabelIdByOpenId(@Param("openId") String openId,@Param("brandId") Integer brandId);

    /**
     * 删除用户当前标签类型下的所有标签
     *
     * @param brandId
     * @param openId
     */
    void deleteLabelByBrandIdAndOpenId(@Param("brandId") Integer brandId, @Param("openId") String openId);

    /**
     * 新增当前标签类型下的标签
     *
     * @param id
     * @param brandId
     * @param openId
     */
    void saveLabel(@Param("id") Integer id, @Param("customerId")Integer customerId,@Param("brandId") Integer brandId, @Param("openId") String openId);
}
