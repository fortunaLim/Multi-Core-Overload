# 1 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.c"
# 1 "D:\\TC275\\eclipse\\workspace\\TC275D_SKKU_Beta//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.c"
# 9 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.c"
# 1 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.h" 1
# 13 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.h"
typedef struct Q_node Q_node_ptr;
typedef struct Q_node
{
 int data;
 Q_node_ptr *prev_Link, *next_Link;
}Q_node_ptr;

typedef struct Q_head
{
 int num;
 Q_node_ptr *primary;
}Q_head_ptr;

void initQueue(Q_head_ptr *head);
void enQueue(Q_head_ptr *head, Q_node_ptr *pre, int data);
void deQueue(Q_head_ptr *head, Q_node_ptr *old);
int outQueue(Q_head_ptr *head);
# 10 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.c" 2

void initQueue(Q_head_ptr *head)
{
 head->num = 0;
 head->primary = 0;
}

Q_node_ptr *test;


void enQueue(Q_head_ptr *head, Q_node_ptr *pre, int data)
{
# 30 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.c"
 Q_node_ptr *new = (Q_node_ptr*)malloc(sizeof(Q_node_ptr));
 Q_node_ptr *temp;

 new->data = data;

 if(head->primary == 0)
 {
  head->primary = new;
  head->primary->prev_Link = 0;
  head->primary->next_Link = 0;
  head->num = 1;
 }
 else
 {

  head->num++;

  if(pre == -1)
  {
   new->next_Link = head->primary;
   head->primary->prev_Link = new;
   new->prev_Link = 0;
   head->primary = new;
  }
  else if(pre == 0)
  {


   temp = head->primary;
   while(temp->next_Link != 0)
   {
    temp = temp->next_Link;
   }
   new->prev_Link = temp;
   new->next_Link = 0;
   temp->next_Link = new;
  }
  else
  {

   if(pre->next_Link == 0)
   {
    new->next_Link = 0;
    pre->next_Link = new;
    new->prev_Link = pre;
   }
   else
   {
    new->next_Link = pre->next_Link;
    pre->next_Link = new;
    new->prev_Link = pre;
    new->next_Link->prev_Link = new;
   }
  }
 }
}



void deQueue(Q_head_ptr *head, Q_node_ptr *old)
{
# 99 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.c"
 if(head->num > 0)
 {
  head->num--;


  if(old->next_Link == 0)
  {
   if(head->primary->next_Link == 0)
   {
    head->primary = 0;
   }
   else
   {

    old->prev_Link->next_Link = old->next_Link;
   }
  }
  else if(old->prev_Link == 0)
  {
   head->primary = old->next_Link;
   old->next_Link->prev_Link = old->prev_Link;
  }
  else
  {
   old->prev_Link->next_Link = old->next_Link;
   old->next_Link->prev_Link = old->prev_Link;
  }

  free(old);
 }
}




int outQueue(Q_head_ptr *head)
{




 int output;

 if(head->primary == 0)
 {
  return -1;
 }
 else
 {
  output = head->primary->data;
  deQueue(head, head->primary);
  return output;
 }
}
