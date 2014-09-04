/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author Pip
 */
public class CircleCalculator {
    
    public String calculateArea(String radius){
        try {
            double area = Double.parseDouble(radius)*Double.parseDouble(radius)*Math.PI;
            return "" + area;
        } catch(NumberFormatException nfe) {
            return "Number was non-numeric";
        }
    }
    
}
