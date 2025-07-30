# LLM Knowledge Archive

LLM Knowledge팀의 지식 아카이브 블로그입니다. 2024년부터 대규모 언어 모델에 대한 논문을 읽고 최신 트렌드를 연구하고 있습니다.

이 블로그는 GitHub Actions를 통해 자동으로 빌드되고 배포됩니다:

- **PR 생성 시**: 빌드 테스트만 실행
- **main 브랜치 머지 시**: 자동으로 GitHub Pages에 배포

## 📝 새 글 작성하기

### 방법 1: 스크립트 사용 (권장)

```bash
./write-post.sh
```

스크립트가 자동으로:
1. 새 브랜치 생성
2. Hugo 포스트 파일 생성
3. 다음 단계 안내

### 방법 2: 수동으로

```bash
# 새 브랜치 생성
git checkout -b post-글제목

# 새 포스트 생성
hugo new content/posts/2024-07-30-글제목.md

# 글 작성 후 커밋
git add .
git commit -m "Add new post: 글제목"
git push origin post-글제목

# GitHub에서 PR 생성
```

## 🏗️ 로컬 개발

```bash
# 의존성 설치
git submodule update --init --recursive

# 로컬 서버 실행
hugo server -D

# 빌드
hugo --minify
```

## 📁 프로젝트 구조

```
/
├── .github/workflows/    # GitHub Actions
├── content/             # 마크다운 포스트
├── themes/              # Hugo 테마
├── static/              # 정적 파일
├── hugo.toml           # Hugo 설정
└── write-post.sh       # 새 글 작성 스크립트
```
