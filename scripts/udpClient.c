#include<stdio.h> //printf
#include<string.h> //memset
#include<stdlib.h> //exit(0);
#include<arpa/inet.h>
#include<sys/socket.h>
 
#define SERVER "169.228.66.59"
#define BUFLEN 1024  //Max length of buffer
#define PORT 8888   //The port on which to send data

typedef unsigned long long ticks;

static __inline__ ticks getticks(void)
{
     unsigned a, d;
     asm("cpuid");
     asm volatile("rdtsc" : "=a" (a), "=d" (d));

     return (((ticks)a) | (((ticks)d) << 32));
}

 
void die(char *s)
{
    perror(s);
    exit(1);
}
 
int main(void)
{
    struct sockaddr_in si_other;
    int s, i, slen=sizeof(si_other);
    char buf[BUFLEN];
    char message[BUFLEN];
    ticks tick1, tick2;
    long double time = 0.0; 
    if ( (s=socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
    {
        die("socket");
    }
 
    memset((char *) &si_other, 0, sizeof(si_other));
    si_other.sin_family = AF_INET;
    si_other.sin_port = htons(PORT);
     
    if (inet_aton(SERVER , &si_other.sin_addr) == 0) 
    {
        fprintf(stderr, "inet_aton() failed\n");
        exit(1);
    }
 
    //while(1)
    //{
        //send the message
    memset(buf,'\0', BUFLEN);
    tick1 = getticks();
    if (sendto(s, message, strlen(message) , 0 , (struct sockaddr *) &si_other, slen)==-1)
    {
        die("sendto()");
    }
    //receive a reply and print it
    //clear the buffer by filling null, it might have previously received data
    //try to receive some data, this is a blocking call
    if (recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &si_other, &slen) == -1)
    {
        die("recvfrom()");
    }
    tick2 = getticks();
    //puts(buf);
    //printf("tick1 :%Ld, tick2 :%Ld\n", tick1, tick2);
    //printf("%Ld\n", tick2 - tick1);
    //printf("Received from server: %s\n\n",buffer);
    time += (tick2 - tick1)/2833.279;
    printf("%Lf\n", time);
    //}
 
    close(s);
    return 0;
}
