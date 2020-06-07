# nao funcionando, somente checando logica
def dfs(graphframe):
    visited = [] 
    def recursive(node):
        visited.append(node)
        for a, b in graphframe.find("(a)-[]->(b);(b)-[]->(a)").filter("(a.id = '{}')".format(node)):
            if a.id not in visited:
                recursive(a.id)
            continue
    for i in graphframe.vertices.id:
        recursive(i)
    return visited