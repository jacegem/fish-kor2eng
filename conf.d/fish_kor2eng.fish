# fish-kor2eng plugin
# 한글 커맨드를 영어로 자동 변환하는 fish 플러그인

function kor2eng
    set -l input $argv[1]
    set -l result ""

    # 초성, 중성, 종성 영문 매핑 테이블
    set -l CHO_ENG r R s e E f a q Q t T d w W c z x v g
    set -l JUNG_ENG k o i O j p u P h hk ho hl y n nj np nl b m ml l
    set -l JONG_ENG "" r R rt s sw sg e f fr fa fq ft fx fv fg a q qt t T d w c z x v g

    # 한글 자모(Jamo) 및 영문 매핑 테이블
    set -l JAMO_KOR ㄱ ㄲ ㄳ ㄴ ㄵ ㄶ ㄷ ㄸ ㄹ ㄺ ㄻ ㄼ ㄽ ㄾ ㄿ ㅀ ㅁ ㅂ ㅃ ㅄ ㅅ ㅆ ㅇ ㅈ ㅉ ㅊ ㅋ ㅌ ㅍ ㅎ ㅏ ㅐ ㅑ ㅒ ㅓ ㅔ ㅕ ㅖ ㅗ ㅘ ㅙ ㅚ ㅛ ㅜ ㅝ ㅞ ㅟ ㅠ ㅡ ㅢ ㅣ
    set -l JAMO_ENG r R rt s sw sg e E f fr fa fq ft fx fv fg a q Q qt t T d w W c z x v g k o i O j p u P h hk ho hl y n nj np nl b m ml l

    for ch in (string split '' -- "$input")
        set -l code (printf "%d" "'$ch")
        
        # 완성형 한글 (가-힣) 처리
        if test $code -ge 44032; and test $code -le 55203
            set -l idx (math "$code - 44032")
            
            set -l jong_code (math "$idx % 28")
            set -l temp_val (math "floor($idx / 28)")
            set -l jung_code (math "$temp_val % 21")
            set -l cho_code (math "floor($temp_val / 21)")

            set -l cho_eng $CHO_ENG[(math "$cho_code + 1")]
            set -l jung_eng $JUNG_ENG[(math "$jung_code + 1")]
            set -l jong_eng $JONG_ENG[(math "$jong_code + 1")]

            set result "$result$cho_eng$jung_eng$jong_eng"
        else
            # 자모(Jamo) 처리
            set -l jamo_index (contains -i -- $ch $JAMO_KOR)
            if test $status -eq 0
                set result "$result$JAMO_ENG[$jamo_index]"
            else
                # 한글이 아닌 경우, 원본 문자 그대로 추가
                set result "$result$ch"
            end
        end
    end

    echo $result
end

function convert_and_execute
    set -l cmd (commandline -b)
    
    # 한글이 포함되어 있는지 확인
    set -l hangul_chars "가-힣ㄱ-ㅎㅏ-ㅣ"
    if string match -rq "[$hangul_chars]" -- $cmd
        # 한글이 있으면 영어로 변환
        set -l converted_cmd (kor2eng "$cmd")
        if test "$cmd" != "$converted_cmd"
            commandline -r $converted_cmd
            commandline -f execute
            return
        end
    end
    
    # 변환할 필요가 없으면 그냥 실행
    commandline -f execute
end

# Enter 키에 함수 바인딩
bind \r 'convert_and_execute'
