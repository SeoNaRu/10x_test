# 배포 가이드

## Vercel을 사용한 배포 (추천)

### 방법 1: Vercel CLI 사용

1. Vercel CLI 설치:

   ```bash
   npm install -g vercel
   ```

2. Vercel 로그인:

   ```bash
   vercel login
   ```

3. 프로젝트 배포:
   ```bash
   vercel --prod
   ```

### 방법 2: Vercel 웹 대시보드 사용

1. [Vercel](https://vercel.com)에 가입
2. "New Project" 클릭
3. GitHub/GitLab/Bitbucket 저장소 연결 또는 `build/web` 폴더 직접 업로드
4. 설정:
   - Build Command: `flutter build web`
   - Output Directory: `build/web`
5. "Deploy" 클릭

## Netlify를 사용한 배포

### 방법 1: Netlify CLI 사용

1. Netlify CLI 설치:

   ```bash
   npm install -g netlify-cli
   ```

2. Netlify 로그인:

   ```bash
   netlify login
   ```

3. 프로젝트 배포:
   ```bash
   flutter build web
   netlify deploy --prod --dir=build/web
   ```

### 방법 2: Netlify 웹 대시보드 사용

1. [Netlify](https://www.netlify.com)에 가입
2. "Add new site" > "Deploy manually"
3. `build/web` 폴더를 드래그 앤 드롭

## 로컬 테스트 (ngrok 사용)

로컬에서 테스트용 퍼블릭 URL이 필요한 경우:

1. ngrok 설치: https://ngrok.com/download

2. Flutter 앱 실행:

   ```bash
   flutter run -d chrome --web-port=8080
   ```

3. ngrok 터널 생성:
   ```bash
   ngrok http 8080
   ```

ngrok이 제공하는 퍼블릭 URL을 사용할 수 있습니다.
