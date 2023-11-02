# Project name
2023 OSS project1 - Bash script program
## Project explanation
bash 안에서 다음 세 개의 input file(u.item, u.data, u.user)을 이용하여 script program을 구현하는 프로젝트이다. 총 9개의 요구사항들로 이루어져 있으며, 이름과 학번, 구현해야 할 요구사항들을 차례대로 적어준 후, 사용자로부터 1부터 9까지의 번호를 입력받아 각 요구사항들을 수행하며 9번 Exit 기능을 선택할 때까지 반복하는 프로그램이다.
## Contents
[1.Input file explanation](#1.-input-file-explanation)  

[2.Requirements explanation](#2.-requirements-explanation)  

[3.Project 개발환경 및 실행방법](#3.-project-개발환경-및-실행방법)  

[4.Project 사용방법](#4.-project-사용방법)  

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


## 3. Project 개발환경 및 실행방법

## 4. Project 사용방법

## Project member 및 참고자료
- Project member  
Inha University, Department of Computer Engineering, Class of 2019 KimDongHyun  

- 참고자료  
2023 인하대학교 컴퓨터공학과 오픈소스SW개론 강의자료  

## License
- GPL-3.0 License

