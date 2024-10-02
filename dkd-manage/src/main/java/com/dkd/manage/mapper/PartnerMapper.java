package com.dkd.manage.mapper;

import com.dkd.manage.domain.Partner;
import com.dkd.manage.domain.vo.PartnerVo;

import java.util.List;

/**
 * 合作商Mapper接口
 * 
 * @author DKD
 * @date 2024-07-03
 */
public interface PartnerMapper 
{
    /**
     * 查询合作商
     * 
     * @param id 合作商主键
     * @return 合作商
     */
    public Partner selectPartnerById(Long id);

    /**
     * 查询合作商列表
     * 
     * @param partner 合作商
     * @return 合作商集合
     */
    public List<Partner> selectPartnerList(Partner partner);
    /**
     * 查询合作商管理列表
     * @param partner
     * @return partnerVo集合
     */
    public List<PartnerVo> selectPartnerVoList(Partner partner);
    /**
     * 新增合作商
     * 
     * @param partner 合作商
     * @return 结果
     */
    public int insertPartner(Partner partner);

    /**
     * 修改合作商
     * 
     * @param partner 合作商
     * @return 结果
     */
    public int updatePartner(Partner partner);

    /**
     * 删除合作商
     * 
     * @param id 合作商主键
     * @return 结果
     */
    public int deletePartnerById(Long id);

    /**
     * 批量删除合作商
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePartnerByIds(Long[] ids);
}
