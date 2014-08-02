#!/usr/bin/env rdmd

/************************************************************************
 * Computes heights in centimeters for a range of heights expressed in
 * feet and inches.
 ************************************************************************/
import std.stdio;

void main() {
    // constants - introduced by immutable keyword (type is inferred)
    // compiler allows for omitting type declarations when they can unambiguously be determined by context
    immutable inchesPerFoot = 12;
    immutable cmPerInch= 2.54;

    foreach (feet; 5 .. 7) {
        foreach (inches; 0 .. inchesPerFoot) {
            writeln(feet, "'", inches, "''\t", (feet * inchesPerFoot + inches) * cmPerInch);
        }
    }
}
