package com.lion.service;

import com.lion.entity.Project;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author DJ
 * @date 2017/10/31.
 */
public interface ProjectService {
    List<Project> listAllProject();

    List<Project> listProjectByUserId(Long userId);

    List<Project> listProjectByLabelId(Long labelId);

    List<Project> listProjectByUserAndLabelId(Long userId,Long labelId);

    List<Project> listLatestPro(int num);

    Project getFormer(Long labelId,Long rank);

    Project getLatter(Long labelId,Long rank);

    int addNewProject(Project project);

    Project getProjectById(Long id);

    int editProject(Project project);

    int deleteProject(Long id);
}
