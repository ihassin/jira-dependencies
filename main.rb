#!/usr/bin/env ruby

require_relative './lib/dependency'

puts 'Loading dependencies'

graph = DependencyGraph.new

graph.add_dependency(ticket: 1561, is_blocking: 1460)

graph.add_dependency(ticket: 1552, is_blocking: 1410)
graph.add_dependency(ticket: 1552, is_blocking: 1459)
graph.add_dependency(ticket: 1552, is_blocking: 1458)
graph.add_dependency(ticket: 1552, is_blocking: 1488)
graph.add_dependency(ticket: 1552, is_blocking: 1489)
graph.add_dependency(ticket: 1552, is_blocking: 1490)

graph.add_dependency(ticket: 1544, is_blocking: 1410)
graph.add_dependency(ticket: 1544, is_blocking: 1412)
graph.add_dependency(ticket: 1544, is_blocking: 1411)
graph.add_dependency(ticket: 1544, is_blocking: 1459)
graph.add_dependency(ticket: 1544, is_blocking: 1493)
graph.add_dependency(ticket: 1544, is_blocking: 1491)
graph.add_dependency(ticket: 1544, is_blocking: 1494)
graph.add_dependency(ticket: 1544, is_blocking: 1461)
graph.add_dependency(ticket: 1544, is_blocking: 1470)
graph.add_dependency(ticket: 1544, is_blocking: 1410)
graph.add_dependency(ticket: 1544, is_blocking: 1470)
graph.add_dependency(ticket: 1544, is_blocking: 1410)
graph.add_dependency(ticket: 1544, is_blocking: 1494)
graph.add_dependency(ticket: 1544, is_blocking: 1491)
graph.add_dependency(ticket: 1544, is_blocking: 1493)
graph.add_dependency(ticket: 1544, is_blocking: 1459)
graph.add_dependency(ticket: 1544, is_blocking: 1412)
graph.add_dependency(ticket: 1544, is_blocking: 1411)

graph.add_dependency(ticket: 1463, is_blocking: 1534)
graph.add_dependency(ticket: 1438, is_blocking: 1534)

graph.add_dependency(ticket: 1532, is_blocking: 1410)
graph.add_dependency(ticket: 364, is_blocking: 1410)
graph.add_dependency(ticket: 1357, is_blocking: 1410)
graph.add_dependency(ticket: 1552, is_blocking: 1410)

graph.add_dependency(ticket: 1357, is_blocking: 1502)
graph.add_dependency(ticket: 1255, is_blocking: 1502)

graph.add_dependency(ticket: 1568, is_blocking: 1499)
graph.add_dependency(ticket: 1255, is_blocking: 1499)

graph.add_dependency(ticket: 1357, is_blocking: 1494)

graph.add_dependency(ticket: 1357, is_blocking: 1493)

graph.add_dependency(ticket: 1357, is_blocking: 1491)

graph.add_dependency(ticket: 1552, is_blocking: 1490)
graph.add_dependency(ticket: 1552, is_blocking: 1489)
graph.add_dependency(ticket: 1552, is_blocking: 1488)

graph.add_dependency(ticket: 1532, is_blocking: 1488)
graph.add_dependency(ticket: 1532, is_blocking: 1480)

graph.add_dependency(ticket: 1255, is_blocking: 1477)

graph.add_dependency(ticket: 1357, is_blocking: 1476)

graph.add_dependency(ticket: 1412, is_blocking: 1476)
graph.add_dependency(ticket: 1255, is_blocking: 1476)

graph.add_dependency(ticket: 1357, is_blocking: 1475)
graph.add_dependency(ticket: 1255, is_blocking: 1475)
graph.add_dependency(ticket: 1411, is_blocking: 1475)

graph.add_dependency(ticket: 1568, is_blocking: 1473)
graph.add_dependency(ticket: 1568, is_blocking: 1471)

graph.add_dependency(ticket: 1357, is_blocking: 1470)

graph.add_dependency(ticket: 1621, is_blocking: 1469)
graph.add_dependency(ticket: 1357, is_blocking: 1469)

graph.add_dependency(ticket: 1443, is_blocking: 1464)
graph.add_dependency(ticket: 1443, is_blocking: 1413)
graph.add_dependency(ticket: 1443, is_blocking: 1377)
graph.add_dependency(ticket: 1443, is_blocking: 1466)
graph.add_dependency(ticket: 1443, is_blocking: 1456)
graph.add_dependency(ticket: 1443, is_blocking: 1413)
graph.add_dependency(ticket: 1443, is_blocking: 1410)
graph.add_dependency(ticket: 1443, is_blocking: 1544)
graph.add_dependency(ticket: 1443, is_blocking: 1552)
graph.add_dependency(ticket: 1443, is_blocking: 1589)

