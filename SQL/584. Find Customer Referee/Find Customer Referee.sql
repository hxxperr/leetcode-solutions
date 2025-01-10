select name
from Customer
where isnull(referee_id, 0) != 2