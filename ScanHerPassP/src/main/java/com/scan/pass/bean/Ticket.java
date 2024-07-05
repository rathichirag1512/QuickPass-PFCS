package com.scan.pass.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Ticket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String gender;
    private String fromStop;
    private String toStop;
    private int amount;

    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFromStop() {
        return fromStop;
    }

    public void setFromStop(String fromStop) {
        this.fromStop = fromStop;
    }

    public String getToStop() {
        return toStop;
    }

    public void setToStop(String toStop) {
        this.toStop = toStop;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
