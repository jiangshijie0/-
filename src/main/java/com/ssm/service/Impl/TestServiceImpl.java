package com.ssm.service.Impl;

import com.ssm.mapper.TestMapper;
import com.ssm.po.Student;
import com.ssm.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImpl implements TestService {

    @Autowired
    TestMapper testMapper;

    @Override
    public List<Student> queryAllStudents() {
        return testMapper.selectAllStudents();
    }
}
