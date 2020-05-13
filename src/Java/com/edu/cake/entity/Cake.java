package com.edu.cake.entity;

public class Cake {
    private int id;
    private String title;
    private int cid;
    private String image_path;
    private double price;
    private String taste;
    private int sweetness;
    private double weight;
    private int size;
    private String material;
    private String status;
    private String path;
    private Catalog catalog;

    public Cake() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getImage_path() {
        return image_path;
    }

    public void setImage_path(String image_path) {
        this.image_path = image_path;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTaste() {
        return taste;
    }

    public void setTaste(String taste) {
        this.taste = taste;
    }

    public int getSweetness() {
        return sweetness;
    }

    public void setSweetness(int sweetness) {
        this.sweetness = sweetness;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Catalog getCatalog() {
        return catalog;
    }

    public void setCatalog(Catalog catalog) {
        this.catalog = catalog;
    }

    @Override
    public String toString() {
        return "Cake{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", cid=" + cid +
                ", image_path='" + image_path + '\'' +
                ", price=" + price +
                ", taste='" + taste + '\'' +
                ", sweetness=" + sweetness +
                ", weight=" + weight +
                ", size=" + size +
                ", material='" + material + '\'' +
                ", status='" + status + '\'' +
                ", path='" + path + '\'' +
                ", catalog=" + catalog +
                '}';
    }

    public Cake(int id, String title, int cid, String image_path, double price, String taste, int sweetness, double weight, int size, String material, String status, String path, Catalog catalog) {
        this.id = id;
        this.title = title;
        this.cid = cid;
        this.image_path = image_path;
        this.price = price;
        this.taste = taste;
        this.sweetness = sweetness;
        this.weight = weight;
        this.size = size;
        this.material = material;
        this.status = status;
        this.path = path;
        this.catalog = catalog;
    }
}
