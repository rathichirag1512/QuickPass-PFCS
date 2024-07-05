package com.scan.pass.service;

import com.scan.pass.bean.Stop;
import com.scan.pass.repository.StopRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StopService {
    @Autowired
    private StopRepository stopRepository;

    public List<Stop> getAllStops() {
        return stopRepository.findAll();
    }

    public Stop addStop(Stop stop) {
        return stopRepository.save(stop);
    }
}
