# TodoService
https://localhost:44331/api/TodoItems/
https://localhost:44331/swagger/v1/swagger.json
https://localhost:44331/swagger/

[
  {
    "id": 1,
    "name": "Item1",
    "isComplete": false
  },
  {
    "id": 3,
    "name": "Item3",
    "isComplete": true
  }
]

use TodoService;
select * from TodoItems;
insert into TodoItems(Name, IsComplete) VALUES('Item1', 0);
insert into TodoItems(Name, IsComplete) VALUES('Item2', 1);
select * from TodoItems;
-- delete from TodoItems;
