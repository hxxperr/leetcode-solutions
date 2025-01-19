select
    x,y,z,
    case
        when x = y and y = z then 'Yes'
        when (x + y) > z and x + z > y and z + y > x  then 'Yes'
        else 'No'
    end as triangle
from Triangle