
% ---------- Square ----------

square(Side, Area, Perimeter) :-

    Area is Side * Side,
    Perimeter is 4 * Side.



% ---------- Rectangle ----------

rectangle(Width, Height, Area, Perimeter) :-

    Area is Width * Height,
    Perimeter is 2 * (Width + Height).



% ---------- Triangle ----------

triangle(Base, VerticalHeight, SideA, SideB, SideC, Area, Perimeter) :-

    Area is 0.5 * Base * VerticalHeight,

    Perimeter is SideA + SideB + SideC.