graph.add_dependency(ticket: 1444, is_blocking: 1465)

graph.add_dependency(ticket: 1463, is_blocking: 1534)

graph.add_dependency(ticket: 1444, is_blocking: 1462)

graph.add_dependency(ticket: 1561, is_blocking: 1460)
graph.add_dependency(ticket: 1532, is_blocking: 1460)
graph.add_dependency(ticket: 364, is_blocking: 1460)
graph.add_dependency(ticket: 1270, is_blocking: 1460)

graph.add_dependency(ticket: 1552, is_blocking: 1459)

graph.add_dependency(ticket: 1532, is_blocking: 1458)
graph.add_dependency(ticket: 1552, is_blocking: 1458)

graph.add_dependency(ticket: 1583, is_blocking: 1456)

graph.add_dependency(ticket: 1584, is_blocking: 1454)

graph.add_dependency(ticket: 1438, is_blocking: 1368)
graph.add_dependency(ticket: 1438, is_blocking: 1431)
graph.add_dependency(ticket: 1438, is_blocking: 1534)

graph.add_dependency(ticket: 1425, is_blocking: 219)
graph.add_dependency(ticket: 1425, is_blocking: 1363)
graph.add_dependency(ticket: 1425, is_blocking: 1438)
graph.add_dependency(ticket: 1425, is_blocking: 1443)
graph.add_dependency(ticket: 1425, is_blocking: 1298)
graph.add_dependency(ticket: 1425, is_blocking: 1282)
graph.add_dependency(ticket: 1425, is_blocking: 1236)
graph.add_dependency(ticket: 1425, is_blocking: 1237)
graph.add_dependency(ticket: 1425, is_blocking: 948)
graph.add_dependency(ticket: 1425, is_blocking: 1239)
graph.add_dependency(ticket: 1425, is_blocking: 1333)
graph.add_dependency(ticket: 1425, is_blocking: 1532)
graph.add_dependency(ticket: 1425, is_blocking: 1445)
graph.add_dependency(ticket: 1425, is_blocking: 1585)
graph.add_dependency(ticket: 1425, is_blocking: 361)
graph.add_dependency(ticket: 1425, is_blocking: 1255)
graph.add_dependency(ticket: 1425, is_blocking: 1270)

graph.add_dependency(ticket: 1438, is_blocking: 1431)

graph.add_dependency(ticket: 1412, is_blocking: 1476)

graph.add_dependency(ticket: 1357, is_blocking: 1412)
graph.add_dependency(ticket: 1621, is_blocking: 1412)

graph.add_dependency(ticket: 1411, is_blocking: 1475)
graph.add_dependency(ticket: 1532, is_blocking: 1411)

graph.add_dependency(ticket: 1532, is_blocking: 1410)
graph.add_dependency(ticket: 364, is_blocking: 1410)
graph.add_dependency(ticket: 1357, is_blocking: 1410)
graph.add_dependency(ticket: 1552, is_blocking: 1410)

graph.add_dependency(ticket: 1532, is_blocking: 1409)
graph.add_dependency(ticket: 1445, is_blocking: 1406)

graph.add_dependency(ticket: 1363, is_blocking: 1255)
graph.add_dependency(ticket: 1363, is_blocking: 1270)
graph.add_dependency(ticket: 1363, is_blocking: 1264)
graph.add_dependency(ticket: 1363, is_blocking: 1258)


graph.add_dependency(ticket: 1339, is_blocking: 1344)

graph.add_dependency(ticket: 1298, is_blocking: 1138)
graph.add_dependency(ticket: 1298, is_blocking: 1236)
graph.add_dependency(ticket: 1298, is_blocking: 1239)

graph.add_dependency(ticket: 1270, is_blocking: 1460)
graph.add_dependency(ticket: 1363, is_blocking: 1270)
graph.add_dependency(ticket: 1425, is_blocking: 1270)

graph.add_dependency(ticket: 1363, is_blocking: 1264)

puts 'Persisting'
graph.save_graph(file_name: 'graph.yml')

# graph = DependencyGraph.new(file_name: 'graph.yml')

puts "#{graph.most_depended_on} will unblock the dependency graph"
puts "#{graph.ultimate_dependencies} has the most dependencies"
