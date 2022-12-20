package com.model;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 236351
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class Circle implements Serializable {

    private int radius;

    public Circle() {
    }

    public Circle(int radius) {
        this.radius = radius;
    }

    @XmlElement
    private int getRadius() {
        return radius;
    }

    @XmlElement
    private double getPerimeter() {
        return 2 * radius * Math.PI;
    }

    @XmlElement
    private double getArea() {
        return radius * radius * Math.PI;
    }
}
