Set
    i     "supplying oil" /Saudi Arabia, Nigerai/
    j     "market" /India, USA , France/,
    w     "wells for each supplying region" /w1*w10/
    ;
    
Parameter
    a(i)  "capacity of exporting oil in million barrels per day"
    b(j)  "Oil demanding in million barrels per day"
    c(i,j)  "Cost of transportation"
    d(i,j)"Distance of transportation miles"
    f(i)  "freight in dollars mb/day"
    P(i,w)  "the cost of oil extracting"
    ;
    
*c(i,j) = f(i) * d(i,j);
    
Variables
    Y(i,j)"Shipment mb/d"
    Z   "Objective function value"
    ;
    