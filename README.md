<h1 align='center'> <img src='https://user-images.githubusercontent.com/21255149/180385609-b0ff770e-470c-4734-bf8c-b0952268b279.png' style='width: 30px; height: 30px;'>&nbsp;내일의 장보기, Lotte Kurly</h1>
<div align='center'>
  <h3></h3>
  <img src='https://user-images.githubusercontent.com/21255149/180385615-741a8077-97fc-46e4-8662-ba29513f2ee7.png' style='width: 200px;'><br/>
  <h3><a href="https://ecshin.notion.site/b90348bc2cc7477682686093e03fc2ef">📘기능</a>| <a href="[https://www.notion.so/ecshin/dc03002ea964433da73578cf9a4cebde](https://ecshin.notion.site/dc03002ea964433da73578cf9a4cebde)">📑데이터베이스 구조</a> | <a href="https://www.figma.com/file/NRqHTD39KUEqH5hZrN9Kkl/LOTTE-Kerly?node-id=0%3A1">✏️UI</a></h3>
</div>
<br/><br/>

## 목차
- [개요](https://github.com/nscv/lotte-kurly#-개요)
- [실행 방법](https://github.com/nscv/lotte-kurly#-실행-방법)
- [핵심 기능](https://github.com/nscv/lotte-kurly#-핵심-기능)
- [기술 스택](https://github.com/nscv/lotte-kurly#-기술-스택)
- [시스템 구조도](https://github.com/nscv/lotte-kurly#-시스템-구조도)
- [주요기능 실행화면](https://github.com/nscv/lotte-kurly#-주요기능-실행화면)
- [팀 정보](https://github.com/nscv/lotte-kurly#-팀-정보)

## 🚩개요
최근 물가 상승률이 가파르게 높아지면서 국민들에게 더 저렴하게 식재료를 제공하고자 버티컬 플랫폼인 마켓컬리를 카피캣으로 사용하여 구현했다.

## 💻핵심 기능
<details>
<summary> 기능</summary>

### 상품
- 상품 정렬(판매 많은 순, 리뷰 많은 순, 가격 내림차순/오름차순, 카테고리)
- 페이징
- 상품 정보 제공

### 유저
- 아이디 중복
- 비밀번호 처리
- 카카오 소셜 로그인
- 마이페이지 
- 유저 정보 수정

#### 주문
- 상품 장바구니에 담기

#### 결제
- 상품 결제
 - 포인트 적립
 
#### 리뷰
- 리뷰 작성
- 리뷰 수정
- 리뷰 삭제
- 리뷰 확인

#### 관리자
- 상품 등록
- 카테고리 별 판매 현황
- 회원정보를 활용한 구매 통계
- 매출 현황 확인
- 상품 재고 수정

#### 최근 본 상품
- 최근에 본 상품 리스트

#### 크롤링
- 상품 정보 크롤링

</details>

## 🔧기술 스택
 - Language : `Java` `JavaScript`
 - Library & Framework : `Spring`
 - Database : `Mysql`
 - Target : `Web Browser`
 - Tool : `Intellij`
 - Infra : `EC2` `RDS`
 - Etc : `Notion`, `Git`

## 📐시스템 구조도

![systemstruccture](https://user-images.githubusercontent.com/58438267/180413144-8b1182a0-25c8-4a73-a9b2-ba63b8048710.png)

## 🎇 주요기능 실행 

* **메인 화면**
  * `베스트 상품` 과 `할인 상품` 을 조회할 수 있습니다.
  <img width="1792" alt="01-main" src="https://user-images.githubusercontent.com/43202607/180709370-20004c46-ab04-4044-9be7-c9ae23959e64.png">

* **상품 카테고리 별 조회와 상품 정렬**
  * `카테고리` 메뉴를 사용해 카테고리 별로 상품을 확인할 수 있습니다.
  ![02-category1](https://user-images.githubusercontent.com/43202607/180710204-19232afe-3b60-417d-a886-70e563356b0c.png)
  
  <br>
  
  * 정렬 필터를 이용해 `판매량 순` `할인 품목` `낮은 가격순` `높은 가격순` 으로 상품을 조회할 수 있습니다.
  ![03-category2](https://user-images.githubusercontent.com/43202607/180710239-daf95005-06cb-4415-9b46-13eb6073d657.png)

* **베스트 상품 조회**
  * `베스트 상품` 메뉴를 통해 판매가 많이 된 상품들을 조회할 수 있습니다.
    <img width="1792" alt="04-best-product" src="https://user-images.githubusercontent.com/43202607/180712681-82ba8ca8-941e-4d5d-a9ca-3b1c5213aa38.png">

* **상품 상세 조회**
  * 상품 목록에서 상품의 사진을 클릭하면 `상품 상세 정보` 를 확인할 수 있습니다.
    <img width="1792" alt="05-product-detail" src="https://user-images.githubusercontent.com/43202607/180712707-8ee3c62c-d2aa-499e-871d-4938ebba2229.png">

* **최근 본 상품 퀵바**
    * 페이지 우측에 `최근 본 상품` 이 지속적으로 노출됩니다. 상품을 클릭 할 때마다 최신 본 상품의 최상단으로 업데이트됩니다.
      ![19-recent-list](https://user-images.githubusercontent.com/43202607/180711844-d4dd3df1-d983-4a0f-9c15-e3e26def415c.png)

* **카카오 로그인**
  * 로그인 메뉴를 클릭하면 카카오 계정을 사용해 `회원 가입` 및 `카카오 로그인` 을 할 수 있습니다.
    <img width="612" alt="06-kakao-login" src="https://user-images.githubusercontent.com/43202607/180713007-2ccabeb6-cbdd-4620-be6a-af28fa9a8d80.png">
  
  * 카카오 계정을 입력한 뒤 휴대폰 인증을 하면, 사용자들 등록하고 로그인이 가능합니다.
    <img width="1792" alt="07-login-success" src="https://user-images.githubusercontent.com/43202607/180713010-ba7b9144-a099-499d-8376-ac1310c5416e.png">

* **마이페이지**
  * `마이페이지` 메뉴를 통해 사용자 정보를 수정할 수 있습니다.
    <img width="1792" alt="08-mypage" src="https://user-images.githubusercontent.com/43202607/180713016-03442af2-0f00-4611-aeb8-00b04b302b86.png">

* **상품 후기**
  * `상품 상세` 페이지에서 리뷰를 등록할 수 있습니다.
    <img width="1792" alt="09-review-write" src="https://user-images.githubusercontent.com/43202607/180713599-8e93fd94-6f04-4d75-a8ee-782b3287b246.png">

  * 등록한 리뷰는 수정 및 삭제가 가능합니다.
    ![10-review-result](https://user-images.githubusercontent.com/43202607/180713825-c12b2e79-e427-42e1-a4cc-7f956817ae16.png)
  
* **장바구니**
  * `상품 목록` 또는 `상품 상세보기`에서 `장바구니 상품 추가`가 가능합니다.
    ![11-buck1](https://user-images.githubusercontent.com/43202607/180714221-921c796c-5369-409e-9d3b-f74a2c36f225.png)

    ![12-buck2](https://user-images.githubusercontent.com/43202607/180714283-1c27a7c3-e84c-4f59-990e-c0716e4ad256.png)
  
  * `장바구니` 메뉴에서 추가한 상품을 확인 가능합니다. 장바구니의 `결제하기` 를 누르면 주문서로 이동할 수 있습니다.
    <img width="1792" alt="13-buck3" src="https://user-images.githubusercontent.com/43202607/180714294-2e23f5b8-93fd-4312-865b-ac3a25275a7e.png">
  
* **주문하기**
  * `장바구니` 에서 선택한 상품들과 주문 정보를 확인할 수 있습니다.
    <img width="1792" alt="14-order1" src="https://user-images.githubusercontent.com/43202607/180714586-18d19c53-3ce5-49f3-94ec-262d2bbfe318.png">

  * `결제하기` 를 누르면 현재 가상계좌 잔액과 주문 총 가격, 결제 후 가상계좌 잔액을 확인할 수 있습니다.
    <img width="1792" alt="15-order2" src="https://user-images.githubusercontent.com/43202607/180714713-d601b95b-4dbe-40c5-829e-01b7dd351a0c.png">

  * 결제가 완료되면 `주문 내역` 메뉴에서 주문 정보를 확인할 수 있습니다.
    ![17-order-detail1](https://user-images.githubusercontent.com/43202607/180715261-db759f16-472d-4121-90c7-21917577ef19.png)
  <img width="1792" alt="18-order-detail2" src="https://user-images.githubusercontent.com/43202607/180715269-774b2209-4c05-4749-80b5-a819a6be67ad.png">

* **관리자 페이지**
  * 관리자 권한이 있는 사용자는 `관리자 페이지` 에 접근할 수 있습니다.
  ![24-admin-page-link](https://user-images.githubusercontent.com/43202607/180715708-555bf142-9210-494b-98e4-cfdb60ed2550.png)

  * 관리자 메인 화면에서 `대시보드` 를 통해 서비스 이용 통계를 확인할 수 있습니다.
    * `월,연매출` `총 주문 건수` `날짜 별 매출 현황` `카테고리 별 구매 현황` `성별 구매 금액` `연령 별 구매 금액` 을 확인할 수 있습니다.
  <img width="1792" alt="20-admin-dashboard" src="https://user-images.githubusercontent.com/43202607/180715727-c0f8b513-d497-467b-9ef3-b5e2158a9cec.png">

  * `상품 재고` 메뉴에서 상품들의 재고를 확인할 수 있습니다.
  <img width="1792" alt="21-admin-product-list" src="https://user-images.githubusercontent.com/43202607/180715732-8f4f7769-1e96-4263-be5d-6b98aa69fa3e.png">

  * `상품 재고` 의 상품 목록의 `추가` 버튼을 클릭해, 상품의 재고를 변경할 수 있습니다.
  <img width="1792" alt="22-admin-product-update" src="https://user-images.githubusercontent.com/43202607/180715739-e54111d4-4ade-41b4-adc4-4b579782db70.png">

  * `상품 추가` 메뉴를 통해 사용자들에게 판매할 상품을 추가할 수 있습니다.
    <img width="1792" alt="23-admin-product-add" src="https://user-images.githubusercontent.com/43202607/180715741-1f13da8c-84fc-4a9a-b108-93e603f11c44.png">


## 🌄팀 정보
|  강예나  |  권나연  |  신은총  |  오재곤 | 이석원  |  최형준  |
| :----------: |  :--------:  |  :---------: |  :---------: | :---------: | :---------: |
| [<img src="https://user-images.githubusercontent.com/62419355/178489222-02bfae9d-d535-4186-ae6c-737e6bfc86ad.png" width="100px" height="100px"><br/>Github](https://github.com/KangYena)| [<img src="https://user-images.githubusercontent.com/21255149/180390053-c286705b-6ddb-4ba1-8777-f3b645cb72c6.png" width="100px" height="100px"><br/>Github](https://github.com/hellonayeon) | [<img src="https://user-images.githubusercontent.com/21255149/178379443-7ead27aa-ec24-4e15-8935-750b1cafa08c.jpg" width="100px" height="100px"><br/>Github](https://github.com/chd830) | [<img src="https://user-images.githubusercontent.com/21255149/180393004-2220f426-35c8-42e6-8492-6f75c5916879.jpg" width="100px" height="100px"><br/>Github](https://github.com/gon-pick)| [<img src="https://user-images.githubusercontent.com/21255149/180430654-6be52b0d-9453-42e7-9d0c-32770969a966.jpg" width="100px" height="100px"><br/>Github](https://github.com/clalsw) | [<img src="https://user-images.githubusercontent.com/21255149/180430646-fd162fef-602d-4919-9a0c-7bd66ef6f236.jpg" width="100px" height="100px"><br/>Github](https://github.com/choihyeongjun) |
| UI,UX / 프론트 | 상품 구매/결제<br/> 장바구니 <br/> 클라우드 | 관리자, erd설계 | 크롤링 / 리뷰 | 유저 | 상품 |

