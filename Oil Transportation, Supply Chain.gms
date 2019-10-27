Set

    i "oil resources"    /A,B/
    j "refineris"        /S,T/
    K "customers"        /1,2,3/;
    
Parameter

    D(k)    "Demand of custumers"                                       /1 600,2 400,3  700/
    cap(i)  "Capacity of resources"                                     /A 1000, B 900/
    c(i,j)  "cost of transportation between resources and refineries"
        S   T
    A   2   5
    B   7   4;
    
table cp (j,k) "Cost of transportation between refineries and customers"
        1   2   3
    S   3   4   7
    T   2   5   3;

Variable

    Z
    X(i,j)  "integer variable" 
    Y(j,k)  "integer variable";
    
Equations

    objectivefunction
    co1(k)
    co2(i)
    co3(j);
    
    objectivefunction .. Z =e= sum((i,j),X(i,j)*c(i,j)) + sum((j,k),Y(j,k)*cp(j,k));
    co1(k)            .. sum(j,Y(j,k)) =g= D(k);
    co2(i)            .. sum(j,X(i,j)) =l= cap(i);
    co3(j)            .. sum(i,X(i,j)) =g= sum(k,Y(j,k));