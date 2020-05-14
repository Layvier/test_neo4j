const neo4j = require('neo4j-driver');


const neo4jDriver = neo4j.driver("bolt://0.0.0.0", neo4j.auth.basic("neo4j", "password"), {
    logging: { logger: (l, m) => console.log(m) },
  });

  neo4jDriver.verifyConnectivity().then(a => console.log(a))

const session = neo4jDriver.session()

session.run('MATCH (n) RETURN n').then((a) => {
    console.log(a)
    session.close()
    neo4jDriver.close()
})