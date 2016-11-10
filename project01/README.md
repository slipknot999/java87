# project01

GIT 테스트

# gradle 사용
1)실행
- 그래들을 이용하여 수행할 수있는 작업 정보를 출력한다.
- 명령어를 실행하는 디렉토리에서 bulid.gradle 파일을 찾아 읽는다.
-bulid.gradle 파일은 그래들 설정파일이다. 여기에 설정한대로 동작한다. 
~~~~~~~~~
 >gradle
~~~~~~~~~
## 그래들 설정팡리 생성
- build.gradle
~~~~~~~
apply plugin: "java"
apply plugin: "eclips"
~~~~~~`

#그래들 프로젝트 폴더 생성
-- 그래들 프로젝트 표준 디렉토리 구저 생성 
 project01 
     src
	     main 
	         java
		       resources
		       webapp
		   test
		      java
		      resources
#github에 업로드할 대상에서 제외할것 설정
 -gitignore

 ## 이클립스 프로젝트 설정파일 생성
	- 이클립스에서 프로젝트로 인식 할 수 있도록 
	~~~~~
	>gradle
	~~~~~~
	//이클립스 웹프로젝트 설정 파일 믄드러주세요
	apply plugin: "eclips-wtp"
	apply plugin: "war"