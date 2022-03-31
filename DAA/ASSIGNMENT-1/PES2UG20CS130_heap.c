// Name: H M Mythreya
// SRN: PES2UG20CS130
#include "heap.h"
#include <stdlib.h>


//heapify array upon inserting a new element
static void ins_heapify(heap_t *heap,int *count_ptr,int n,int i){
    int p = (i-1)/2;
    if((heap->arr)[p]>0){
        (*count_ptr)++;
        if((heap->arr)[i] > (heap->arr)[p]){
            int temp = (heap->arr)[i];
            (heap->arr)[i] = (heap->arr)[p];
            (heap->arr)[p] = temp;
            ins_heapify(heap,count_ptr,n,p);
        }
    }
}

//heapify array upon deleting an element
static void del_heapify(heap_t *heap,int *count_ptr,int n,int i){
    int t = i;
    int left = 2*i+1;
    int right = left+1;

    (*count_ptr)++;
    if(left < n && (heap->arr)[left] > (heap->arr)[t])
        t = left;

    (*count_ptr)++;
    if (right < n && (heap->arr)[right] > (heap->arr)[t])
        t = right;

    if (t != i){
        int temp = (heap->arr)[i];
        (heap->arr)[i] = (heap->arr)[t];
        (heap->arr)[t] = i;

        del_heapify(heap,count_ptr,n,t);
    }
}

// Initialise heap
void init_heap(heap_t *heap, int max_size) {
    heap_t *temp = malloc(sizeof(heap_t));
    temp->max_size = max_size;
    temp->size = 0;
    temp->arr = calloc(sizeof(int), max_size);
    heap = temp;
}

// Insert element "key" to heap "heap"
// and store the number of key comparisons made in the
// location pointed to by count_ptr.
void insert(heap_t *heap, int key, int *count_ptr) {
    if(heap->size>=heap->max_size) return;
    (heap->arr[heap->size]) = key;
    (heap->size)++;
    ins_heapify(heap,count_ptr,heap->size,heap->size-1);
}

// *Removes and Returns* the maximum element in the heap
// and store the number of key comparisons made in the
// location pointed to by count_ptr.
int extract_max(heap_t *heap, int *count_ptr) {
    int max = (heap->arr)[0];
    int last = (heap->arr)[heap->size];
    (heap->arr)[0] = last;
    (heap->size)--;
    del_heapify(heap,count_ptr,heap->size,0);
    return max;
}

// Searches for the element key in the heap
// Returns the element if found, else -1
int search(const heap_t *heap, int key, int *count_ptr) {
    (*count_ptr)++;
    if(key>(heap->arr)[0]) return -1;
    int min = find_min(heap,count_ptr);
    if(key<min) return -1;
    for(int i=0;i<heap->size;i++)
        if(key==heap->arr[i]) return key;
    return -1;
}


// Returns the maximum value of the element in the heap
// and store the number of key comparisons made in the
// location pointed to by count_ptr.
int find_max(const heap_t *heap, int *count_ptr) {
    int max = heap->arr[0];
    for(int i=0;i<heap->size;i++){
        (*count_ptr)++;
        if(max < heap->arr[i]) max = heap->arr[i];
    }
    return max;
}

// Returns the minimum value in the heap
int find_min(const heap_t *heap, int *count_ptr) {
    int min = heap->arr[0];
    for(int i=0;i<heap->size;i++){
        (*count_ptr)++;
        if(min > heap->arr[i]) min = heap->arr[i];
    }
    return min;
}

// Clears the heap for reuse
void clear_heap(heap_t *heap) {
    for(int i=0;i<heap->size;i++) heap->arr[i] = 0;
    heap->size=0;
}

// Frees all resources acquired to initialize heap
void free_heap(heap_t *heap) {
    free(heap->arr);
    free(heap);
}
