  #!/bin/sh
  
  echo "before database connection"

  export PGPASSWORD=admin
  export PGDATABASE=todo
  export PGUSER=user

  psql <<END_OF_SQL
  CREATE TABLE foo (x integer);
  INSERT INTO foo VALUES (42);
  SELECT * FROM foo;
  END_OF_SQL
  
  echo "after database connection"