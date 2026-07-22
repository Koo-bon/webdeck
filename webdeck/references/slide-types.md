# 슬라이드 타입 레퍼런스

각 타입의 필드. 공통: `kicker`(작은 상단 라벨), `title`/`lines`(헤드라인), `sub`(부연).
`lines`는 `[["텍스트", accent?], ...]` — accent=true면 포인트 컬러. 이미지 경로는 **절대경로**로 쓰면 생성기가 assets로 복사한다.

## cover — 풀블리드 표지
`{ "type":"cover", "img":"/abs/표지.png", "bg":"(선택)배경색/그라데이션" }`
표지 이미지에 카피가 박혀 있으면 그대로. 좌우 여백은 `bg`로 채워 꽉 차 보이게.

## core — 대형 헤드라인
`{ "type":"core", "kicker":"…", "lines":[["앞부분",false],["강조",true]], "sub":"…", "mood":"light", "bgimg":"/abs/배경.png" }`
`mood:"light"` = 밝은 환기 장표(다크 사이 대비). `bgimg` 주면 풀블리드 배경+카피 오버레이.

## cards — 카드 나열
`{ "type":"cards", "big":true, "cols":3, "title":"…", "items":[{"tag":"01","title":"…","desc":"…"}, …], "sub":"…" }`
`cols` 미지정 시 개수로 자동 균형(5→3+2). `big`=큰 카드.

## stat-trio — 숫자 3개
`{ "type":"stat-trio", "title":"…", "items":[{"num":"+40%","label":"…"}, …], "sub":"…" }`

## feature — 좌 텍스트 + 우 큰 이미지
`{ "type":"feature", "title":"…", "img":"/abs/img.png", "fit":true, "link":"https://…", "points":[{"tag":"…","title":"…","desc":"…"}], "skill":"큰 배지 텍스트" }`
`fit:true`=이미지 contain, 없으면 cover. `link`=이미지 클릭 시 새 탭.

## grid — 이미지 그리드
`{ "type":"grid", "big":true, "cols":3, "title":"…", "items":[{"img":"/abs/a.png","tag":"…","cap":"…","link":"https://…"}], "sub":"…" }`

## ba — 전후 드래그 비교
`{ "type":"ba", "heading":[["전과 후",true]], "before":"/abs/before.png", "after":"/abs/after.png", "labels":["BEFORE","AFTER"] }`

## flow — 단계 플로우
`{ "type":"flow", "title":"…", "steps":[{"num":"STEP 1","name":"…","desc":"…","skill":"⚙ 도구명"}], "sub":"…" }`

## orgchart — 조직도(최종결정권자-부장-팀장-스킬 4단)
`{ "type":"orgchart", "title":"…", "chief":{"role":"최종 결정권자","name":"나"}, "boss":{"role":"부장 · …","name":"…"}, "teams":[{"role":"팀장 · …","name":"…","skills":["직원A","직원B"]}], "skilllabel":"스킬 · 사원", "sub":"…" }`
- `chief`(선택) = 맨 위 최종 결정권자 단(테두리 박스). 있으면 4단: **chief → boss(부장) → teams(팀장) → skills(사원)**. 없으면 boss부터 3단.
- `teams[].skills` 는 팀장 아래 **세로 리스트**로 쫙 나열된다(사원 목록). skill 앞에 `~` 붙이면 흐린 항목(가져다 쓴/보조).
- `skilllabel`(선택) = 각 팀 스킬 목록 위 작은 라벨(기본 "스킬 · 사원").

## loophell — 반복 지옥 애니(왔다갔다)
`{ "type":"loophell", "title":"…", "lead":"…", "steps":[{"t":"툴","s":"부연"}], "loop":"반복 문구", "time":"<b>6시간→40분</b> …", "punch":"큰 결정타 문장" }`
칩이 순서대로 반짝이며 도는 애니. 반복·비효율 메시지에.

## vonr — 낯선 한 끗 애니(하나만 튐)
`{ "type":"vonr", "title":"…", "count":15, "cols":5, "hot":7, "sub":"…" }`
똑같은 타일 사이 `hot` 위치가 팟 튀어나옴. 차별화·평준화 메시지에.

## video — 영상
`{ "type":"video", "video":"/abs/clip.mp4", "caption":"…", "sound":true, "poster":"/abs/poster.png" }`
`sound:true`=소리 있는 영상(첫 클릭에 소리 ON). 세로 영상도 자동 레터박스.

## showcase — 브라우저 목업
`{ "type":"showcase", "big":true, "url":"site.com", "shot":"/abs/screenshot.png", "link":"https://…", "heading":[["…",true]], "sub":"…" }`

## section — 단락 구분(파트 나누기)
`{ "type":"section", "num":"03", "title":"후킹의 원리", "sub":"(선택)한 줄 부연" }`
큰 번호 + 파트 제목 + 딥레드 배경으로 **주제가 바뀌는 지점**을 확실히 구분한다. 긴 덱은 3~4장마다 단락이 바뀌는 곳에 넣어 청중이 흐름을 따라오게 한다. `num` 생략 가능.

## ending — 마무리
`{ "type":"ending", "kicker":"THE END", "lines":[["…",false],["…",true]], "foot":"연락처·마무리" }`

---
## 톤 예시 (theme)
- 밝고 경쾌: `{"bg":"#fff","accent":"#e0007a","light":true,"deckbg":"linear-gradient(135deg,#ffe1ef,#eef,#dbe8ff)"}`
- 어둡고 고급: `{"bg":"#0e0b0d","accent":"#c9a24a","ink":"#f0eef0","dim":"#a99ca0"}`
- 후킹·임팩트(기본): `{"bg":"#0e0b0d","accent":"#e0007a","red":"#c1121f"}`
