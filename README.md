# springBBS


- eclipse project> spring lagacy project> spring mvc project 방법

- dynamic web project 방법
1. Add Folder
		src/main/java, src/main/resource, src/test/java, src/test/resource
	Content directory : src/main/java

2. project 우클릭> configure> convert to maven project (maven install)
3. pom.xml 에서 필요한 라이브러리 등록
4. project 우클릭> spring> add spring project nature
5. web.xml 설정
	<init-param>
			<param-name>contextConfigLocation</param-name>
			<param-value>/WEB-INF/spring/applicationContext.xml</param-value>
	</init-param>
	서버 실행시 applicationContext.xml 를 제일 먼저 찾는다.
	
	<context-param>
		<param-name>contextConfigLocation</param-name>
		<param-value>/WEB-INF/spring/*Context.xml</param-value>
	</context-param>
	의존성 주입을 위해 xml 파일을 *Context.xml 이렇게 만든다
	
6. applicationContext.xml 설정
	<mvc:annotation-driven />      
	<mvc:resources
	<bean id="viewResolver"
	위 3개 설정 후 <import resource="controllerContext.xml" />  임포트 시키기
	
7. controllerContext.xml에서 의존성 주입
	--controller 와 service D.I --
	<bean id="memberController" class = "com.ktds.controller.MemberController">
		<property name="memberService" ref="memberService"></property>
	</bean>

8. memberController 에 대한 의존성은 memberContext.xml에 있음 ( 6번에서 임포트 했기때문에 읽을 수 있다)
	--dao와 sqlSessionTemplate D.I  sqlSessionTemplate은 rootContext.xml 에 있다.--
	<bean id="memberDao" class="com.ktds.dao.MemberDaoImpl">
		<property name="sqlSessionTemplate" ref="sqlSessionTemplate"></property>
	</bean>
	-- Service 와  Dao D.I --
	<bean id="memberService" class="com.ktds.service.MemberServiceImpl">
		<property name="memberDao" ref="memberDao"></property>
	</bean>

9. 의존성 주입만 하면 에러가 난다. 컨트롤, 서비스에 getter setter 만들어야 함.  어노테이션도 해줌
	
10. rootContext.xml 설정  ( db 연결을 위해 )
	-- 1. class load(드라이버 로딩)  2. db connect( url, id, password )
	<bean id="dataSource" class="org.springframework.jdbc.datasource.DriverManagerDataSource">
	  	<property name="driverClassName" value="org.postgresql.Driver"/>
	  	<property name="url" value="jdbc:postgresql://localhost:5432/postgres"/>
	  	<property name="username" value="postgres"/>
	  	<property name="password" value="1161"/>
	</bean>
	
	<!-- myBatis가 db에 접속 할 수 있도록 도와주는 설정 -->
	<bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">       
		<property name="dataSource" ref="dataSource"/>
		<property name="configLocation" value="classpath:/mybatis/mybatis.xml"/> 
	</bean>
	
	<!-- MyBatis가 db에 Query(SQL)을 실행하고 결과를 받아오게 도와주는 설정 -->
	<bean id="sqlSessionTemplate" class="org.mybatis.spring.SqlSessionTemplate">
		<constructor-arg name="sqlSessionFactory" ref="sqlSessionFactory"/>
	</bean>
	
11. 10번에서 설정한 mybatis.xml 설정
	-- memberDao.xml 에서 쿼리문 작성함 --
	<configuration>
		<mappers>
			<mapper resource="com/ktds/dao/sql/memberDao.xml" />
		</mappers>
	</configuration>
    
12. dao 클래스에서 SqlSessionDaoSupport 상속받는다.

13. mvc로 데이터 받아올때  select 은 VO나 String 등 으로 한다.(service 랑 dao 맞춰줌) 
	select 를 제외한 나머지는  
	dao에선 int 로 해주고 Insert, update, delete 가 되었는지 확인한다( 리턴값이 0보다 크면 성공)
	service 에선 boolean 으로 해주고 0 보다 크면 true 아니면 false로 구분해준다.
	controller 에선 true면 로직 수행, false면 return 
	
	
오라클 sqldeveloper 설정	
	 sqlplus sys/oracle as sysdba
	 
	 select * from dba_users;
	 
	 create user YB identified by YB     // 사용자 생성
	 grant connect, resource, dba to YB
	 
