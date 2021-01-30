#ifndef EXAM_TEST 
#define EXAM_TEST

#include <stdio.h>
#include <new>


// graph node structure
struct Node
{
    int id;       // id of this vertex
    Node *left, *right;  // pointers to siblings
    int parents;
	// simplest constuctor
    Node() { left = right = nullptr; parents = 0; }
};


// search for node with given id
Node * GetNode (Node * p, int id);


// read graph from file,
// maxId will be the maximal id among all graph nodes
Node * ReadGraph(char * fname, int &maxId);


// delete the graph  (like destructor)
void  DeleteGraph(Node *root, int maxId);


// print the graph  (nodes and their left and right siblings)
void PrintGraph(FILE *f, Node* root);

void special_node(Node* node);

void findparents(Node* root, Node* node, Node** p1, Node** p2);

void ifspecial(Node* root, Node* node);
#endif // EXAM_TEST








