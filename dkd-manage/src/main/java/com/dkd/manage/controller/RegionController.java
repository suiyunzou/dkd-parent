package com.dkd.manage.controller;

import com.dkd.common.annotation.Log;
import com.dkd.common.core.controller.BaseController;
import com.dkd.common.core.domain.AjaxResult;
import com.dkd.common.core.page.TableDataInfo;
import com.dkd.common.enums.BusinessType;
import com.dkd.common.utils.poi.ExcelUtil;
import com.dkd.manage.domain.Region;
import com.dkd.manage.domain.vo.RegionVo;
import com.dkd.manage.service.IRegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 区域管理Controller
 * 
 * @author DKD
 * @date 2024-07-03
 */
@RestController
@RequestMapping("/manage/region")
public class RegionController extends BaseController
{
    @Autowired
    private IRegionService regionService;

    /**
     * 查询区域管理列表
     */
    @PreAuthorize("@ss.hasPermi('manage:region:list')")
    @GetMapping("/list")
    public TableDataInfo list(Region region)
    {
        /**
         * 初始化分页信息，准备进行数据查询。
         * 此步骤包括设置分页参数，如页码和每页记录数，为后续的数据检索做准备。
         */
        startPage();

        /**
         * 调用regionService的selectRegionVoList方法，查询区域信息。
         * 此方法返回一个包含区域信息的列表，每个区域信息都是一个RegionVo对象。
         * RegionVo是一个值对象，用于封装区域的相关属性和信息。
         */
        List<RegionVo> listVo = regionService.selectRegionVoList(region);

        /**
         * 将查询到的区域信息列表转换为数据表格格式。
         * getDataTable方法是一个工具方法，用于将列表数据格式化为前端可以使用的数据表格格式。
         * 这样做的目的是为了方便前端展示数据，使得数据的呈现更加直观和易于操作。
         *
         * @param listVo 包含区域信息的列表。
         * @return 格式化后的数据表格。
         */
        return getDataTable(listVo);

    }

    /**
     * 导出区域管理列表
     */
    @PreAuthorize("@ss.hasPermi('manage:region:export')")
    @Log(title = "区域管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Region region)
    {
        List<Region> list = regionService.selectRegionList(region);
        ExcelUtil<Region> util = new ExcelUtil<Region>(Region.class);
        util.exportExcel(response, list, "区域管理数据");
    }

    /**
     * 获取区域管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:region:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(regionService.selectRegionById(id));
    }

    /**
     * 新增区域管理
     */
    @PreAuthorize("@ss.hasPermi('manage:region:add')")
    @Log(title = "区域管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Region region)
    {
        return toAjax(regionService.insertRegion(region));
    }

    /**
     * 修改区域管理
     */
    @PreAuthorize("@ss.hasPermi('manage:region:edit')")
    @Log(title = "区域管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Region region)
    {
        return toAjax(regionService.updateRegion(region));
    }

    /**
     * 删除区域管理
     */
    @PreAuthorize("@ss.hasPermi('manage:region:remove')")
    @Log(title = "区域管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(regionService.deleteRegionByIds(ids));
    }
}
