/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class Maths implements Serializable {

    private int n;

    public Maths(int n) {
        this.n = n;
    }

    public Maths() {
    }

    @XmlElement
    private int getN() {
        return n;
    }

    @XmlElement
    private double getPower() {
        return Math.pow(n, 2);
    }

    private int factorial(int n) {
        int f = 1;
        for (int i = 2; i <= n; i++) {
            f *= i;
        }
        return f;
    }

    @XmlElement
    public int getFactorial() {
        return factorial(n);
    }
}
