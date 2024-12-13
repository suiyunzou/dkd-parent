package com.dkd.manage.mapper;

import com.dkd.manage.domain.VendingMachine;

import java.util.List;

/**
 * 设备Mapper接口
 * 
 * @author ddzj
 * @date 2024-10-09
 */
public interface VendingMachineMapper 
{
    /**
     * 查询设备
     * 
     * @param id 设备主键
     * @return 设备
     */
    public VendingMachine selectVendingMachineById(Long id);

    /**
     * 查询设备列表
     * 
     * @param vendingMachine 设备
     * @return 设备集合
     */
    public List<VendingMachine> selectVendingMachineList(VendingMachine vendingMachine);

    /**
     * 新增设备
     * 
     * @param vendingMachine 设备
     * @return 结果
     */
    public int insertVendingMachine(VendingMachine vendingMachine);

    /**
     * 修改设备
     * 
     * @param vendingMachine 设备
     * @return 结果
     */
    public int updateVendingMachine(VendingMachine vendingMachine);

    /**
     * 删除设备
     * 
     * @param id 设备主键
     * @return 结果
     */
    public int deleteVendingMachineById(Long id);

    /**
     * 批量删除设备
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteVendingMachineByIds(Long[] ids);
}
