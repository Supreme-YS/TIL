# Scheduler

- 스케쥴러란?
    - 시스템이 실행하고자 할 때 CPU를 프로그램에게 할당하는 과정
    - 프로세스(작업) 실행을 위한 일종의 계획표다.
    - 계획표의 종류는 3가지이다.
    
- Scheduling Queue(스케쥴링 큐)란?
    - 스케쥴링을 위한 큐. 즉, 프로세스를 관리하기 위한 큐
    - Job Queue (Batch Queue): 현재 시스템 내에 있는 모든 프로세스의 집합
    - Ready Queue : 현재 메모리 내에 존재하면서 CPU를 점유해서 실행되기를 기다리는 프로세스의 집합
    - Device Queue : Device I/O(Input, Output) 작업을 대기하고 있는 프로세스의 집합
    
- 스케쥴러의 종류
    - 장기 스케쥴러, Job Scheduler
        - *degree of multiprogramming의 제어
        - 디스크와 메모리 사이의 스케쥴링을 담당
        - 어떤 프로세스에 메모리를 할당하여 Ready Queue로 보낼지 결정하는 역할
        
    - 단기 스케쥴러, CPU Scheduler
        - 메모리와 CPU 사이의 스케쥴링을 담당
        - 어떤 프로세스를 Running(실행) 상태로 전환시킬지 결정하는 역할
        
    - 중기 스케쥴러, Swapper(스와퍼)
        - *degree of multiprogramming 제어
        - 여유 공간을 마련하기 위해 프로세스를 통째로 메모리에서 디스크로 날려버리는(Swap) 역할(Swap in, Swap out)

![IMG_CED2DA0DC446-1.jpeg](img/img_1.jpeg)

- 스케쥴링 성능 척도
    - 처리량(Throughput) : 시간당 몇 개의 작업을 처리하는가
    - 응답시간(Response) : 프로세스 실행 후, 첫 응답 시간
    - 대기시간(Waiting Time) : Ready Queue에서 기다린 시간 → 즉, CPU가 서비스를 받기 위해 Ready Queue에서 얼마나 기다렸는지
    - 반환시간(Turn Around Time) : 작업이 Ready Queue에 들어가서 나오는 시간의 차이 → 짧을수록 좋다.
    - CPU 사용률(CPU Utilization) : CPU가 안놀고 일하는 정도