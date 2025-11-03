# 놀몬버스 해커톤 MVP

Flutter 웹앱 프로젝트

## 프로젝트 구조

```
lib/
  ├── main.dart                    # 앱 진입점 및 라우팅 설정
  ├── providers/
  │   └── inventory_provider.dart  # 인벤토리 상태 관리
  └── views/
      ├── lobby_view.dart          # 로비 페이지
      ├── booking_view.dart        # 예약 페이지
      └── my_room_view.dart        # 내 놀몬방 페이지
web/
  ├── index.html                   # 웹 진입점
  └── manifest.json               # PWA 매니페스트
```

## 기능

- **로비 (LobbyView)**: 퀘스트 버튼과 내 놀몬방 링크
- **예약 (BookingView)**: 호텔 예약 더미 페이지 및 예약 확정 기능
- **내 놀몬방 (MyRoomView)**: 획득한 아이템 목록 표시

## 실행 방법

1. Flutter 웹 실행:

   ```bash
   flutter run -d chrome
   ```

2. 웹 빌드:
   ```bash
   flutter build web
   ```

## 의존성

- `provider`: 상태 관리
- `go_router`: 라우팅
