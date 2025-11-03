# Flutter 웹앱 배포 스크립트
Write-Host "=== 놀몬버스 웹앱 배포 ===" -ForegroundColor Cyan

# 1. 의존성 설치
Write-Host "`n[1/3] Flutter 의존성 설치 중..." -ForegroundColor Yellow
flutter pub get

if ($LASTEXITCODE -ne 0) {
    Write-Host "의존성 설치 실패!" -ForegroundColor Red
    exit 1
}

# 2. 웹 빌드
Write-Host "`n[2/3] Flutter 웹 빌드 중..." -ForegroundColor Yellow
flutter build web --release

if ($LASTEXITCODE -ne 0) {
    Write-Host "빌드 실패!" -ForegroundColor Red
    exit 1
}

# 3. Vercel 배포 확인
Write-Host "`n[3/3] Vercel CLI 확인 중..." -ForegroundColor Yellow
$vercelInstalled = Get-Command vercel -ErrorAction SilentlyContinue

if (-not $vercelInstalled) {
    Write-Host "Vercel CLI가 설치되어 있지 않습니다." -ForegroundColor Yellow
    Write-Host "설치하려면 다음 명령을 실행하세요:" -ForegroundColor Cyan
    Write-Host "  npm install -g vercel" -ForegroundColor White
    Write-Host "`n또는 수동으로 배포하려면:" -ForegroundColor Cyan
    Write-Host "  1. https://vercel.com 에서 계정 생성" -ForegroundColor White
    Write-Host "  2. 'New Project' 클릭" -ForegroundColor White
    Write-Host "  3. build/web 폴더를 드래그 앤 드롭" -ForegroundColor White
    exit 0
}

# Vercel 배포 실행
Write-Host "`nVercel 배포를 시작합니다..." -ForegroundColor Green
Write-Host "Vercel 로그인이 필요할 수 있습니다." -ForegroundColor Yellow
vercel --prod

