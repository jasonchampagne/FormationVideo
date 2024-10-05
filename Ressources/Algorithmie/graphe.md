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


// Structure d'un graphe (non orienté)
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
        fprintf(stderr, "Impossible d'ajouter le sommet '%c'\n", vertexLabel);
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
        fprintf(stderr, "Impossible d'ajouter l'arete (%c)--(%c)\n", vertexLabelSource, vertexLabelDestination);
}

int graph_degreeOfVertex(struct Graph* g, const char vertexLabel)
{
    int index = graph_indexOfVertex(g, vertexLabel);
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
// à venir
```

---

## C#

```csharp
// à venir
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
# à venir
```
