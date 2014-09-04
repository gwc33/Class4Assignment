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
public class TriangleCalculator {
    
    public String calculateArea(String sideOne, String sideTwo){
        try {
            
            double doubleSideOne = Double.parseDouble(sideOne);
            double doubleSideTwo = Double.parseDouble(sideTwo);
            double sideThreeSquared = doubleSideOne*doubleSideOne+doubleSideTwo*doubleSideTwo;
            double sideThree = Math.sqrt(sideThreeSquared);
            double semiperimeter = (doubleSideOne + doubleSideTwo + sideThree)/2;
            http://en.wikipedia.org/wiki/Heron%27s_formula
            double area = base*height*.5;
            return "" + area;
        } catch(NumberFormatException nfe) {
            return "Number was non-numeric";
        }
    }
    
}
