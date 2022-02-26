# CPU Scheduler, Scheduling Algorithm

담당자: 심영석
상태: 운영체제
속성: 2022년 2월 25일 오후 3:02

- CPU Scheduling
    - 단기 스케쥴링이라고도 한다.
    - 단기 스케쥴러(CPU Scheduling)을 리마인드 해보자
        - 메모리와 CPU 사이의 스케쥴링을 담당하는 것으로 어떤 프로세스를 실행(Running) 상태로 전환할 지 결정하는 것이다.

- 선점과 비선점
    - 선점 (Preemptive) : 자리 뺏기 가능, 누가 앉아서 먼저 자리에 앉아서 작업하고 있는데 그게 끝나든 안끝나든 상관없이 자리를 뺏어서 내 작업 실행하기 즉, 새치기 가능한 방식
    - 비선점 (Non-Preemptive) : 절대 안뺏기는 방식 즉, 새치기 절대 불가능
    
- CPU Scheduing Algorithm
    - First-Come, First-Served (FCFS)
        - 먼저 온 놈 먼저 처리
        - 세상에서 가장 많이 사용
        - 꼭 좋은 성능을 보장하는 것은 아님
        - Convoy Effect (호위효과) : 작업들이 작업 하나 끝나기까지 졸졸졸 따라다니는 것처럼 보여서 이름 붙임
        - 비선점 스케쥴링 방식
        
    - Shortest-Job-First (SJF)
        - 작업 시간이 짧은 놈 먼저 처리
        - 대기 시간을 줄이는 관점에선 최고
        - 비선점 스케쥴링 방식
        
    - Priority
        - 우선 순위가 높은 놈부터
        - 즉, 작업에 우선순위를 매겨놓고 그 순서대로 작업을 진행하는 것
        - Starvation(기아) 현상 발생 가능 : 계속해서 우선순위가 높은 프로세스가 먼저 실행되기 때문에, 먼저 도착했음에도 불구하고 우선순위가 낮은 프로세스가 계속해서 CPU를 할당받지 못하는 현상
        - Aging 기법 : 먼저 도착한 프로세스가 나이를 먹으며 우선순위가 올라가는 기법으로 기아 현상 방지 가능
        - 선점 스케쥴링 방식
        
    - Round-Robin (RR)
        - 빙빙 돌면서 순서대로
        - 프로세스에 동일한 할당시간만큼 순서대로 계속 CPU를 할당
        - 응답시간이 빠름, 모든 프로세스가 공정하게 CPU를 할당받을 수 있다.
        - 선점 스케쥴링 방식
        
    - Multilevel Queue (다단계큐)
        - Background와 Foreground의 프로세스에 각기 다른 알고리즘을 적용하는 방식
        - Background에는 FCFS, Foreground에는 RoundRobin 적용
        - 큐 사이에 서로 다른 할당시간을 적용한다
        - 선점 스케쥴링 방식
        
    - Multilevel Feedback Queue (다단계 피드백 큐)
        - 프로세스가 큐 사이를 이동 가능
        - 각 큐에 서로 다른 CPU 할당 시간(Time Quantume)을 적용함으로써, 프로세스가 해당 시간 동안 작업을 다 처리하지 못했다면, 점점 긴 할당시간을 할당해주는 큐로 이동
        - 기아 현상이 발생 가능 → 에이징 기법으로 해결
        - 선점 스케쥴링 방식

- Dispatch Latency 와 Context Switching
    - Dispatch Latency : 스케쥴러가 선택한 프로세스를 CPU에 할당하는 요소를 Dispatch라고 함. 따라서, 이 Dispatch가 하나의 프로세스를 중단하고, 다른 프로세스를 실행하기까지 걸리는 시간
    
    - Context Switching : *인터럽트로 인해 다음 우선순위의 프로세스가 실행되어야 할 때, 기존 상태(Context)를 저장하고, 다음 프로세스를 수행할 수 있도록 상태를 레지스터에 적재하는 방법