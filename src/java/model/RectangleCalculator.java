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
public class RectangleCalculator {
    
    public String calculateArea(String length, String width){
        try {
            double area = Double.parseDouble(length)*Double.parseDouble(width);
            return "" + area;
        } catch(NumberFormatException nfe) {
            return "Number was non-numeric";
        }
    }
    
}
