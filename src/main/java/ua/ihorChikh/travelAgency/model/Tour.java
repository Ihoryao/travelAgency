package ua.ihorChikh.travelAgency.model;

public class Tour {
    private int id;
    private String name;
    private String type;
    private int price;
    private int persons;
    private int hotelRate;
    private boolean hot;
    private int discountStep;
    private int discountMaxValue;
    private String description;

    public Tour(int id, String name, String type, int price, int persons, int hotelRate,
                boolean hot, int discountStep, int discountMaxValue, String description) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.price = price;
        this.persons = persons;
        this.hotelRate = hotelRate;
        this.hot = hot;
        this.discountStep = discountStep;
        this.discountMaxValue = discountMaxValue;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getPersons() {
        return persons;
    }

    public void setPersons(int persons) {
        this.persons = persons;
    }

    public int getHotelRate() {
        return hotelRate;
    }

    public void setHotelRate(int hotelRate) {
        this.hotelRate = hotelRate;
    }

    public boolean isHot() {
        return hot;
    }

    public void setHot(boolean hot) {
        this.hot = hot;
    }

    public int getDiscountStep() {
        return discountStep;
    }

    public void setDiscountStep(int discountStep) {
        this.discountStep = discountStep;
    }

    public int getDiscountMaxValue() {
        return discountMaxValue;
    }

    public void setDiscountMaxValue(int discountMaxValue) {
        this.discountMaxValue = discountMaxValue;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Tour{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", price=" + price +
                ", persons=" + persons +
                ", hotelRate=" + hotelRate +
                ", hot=" + hot +
                ", discountStep=" + discountStep +
                ", discountMaxValue=" + discountMaxValue +
                ", description='" + description + '\'' +
                '}';
    }
}
