package ua.ihorChikh.travelAgency.model;

public class TourImage {
    private int id;
    private int tourId;
    private String imageURL;

    public TourImage() {
    }

    public TourImage(int id, int tourId, String imageURL) {
        this.id = id;
        this.tourId = tourId;
        this.imageURL = imageURL;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTourId() {
        return tourId;
    }

    public void setTourId(int tourId) {
        this.tourId = tourId;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    @Override
    public String toString() {
        return "TourImage{" +
                "id=" + id +
                ", tourId=" + tourId +
                ", imageURL='" + imageURL + '\'' +
                '}';
    }
}
