# Vercel 배포 문제 해결

## 문제
Vercel 빌드 환경에 Flutter가 설치되어 있지 않아 빌드 실패가 발생했습니다.

## 해결 방법 (2가지 옵션)

### 방법 1: GitHub Actions 사용 (추천) ⭐

자동화된 빌드 및 배포 파이프라인을 설정했습니다.

**설정 필요:**
1. Vercel에서 프로젝트 설정 페이지로 이동
2. Settings > General 에서 다음 정보 확인:
   - Project ID
   - Team ID (Organization ID)

3. GitHub 저장소에서:
   - Settings > Secrets and variables > Actions
   - 다음 Secrets 추가:
     - `VERCEL_TOKEN`: Vercel 대시보드 > Settings > Tokens 에서 생성
     - `VERCEL_ORG_ID`: Vercel 프로젝트 설정에서 확인
     - `VERCEL_PROJECT_ID`: Vercel 프로젝트 설정에서 확인

4. Vercel 프로젝트 설정에서:
   - Build Command: (비워두기 또는 제거)
   - Output Directory: `build/web`
   - Install Command: (비워두기 또는 제거)

이제 GitHub에 푸시하면 자동으로 GitHub Actions가 Flutter를 빌드하고 Vercel에 배포합니다!

### 방법 2: 로컬 빌드 후 수동 배포 (간단)

**단계:**
1. 로컬에서 빌드:
   ```powershell
   flutter build web --release
   ```

2. `.gitignore`에서 `build/web` 제외 (빌드 파일 커밋)

3. Vercel 설정:
   - Build Command: (비워두기)
   - Output Directory: `build/web`
   - Install Command: (비워두기)

4. GitHub에 푸시:
   ```powershell
   git add build/web
   git commit -m "Add built web files"
   git push
   ```

이 방법은 매번 수동 빌드가 필요합니다.

## 즉시 배포하려면 (임시 해결책)

로컬에서 빌드하고 Vercel CLI로 직접 배포:

```powershell
# 1. 빌드
flutter build web --release

# 2. 배포 (이미 로그인되어 있다면)
vercel --prod --yes
```

