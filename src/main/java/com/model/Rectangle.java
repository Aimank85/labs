package com.model;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 2363
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class Rectangle implements Serializable {

    private int width;
    private int height;

    public Rectangle() {
    }

    public Rectangle(int width, int height) {
        this.width = width;
        this.height = height;

    }

    @XmlElement
    private double getPerimeter() {
        return 2 * (height + width);
    }

    @XmlElement
    private double getArea() {
        return height * width;
    }
}
