/******************* CLIENT CODE *****************/

#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>

typedef unsigned long long ticks;

static __inline__ ticks getticks(void)
{
     unsigned a, d;
     asm("cpuid");
     asm volatile("rdtsc" : "=a" (a), "=d" (d));

     return (((ticks)a) | (((ticks)d) << 32));
}


int main(){
  int clientSocket, portNum, nBytes;
  char buffer[1024];
  struct sockaddr_in serverAddr;
  socklen_t addr_size;

  clientSocket = socket(PF_INET, SOCK_STREAM, 0);

  portNum = 1234;

  serverAddr.sin_family = AF_INET;
  serverAddr.sin_port = htons(portNum);
  serverAddr.sin_addr.s_addr = inet_addr("169.228.66.59");
  memset(serverAddr.sin_zero, '\0', sizeof serverAddr.sin_zero);  

  addr_size = sizeof serverAddr;
  connect(clientSocket, (struct sockaddr *) &serverAddr, addr_size);
  int i = 0;
  ticks tick1, tick2;
  long double time = 0.0;
  for (i=0; i<1000; i++){
    strcpy(buffer,"Hello World hahahahahahahahahahhaha\n");
    //printf("Type a sentence to send to server:\n");
    //fgets(buffer,1024,stdin);
    //printf("Buffer: %s",buffer);

    nBytes = strlen(buffer) + 1;
    tick1 = getticks();
    send(clientSocket,buffer,nBytes,0);
    recv(clientSocket, buffer, 1024, 0);
    tick2 = getticks();
    printf("tick1 :%Ld, tick2 :%Ld\n", tick1, tick2);
    printf("%Ld\n", tick2 - tick1);
    //printf("Received from server: %s\n\n",buffer);
    time += (tick2 - tick1)/2833.279;   
  }
  printf("RTT is %Lf\n", time/1000);
  return 0;
}
