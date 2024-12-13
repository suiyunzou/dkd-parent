package com.dkd.manage.service;

import java.util.List;
import com.dkd.manage.domain.VendingMachine;

/**
 * 设备Service接口
 * 
 * @author ddzj
 * @date 2024-10-09
 */
public interface IVendingMachineService 
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
     * 批量删除设备
     * 
     * @param ids 需要删除的设备主键集合
     * @return 结果
     */
    public int deleteVendingMachineByIds(Long[] ids);

    /**
     * 删除设备信息
     * 
     * @param id 设备主键
     * @return 结果
     */
    public int deleteVendingMachineById(Long id);
}
