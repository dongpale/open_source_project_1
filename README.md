# Project name
2023 OSS project1 - Bash script program
## Project explanation
bash 안에서 다음 세 개의 input file(u.item, u.data, u.user)을 이용하여 script program을 구현하는 프로젝트이다. 총 9개의 요구사항들로 이루어져 있으며, 이름과 학번, 구현해야 할 요구사항들을 차례대로 적어준 후, 사용자로부터 1부터 9까지의 번호를 입력받아 각 요구사항들을 수행하며 9번 Exit 기능을 선택할 때까지 반복하는 프로그램이다.
## Contents
[1. Input file explanation](#1.-input-file-explanation)  

[2. Requirements explanation](#2.-requirements-explanation)  

[3. Project 개발환경 및 실행방법](#3.-project-개발환경-및-실행방법)  

[4. project 코드 설명](#4.-project-사용방법)  

## 1. Input file explanation  
- u.item  
영화에 대한 정보를 담은 파일로서, 파일의 데이터는 ‘|’로 구분되며, 각 열들의 의미는 'movie_id', 'movie_title', 'release date', 'video release date', 'IMDB URL', 'Genre'이다. 또한, 마지막 열인 'Genre'는 'unknown', 'Action', 'Adventure', 'Animation', 'Children’s', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Fantasy', 'Film-Noir', 'Horror', 'Musical', 'Mystery', 'Romance', 'Sci-Fi', 'Thriller', 'War', 'Western'으로 세분화되어 나뉘며 장르들 중에 1로 표시되어 있는 부분이 해당 영화의 장르가 된다.

```
// 예시
1|Toystory(1995)|01-Jan-1995||http://us.imdb.com/M/title-exact?Toy%20Story%20(1995)|0|0|0|1|1|1|0|0|0|0|0|0|0|0|0|0|0|0|0
// Toy story의 genre는 Adventure, Animation, Children’s이다.
```
- u.data  
어느 user가 어떤 영화에 대해 평점을 몇 점 매겼는지에 대한 파일로서, 'user_id', 'movie_id', 'rating', 'timestamp'의 열을 갖는다.

```
// 예시
196    242    3    881250949
// 192의 user_id를 갖는 user는 242의 movie_id를 가진 영화의 평점을 3점으로 매겼다.
```
- u.user  
영화를 평가한 user들의 정보를 담은 파일로서, 'user_id', 'age', 'gender', 'occupation', 'zip code'의 5개의 열을 갖는다.

```
// 예시
1|24|M|technician|85711 // M : 남성
2|53|F|other|94043 // F : 여성
```
## 2. Requirements explanation  
  1) ‘u.item’ 파일을 이용해 사용자로부터 ‘movie_id’를 입력 받으면 해당 영화에 대한 정보를 출력하는 기능이다.
  
  2) ‘u.item’ 파일의 데이터 중에서 Action 장르의 데이터만 오름차순 정렬되어 10개만 출력하는 기능이다. 액션 영화를 출력하기를 원하는 것인지에 대한 메시지를 출력 후, 사용자가 y를 누르면 출력을 한다.
    
  3) ‘u.data’ 파일을 이용해 사용자로부터 ‘movie_id’를 입력 받으면 특정 영화의 평균 rating을 출력하는 기능으로, 소수점 여섯 번째 자리에서 반올림하여 출력한다.
  
  4) ‘u.item’ 파일의 데이터에서 ‘IMDB URL’ 부분의 열을 삭제하여 출력하는 기능이다. 2번 기능과 마찬가지로 사용자에게 삭제하기를 원하는 메시지를 보내고, 사용자가 y를 누르면 삭제하여 출력해준다.
  
  5) ‘u.user’의 파일을 이용해 user의 정보를 출력하는데 출력 형식으로 “user ‘user_id’ is ‘age’ years old ‘gender’ ‘occupation’”으로 10개만 출력하는 기능이다. 또한, ‘gender’ 부분에서 M은 male로, F는 female로 변환하여 출력한다. 그리고 출력하기 전에 user의 정보를 출력하고 싶냐는 메시지를 출력 후, 사용자가 y를 누르면 출력을 해준다.
  
  6) ‘u.item’ 파일을 이용해 ‘release date’의 형식을 변경하고 싶냐는 메시지를 출력 후, 사용자가 y를 누르면 ‘release date’의 형식을 YYYYMMDD 형식으로 바꾸어서 출력하는 기능이다. 예를 들어, 01-Jan-1995라면, 19950101 이런 식으로 변환하여 출력하는 것이다.
  
  7) 특정 user의 ‘user_id’를 입력받으면 해당 user가 평점을 준 영화를 오름차순으로 정렬 후 구분자 ‘|’를 이용하여 출력하고, 위에서부터 10개의 영화의 ‘movie_id’와 ‘movie_title’을 구분자 ‘|’를 이용하여 출력하는 기능이다.
  
  8) 20대 프로그래머가 평가한 모든 영화들에 대해서 평균 rating을 출력하는 것으로, 처음에 출력을 원하는 질문을 출력 후, 사용자가 y를 누르면 출력하게 되고, 만약 20대 프로그래머가 평가하지 않은 영화들이 있다면 출력하지 않는 기능이다.
  
  9) Exit 기능으로서, ‘Bye’라고 출력 후 프로그램을 종료하는 기능이다.

## 3. Project 개발환경 및 실행방법  
- 개발환경
1. Git bash 2.42.0.2
2. Vim editor
- 실행방법
```
$ mkdir oss_project_1 // 디렉토리 생성
$ cd oss_project_1 // 'oss_project_1' 디렉토리로 이동
$ ls // 디렉토리 내용의 리스트를 출력
```
<img width="719" alt="ls 결과 출력 캡쳐 화면" src="https://github.com/dongpale/open_source_project_1/assets/104160379/cb5de91a-c6b5-4744-b40e-402c68204d11">  

```
$ ./prj1_12191556_kimdonghyun.sh u.item u.user u.data
```
* 주의할 점  
shell script 파일과 세 개의 input file(u.item, u.data, u.user)은 동일한 디렉토리에 있어야 한다. 그래서 해당 프로젝트를 하기 위해 'oss_project_1' 이라는 디렉토리를 만든 후, 이 디렉토리 안에서 프로젝트를 진행하였다.


## 4. Project 코드 설명  
0) 전체적인 틀

1) 기능1.

2) 기능2.

3) 기능3.

4) 기능4.

5) 기능5.

6) 기능6.

7) 기능7.

8) 기능8.

9) 기능9.

## Project member 및 참고자료
- Project member  
Inha University, Department of Computer Engineering, Class of 2019 KimDongHyun  

- 참고자료  
2023 인하대학교 컴퓨터공학과 오픈소스SW개론 강의자료  

## License
- GPL-3.0 License

