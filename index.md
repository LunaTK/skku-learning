---
title: 성균공부방 개발자 기초 스킬
---

참고 강의 : [The Missing Semester of Your CS Education](https://missing.csail.mit.edu)

## 1차시 - 2021.01.08

<iframe width="560" height="315" src="https://www.youtube.com/embed/qIkuqkZWdeI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

[강의 교안 다운로드](/res/1차시.pdf)

- 강의 소개
- 리눅스 소개, 배워야 하는 이유
- 쉘과 터미널
- VirtualBox에 Ubuntu 설치하기
- 쉘 기초 커맨드

## 2차시 - 2021.01.13

<iframe width="560" height="315" src="https://www.youtube.com/embed/TfYlTCASJRs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- 패키지 관리자 : `apt`
```bash
# 설치할 수 있는 패키지 목록 업데이트
$ sudo apt update
# vim 설치
$ sudo apt install vim -y
```
- 명령어 설명서 : `man`, [tldr](https://github.com/tldr-pages/tldr)
```bash
# ssh 명령어 메뉴얼
$ man ssh
# scp 명령어 사용 예제
$ tldr scp
```
- 쉘 원격 접속 : `ssh`, `sftp`, `scp`
```bash
# ipaddress 주소의 머신에 8822포로 user 계정 로그인
$ ssh -p 8822 user@ipaddress
```
  - VirtualBox에 `ssh` 접속
  - sftp GUI 도구 : [FileZila](https://m.blog.naver.com/myrikason/221802491577), [WinSCP](https://codedosa.com/1050)
- 터미널 명령어 기록 검색 : ctrl-r
- 터미널 텍스트 에디터 : `vim`
  - [vim 단축키](https://gmlwjd9405.github.io/2019/05/14/vim-shortkey.html)
  - [vim 에디터 이쁘게 사용하기](https://medium.com/sunhyoups-story/vim-에디터-이쁘게-사용하기-5b6b8d546017)
  - [.vimrc](/res/vimrc.txt)

## 3차시 - 2021.01.15

<iframe width="560" height="315" src="https://www.youtube.com/embed/hbENe_YAqHA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 기초 커맨드

- `echo` : 전달받은 인자를 그대로 출력
- `cat` : 파일 내용 출력
- `grep` : 파일에서 내용 검색
  - 정규 표현식 (Regular Expression)
- `find` : 이름으로 파일 찾기
- 파이프(`|`)와 리다이렉션 (`>`, `<`)

### 데이터에서 원하는 부분 추출하기
- `wc` : 파일 내 줄, 단어, 글자 수 출력
- `head` : 앞에서 n 줄 출력
- `tail` : 뒤에서 n 줄 출력
- `cut` : 각 줄을 delimeter로 잘라서 특정 필드 출력
- `sort` : 정렬
- `sed` (**s**tream **ed**itor) : 한줄씩 원하는 편집 작업 (치환, 삭제 등) 수행
  - [https://jhnyang.tistory.com/287](https://jhnyang.tistory.com/287)
- `awk` : sed와 비슷하지만 훨씬 더 많은 기능을 수행 가능
  - 내부적으로 자체 스크립팅 언어 사용
  - [https://recipes4dev.tistory.com/171](https://recipes4dev.tistory.com/171)
  
```bash
$ awk 'length($0) > 10 { print $3, $4, $5} ' ./file.txt

$ awk 'BEGIN { print "TITLE : Field value 1,2"} {print $1, $2} END {print "Finished"}' file.txt
```

### 네트워크에서 데이터 받아오기
- `curl` : 커맨드라인에서 HTTP 요청 수행
- `wget` : URL을 통한 파일 다운로드

## 4차시 - 2021.01.20

<iframe width="560" height="315" src="https://www.youtube.com/embed/Ztl5oB_FD-0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 쉘 스크립트 작성하기

[쉘 스크립트 참고자료](https://w51014.tistory.com/1)

- 변수
- `#!` : 사용할 인터프리터 지정
- 치환
  - "$val" : $val 부분을 해당 변수로 치환
  - "${val}ue" : 어느부분까지가 변수를 나타내는지 범위 지정 (`{ }`)
  - "$(ls)", \`ls\` : 프로그램 실행 출력결과로 치환
- 비교
  - test, [ ]
    - 띄어쓰기 중요
  - [[ ]]
  - (( val > 10 )) : 수치 비교
- case
- for
- while
- 함수 선언
- 쉘 스크립트 예제
  - [수업 예제](https://github.com/LunaTK/skku-learning/tree/gh-pages/res/shell-script)
  - [Homebrew 설치 스크립트](https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
  - [소프트웨어학과 공지 모니터링](https://lunatk.github.io/2020/09/20/20200920-web-monitoring-in-shellscript/)

## 5차시 - 2021.01.22

<iframe width="560" height="315" src="https://www.youtube.com/embed/TE4AmVXjxC8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- 시그널 : 프로그램에게 보내는 신호
  - Ctrl-c : Interrupt, 프로세스 종료
  - Ctrl-\ : Quit, 프로세스 종료
  - Ctrl-d : EOF
  - Ctrl-z : Stop, 일시 중지하고 백그라운드로 보내기
  - `fg` : 일시 중지된 프로세스 앞으로 가져오기
  - `bg` : 일시 중지된 프로세스 백그라운드에서 계속 실행
  - `kill` : 인자로 넘겨준 프로세스 종료 또는 시그널 전달

- `tmux` : Terminal Multiplexer
- `alias` : 긴 명령어 축약버전 지정
- `dotfile` : 설정파일 또는 기록파일
  - `.zshrc`
  - `.vimrc`
- `ssh` tunneling
  - local tunneling : `ssh -L 8000:localhost:80 ssh-host`
  - remote tunneling : `ssh -R 8000:localhost:80 ssh-host`
  - [참고](https://devbin.kr/ssh-tunneling-을-이용하여-port-forwarding을-해보자/)

## 6차시 - 2021.01.27

<iframe width="560" height="315" src="https://www.youtube.com/embed/4eSeHp1keNo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- Git과 Github
  - add : commit에 반영할 파일을 stage에 올리는 명령어
  - commit : 체크포인트 생성
  - push : 원격 저장소에 커밋 업로드
  - pull : 원격 저장소에서 커밋 받아오기
    - git pull --rebase : Merge commit 안생기게 pull 받기

## 7차시 - 2021.01.29

<iframe width="560" height="315" src="https://www.youtube.com/embed/Dbp1Jzl230U" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- CSV, XML, JSON
- REST API
  - [jsonbin.io](https://jsonbin.io) : JSON을 DB로 사용하며 REST API로 편집 기능을 제공하는 서비스
  - `pip`
    - python3 -m pip
- jupyter notebook
  - [Kaggle](https://www.kaggle.com) : 머신러닝 플랫폼
  - [Google Colab](https://colab.research.google.com)
  - 파이썬 뿐 아니라 다른 언어도 사용 가능
- 학생 라이센스
  - [Github Student Developer Pack](https://education.github.com/pack)
- Visual Studio Code
  - [remote-ssh 플러그인](https://evols-atirev.tistory.com/28)

## 8차시 - 2021.02.03

<iframe width="560" height="315" src="https://www.youtube.com/embed/QA82lbbYYa8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- 소프트웨어학과 강의별 배우는 내용 ([보기](./lecture-content.html))
- 웹, 앱개발 간단 소개
- 기타 질의응답