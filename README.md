# fish-kor2eng

한글 커맨드를 영어로 자동 변환하는 fish shell 플러그인입니다.

## 기능

터미널에서 한글로 명령어를 입력하면 자동으로 영어로 변환되어 실행됩니다.

## 설치

### fisher 사용

```bash
fisher install jacegem/fish-kor2eng
```

### 수동 설치

```bash
# 플러그인 디렉토리 생성
mkdir -p ~/.config/fish/plugins/fish-kor2eng

# 파일 복사
cp fish_kor2eng.fish ~/.config/fish/plugins/fish-kor2eng/

# fish 설정에 추가
echo "source ~/.config/fish/plugins/fish-kor2eng/fish_kor2eng.fish" >> ~/.config/fish/config.fish
```

## 사용법

터미널에서 한글로 명령어를 입력하고 Enter를 누르면 자동으로 영어로 변환되어 실행됩니다.

### 예시

| 한글 입력 | 영어 변환 | 의미               |
| --------- | --------- | ------------------ |
| `ㅣㄴ`    | `ls`      | 파일 목록 보기     |
| `햣`      | `git`     | git 명령어         |
| `ㅔㅈㅇ`  | `pwd`     | 현재 디렉토리 경로 |

### 자판 매핑

#### 자음

- ㄱ → r, ㄲ → R
- ㄴ → s
- ㄷ → e, ㄸ → E
- ㄹ → f
- ㅁ → a
- ㅂ → q, ㅃ → Q
- ㅅ → t, ㅆ → T
- ㅇ → d
- ㅈ → w, ㅉ → W
- ㅊ → c
- ㅋ → z
- ㅌ → x
- ㅍ → v
- ㅎ → g

#### 모음

- ㅏ → k, ㅐ → o
- ㅑ → i, ㅒ → O
- ㅓ → j, ㅔ → p
- ㅕ → u, ㅖ → P
- ㅗ → h, ㅛ → y
- ㅜ → n, ㅠ → b
- ㅡ → m, ㅣ → l

## 제거

```bash
fisher remove jacegem/fish-kor2eng
```

## 라이선스

MIT License

## 기여

버그 리포트나 기능 제안은 GitHub Issues를 이용해주세요.
