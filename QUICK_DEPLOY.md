# 빠른 배포 가이드

## 배포 준비 완료! ✅

프로젝트가 빌드되었고 (`build/web` 폴더에 빌드 파일이 생성됨), Vercel CLI도 설치되었습니다.

## 배포 방법

### 방법 1: Vercel CLI 사용 (터미널에서)

1. **Vercel 로그인:**

   ```powershell
   vercel login
   ```

   브라우저가 열리면 Vercel 계정으로 로그인하세요.

2. **프로젝트 배포:**

   ```powershell
   vercel --prod --yes
   ```

   또는 배포 스크립트 실행:

   ```powershell
   .\deploy.ps1
   ```

   배포 완료 후 퍼블릭 URL이 표시됩니다!

### 방법 2: Vercel 웹 대시보드 사용 (더 간단!)

1. **https://vercel.com** 접속 및 로그인 (GitHub/Google 계정으로 가입 가능)

2. **"Add New Project"** 클릭

3. **배포 방법 선택:**

   - 옵션 A: `build/web` 폴더를 드래그 앤 드롭
   - 옵션 B: GitHub 저장소 연결 후 자동 배포 설정:
     - Build Command: `flutter build web`
     - Output Directory: `build/web`

4. **"Deploy"** 클릭

5. 몇 분 후 퍼블릭 URL이 생성됩니다!

## 배포 후

- Vercel은 자동으로 HTTPS 인증서를 제공합니다
- 커밋 푸시 시 자동 재배포하려면 GitHub 저장소를 연결하세요
- 무료 플랜으로도 충분히 사용 가능합니다

## 로컬 테스트용 퍼블릭 URL (임시)

빠른 테스트가 필요하다면 ngrok 사용:

```powershell
# 1. Flutter 앱 실행 (다른 터미널)
flutter run -d chrome --web-port=8080

# 2. ngrok 설치 및 실행
# https://ngrok.com/download 에서 다운로드 후:
ngrok http 8080
```

ngrok이 제공하는 URL로 접근 가능합니다 (ngrok 실행 중에만 작동).
