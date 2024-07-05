package com.scan.pass.bean;

import javax.persistence.Entity;

@Entity
public class User {

    @javax.persistence.Id
    @javax.persistence.GeneratedValue(strategy = javax.persistence.GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String address;
    private String dob;
    private String mobileNumber;
    private String gender;

    @javax.persistence.Lob
    @javax.persistence.Column(name = "qr_code", columnDefinition="BLOB")
    private byte[] qrCode;

    // getters and setters for all fields
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    public String getDob() { return dob; }
    public void setDob(String dob) { this.dob = dob; }
    public String getMobileNumber() { return mobileNumber; }
    public void setMobileNumber(String mobileNumber) { this.mobileNumber = mobileNumber; }
    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }
    public byte[] getQrCode() { return qrCode; }
    public void setQrCode(byte[] qrCode) { this.qrCode = qrCode; }
    
    public String getFormattedDetails() {
        return String.format("Name: %s\nAddress: %s\nDate of Birth: %s\nMobile Number: %s\nGender: %s",
                this.name, this.address, this.dob, this.mobileNumber, this.gender);
    }
}
