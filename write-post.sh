#!/bin/bash

# 새 포스트 생성 및 PR 워크플로우

# 새 포스트 제목 입력받기
read -p "포스트 제목을 입력하세요: " TITLE

# 브랜치 이름 생성
BRANCH_NAME="post-$(echo $TITLE | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g')"

echo "🚀 새 포스트 생성 중..."

# 새 브랜치 생성
git checkout -b $BRANCH_NAME

# Hugo로 새 포스트 생성
hugo new "content/posts/$(date +%Y-%m-%d)-$(echo $TITLE | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g').md"

echo "✅ 새 포스트 파일 생성 완료"
echo "📝 에디터로 포스트를 작성한 후 다음 명령어를 실행하세요:"
echo ""
echo "git add ."
echo "git commit -m 'Add new post: $TITLE'"
echo "git push origin $BRANCH_NAME"
echo ""
echo "또는 GitHub CLI가 설치되어 있다면:"
echo "gh pr create --title 'Add new post: $TITLE' --body '새 블로그 포스트를 추가합니다.'" 