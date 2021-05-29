package ua.ihorChikh.travelAgency.model;

import java.util.Date;

public class Order {
    private int id;
    private int userId;
    private int tourId;
    private String status;
    private Date registrationDate;
    private Date paymentDate;

    public Order() {
    }

    public Order(int id, int userId, int tourId, String status, Date registrationDate, Date paymentDate) {
        this.id = id;
        this.userId = userId;
        this.tourId = tourId;
        this.status = status;
        this.registrationDate = registrationDate;
        this.paymentDate = paymentDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getTourId() {
        return tourId;
    }

    public void setTourId(int tourId) {
        this.tourId = tourId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", userId=" + userId +
                ", tourId=" + tourId +
                ", status='" + status + '\'' +
                ", registrationDate=" + registrationDate +
                ", paymentDate=" + paymentDate +
                '}';
    }
}
