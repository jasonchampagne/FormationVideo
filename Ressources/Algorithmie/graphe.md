# Euclide (PGCD)

> **SOMMAIRE**
> + [C](#c)
> + [C++](#c-1)
> + [C#](#c-2)
> + [Java](#java)
> + [JavaScript](#javascript)
> + [PHP](#php)
> + [Python](#python)

---

## C

```c
#define GRAPH_MAX_VERTICES 26
#define GRAPH_UNDEFINED_WEIGHT 0


struct Graph
{
    int neighbours[GRAPH_MAX_VERTICES][GRAPH_MAX_VERTICES];
    char vertices[GRAPH_MAX_VERTICES];
    int nVertices;
};


struct Graph graph_new(void);
bool graph_empty(struct Graph* g);
void graph_print(struct Graph* g);
int graph_indexOfVertex(struct Graph* g, const char vertexLabel);
void graph_addVertex(struct Graph* g, const char vertexLabel);
void graph_addEdge(struct Graph* g, const char vertexLabelSource, const char vertexLabelDestination, const int weight);
void graph_removeEdge(struct Graph* g, const char vertexLabelSource, const char vertexLabelDestination);
void graph_removeVertex(struct Graph* g, const char vertexLabel);
int graph_degreeOfVertex(struct Graph* g, const char vertexLabel);
double graph_density(struct Graph* g);


struct Graph graph_new(void)
{
    struct Graph g;

    for(int i = 0 ; i < GRAPH_MAX_VERTICES ; ++i)
        for(int j = 0 ; j < GRAPH_MAX_VERTICES ; ++j)
            g.neighbours[i][j] = GRAPH_UNDEFINED_WEIGHT;

    g.nVertices = 0;

    return g;
}

bool graph_empty(struct Graph* g)
{
    return (g->nVertices == 0);
}

int graph_indexOfVertex(struct Graph* g, const char vertexLabel)
{
    for(int i = 0 ; i < g->nVertices ; ++i)
        if(g->vertices[i] == vertexLabel)
            return i;

    return -1;
}

void graph_addVertex(struct Graph* g, const char vertexLabel)
{
    if(g->nVertices < GRAPH_MAX_VERTICES && graph_indexOfVertex(g, vertexLabel) == -1)
    {
        g->vertices[g->nVertices] = vertexLabel;
        g->nVertices++;
    }
    else
        fprintf(stderr, "Impossible d'ajouter le sommet %c\n", vertexLabel);
}

void graph_addEdge(struct Graph* g, const char vertexLabelSource, const char vertexLabelDestination, const int weight)
{
    int srcIndex = graph_indexOfVertex(g, vertexLabelSource);
    int destIndex = graph_indexOfVertex(g, vertexLabelDestination);

    if(srcIndex != -1 && destIndex != -1 && weight != GRAPH_UNDEFINED_WEIGHT)
    {
        g->neighbours[srcIndex][destIndex] = weight;
        g->neighbours[destIndex][srcIndex] = weight;
    }
    else
        fprintf(stderr, "Impossible d'ajouter l'arete (%c)--(%c)\n", vertexLabelSource, vertexLabelDestination);
}

void graph_removeVertex(struct Graph* g, const char vertexLabel)
{
    int index = graph_indexOfVertex(g, vertexLabel);

    if(index == -1)
    {
        fprintf(stderr, "Impossible de supprimer le sommet %c (il n'existe pas)\n", vertexLabel);
        return;
    }

    for(int i = 0; i < g->nVertices; ++i)
    {
        g->neighbours[i][index] = GRAPH_UNDEFINED_WEIGHT;
        g->neighbours[index][i] = GRAPH_UNDEFINED_WEIGHT;
    }

    for(int i = index ; i < g->nVertices - 1 ; ++i)
    {
        for(int j = 0 ; j < g->nVertices ; ++j)
            g->neighbours[j][i] = g->neighbours[j][i + 1];

        for(int j = 0 ; j < g->nVertices ; ++j)
            g->neighbours[i][j] = g->neighbours[i + 1][j];

        g->vertices[i] = g->vertices[i + 1];
    }

    g->nVertices--;
}

void graph_removeEdge(struct Graph* g, const char vertexLabelSource, const char vertexLabelDestination)
{
    int srcIndex = graph_indexOfVertex(g, vertexLabelSource);
    int destIndex = graph_indexOfVertex(g, vertexLabelDestination);

    if(srcIndex != GRAPH_UNDEFINED_WEIGHT && destIndex != GRAPH_UNDEFINED_WEIGHT)
    {
        g->neighbours[srcIndex][destIndex] = GRAPH_UNDEFINED_WEIGHT;
        g->neighbours[destIndex][srcIndex] = GRAPH_UNDEFINED_WEIGHT;
    }
    else
        fprintf(stderr, "Impossible de supprimer l'arete (%c)--(%c)\n", vertexLabelSource, vertexLabelDestination);
}

int graph_degreeOfVertex(struct Graph* g, const char vertexLabel)
{
    int index = graph_indexOfVertex(g, vertexLabel);

    if(index == -1)
    {
        fprintf(stderr, "Le sommet %c n'existe pas\n", vertexLabel);
        return -1;
    }

    int degree = 0;

    for(int i = 0 ; i < g->nVertices ; ++i)
        if(g->neighbours[index][i] != GRAPH_UNDEFINED_WEIGHT)
            degree++;

    return degree;
}

double graph_density(struct Graph* g)
{
    int edges = 0;

    for(int i = 0 ; i < g->nVertices ; ++i)
        for(int j = i + 1 ; j < g->nVertices ; ++j)
            if(g->neighbours[i][j] != GRAPH_UNDEFINED_WEIGHT)
                edges++;

    return (2.0 * edges) / (g->nVertices * (g->nVertices - 1));
}
```

---

## C++

```cpp
constexpr int GRAPH_MAX_VERTICES = 26;
constexpr int GRAPH_UNDEFINED_WEIGHT = 0;


class Graph
{
    public:
        Graph() : nVertices(0)
        {
            for(auto& row : neighbours)
                row.fill(GRAPH_UNDEFINED_WEIGHT);
        }

        bool empty() const
        {
            return nVertices == 0;
        }

        int indexOfVertex(const char vertexLabel) const
        {
            for(auto i = 0 ; i < nVertices ; ++i)
                if(vertices[i] == vertexLabel)
                    return i;

            return -1;
        }

        void addVertex(const char vertexLabel)
        {
            if(nVertices < GRAPH_MAX_VERTICES && indexOfVertex(vertexLabel) == -1)
            {
                vertices[nVertices] = vertexLabel;
                nVertices++;
            }
            else
                std::cerr << "Impossible d'ajouter le sommet " << vertexLabel << std::endl;
        }

        void addEdge(const char vertexSource, const char vertexDestination, const int weight)
        {
            auto sourceIndex = indexOfVertex(vertexSource);
            auto destinationIndex = indexOfVertex(vertexDestination);

            if(sourceIndex != -1 && destinationIndex != -1 && weight != GRAPH_UNDEFINED_WEIGHT)
            {
                neighbours[sourceIndex][destinationIndex] = weight;
                neighbours[destinationIndex][sourceIndex] = weight;
            }
            else
                std::cerr << "Impossible d'ajouter l'arete (" << vertexSource << ")--(" << vertexDestination << ")" << std::endl;
        }

        void removeVertex(const char vertexLabel)
        {
            auto index = indexOfVertex(vertexLabel);

            if(index == -1)
            {
                std::cerr << "Impossible de supprimer le sommet " << vertexLabel << std::endl;
                return;
            }

            for(auto i = 0 ; i < nVertices ; ++i)
            {
                neighbours[i][index] = GRAPH_UNDEFINED_WEIGHT;
                neighbours[index][i] = GRAPH_UNDEFINED_WEIGHT;
            }

            for(auto i = index ; i < nVertices - 1 ; ++i)
            {
                for(auto j = 0 ; j < nVertices ; ++j)
                    neighbours[j][i] = neighbours[j][i + 1];

                for(auto j = 0 ; j < nVertices ; ++j)
                    neighbours[i][j] = neighbours[i + 1][j];

                vertices[i] = vertices[i + 1];
            }

            nVertices--;
        }

        void removeEdge(const char vertexSource, const char vertexDestination)
        {
            auto sourceIndex = indexOfVertex(vertexSource);
            auto destinationIndex = indexOfVertex(vertexDestination);

            if(sourceIndex != -1 && destinationIndex != -1)
            {
                neighbours[sourceIndex][destinationIndex] = GRAPH_UNDEFINED_WEIGHT;
                neighbours[destinationIndex][sourceIndex] = GRAPH_UNDEFINED_WEIGHT;
            }
            else
                std::cerr << "Impossible de supprimer l'arete (" << vertexSource << ")--(" << vertexDestination << ")" << std::endl;
        }

        int degreeOfVertex(const char vertexLabel) const
        {
            auto index = indexOfVertex(vertexLabel);

            if(index == -1)
                throw std::runtime_error("Le sommet n'existe pas");

            return std::count_if(neighbours[index].begin(), neighbours[index].begin() + nVertices, [](auto weight)
            {
                return weight != GRAPH_UNDEFINED_WEIGHT;
            });
        }

        double density() const
        {
            auto edges = 0;

            for(auto i = 0 ; i < nVertices ; ++i)
                for(auto j = i + 1 ; j < nVertices ; ++j)
                    if(neighbours[i][j] != GRAPH_UNDEFINED_WEIGHT)
                        edges++;

            return (2.0 * edges) / (nVertices * (nVertices - 1));
        }

    private:
        std::array<std::array<int, GRAPH_MAX_VERTICES>, GRAPH_MAX_VERTICES> neighbours{};
        std::array<char, GRAPH_MAX_VERTICES> vertices{};
        int nVertices;
};
```

---

## C#

```csharp
public class Graph
{
    private const int GRAPH_MAX_VERTICES = 26;
    private const int GRAPH_UNDEFINED_WEIGHT = 0;

    private int[,] neighbours = new int[GRAPH_MAX_VERTICES, GRAPH_MAX_VERTICES];
    private char[] vertices = new char[GRAPH_MAX_VERTICES];
    private int nVertices = 0;


    public Graph()
    {
        for(int i = 0 ; i < GRAPH_MAX_VERTICES ; ++i)
            for(int j = 0 ; j < GRAPH_MAX_VERTICES ; ++j)
                neighbours[i, j] = GRAPH_UNDEFINED_WEIGHT;
    }

    public bool Empty() => nVertices == 0;

    public int IndexOfVertex(char vertexLabel)
    {
        for(int i = 0 ; i < nVertices ; ++i)
            if(vertices[i] == vertexLabel)
                return i;

        return -1;
    }

    public void AddVertex(char vertexLabel)
    {
        if(nVertices < GRAPH_MAX_VERTICES && IndexOfVertex(vertexLabel) == -1)
        {
            vertices[nVertices] = vertexLabel;
            nVertices++;
        }
        else
            Console.Error.WriteLine($"Impossible d'ajouter le sommet {vertexLabel}");
    }

    public void AddEdge(char vertexSource, char vertexDestination, int weight)
    {
        int sourceIndex = IndexOfVertex(vertexSource);
        int destinationIndex = IndexOfVertex(vertexDestination);

        if(sourceIndex != -1 && destinationIndex != -1 && weight != GRAPH_UNDEFINED_WEIGHT)
        {
            neighbours[sourceIndex, destinationIndex] = weight;
            neighbours[destinationIndex, sourceIndex] = weight;
        }
        else
            Console.Error.WriteLine($"Impossible d'ajouter l'arete ({vertexSource})--({vertexDestination})");
    }

    public void RemoveVertex(char vertexLabel)
    {
        int index = IndexOfVertex(vertexLabel);

        if(index == -1)
        {
            Console.Error.WriteLine($"Impossible de supprimer le sommet {vertexLabel} (il n'existe pas)");
            return;
        }

        for(int i = 0 ; i < nVertices ; ++i)
        {
            neighbours[i, index] = GRAPH_UNDEFINED_WEIGHT;
            neighbours[index, i] = GRAPH_UNDEFINED_WEIGHT;
        }

        for(int i = index ; i < nVertices - 1 ; ++i)
        {
            for(int j = 0 ; j < nVertices ; ++j)
                neighbours[j, i] = neighbours[j, i + 1];

            for(int j = 0 ; j < nVertices ; ++j)
                neighbours[i, j] = neighbours[i + 1, j];

            vertices[i] = vertices[i + 1];
        }

        nVertices--;
    }

    public void RemoveEdge(char vertexSource, char vertexDestination)
    {
        int sourceIndex = IndexOfVertex(vertexSource);
        int destinationIndex = IndexOfVertex(vertexDestination);

        if(sourceIndex != -1 && destinationIndex != -1)
        {
            neighbours[sourceIndex, destinationIndex] = GRAPH_UNDEFINED_WEIGHT;
            neighbours[destinationIndex, sourceIndex] = GRAPH_UNDEFINED_WEIGHT;
        }
        else
            Console.Error.WriteLine($"Impossible de supprimer l'arete ({vertexSource})--({vertexDestination})");
    }


    public int DegreeOfVertex(char vertexLabel)
    {
        int index = IndexOfVertex(vertexLabel);

        if(index == -1)
            throw new Exception($"Le sommet {vertexLabel} n'existe pas");

        int degree = 0;

        for(int i = 0 ; i < nVertices ; ++i)
            if(neighbours[index, i] != GRAPH_UNDEFINED_WEIGHT)
                degree++;

        return degree;
    }

    public double Density()
    {
        int edges = 0;

        for(int i = 0 ; i < nVertices ; ++i)
            for(int j = i + 1 ; j < nVertices ; ++j)
                if(neighbours[i, j] != GRAPH_UNDEFINED_WEIGHT)
                    edges++;

        return (2.0 * edges) / (nVertices * (nVertices - 1));
    }
}
```

---

## Java

```java
// à venir
```

---

## JavaScript

```js
// à venir
```

---

## PHP

```php
// à venir
```

---

## Python

```python
class Graph:
    GRAPH_MAX_VERTICES = 26
    GRAPH_UNDEFINED_WEIGHT = 0


    def __init__(self):
        self.neighbours = [[self.GRAPH_UNDEFINED_WEIGHT for _ in range(self.GRAPH_MAX_VERTICES)] for _ in range(self.GRAPH_MAX_VERTICES)]
        self.vertices = [None] * self.GRAPH_MAX_VERTICES
        self.n_vertices = 0

    def empty(self):
        return self.n_vertices == 0

    def index_of_vertex(self, vertex_label):
        for i in range(self.n_vertices):
            if self.vertices[i] == vertex_label:
                return i

        return -1

    def add_vertex(self, vertex_label):
        if self.n_vertices < self.GRAPH_MAX_VERTICES and self.index_of_vertex(vertex_label) == -1:
            self.vertices[self.n_vertices] = vertex_label
            self.n_vertices += 1
        else:
            print(f'Impossible d\'ajouter le sommet {vertex_label}')

    def add_edge(self, vertex_source, vertex_destination, weight):
        source_index = self.index_of_vertex(vertex_source)
        destination_index = self.index_of_vertex(vertex_destination)

        if source_index != -1 and destination_index != -1 and weight != self.GRAPH_UNDEFINED_WEIGHT:
            self.neighbours[source_index][destination_index] = weight
            self.neighbours[destination_index][source_index] = weight
        else:
            print(f'Impossible d\'ajouter l\'arête ({vertex_source})--({vertex_destination})')

    def remove_vertex(self, vertex_label):
        index = self.index_of_vertex(vertex_label)

        if index == -1:
            print(f'Impossible de supprimer le sommet {vertex_label} (il n\'existe pas)')
            return

        for i in range(self.n_vertices):
            self.neighbours[i][index] = self.GRAPH_UNDEFINED_WEIGHT
            self.neighbours[index][i] = self.GRAPH_UNDEFINED_WEIGHT

        for i in range(index, self.n_vertices - 1):
            for j in range(self.n_vertices):
                self.neighbours[j][i] = self.neighbours[j][i + 1]

            for j in range(self.n_vertices):
                self.neighbours[i][j] = self.neighbours[i + 1][j]

            self.vertices[i] = self.vertices[i + 1]

        self.n_vertices -= 1

    def remove_edge(self, vertex_source, vertex_destination):
        source_index = self.index_of_vertex(vertex_source)
        destination_index = self.index_of_vertex(vertex_destination)

        if source_index != -1 and destination_index != -1:
            self.neighbours[source_index][destination_index] = self.GRAPH_UNDEFINED_WEIGHT
            self.neighbours[destination_index][source_index] = self.GRAPH_UNDEFINED_WEIGHT
        else:
            print(f'Impossible de supprimer l\'arête ({vertex_source})--({vertex_destination})')


    def degree_of_vertex(self, vertex_label):
        index = self.index_of_vertex(vertex_label)

        if index == -1:
            raise Exception(f'Le sommet {vertex_label} n\'existe pas')

        degree = 0

        for i in range(self.n_vertices):
            if self.neighbours[index][i] != self.GRAPH_UNDEFINED_WEIGHT:
                degree += 1

        return degree

    def density(self):
        edges = 0

        for i in range(self.n_vertices):
            for j in range(i + 1, self.n_vertices):
                if self.neighbours[i][j] != self.GRAPH_UNDEFINED_WEIGHT:
                    edges += 1

        return (2.0 * edges) / (self.n_vertices * (self.n_vertices - 1))
```
