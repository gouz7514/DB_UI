/********************************
* 	     Database Design        *
*         TEAM: KIMCHI          *
* first create by HoCheol, Nam  *
*       c.date: 2020.10.08      *
*   email: hcnam@dankook.ac.kr  *
*  dummy data insert script   
********************************/
/********************************
* edit by :                      
* date    :                      
* email   :                      
* comment :                      
*********************************/ 
# 같은 파일에서 작업하기 때문에 항상 git pull 먼저 받고 작업할것
# 동시에 같은 파일을 수정하고 합치려고 할 경우 conflict가 발생하기 때문에 작업 시작한 인원은 작업시작을 알려주거나 겹치지 않도록 조율할것.
# 혹은 confic가 나지 않도록 조율해서 잘 merge 시킬것!
# 삽입시 괄호안에 데이터를 채워넎으면 됨. 괄호들을 콤마(,)로 이어나가며 마지막 삽입 데이터가 들어간 괄호 뒤에는 세미콜론(;) 넣을것
# 개행(줄바꿈)이 필요한 경우 <br>을 이용할것
# 수정시 아래의 표를 위에 붙여나가면서 수정내용 표시할것
# 예시
	/********************************
	* edit by :  남호철           
	* date    :  2020.11.19                
	* email   :  nhc616@gmail.com      
	* comment :  더미 데이터 삽입 참고 작성    
	*********************************/ 

insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# (제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#살아있다', '드라마', '한국', '2020-06-24', 2020, '98분', 
'https://movie-phinf.pstatic.net/20200624_189/1592965781317Puv47_JPEG/movie_image.jpg', 
'원인불명 증세의 사람들의 공격에 통제 불능에 빠진 도시.<br>
 영문도 모른 채 잠에서 깬 ‘준우’(유아인)는 아무도 없는 집에 혼자 고립된 것을 알게 된다.<br>
 데이터, 와이파이, 문자, 전화 모든 것이 끊긴 채 고립된 상황.<br>
 연락이 두절된 가족에 이어 최소한의 식량마저 바닥이 나자 더 이상 버티기 힘들어진 ‘준우’.<br>
 하지만 그 순간 건너편 아파트에서 누군가 시그널을 보내온다.<br>
 또 다른 생존자 ‘유빈’(박신혜)이 아직 살아있음을 알게 된 ‘준우’는<br>
 함께 살아남기 위한 방법을 찾아 나서는데...!<br>
 <br>
 꼭 살아남아야 한다'); 
 
 insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # (이름, 출생, 사망, 설명) 순서 
 ('유아인','','',
 '소속사 : United Artists Agency<br>
학력 : 건국대학교 예술학<br>
수상 : 2017년 한국패션사진작가협회 포토제닉상<br>
      2016년 제16회 대한민국청소년영화제 인기영화인 남자배우<br>
      2016년 제7회 대한민국 대중문화예술상 국무총리표창<br>
      2016년 제52회 백상예술대상 TV부문 남자 최우수연기상<br>'),
('박신혜','1990년 2월 18일','',
'학력 : 중앙대학교 연극영화학<br>
데뷔 : 2003년 뮤직비디오 \'이승환 - 꽃\'<br>
수상 : 2017년 아시아 아티스트 어워즈 아시아 아이콘상<br>');
 
 /*
	select * from `kimchi`.`show_info`;
	select * from `kimchi`.`actor`;
	를 이용해 영화 번호(show_id)와 배우 번호(actor_id)를 매칭할것.
 */
 
insert into `kimchi`.`show_actor`
values
# (`show_id`, `actor_id`) 순서
(1, 1), # #살아있다 / 유아인
(1, 2); # #살아있다 / 박신혜

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # (이름, 출생, 사망, 설명) 순서 
('조일형','','','');

insert into `kimchi`.`show_director`
 values
 # (`show_id`, `director_id`) 순서
 (1, 1); # #살아있다 / 조일형 
 
 
##############################
select * from `kimchi`.`show_info`;
select * from `kimchi`.`actor`;
select * from `kimchi`.`show_actor`;
select * from `kimchi`.`director`;
select * from `kimchi`.`show_director`;
##############################




/********************************
	* edit by :  윤지아           
	* date    :  2020.11.21                
	* email   :  sjsmja@naver.com      
	* comment :  더미 데이터 생성    
*********************************/  
insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 2(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#도깨비', '드라마', '한국', '2016-12-02', 2016, '시즌 1개', 
'http://img.lifestyler.co.kr/uploads/program/cheditor/2016/12/ABI5LVB6TBFE9TW45NUO_1024x0.jpg', 
'신부를 찾아야 죽을 수 있는 남자.<br>
불멸의 고통에 힘겹던 어느 날,<br>
도깨비 신부라고 주장하는 여학생이 나타났다.<br>
대책 없이 그를 소환하고, 대책 없이 삶에 파고드는 소녀.<br>
정녕 신부를 만난 것이냐.<br>
그럼 이제 소멸할 수 있는 것이냐.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 2(이름, 출생, 사망, 설명) 순서 
 ('공유','1979년 07월 10일','',
 '소속사 : United Artists Agency<br>
학력 : 경희대학교 연극영화학<br>
수상 : 2017년 올해의 브랜드 대상 올해의 남자배우<br>
      2017년 제53회 백상예술대상 TV부문 남자 최우수연기상<br>
      2017년 미국 드라마피버어워즈 베스트 배우상<br>
      2014년 제 48회 납세자의 날 모범납세자 대통령표창<br>'),
('김고은','1991년 7월 2일','',
'학력 : 한국예술종합학교 연극원<br>
데뷔 : 2012년 영화 \'은교\'<br>
수상 : 2016년 제 52회 백상예술대상 TV부문 여자 신인연기상<br>
      2016년 스타일아이콘어워즈 어썸 라이징상<br>
      2015년 제 19회 부천국제판타스틱영화제 판타지아 어워드<br>
      2015년 한국 영화를 빛낸 스타상 인기스타상<br>');
      
insert into `kimchi`.`show_actor`
values
# 2(`show_id`, `actor_id`) 순서
(2, 3), # #도깨비 / 공유
(2, 4); # #도깨비 / 김고은

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 2(이름, 출생, 사망, 설명) 순서 
('김은숙','1973년','',
'학력 : 서울예술전문대학 문예창작과<br>
수상 : 2017년 제 53회 백상예술대상 TV부문 대상<br>
      2016년 KBS 연기대상 작가상<br>
      2016년 제 7회 대한민국 대중문화예술상 대통령표창<br>
      2012년 SBS 연기대상 공로상<br>');

insert into `kimchi`.`show_director`
 values
 # 2(`show_id`, `director_id`) 순서
 (2, 2); # #도깨비 / 김은숙 
 
 ##

insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 3(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#워킹데드', '드라마', '미국', '2010-10-31', 2010, '시즌 10개', 
'https://movie-phinf.pstatic.net/20130710_88/1373436319912tHuax_JPEG/movie_image.jpg', 
'눈을 떠보니 세상은 좀비가 점령한 전쟁터.<br>
어디로 갈 것인가, 어떻게 생존할 것인가.<br>
현실이 지옥일 때 희망은 의미가 있는가.<br>
살아남은 자들의 사투가 펼쳐진다.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 3(이름, 출생, 사망, 설명) 순서 
 ('앤드류 링컨','1973년 09월 14일','',
 '소속사 : United Artists Agency<br>
학력 : 왕립연극학교<br>
대표작 : 러브 액츄얼리<br>
수상 : 2015년 Saturn Award 텔레비전 최고의 배우<br>
      2014년 가장 좋아하는 TV 안티 영웅<br>
      2012년 Satellite Award 최고의 캐스팅'),
('스티븐 연','1983년 12월 21일','',
'수상 : 2019년 제 24회 춘사 영화제 남우조연상<br>
      2018년 LA 비평가 협회상 남우조연상<br>
      2018년 토론토 비평가 협회상 남우조연상');
      
insert into `kimchi`.`show_actor`
values
# 3(`show_id`, `actor_id`) 순서
(3, 5), # #워킹데드 / 앤드류 링컨
(3, 6); # #워킹데드 / 스티븐 연

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 3(이름, 출생, 사망, 설명) 순서 
('프랭크 다라본트','1959년 01월 28일','',
'
필모그래피 : 2010년~2020년 워킹데드<br>
      2007년 미스트<br>
      1994년 쇼생크 탈출');

insert into `kimchi`.`show_director`
 values
 # 3(`show_id`, `director_id`) 순서
 (3, 3); # #워킹데드 / 프랭크 다라본트 

##


insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 4(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#마담싸이코', '스릴러', '미국', '2019-09-26', 2019, '98분', 
'https://movie-phinf.pstatic.net/20190607_99/1559869665680SMDNA_JPEG/movie_image.jpg', 
'함부로 친절하지 말 것!<br>
소름돋는 역대급 싸이코가 온다<br>
누군가가 놓고 간 핸드백을 돌려주려다<br>
가방 주인인 노부인을 만난 젊은 여성.<br>
선의의 친절은 곧 우정이 되지만, 그녀는 곧 깨닫는다.<br>
핸드백이 노부인의 덫이었음을.<br>
<br>
이제 도망칠 곳은 없다.<br>
광기 어린 스토킹에 맞서는 수밖에...
'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 4(이름, 출생, 사망, 설명) 순서 
 ('이자벨 위페르','1953년 03월 16일','',
 '국적 : 프랑스<br>
학력 : 베르사유 음악원<br>
수상 : 2017년 로카르노 국제 영화제 여우주연상<br>
      2017년 인더페던트 스피릿 시상식 여우주연상<br>
      2017년 뤼미에르 시상식 여우주연상'),
('클로이 그레이스 모레츠','1997년 02월 10일','',
'수상 : 2014년 영 헐리우드 어워드 팬들이 좋아하는 여자배우상<br>
      2014년 제 1회 피플 매거진 어워드 차세대 스타상<br>
      2014년 제 40회 새턴상 아역 부문 최우수 연기상');
      

insert into `kimchi`.`show_actor`
values
# 4(`show_id`, `actor_id`) 순서
(4, 7), # #마담싸이코 / 이자벨 위페르
(4, 8); # #마담싸이코 / 클로이 그레이스 모레츠

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 4(이름, 출생, 사망, 설명) 순서 
('닐 조던','1950년 02월 25일','',
'
수상 : 2014년 캐나다 스크린 어워드 최우수 인터내셔널 드라마<br>
      2011년 제미니상 최우수 드라마 시리즈<br>
      2000년 영국 아카데미 영화상 각색상');

insert into `kimchi`.`show_director`
 values
 # 4(`show_id`, `director_id`) 순서
 (4, 4); # #마담싸이코 / 닐 조던 
 
 
 ##
 
 
 insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 5(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#군도:민란의시대', '액션', '한국', '2014-07-23', 2014, '137분', 
'https://movie-phinf.pstatic.net/20140627_105/1403832280951tgmxv_JPEG/movie_image.jpg', 
'탐관오리의 횡포에 백성들의 고통이 극에 달했던 조선 후기.<br>
세상을 뒤엎고자 한데 모인 의적의 무리가 있었으니...<br>
이름하여 \'군도\'. <br>
<br>
백성들의 한은 우리가 풀어주리라.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 5(이름, 출생, 사망, 설명) 순서 
 ('하정우','1978년 03월 11일','',
 '소속사 : 워크하우스 컴퍼니<br>
학력 : 중앙대학교 연극영화학<br>
수상 : 2018년 제 7회 마리끌레르 영화제 파이오니어상<br>
      2018년 제 2회 더 서울 어워즈 영화부문 남우주연상<br>
      2018년 제 3회 아시아 아티스트 어워즈 배우부문 올해의 아티스트상'),
('강동원','1981년 01월 18일','',
'소속사 : YG엔터테인먼트
수상 : 2020년 제 29회 부일영화상 남자 인기스타상<br>
      2017년 뉴욕아시아영화제 아시아스타상<br>
      2010년 제 30회 한국영화평론가협회상 남우주연상');
      

insert into `kimchi`.`show_actor`
values
# 5(`show_id`, `actor_id`) 순서
(5, 9), # #군도 / 하정우
(5, 10); # #군도 / 강동원

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 5(이름, 출생, 사망, 설명) 순서 
('윤종빈','1979년 12월 20일','',
'수상 : 2019년 제 55회 백상예술대상 영화 작품상<br>
      2019년 제 17회 피렌체 한국영화제 관객상<br>
      2019년 제 38회 한국영화평론가협회상 감독상');

insert into `kimchi`.`show_director`
 values
 # 5(`show_id`, `director_id`) 순서
 (5, 5); # #군도 / 윤종빈 
 

##

 insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 6(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#재심', '드라마', '한국', '2017-02-15', 2017, '119분', 
'https://movie-phinf.pstatic.net/20170206_116/1486347780659NI0zd_JPEG/movie_image.jpg', 
'출세를 위해 맡은 사건.<br>
파고들수록 잊고 살았던 정의감에 불을 지핀다.<br>
억울하게 살인범이 된 청년과 무명 변호사가 진실을 향해 벌이는 사투.<br>
진실은 거짓을 이길까.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 6(이름, 출생, 사망, 설명) 순서 
 ('정우','1981년 02월 18일','',
 '소속사 : BH엔터테인먼트<br>
학력 : 경희대학교 언론정보대학원<br>
수상 : 2015년 제 19회 부천국제판타스틱영화제 판타지아 어워드<br>
      2014년 제 50회 백상예술대상 TV부문 남자 신인연기상<br>
      2014년 제 9회 아시아 모델 시상식 인기스타상'),
('강하늘','1990년 02월 21일','',
'소속사 : TH컴퍼니
수상 : 2020년 제 11회 대한민국 대중문화예술상<br>
      2020년 제 15회 서울드라마어워즈 한류 드라마 남자 연기자상<br>
      2020년 제 56회 백상예술대상 TV부문 남자 최우수연기상'),
('김해숙','1955년 12월 30일','',
'소속사 : 준앤아이
수상 : 2019년 제 27회 대한민국 문화연예대상 드라마부문 대상<br>
      2017년 한국영화를 빛낸 스타상<br>
      2016년 SBS 연기대상 장편드라마부문 여자 최우수연기상');
      

insert into `kimchi`.`show_actor`
values
# 6(`show_id`, `actor_id`) 순서
(6, 11), # #재심 / 정우
(6, 12), # #재심 / 강하늘
(6, 13); # #재심 / 김해숙

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 6(이름, 출생, 사망, 설명) 순서 
('김태윤','1972년 06월 25일','',
'학력 : 한국예술종합학교 영상원 영화학');

insert into `kimchi`.`show_director`
 values
 # 6(`show_id`, `director_id`) 순서
 (6, 6); # #재심 / 김태윤 
 

##


insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 7(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#신과함께-죄와벌', 'SF & 판타지', '한국', '2017-12-20', 2017, '139분', 
'https://movie-phinf.pstatic.net/20171201_181/1512109983114kcQVl_JPEG/movie_image.jpg', 
'화재 현장에서 어린 소녀는 구했으나 자기 목숨은 지키지 못한 소방관.<br>
그를 \'귀인\'이라 치켜세우는 차사들의 안내를 받아 저승에 도착한다.<br>
일곱 개의 지옥에서 벌어지는 일곱 번의 재판.<br>
<br>
그는 이 재판을 모두 통과해 환생할 수 있을까.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 7(이름, 출생, 사망, 설명) 순서 
 ('차태현','1976년 03월 25일','',
 '소속사 : 블러썸 엔터테인먼트<br>
학력 : 서울예술전문대학 방송연예학<br>
수상 : 2018년 KBS 연기대상 남자 최우수상<br>
      2018년 MBC 방송연예대상 뮤직, 토크쇼 부문 남자 우수상<br>
      2018년 제 18회 대한민국 청소년영화제 인기 영화인 남자배우부문'),
('주지훈','1982년 05월 16일','',
'소속사 : 키이스트
수상 : 2020년 제 2회 아시아 콘텐츠 어워즈 남자 최우수연기상<br>
      2019년 제 39회 황금촬영상 최우수 남자주연상<br>
      2019년 제 10회 올해의 영화상 남우조연상');      

insert into `kimchi`.`show_actor`
values
# 7(`show_id`, `actor_id`) 순서
(7, 9), # #신과함께 / 하정우
(7, 14), # #신과함께 / 차태현
(7, 15); # #신과함께 / 주지훈

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 7(이름, 출생, 사망, 설명) 순서 
('김용화','1971년 09월 25일','',
'학력 : 중앙대학교 영화학<br>
수상 : 2018년 제 54회 백상예술대상 영화 감독상<br>
      2018년 제 23회 춘사영화제 관객이 드리는 최고인기영화상');

insert into `kimchi`.`show_director`
 values
 # 7(`show_id`, `director_id`) 순서
 (7, 7); # #재심 / 김태윤 


##


insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 8(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#기묘한이야기', '공포', '미국', '2016-07-15', 2016, '시즌 3개', 
'http://ojsfile.ohmynews.com/PHT_IMG_FILE/2018/0319/IE002302766_PHT.jpg', 
'인디애나주의 작은 마을에서 행방불명된 소년.<br>
이와 함께 미스터리한 힘을 가진 소녀가 나타나고,<br>
마을에는 기묘한 현상들이 일어나기 시작한다.<br>
아들을 찾으려는 엄마와 마을 사람들은 이제 정부의 <br>
일급비밀 실험의 실체와 무시무시한 기묘한 현상들에 맞서야 한다.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 8(이름, 출생, 사망, 설명) 순서 
('위노나 라이더','1971년 10월 29일','',
 '학력 : American ConserVatory 연극학<br>
 데뷔 : 1986년 영화 \'루커스\''),
('데이비드 케네스 하버','1975년 04월 10일','',
'학력 : 다트머스 대학교<br>
데뷔 : 1996년 연극 \'레인메이커\'');      

insert into `kimchi`.`show_actor`
values
# 8(`show_id`, `actor_id`) 순서
(8, 16), # #기묘한이야기 / 위노나 라이더
(8, 17); # #기묘한이야기 / 데이비드 케네스 하버

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 8(이름, 출생, 사망, 설명) 순서 
('더퍼형제','','',
'');

insert into `kimchi`.`show_director`
 values
 # 8(`show_id`, `director_id`) 순서
 (8, 8); # #기묘한이야기 / 더퍼형제


##


insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 9(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#나르코스', '범죄', '미국', '2016-01-16', 2016, '시즌 3개', 
'https://movie-phinf.pstatic.net/20170110_53/1484029743624WQd4Q_PNG/movie_image.jpg', 
'콜롬비아의 에스코바르와 로스 페페스는 세계 최대의 <br>
마약 제국을 건설하고 미국의 공공의 적이 된다.<br>
카르텔과 양국 정부의 피비린내 나는 전쟁,<br>
이것은 실화다.
'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 9(이름, 출생, 사망, 설명) 순서 
('와그너 모라','1976년 06월 27일','',
 ''),
('페드로 파스칼','1975년 04월 02일','',
'학력 : 뉴욕 대학교');      

insert into `kimchi`.`show_actor`
values
# 9(`show_id`, `actor_id`) 순서
(9, 18), # #나르코스 / 와그너 모라
(9, 19); # #나르코스 / 페드로 파스칼

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 9(이름, 출생, 사망, 설명) 순서 
('크리스 브랜카토','1962년 07년 24일','',
'수상 : 2017년 페닉스 필름 어워드 베스트 드라마 시리즈');

insert into `kimchi`.`show_director`
 values
 # 9(`show_id`, `director_id`) 순서
 (9, 9); # #나르코스 / 크리스 브랜카토
 
 
 ##
 
 
 insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 10(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#위쳐', '판타지', '미국', '2019-12-20', 2019, '시즌 1개', 
'https://dvdprime.com/g2/data/cheditor5/1912/mania-done-20191207161132_gvowfhym.jpg', 
'세계적인 판타지 대작이 넷플릭스 시리즈로 다시 태어난다!<br>
어둠과 위험의 세계, 진실은 어디에 있을까...<br>
운명으로 묶인 그들. 위쳐와 마법사, 홀로 남은 공주의 싸움이 시작된다.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 10(이름, 출생, 사망, 설명) 순서 
('헨리 카빌','1983년 05월 05일','',
 '학력 : 스토우 스쿨<br>
 수상 : 2014년 제 23회 MTV 영화 & TV어워즈 최고의 영웅상'),
('애니아 찰로트라','1996년 07월 21일','',
'학력 : 길드홀 음악 연극학교');      

insert into `kimchi`.`show_actor`
values
# 10(`show_id`, `actor_id`) 순서
(10, 20), # #위쳐 / 헨리 카빌
(10, 21); # #위쳐 / 애니아 찰로트라

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 10(이름, 출생, 사망, 설명) 순서 
('로런 슈미트 히스릭','1978년 08월 01일','',
'학력 : 위튼버그 대학교');

insert into `kimchi`.`show_director`
 values
 # 10(`show_id`, `director_id`) 순서
 (10, 10); # #위쳐 / 로런 슈미트 히스릭
 

##


insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 11(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#종이의집', '범죄', '스페인', '2017-05-02', 2017, '시즌 4개', 
'http://image.tmdb.org/t/p/w600_and_h900_bestv2/qylPAc1MAuXcebgJOS6RV8ZgHpi.jpg', 
'1명의 천재, 8명의 공범, 철저히 준비한 세기의 강도.<br>
스페인 조폐국에서 인질극까지 벌인 이들은 과연,<br>
포위 경찰을 따돌리고 거액의 돈과 함께 달아날 수 있을까?'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 11(이름, 출생, 사망, 설명) 순서 
('우르술라 코르베로','1989년 08월 11일','',
 ''),
('알바로 모르테','1975년 02월 23일','',
'');      

insert into `kimchi`.`show_actor`
values
# 11(`show_id`, `actor_id`) 순서
(11, 22), # #종이의집 / 우르술라 코르베로
(11, 23); # #종이의집 / 알바로 모르테

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 11(이름, 출생, 사망, 설명) 순서 
('알렉스 피나','','',
'');

insert into `kimchi`.`show_director`
 values
 # 11(`show_id`, `director_id`) 순서
 (11, 11); # #종이의집 / 알렉스 피나
 
 
 ##


insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 12(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#킹덤', '좀비', '한국', '2019-01-25', 2019, '시즌 2개', 
'https://newsimg.sedaily.com/2018/12/03/1S8BKDEHSC_1.jpg', 
'병든 왕을 둘러싸고 흉흉한 소문이 떠돈다.<br>
어둠에 뒤덮인 조선, 기이한 역병에 신음하는 산하.<br>
정체 모를 악에 맞서 백성을 구원할 희망은 오직 세자뿐이다.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 12(이름, 출생, 사망, 설명) 순서 
 ('류승룡','1970년 11월 29일','',
 '소속사 : 프레인TPC<br>
학력 : 서울예술전문대학 연극학<br>
수상 : 2019년 제 8회 대한민국 베스트 스타상 베스트 주연상<br>
      2014년 대한민국광고대상 최고모델상<br>
      2013년 제 49회 백상예술대상 영화부문 대상'),
('배두나','1979년 10월 11일','',
'학력 : 건국대학교 영화예술학<br>
수상 : 2018년 KBS 연기대상 베스트커플상<br>
      2016년 제 37회 청룡영화상 청정원 인기스타상<br>
      2015년 제 9회 아시안 필름 어워드 여우주연상');      

insert into `kimchi`.`show_actor`
values
# 12(`show_id`, `actor_id`) 순서
(12, 15), # #킹덤 / 주지훈
(12, 24), # #킹덤 / 류승룡
(12, 25); # #킹덤 / 배두나

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 12(이름, 출생, 사망, 설명) 순서 
('김은희','1972년','',
'학력 : 수원대학교 신문방송학');

insert into `kimchi`.`show_director`
 values
 # 12(`show_id`, `director_id`) 순서
 (12, 12); # #킹덤 / 김은희 


##


insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 13(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#청년경찰', '액션', '한국', '2017-08-09', 2017, '109분', 
'https://movie-phinf.pstatic.net/20170814_131/1502673994742txsKh_JPEG/movie_image.jpg', 
'경찰대에서 동고동락하는 혈기왕성 청년 둘.<br>
우연히 납치 사건을 목격하고 바로 신고한다.<br>
배운 대로 잘했건만 수사는 진전 0%.<br>
안 되겠다 싶어 둘이 직접 해결에 나서는데...<br>
<br>
예비 경찰이 현직 경찰 노릇 하려니 이거 참 쉽지 않다!'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 13(이름, 출생, 사망, 설명) 순서 
 ('박서준','1988년 12월 16일','',
 '소속사 : 어썸이엔티<br>
학력 : 서울예술전문대학 연기과<br>
수상 : 2020년 브랜드 고객충성도 대상 남자배우 트랜드아이콘 부문<br>
      2019년 제 13회 아시안 필름 어워드 라이징 스타상<br>
      2018년 제 9회 올해의 영화상 신인남우상');

insert into `kimchi`.`show_actor`
values
# 13(`show_id`, `actor_id`) 순서
(13, 12), # #청년경찰 / 강하늘
(13, 26); # #청년경찰 / 박서준

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 13(이름, 출생, 사망, 설명) 순서 
('김주환','1981년','',
'학력 : 조지타운 대학교');

insert into `kimchi`.`show_director`
 values
 # 13(`show_id`, `director_id`) 순서
 (13, 13); # #청년경찰 / 김주환 
 
 
 ##
 
 
 insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 14(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#건축학개론', '로맨스', '한국', '2012-03-22', 2012, '118분', 
'https://movie-phinf.pstatic.net/20120227_164/1330332687398PQ1U3_JPEG/movie_image.jpg', 
'서연과 승민은 건축학 개론 수업에서 만나 사랑에 빠졌었다.<br>
서연이 승민을 찾아와 꿈에 그리던 집을 지어달라고 하고<br>
둘 사이엔 다시 사랑이 싹튼다.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 14(이름, 출생, 사망, 설명) 순서 
 ('이제훈','1984년 07월 04일','',
 '소속사 : 사람엔터테인먼트<br>
학력 : 한국예술종합학교 연극원 연기과 중퇴<br>
수상 : 2019년 제 53회 납세자의 날 기념식 모범납세자 대통령 표창<br>
      2018년 SBS 연기대상 월화극부문 남자 최우수연기상<br>
      2018년 제 38회 황금촬영상 촬영감독이 뽑은 남자인기상'),
 ('수지','1994년 10월 10일','',
 '소속사 : 매니지먼트 숲<br>
학력 : 서울공연예술고등학교<br>
수상 : 2019년 SBS 연기대상 미니시리즈부문 여자 최우수 연기상<br>
      2019년 SBS 연기대상 베스트 커플상<br>
      2018년 제 54회 백상예술대상 여자 인기상');


insert into `kimchi`.`show_actor`
values
# 14(`show_id`, `actor_id`) 순서
(14, 27), # #건축학개론 / 이제훈
(14, 28); # #건축학개론 / 수지

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 14(이름, 출생, 사망, 설명) 순서 
('이용주','1970년 06월 06일','',
'학력 : 연세대학교 건축공학');

insert into `kimchi`.`show_director`
 values
 # 14(`show_id`, `director_id`) 순서
 (14, 14); # #건축학개론 / 이용주 
 
 
 ##
 

insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 15(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#옥자', '액션', '한국,미국', '2017-05-19', 2017, '120분', 
'https://movie-phinf.pstatic.net/20170904_126/1504516484057JACUa_JPEG/movie_image.jpg', 
'거대하지만 온순한 짐승 \'옥자\'와 그녀를 키운 여자아이.<br>
그 순수한 우정은 자신의 이익을 위해 다투는 동물 보호가들과<br>
탐욕스러운 대기업, 과학의 윤리 사이에 갇히고 만다.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 15(이름, 출생, 사망, 설명) 순서 
 ('캐서린 마틸다 스윈튼','1960년 11월 05일','',
 '학력 : 케임브리지 대학교 뉴 홀 칼리지 사회학, 정치학<br>
수상 : 2017년 제 43회 새턴 어워즈 최우수 여우조연상<br>
      2011년 제 24회 유럽영화상 유러피안 여우주연상<br>
      2009년 제 29회 런던 비평가 협회상 영국 여우조연상'),
 ('안서현','2004년 01월 12일','',
 '학력 : 율천고등학교<br>
수상 : 2018년 제 38회 황금촬영상 아역상<br>
      2017년 제 2회 마카오 국제영화제 차세대 스타상<br>
      2014년 KBS 연기대상 청소년 연기상');


insert into `kimchi`.`show_actor`
values
# 15(`show_id`, `actor_id`) 순서
(15, 29), # #옥자 / 캐서린 마틸다 스윈튼
(15, 30); # #옥자 / 안서현

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 15(이름, 출생, 사망, 설명) 순서 
('봉준호','1969년 09월 14일','',
'학력 : 연세대학교 사회학<br>
수상 : 2020년 제 92회 아카데미 시상식 작품상, 감독상, 국제영화상, 각본상<br>
      2020년 제 77회 골든글로브 시상식 외국어영화상<br>
      2020년 제 56회 백상예술대상 영화부문 대상, 작품상<br>
      2020년 제 56회 대종상 영화제 최우수 작품상, 감독상, 각본상<br>
      2019년 제 72회 칸 영화제 황금종려상');

insert into `kimchi`.`show_director`
 values
 # 15(`show_id`, `director_id`) 순서
 (15, 15); # #옥자 / 봉준호 
 
 
 ##
 
 
 insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 16(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#어스', '스릴러', '미국', '2019-03-27', 2019, '116분', 
'https://movie-phinf.pstatic.net/20190329_232/1553849027701K0DBy_JPEG/movie_image.jpg', 
'해변으로 휴가를 온 가족. 엄마 애들레이드는 불안해진다.<br>
어린 시절 섬뜩한 일이 벌어졌던 장소이기에.<br>
그런데 그날 밤, 숙소 앞에 한 가족이 나타난다.<br>
그녀의 가족과 똑같이 생긴 사람들이...<br>
<br>
당신들은 누구인가,<br>
아니, 우리는 누구인가?'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 16(이름, 출생, 사망, 설명) 순서 
 ('루피타 뇽오','1983년 03월 01일','',
 '학력 : 예일대학교 연극대학원<br>
수상 : 2019년 뉴욕 영화 비평가 협회상 여우주연상<br>
      2014년 제 6회 아카데미 시상식 여우조연상'),
 ('윈스턴 듀크','1986년 11월 15일','',
 '');

insert into `kimchi`.`show_actor`
values
# 16(`show_id`, `actor_id`) 순서
(16, 31), # #어스 / 루피타 뇽오
(16, 32); # #어스 / 윈스턴 듀크

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 16(이름, 출생, 사망, 설명) 순서 
('조던 필','1972년 02월 21일','',
'학력 : 세라 로런스 대학교<br>
수상 : 2019년 제 45회 새턴 어워즈 최우수 감독상<br>
      2020년 제 25회 크리틱스 초이스 시상식 SF/호러영화상<br>
      2020년 제 90회 미국 아카데미 시상식 각본상');

insert into `kimchi`.`show_director`
 values
 # 16(`show_id`, `director_id`) 순서
 (16, 16); # #어스 / 조던 필
 
 
 ##
 
 
insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 17(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#신비한동물사전', '판타지', '영국,미국', '2016-11-16', 2016, '132분', 
'https://movie-phinf.pstatic.net/20161116_257/1479273247499i8I0s_JPEG/movie_image.jpg', 
'신비한 동물들을 가방에 넣고 다니는 괴짜 마법사 뉴트.<br>
뉴욕에 도착하자마자 녀석들이 탈출을 감행한다.<br>
덕분에 마법 의회에 쫓기게 된 그는 어둠의 존재 옵큐러스와 맞닥뜨리는데.<br>
그 존재의 이유는 마법 세계를 위험에 빠뜨리는 것!'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 17(이름, 출생, 사망, 설명) 순서 
 ('에디 레드메인','1982년 01월 06일','',
 '학력 : 케임브리지 대학교 트리니티 칼리지 미술사학<br>
수상 : 2016년 제 36회 골든 라즈베리 시상식 최악의 남우조연상<br>
      2015년 제 72회 골든 글로브 시상식 남우주연상 드라마부문<br>
      2015년 제 68회 영국 아카데미 시상식 남우주연상'),
 ('캐서린 워터스턴','1980년 03월 03일','',
 '학력 : 뉴욕 대학교 티시 예술 학교<br>
 데뷔 : 2007년 영화 \'마이클 클레이튼\'');

insert into `kimchi`.`show_actor`
values
# 17(`show_id`, `actor_id`) 순서
(17, 33), # #신비한동물사전 / 에디 레드메인
(17, 34); # #신비한동물사전 / 캐서린 워터스턴

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 17(이름, 출생, 사망, 설명) 순서 
('데이비드 예이츠','1963년 10월 08일','',
'학력 : 에식스 대학교<br>
수상 : 2011년 제 13회 틴 초이스 어워드 최고의 판타지상<br>
      2008년 엠파이어 어워드 최우수 영화상<br>
      2008년 제 21회 유럽영화상 관객 선정상 최우수 유럽영화');

insert into `kimchi`.`show_director`
 values
 # 17(`show_id`, `director_id`) 순서
 (17, 17); # #신비한동물사전 / 데이비드 예이츠
 
 
 ##
 
 
insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 18(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#인턴', '코미디', '미국', '2015-09-24', 2015, '121분', 
'https://movie-phinf.pstatic.net/20150910_279/1441866003899BJKw7_JPEG/movie_image.jpg', 
'창업 1년 반 만에 직원 220명의 성공신화를 이룬 줄스.<br>
TPO에 맞는 패션센스, 업무를 위해 사무실에서도 끊임 없는 체력관리,<br>
야근하는 직원 챙겨주고, 고객을 위해 박스포장까지 직접 하는 열정적인 30세 여성 CEO!<br>
한편, 수십 년 직장생활에서 비롯된 노하우와 나이만큼 풍부한 인생경험이 무기인<br>
만능 70세의 벤을 인턴으로 채용하게 되는데..'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 18(이름, 출생, 사망, 설명) 순서 
 ('로버트 드니로','1943년 08월 17일','',
 '수상 : 2020년 제 26회 미국 배우 조합상 공로상'),
 ('앤 해서웨이','1982년 11월 12일','',
 '학력 : 뉴욕 대학교<br>
 수상 : 2013년 제 70회 골든 글로브 시상식 여우조연상<br>
      2013년 제 18회 크리틱스 초이스 시상식 여우조연상<br>
      2013년 제 33회 런던 비평가 협회상 여우조연상');

insert into `kimchi`.`show_actor`
values
# 18(`show_id`, `actor_id`) 순서
(18, 35), # #인턴 / 로버트 드니로
(18, 36); # #인턴 / 앤 해서웨이

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 18(이름, 출생, 사망, 설명) 순서 
('낸시 마이어스','1949년 12월 08일','',
'수상 : 2020년 제 72회 미국 작가 조합상 월계수상');

insert into `kimchi`.`show_director`
 values
 # 18(`show_id`, `director_id`) 순서
 (18, 18); # #인턴 / 낸시 마이어스
 
 
 ##
 
 
 insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 19(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#캣츠', '뮤지컬,가족', '미국,영국', '2019-12-24', 2019, '109분', 
'https://movie-phinf.pstatic.net/20191212_298/1576126327893wHnf5_JPEG/movie_image.jpg', 
'앤드루 로이드 웨버가 만든 전설의 뮤지컬 \'캣츠\'가 스크린으로 찾아온다.<br>
일 년에 한 번 열리는 젤리클 무도회.<br>
오늘 밤 선택받은 고양이에겐 운명을 바꿀 기회가 주어진다는데.<br>
새로운 삶을 살고 싶은 고양이들이 황홀한 무대를 펼친다.'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 19(이름, 출생, 사망, 설명) 순서 
 ('제니퍼 허드슨','1981년 09월 12일','',
 '수상 : 2007년 제 79회 미국 아카데미 시상식 여우조연상<br>
      2007년 제 64회 골든 글로브 시상식 여우조연상<br>
      2007년 제 13회 미국 배우 조합상 영화부문 여우조연상'),
 ('테일러 스위프트','1989년 12월 13일','',
 '데뷔 : 2006년 1집 Taylor Swift');

insert into `kimchi`.`show_actor`
values
# 19(`show_id`, `actor_id`) 순서
(19, 37), # #캣츠 / 제니퍼 허드슨
(19, 38); # #캣츠 / 테일러 스위프트

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 19(이름, 출생, 사망, 설명) 순서 
('톰 후퍼','1972년 10월 05일','',
'학력 : 옥스퍼드 대학교 유니버시티 칼리지<br>
수상 : 2017년 제 37회 일본 아카데미상 우수 외국작품상<br>
      2017년 제 70회 골든 글로브 시상식 작품상<br>
      2012년 제 63회 미국 감독 조합상 영화부문 감독상');

insert into `kimchi`.`show_director`
 values
 # 19(`show_id`, `director_id`) 순서
 (19, 19); # #캣츠 / 톰 후퍼
 
 
 ##
 
 
insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 20(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#센과치히로의행방불명', '애니메이션', '일본', '2002-06-28', 2002, '126분', 
'https://movie-phinf.pstatic.net/20150113_96/1421113909808LPjqA_JPEG/movie_image.jpg', 
'금지된 세계의 문이 열렸다!<br>
<br>
 이사 가던 날, 수상한 터널을 지나자 인간에게는 금지된 신들의 세계로 오게 된 치히로.<br>
 신들의 음식을 먹은 치히로의 부모님은 돼지로 변해버린다.<br>
<br>
\'걱정마, 내가 꼭 구해줄게...\'<br>
 겁에 질린 치히로에게 다가온 정체불명의 소년 하쿠.<br>
 그의 따뜻한 말에 힘을 얻은 치히로는 인간 세계로 돌아가기 위해 사상 초유의 미션을 시작하는데...'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 20(이름, 출생, 사망, 설명) 순서 
 ('히이라기 루미','1987년 08월 01일','',
 '배역 : 치히로/센 목소리 역'),
 ('이리노 미유','1988년 02월 19일','',
 '배역 : 하쿠 목소리 역');

insert into `kimchi`.`show_actor`
values
# 20(`show_id`, `actor_id`) 순서
(20, 39), # #센과치히로의행방불명 / 히이라기 루미
(20, 40); # #센과치히로의행방불명 / 이리노 미유

insert into `kimchi`.`director`(`name`,`birth`,`death`,`description`)
 values
 # 20(이름, 출생, 사망, 설명) 순서 
('미야자키 하야오','1941년 01월 05일','',
'수상 : 2014년 제 37회 일본 아카데미상 우수 애니메이션 작품상<br>
      2013년 제 26회 시카고 비평가 협회상<br>
      2013년 제 78회 뉴욕 비평가 협회상');

insert into `kimchi`.`show_director`
 values
 # 20(`show_id`, `director_id`) 순서
 (20, 20); # #센과치히로의행방불명 / 미야자키 하야오
 
 
 ##
 
insert into `kimchi`.`show_info`(`title`, `type`, `country`, `data_added`, `release_year`, `duration`, `poster`,`description`)
values 
# 21(제목, 장르, 국가, 개봉일(등록일), 년도, 상영시간, 포스터url, 설명)
('#사자', '액션,어드벤처', '한국', '2019-07-31', 2019, '129분', 
'https://movie-phinf.pstatic.net/20190625_168/1561426986010A3uBi_JPEG/movie_image.jpg', 
'어릴 때 아버지를 여읜 후 세상에서 등을 돌린 MMA 챔피언.<br>
손바닥에 원인불명의 깊은 상처가 생기자 구마 사제를 찾아간다.<br>
그리고 깨달은 건, 이 상처에 특별한 힘이 있다는 사실.<br>
신의 사자로서 악에 맞서 싸울 때가 온 것인가...'); 

insert into `kimchi`.`actor`(`name`,`birth`,`death`,`description`)
 values
 # 21(이름, 출생, 사망, 설명) 순서 
 ('안성기','1952년 01월 01일','',
 '학력 : 한국외국어대학교 한국어교육학, 베트남어과<br>
 수상 : 2020년 제 53회 휴스턴국제영화제 남우주연상<br>
      2019년 제 10회 올해의 영화상 특별공로상<br>
      2015년 제 35회 황금촬영상 인기남우상'),
 ('우도환','1992년 07월 12일','',
 '학력 : 단국대학교 공연영화학<br>
 수상 : 2018년 MBC 연기대상 월화 미니시리즈 부문 남자 우수 연기상<br>
      2017년 KBS 연기대상 남자 신인상');

insert into `kimchi`.`show_actor`
values
# 21(`show_id`, `actor_id`) 순서
(21, 26), # #사자 / 박서준
(21, 41), # #사자 / 안성기
(21, 42); # #사자 / 우도환

# 21 김주환 감독 : 이전에 기록되어 있어서 감독 정보 삽입하지 않고 넘어감.
# 이어서 작업 진행할 경우, 감독 정보 삽입 잊지 말고 할 것.

insert into `kimchi`.`show_director`
 values
 # 20(`show_id`, `director_id`) 순서
 (21, 13); # #사자 / 김주환
 
