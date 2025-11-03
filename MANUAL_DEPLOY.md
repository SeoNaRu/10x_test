# Vercel 수동 배포 가이드

## 방법 1: Vercel 웹 대시보드에서 배포 (가장 간단) ⭐

1. **https://vercel.com** 접속 및 로그인

2. 프로젝트 대시보드에서:

   - 프로젝트를 클릭하거나
   - "Deployments" 탭에서 "Redeploy" 클릭
   - 또는 "Settings" > "Build & Development Settings"에서 수동 배포

3. 배포가 자동으로 시작됩니다 (이미 빌드된 `build/web` 폴더 사용)

## 방법 2: GitHub에 빌드 파일 커밋 후 자동 배포

로컬에서 빌드한 파일을 커밋하면 Vercel이 자동으로 배포합니다:

```powershell
# 빌드 파일을 .gitignore에서 제외 (임시)
# 또는 직접 배포 폴더 업로드
```

## 방법 3: GitHub Actions 자동화 (최종 해결책)

GitHub 저장소에 Secrets를 설정하면 자동으로 빌드 및 배포됩니다:

- VERCEL_TOKEN
- VERCEL_ORG_ID
- VERCEL_PROJECT_ID

설정 방법은 DEPLOY_FIX.md 참고
