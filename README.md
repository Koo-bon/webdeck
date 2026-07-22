# 🖥️ webdeck — 움직이는 웹 덱 만드는 Claude 스킬

> 파워포인트 대신 **HTML 한 파일**로 끝나는 제안서·발표 덱. 브리프만 주면 브랜드 톤에 맞게 조판해 **어디서든 열리는** 자체완결 덱을 만든다.
> 대형 타이포·풀블리드 이미지·컨셉 애니(반복 지옥·낯선 한 끗)·조직도·전후 드래그·소리 토글·PDF 저장까지 내장.

만든 사람: 구본혁 (아트디렉터) — '후킹' 제안서 웹덱 스타일 기반

**100% 무료 · 설치 후 바로 작동.** (AI 이미지 '생성'은 별도 도구 필요 — 이 스킬은 레이아웃·타이포·애니로 완성)

## ⚡ 설치 (1분)
```bash
git clone https://github.com/Koo-bon/webdeck.git /tmp/webdeck
cp -r /tmp/webdeck/webdeck ~/.claude/skills/webdeck
```
윈도우면 `%USERPROFILE%\.claude\skills\webdeck\` 에 `webdeck` 폴더 내용을 넣으세요.

## ▶ 쓰는 법
Claude Code에서:
```
"이 내용으로 제안서 웹덱 만들어줘: [제목/섹션/메시지/브랜드 톤]"
"발표 자료 웹덱으로 만들어줘"
```
→ Claude가 톤에 맞는 `brief.json`을 짜고 → `generate_deck.py`로 자체완결 덱 생성 → 브라우저로 열면 끝.

## 📁 구성
```
webdeck/
  SKILL.md                 스킬 본문(프로세스·규칙)
  index.html               렌더러 (슬라이드 타입 전부 내장)
  generate_deck.py         brief.json → 덱 생성기
  brief_template.json      스타터 브리프
  references/slide-types.md 슬라이드 타입 레퍼런스
```

## 슬라이드 타입
cover · core · cards · stat-trio · feature · grid · ba(전후 드래그) · flow · orgchart(조직도) · loophell(반복 애니) · vonr(낯선 한 끗 애니) · video · showcase · ending

## 라이선스
개인·학습용 자유 사용.
