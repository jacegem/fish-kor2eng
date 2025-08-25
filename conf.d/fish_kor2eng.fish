# fish-kor2eng plugin
# 한글 커맨드를 영어로 자동 변환하는 fish 플러그인

function decompose_hangul
    # 한글을 자소로 분해하는 함수 (간단한 매핑 테이블)
    set -l char $argv[1]
    
    # 자소인 경우 직접 매핑
    switch $char
        # 자음
        case "ㄱ"; echo "r"
        case "ㄲ"; echo "R"
        case "ㄴ"; echo "s"
        case "ㄷ"; echo "e"
        case "ㄸ"; echo "E"
        case "ㄹ"; echo "f"
        case "ㅁ"; echo "a"
        case "ㅂ"; echo "q"
        case "ㅃ"; echo "Q"
        case "ㅅ"; echo "t"
        case "ㅆ"; echo "T"
        case "ㅇ"; echo "d"
        case "ㅈ"; echo "w"
        case "ㅉ"; echo "W"
        case "ㅊ"; echo "c"
        case "ㅋ"; echo "z"
        case "ㅌ"; echo "x"
        case "ㅍ"; echo "v"
        case "ㅎ"; echo "g"
        
        # 모음
        case "ㅏ"; echo "k"
        case "ㅐ"; echo "o"
        case "ㅑ"; echo "i"
        case "ㅒ"; echo "O"
        case "ㅓ"; echo "j"
        case "ㅔ"; echo "p"
        case "ㅕ"; echo "u"
        case "ㅖ"; echo "P"
        case "ㅗ"; echo "h"
        case "ㅘ"; echo "hk"
        case "ㅙ"; echo "ho"
        case "ㅚ"; echo "hl"
        case "ㅛ"; echo "y"
        case "ㅜ"; echo "n"
        case "ㅝ"; echo "nj"
        case "ㅞ"; echo "np"
        case "ㅟ"; echo "nl"
        case "ㅠ"; echo "b"
        case "ㅡ"; echo "m"
        case "ㅢ"; echo "ml"
        case "ㅣ"; echo "l"
        
        # 완성형 한글 → 자소 매핑 (자주 사용되는 문자들)
        case "가"; echo "rk"
        case "각"; echo "rkr"
        case "간"; echo "rks"
        case "갈"; echo "rkf"
        case "감"; echo "rka"
        case "갑"; echo "rkq"
        case "갓"; echo "rkt"
        case "강"; echo "rkd"
        case "같"; echo "rkx"
        case "갚"; echo "rkv"
        case "갛"; echo "rkg"
        
        case "개"; echo "ro"
        case "객"; echo "ror"
        case "갠"; echo "ros"
        case "갤"; echo "rof"
        case "갬"; echo "roa"
        case "갭"; echo "roq"
        case "갯"; echo "rot"
        case "갰"; echo "rot"
        case "갱"; echo "rod"
        
        case "갸"; echo "ri"
        case "갹"; echo "rir"
        case "갼"; echo "ris"
        case "걀"; echo "rif"
        case "걈"; echo "ria"
        case "걉"; echo "riq"
        case "걋"; echo "rit"
        case "걍"; echo "rid"
        
        case "거"; echo "rj"
        case "걱"; echo "rjr"
        case "건"; echo "rjs"
        case "걷"; echo "rje"
        case "걸"; echo "rjf"
        case "검"; echo "rja"
        case "겁"; echo "rjq"
        case "것"; echo "rjt"
        case "겄"; echo "rjt"
        case "겅"; echo "rjd"
        case "겆"; echo "rjw"
        case "겉"; echo "rjx"
        case "겊"; echo "rjv"
        case "겋"; echo "rjg"
        
        case "게"; echo "rp"
        case "겐"; echo "rps"
        case "겔"; echo "rpf"
        case "겜"; echo "rpa"
        case "겝"; echo "rpq"
        case "겟"; echo "rpt"
        case "겠"; echo "rpt"
        case "겡"; echo "rpd"
        
        case "겨"; echo "ru"
        case "격"; echo "rur"
        case "겪"; echo "rurr"
        case "견"; echo "rus"
        case "겯"; echo "rue"
        case "결"; echo "ruf"
        case "겸"; echo "rua"
        case "겹"; echo "ruq"
        case "겻"; echo "rut"
        case "겼"; echo "rut"
        case "경"; echo "rud"
        case "곁"; echo "rudt"
        
        case "계"; echo "rP"
        case "곈"; echo "rPs"
        case "곌"; echo "rPf"
        case "곕"; echo "rPq"
        case "곗"; echo "rPt"
        
        case "고"; echo "rh"
        case "곡"; echo "rhr"
        case "곤"; echo "rhs"
        case "곧"; echo "rhe"
        case "골"; echo "rhf"
        case "곪"; echo "rhfa"
        case "곬"; echo "rhft"
        case "곯"; echo "rhfg"
        case "곰"; echo "rha"
        case "곱"; echo "rhq"
        case "곳"; echo "rht"
        case "공"; echo "rhd"
        case "곶"; echo "rhw"
        case "곷"; echo "rhc"
        
        case "과"; echo "rhk"
        case "곽"; echo "rhkr"
        case "관"; echo "rhks"
        case "괄"; echo "rhkf"
        case "괆"; echo "rhka"
        case "괌"; echo "rhka"
        case "괍"; echo "rhkq"
        case "괏"; echo "rhkt"
        case "괐"; echo "rhkt"
        case "광"; echo "rhkd"
        
        case "괘"; echo "rho"
        case "괜"; echo "rhos"
        case "괠"; echo "rhof"
        case "괩"; echo "rhoq"
        case "괬"; echo "rhot"
        case "괭"; echo "rhod"
        
        case "괴"; echo "rhl"
        case "괵"; echo "rhlr"
        case "괸"; echo "rhls"
        case "괼"; echo "rhlf"
        case "굄"; echo "rhla"
        case "굅"; echo "rhlq"
        case "굇"; echo "rhlt"
        case "굉"; echo "rhld"
        
        case "교"; echo "ry"
        case "굔"; echo "rys"
        case "굘"; echo "ryf"
        case "굡"; echo "ryq"
        case "굣"; echo "ryt"
        
        case "구"; echo "rn"
        case "국"; echo "rnr"
        case "군"; echo "rns"
        case "굳"; echo "rne"
        case "굴"; echo "rnf"
        case "굵"; echo "rnfr"
        case "굶"; echo "rnfa"
        case "굻"; echo "rnft"
        case "굼"; echo "rna"
        case "굽"; echo "rnq"
        case "굿"; echo "rnt"
        case "궁"; echo "rnd"
        case "궂"; echo "rnw"
        
        case "궈"; echo "rnj"
        case "궉"; echo "rnjr"
        case "권"; echo "rnjs"
        case "궐"; echo "rnjf"
        case "궜"; echo "rnja"
        case "궝"; echo "rnjq"
        
        case "궤"; echo "rnp"
        case "궷"; echo "rnps"
        case "궼"; echo "rnpf"
        case "궻"; echo "rnpq"
        
        case "귀"; echo "rnl"
        case "귁"; echo "rnlr"
        case "귄"; echo "rnls"
        case "귈"; echo "rnlf"
        case "귐"; echo "rnla"
        case "귑"; echo "rnlq"
        case "귓"; echo "rnlt"
        
        case "규"; echo "rb"
        case "균"; echo "rbs"
        case "귤"; echo "rbf"
        
        case "그"; echo "rm"
        case "극"; echo "rmr"
        case "근"; echo "rms"
        case "귿"; echo "rme"
        case "글"; echo "rmf"
        case "긁"; echo "rmfr"
        case "금"; echo "rma"
        case "급"; echo "rmq"
        case "긋"; echo "rmt"
        case "긍"; echo "rmd"
        
        case "긔"; echo "rml"
        
        case "기"; echo "rl"
        case "긱"; echo "rlr"
        case "긴"; echo "rls"
        case "긷"; echo "rle"
        case "길"; echo "rlf"
        case "긺"; echo "rlfr"
        case "김"; echo "rla"
        case "깁"; echo "rlq"
        case "깃"; echo "rlt"
        case "깅"; echo "rld"
        case "깆"; echo "rlw"
        
        case "까"; echo "Rk"
        case "깍"; echo "Rkr"
        case "깎"; echo "Rkrr"
        case "깐"; echo "Rks"
        case "깔"; echo "Rkf"
        case "깖"; echo "Rkfw"
        case "깜"; echo "Rka"
        case "깝"; echo "Rkq"
        case "깟"; echo "Rkt"
        case "깠"; echo "Rkt"
        case "깡"; echo "Rkd"
        case "깥"; echo "Rkx"
        
        case "깨"; echo "Ro"
        case "깩"; echo "Ror"
        case "깬"; echo "Ros"
        case "깰"; echo "Rof"
        case "깸"; echo "Roa"
        case "깹"; echo "Roq"
        case "깻"; echo "Rot"
        case "깼"; echo "Rot"
        case "깽"; echo "Rod"
        
        case "꺄"; echo "Ri"
        case "꺅"; echo "Rir"
        case "꺌"; echo "Ris"
        
        case "꺼"; echo "Rj"
        case "꺽"; echo "Rjr"
        case "꺾"; echo "Rjrr"
        case "껀"; echo "Rjs"
        case "껄"; echo "Rjf"
        case "껌"; echo "Rja"
        case "껍"; echo "Rjq"
        case "껏"; echo "Rjt"
        case "껐"; echo "Rjt"
        case "껑"; echo "Rjd"
        
        case "께"; echo "Rp"
        case "껙"; echo "Rpr"
        case "껜"; echo "Rps"
        case "껠"; echo "Rpf"
        case "껨"; echo "Rpa"
        case "껩"; echo "Rpq"
        case "껫"; echo "Rpt"
        case "껭"; echo "Rpd"
        
        case "꼬"; echo "Rh"
        case "꼭"; echo "Rhr"
        case "꼰"; echo "Rhs"
        case "꼲"; echo "Rhe"
        case "꼴"; echo "Rhf"
        case "꼼"; echo "Rha"
        case "꼽"; echo "Rhq"
        case "꼿"; echo "Rht"
        case "꽁"; echo "Rhd"
        case "꽂"; echo "Rhw"
        case "꽃"; echo "Rhc"
        
        case "꽈"; echo "Rhk"
        case "꽉"; echo "Rhkr"
        case "꽐"; echo "Rhkf"
        case "꽜"; echo "Rhka"
        case "꽝"; echo "Rhkq"
        
        case "꽤"; echo "Rho"
        case "꽥"; echo "Rhor"
        case "꽹"; echo "Rhof"
        
        case "꾀"; echo "Rhl"
        case "꾄"; echo "Rhls"
        case "꾈"; echo "Rhlf"
        case "꾐"; echo "Rhla"
        case "꾑"; echo "Rhlq"
        case "꾕"; echo "Rhld"
        
        case "꾜"; echo "Ry"
        case "꾠"; echo "Ryf"
        
        case "꾸"; echo "Rn"
        case "꾹"; echo "Rnr"
        case "꾼"; echo "Rns"
        case "꿀"; echo "Rnf"
        case "꿇"; echo "Rnfr"
        case "꿈"; echo "Rna"
        case "꿉"; echo "Rnq"
        case "꿋"; echo "Rnt"
        case "꿍"; echo "Rnd"
        case "꿎"; echo "Rnw"
        
        case "꿔"; echo "Rnj"
        case "꿜"; echo "Rnjf"
        
        case "꿨"; echo "Rnp"
        case "꿩"; echo "Rnps"
        
        case "꿰"; echo "Rnl"
        case "꿱"; echo "Rnlr"
        case "꿴"; echo "Rnls"
        case "꿸"; echo "Rnlf"
        case "뀀"; echo "Rnla"
        case "뀁"; echo "Rnlq"
        
        case "뀨"; echo "Rb"
        
        case "끄"; echo "Rm"
        case "끅"; echo "Rmr"
        case "끈"; echo "Rms"
        case "끊"; echo "Rmsr"
        case "끌"; echo "Rmf"
        case "끎"; echo "Rmfr"
        case "끓"; echo "Rmfg"
        case "끔"; echo "Rma"
        case "끕"; echo "Rmq"
        case "끗"; echo "Rmt"
        case "끙"; echo "Rmd"
        case "끝"; echo "Rmx"
        
        case "끼"; echo "Rl"
        case "끽"; echo "Rlr"
        case "낀"; echo "Rls"
        case "낄"; echo "Rlf"
        case "낌"; echo "Rla"
        case "낍"; echo "Rlq"
        case "낏"; echo "Rlt"
        case "낑"; echo "Rld"
        
        # 나-닿 (ㄴ으로 시작하는 모든 한글)
        case "나"; echo "sk"
        case "낙"; echo "skr"
        case "낚"; echo "skrr"
        case "난"; echo "sks"
        case "낟"; echo "ske"
        case "날"; echo "skf"
        case "낡"; echo "skfr"
        case "낢"; echo "skfa"
        case "남"; echo "ska"
        case "납"; echo "skq"
        case "낫"; echo "skt"
        case "났"; echo "skt"
        case "낭"; echo "skd"
        case "낮"; echo "skw"
        case "낯"; echo "skc"
        case "낱"; echo "skx"
        case "낳"; echo "skg"
        
        case "내"; echo "so"
        case "낵"; echo "sor"
        case "낸"; echo "sos"
        case "낼"; echo "sof"
        case "냄"; echo "soa"
        case "냅"; echo "soq"
        case "냇"; echo "sot"
        case "냈"; echo "sot"
        case "냉"; echo "sod"
        
        case "냐"; echo "si"
        case "냑"; echo "sir"
        case "냔"; echo "sis"
        case "냘"; echo "sif"
        case "냠"; echo "sia"
        case "냥"; echo "sid"
        
        case "너"; echo "sj"
        case "넉"; echo "sjr"
        case "넋"; echo "sjrt"
        case "넌"; echo "sjs"
        case "널"; echo "sjf"
        case "넒"; echo "sjfq"
        case "넓"; echo "sjfq"
        case "넘"; echo "sja"
        case "넙"; echo "sjq"
        case "넛"; echo "sjt"
        case "넜"; echo "sjt"
        case "넝"; echo "sjd"
        case "넣"; echo "sjg"
        
        case "네"; echo "sp"
        case "넥"; echo "spr"
        case "넨"; echo "sps"
        case "넬"; echo "spf"
        case "넴"; echo "spa"
        case "넵"; echo "spq"
        case "넷"; echo "spt"
        case "넸"; echo "spt"
        case "넹"; echo "spd"
        
        case "녀"; echo "su"
        case "녁"; echo "sur"
        case "년"; echo "sus"
        case "녈"; echo "suf"
        case "념"; echo "sua"
        case "녑"; echo "suq"
        case "녔"; echo "sut"
        case "녕"; echo "sud"
        case "녘"; echo "suz"
        
        case "녜"; echo "sP"
        case "녠"; echo "sPs"
        
        case "노"; echo "sh"
        case "녹"; echo "shr"
        case "논"; echo "shs"
        case "놀"; echo "shf"
        case "놂"; echo "shfr"
        case "놈"; echo "sha"
        case "놉"; echo "shq"
        case "놋"; echo "sht"
        case "농"; echo "shd"
        case "높"; echo "shq"
        case "놓"; echo "shg"
        
        case "놔"; echo "shk"
        case "놘"; echo "shks"
        case "놜"; echo "shkf"
        case "놨"; echo "shkt"
        
        case "뇌"; echo "shl"
        case "뇐"; echo "shls"
        case "뇔"; echo "shlf"
        case "뇜"; echo "shla"
        case "뇝"; echo "shlq"
        case "뇟"; echo "shlt"
        
        case "뇨"; echo "sy"
        case "뇩"; echo "syr"
        case "뇬"; echo "sys"
        case "뇰"; echo "syf"
        case "뇹"; echo "syq"
        case "뇻"; echo "syt"
        case "뇽"; echo "syd"
        
        case "누"; echo "sn"
        case "눅"; echo "snr"
        case "눈"; echo "sns"
        case "눋"; echo "sne"
        case "눌"; echo "snf"
        case "눔"; echo "sna"
        case "눕"; echo "snq"
        case "눗"; echo "snt"
        case "눙"; echo "snd"
        
        case "눠"; echo "snj"
        case "눴"; echo "snjs"
        
        case "눼"; echo "snp"
        
        case "뉘"; echo "snl"
        case "뉜"; echo "snls"
        case "뉠"; echo "snlf"
        case "뉨"; echo "snla"
        case "뉩"; echo "snlq"
        
        case "뉴"; echo "sb"
        case "뉵"; echo "sbr"
        case "뉼"; echo "sbf"
        case "늄"; echo "sba"
        case "늅"; echo "sbq"
        
        case "느"; echo "sm"
        case "늑"; echo "smr"
        case "는"; echo "sms"
        case "늘"; echo "smf"
        case "늙"; echo "smfr"
        case "늚"; echo "smfa"
        case "늠"; echo "sma"
        case "늡"; echo "smq"
        case "늣"; echo "smt"
        case "능"; echo "smd"
        case "늦"; echo "smw"
        case "늪"; echo "smwq"
        
        case "늬"; echo "sml"
        case "늰"; echo "smls"
        case "늴"; echo "smlf"
        
        case "니"; echo "sl"
        case "닉"; echo "slr"
        case "닌"; echo "sls"
        case "닐"; echo "slf"
        case "닒"; echo "slfr"
        case "님"; echo "sla"
        case "닙"; echo "slq"
        case "닛"; echo "slt"
        case "닝"; echo "sld"
        case "닢"; echo "slv"
        case "닦"; echo "slg"
        
        # 추가 자주 사용되는 한글 문자들
        case "하"; echo "gk"
        case "학"; echo "gkr"
        case "한"; echo "gks"
        case "할"; echo "gkf"
        case "함"; echo "gka"
        case "합"; echo "gkq"
        case "항"; echo "gkd"
        case "해"; echo "go"
        case "핵"; echo "gor"
        case "핸"; echo "gos"
        case "핼"; echo "gof"
        case "햄"; echo "goa"
        case "햅"; echo "goq"
        case "했"; echo "got"
        case "행"; echo "god"
        case "향"; echo "gid"
        case "허"; echo "gj"
        case "헉"; echo "gjr"
        case "헌"; echo "gjs"
        case "헐"; echo "gjf"
        case "험"; echo "gja"
        case "헙"; echo "gjq"
        case "헛"; echo "gjt"
        case "헝"; echo "gjd"
        case "헤"; echo "gp"
        case "헥"; echo "gpr"
        case "헨"; echo "gps"
        case "헬"; echo "gpf"
        case "헴"; echo "gpa"
        case "헵"; echo "gpq"
        case "헷"; echo "gpt"
        case "헹"; echo "gpd"
        case "혀"; echo "gu"
        case "혁"; echo "gur"
        case "현"; echo "gus"
        case "혈"; echo "guf"
        case "혐"; echo "gua"
        case "협"; echo "guq"
        case "혔"; echo "gut"
        case "형"; echo "gud"
        case "혜"; echo "gP"
        case "혠"; echo "gPs"
        case "호"; echo "gh"
        case "혹"; echo "ghr"
        case "혼"; echo "ghs"
        case "홀"; echo "ghf"
        case "홈"; echo "gha"
        case "홉"; echo "ghq"
        case "홋"; echo "ght"
        case "홍"; echo "ghd"
        case "화"; echo "ghk"
        case "확"; echo "ghkr"
        case "환"; echo "ghks"
        case "활"; echo "ghkf"
        case "황"; echo "ghkd"
        case "회"; echo "gho"
        case "획"; echo "ghor"
        case "횐"; echo "ghos"
        case "횔"; echo "ghof"
        case "횜"; echo "ghoa"
        case "횝"; echo "ghoq"
        case "횟"; echo "ghot"
        case "횡"; echo "ghod"
        case "효"; echo "ghy"
        case "횩"; echo "ghyr"
        case "횬"; echo "ghys"
        case "횰"; echo "ghyf"
        case "횹"; echo "ghyq"
        case "횻"; echo "ghyt"
        case "횽"; echo "ghyd"
        case "후"; echo "gn"
        case "훅"; echo "gnr"
        case "훈"; echo "gns"
        case "훌"; echo "gnf"
        case "훔"; echo "gna"
        case "훕"; echo "gnq"
        case "훗"; echo "gnt"
        case "훙"; echo "gnd"
        case "훠"; echo "gnj"
        case "훤"; echo "gnjs"
        case "훨"; echo "gnp"
        case "훰"; echo "gnl"
        case "훵"; echo "gnls"
        case "훼"; echo "gnlf"
        case "훽"; echo "gnla"
        case "휀"; echo "gnlq"
        case "휄"; echo "gnlt"
        case "휑"; echo "gnld"
        case "휘"; echo "gnl"
        case "휙"; echo "gnlr"
        case "휜"; echo "gnls"
        case "휠"; echo "gnlf"
        case "휨"; echo "gnla"
        case "휩"; echo "gnlq"
        case "휫"; echo "gnlt"
        case "휭"; echo "gnld"
        case "휴"; echo "gb"
        case "휵"; echo "gbr"
        case "휼"; echo "gbf"
        case "흄"; echo "gba"
        case "흅"; echo "gbq"
        case "흇"; echo "gbt"
        case "흉"; echo "gbd"
        case "흐"; echo "gm"
        case "흑"; echo "gmr"
        case "흔"; echo "gms"
        case "흘"; echo "gmf"
        case "흙"; echo "gmfr"
        case "흠"; echo "gma"
        case "흡"; echo "gmq"
        case "흣"; echo "gmt"
        case "흥"; echo "gmd"
        case "흩"; echo "gmw"
        case "희"; echo "gml"
        case "흰"; echo "gmls"
        case "흴"; echo "gmlf"
        case "흼"; echo "gmla"
        case "흽"; echo "gmlq"
        case "힁"; echo "gmld"
        case "히"; echo "gl"
        case "힉"; echo "glr"
        case "힌"; echo "gls"
        case "힐"; echo "glf"
        case "힘"; echo "gla"
        case "힙"; echo "glq"
        case "힛"; echo "glt"
        case "힝"; echo "gld"
        
        # 세-시로 시작하는 자주 사용되는 한글
        case "세"; echo "tp"
        case "색"; echo "tpr"
        case "새"; echo "to"
        case "생"; echo "tod"
        case "서"; echo "tj"
        case "석"; echo "tjr"
        case "선"; echo "tjs"
        case "설"; echo "tjf"
        case "섬"; echo "tja"
        case "섭"; echo "tjq"
        case "성"; echo "tjd"
        case "세"; echo "tp"
        case "셈"; echo "tpa"
        case "셉"; echo "tpq"
        case "셋"; echo "tpt"
        case "셍"; echo "tpd"
        case "소"; echo "th"
        case "속"; echo "thr"
        case "손"; echo "ths"
        case "솔"; echo "thf"
        case "솜"; echo "tha"
        case "솝"; echo "thq"
        case "솟"; echo "tht"
        case "송"; echo "thd"
        case "수"; echo "tn"
        case "숙"; echo "tnr"
        case "순"; echo "tns"
        case "술"; echo "tnf"
        case "숨"; echo "tna"
        case "숩"; echo "tnq"
        case "숫"; echo "tnt"
        case "숭"; echo "tnd"
        case "시"; echo "tl"
        case "식"; echo "tlr"
        case "신"; echo "tls"
        case "실"; echo "tlf"
        case "심"; echo "tla"
        case "십"; echo "tlq"
        case "싯"; echo "tlt"
        case "싱"; echo "tld"
        
        # 요-유로 시작하는 자주 사용되는 한글
        case "요"; echo "dh"
        case "욕"; echo "dhr"
        case "용"; echo "dhd"
        case "우"; echo "dn"
        case "욱"; echo "dnr"
        case "운"; echo "dns"
        case "울"; echo "dnf"
        case "움"; echo "dna"
        case "웁"; echo "dnq"
        case "웃"; echo "dnt"
        case "웅"; echo "dnd"
        case "원"; echo "dns"
        case "월"; echo "dnf"
        case "위"; echo "dnl"
        case "유"; echo "db"
        case "육"; echo "dbr"
        case "윤"; echo "dbs"
        case "율"; echo "dbf"
        case "윰"; echo "dba"
        case "윱"; echo "dbq"
        case "윳"; echo "dbt"
        case "융"; echo "dbd"
        case "은"; echo "dms"
        case "을"; echo "dmf"
        case "음"; echo "dma"
        case "읍"; echo "dmq"
        case "읏"; echo "dmt"
        case "응"; echo "dmd"
        case "의"; echo "dml"
        case "이"; echo "dl"
        case "익"; echo "dlr"
        case "인"; echo "dls"
        case "일"; echo "dlf"
        case "임"; echo "dla"
        case "입"; echo "dlq"
        case "잇"; echo "dlt"
        case "잉"; echo "dld"
        
        # 개발자들이 자주 사용하는 한글 명령어들
        case "빌드"; echo "qsls"  # build
        case "실행"; echo "tlsud"  # execute
        case "설치"; echo "tlscl"  # install
        case "제거"; echo "wjfj"  # remove
        case "업데이트"; echo "dqjwlr"  # update
        case "업그레이드"; echo "dqjfmlr"  # upgrade
        case "다운로드"; echo "eksmsfh"  # download
        case "업로드"; echo "dqfh"  # upload
        case "복사"; echo "qhkt"  # copy
        case "이동"; echo "dleh"  # move
        case "삭제"; echo "torp"  # delete
        case "생성"; echo "todud"  # create
        case "수정"; echo "tnwl"  # modify
        case "변경"; echo "qusud"  # change
        case "확인"; echo "ghkdl"  # check
        case "검색"; echo "rotd"  # search
        case "찾기"; echo "cark"  # find
        case "보기"; echo "qhzk"  # view
        case "열기"; echo "dpfr"  # open
        case "닫기"; echo "ekfr"  # close
        case "저장"; echo "wjdk"  # save
        case "불러오기"; echo "qjfjdhzk"  # load
        case "새로고침"; echo "tofhroa"  # refresh
        case "재시작"; echo "wotk"  # restart
        case "중지"; echo "wndl"  # stop
        case "시작"; echo "tkrk"  # start
        case "종료"; echo "whry"  # end
        case "출력"; echo "cnf"  # print
        case "입력"; echo "dla"  # input
        case "로그"; echo "fhr"  # log
        case "에러"; echo "dpfj"  # error
        case "경고"; echo "rodhk"  # warning
        case "정보"; echo "wlqh"  # info
        case "디버그"; echo "slqj"  # debug
        case "테스트"; echo "toptm"  # test
        case "컴파일"; echo "zavk"  # compile
        case "링크"; echo "fldr"  # link
        case "패키지"; echo "vor"  # package
        case "모듈"; echo "ahe"  # module
        case "라이브러리"; echo "fkqlqj"  # library
        case "프레임워크"; echo "vj"  # framework
        case "데이터베이스"; echo "ro"  # database
        case "서버"; echo "tjqj"  # server
        case "클라이언트"; echo "z"  # client
        case "네트워크"; echo "spt"  # network
        case "파일"; echo "vk"  # file
        case "폴더"; echo "qj"  # folder
        case "디렉토리"; echo "sl"  # directory
        case "경로"; echo "rod"  # path
        case "권한"; echo "rnjs"  # permission
        case "사용자"; echo "tk"  # user
        case "그룹"; echo "r"  # group
        case "관리자"; echo "rks"  # admin
        case "시스템"; echo "tl"  # system
        case "환경"; echo "gk"  # environment
        case "설정"; echo "t"  # config
        case "옵션"; echo "dh"  # option
        case "매개변수"; echo "a"  # parameter
        case "함수"; echo "gk"  # function
        case "변수"; echo "q"  # variable
        case "상수"; echo "tk"  # constant
        case "클래스"; echo "z"  # class
        case "객체"; echo "r"  # object
        case "인터페이스"; echo "d"  # interface
        case "메서드"; echo "a"  # method
        case "속성"; echo "t"  # property
        case "이벤트"; echo "d"  # event
        case "콜백"; echo "z"  # callback
        case "프로미스"; echo "v"  # promise
        case "비동기"; echo "q"  # async
        case "동기"; echo "e"  # sync
        case "스레드"; echo "t"  # thread
        case "프로세스"; echo "v"  # process
        case "메모리"; echo "a"  # memory
        case "캐시"; echo "z"  # cache
        case "세션"; echo "t"  # session
        case "쿠키"; echo "z"  # cookie
        case "토큰"; echo "h"  # token
        case "인증"; echo "d"  # auth
        case "보안"; echo "q"  # security
        case "암호화"; echo "d"  # encryption
        case "복호화"; echo "q"  # decryption
        case "해시"; echo "g"  # hash
        case "알고리즘"; echo "k"  # algorithm
        case "정렬"; echo "w"  # sort
        case "필터"; echo "v"  # filter
        case "매핑"; echo "a"  # mapping
        case "리듀스"; echo "f"  # reduce
        case "반복"; echo "q"  # loop
        case "조건"; echo "w"  # condition
        case "분기"; echo "q"  # branch
        case "병합"; echo "q"  # merge
        case "충돌"; echo "c"  # conflict
        case "해결"; echo "g"  # resolve
        case "커밋"; echo "z"  # commit
        case "푸시"; echo "v"  # push
        case "풀"; echo "v"  # pull
        case "클론"; echo "z"  # clone
        case "포크"; echo "v"  # fork
        case "브랜치"; echo "q"  # branch
        case "태그"; echo "r"  # tag
        case "릴리즈"; echo "f"  # release
        case "배포"; echo "q"  # deploy
        case "모니터링"; echo "a"  # monitoring
        case "로깅"; echo "f"  # logging
        case "백업"; echo "q"  # backup
        case "복원"; echo "q"  # restore
        case "마이그레이션"; echo "a"  # migration
        case "스키마"; echo "t"  # schema
        case "쿼리"; echo "z"  # query
        case "인덱스"; echo "d"  # index
        case "트랜잭션"; echo "x"  # transaction
        case "롤백"; echo "f"  # rollback
        case "저장점"; echo "w"  # checkpoint
        case "데드락"; echo "r"  # deadlock
        case "락"; echo "f"  # lock
        case "언락"; echo "d"  # unlock
        case "동시성"; echo "e"  # concurrency
        case "병렬"; echo "q"  # parallel
        case "순차"; echo "t"  # sequential
        case "재귀"; echo "w"  # recursive
        case "탐색"; echo "r"  # traversal
        case "순회"; echo "t"  # iteration
        case "접근"; echo "w"  # access
        case "추가"; echo "c"  # add
        case "교체"; echo "r"  # replace
        case "변환"; echo "q"  # convert
        case "포맷"; echo "v"  # format
        case "파싱"; echo "v"  # parse
        case "직렬화"; echo "w"  # serialize
        case "역직렬화"; echo "d"  # deserialize
        case "인코딩"; echo "d"  # encoding
        case "디코딩"; echo "e"  # decoding
        case "압축"; echo "d"  # compress
        case "압축해제"; echo "d"  # decompress
        case "아카이브"; echo "k"  # archive
        case "추출"; echo "c"  # extract
        case "패키징"; echo "v"  # packaging
        case "번들링"; echo "q"  # bundling
        case "미니파이"; echo "a"  # minify
        case "트랜스파일"; echo "x"  # transpile
        case "어셈블"; echo "d"  # assemble
        case "언로드"; echo "d"  # unload
        case "초기화"; echo "c"  # initialize
        case "정리"; echo "w"  # cleanup
        case "소멸"; echo "t"  # destroy
        case "생성자"; echo "t"  # constructor
        case "소멸자"; echo "t"  # destructor
        case "가상함수"; echo "r"  # virtual function
        case "추상클래스"; echo "c"  # abstract class
        case "상속"; echo "t"  # inheritance
        case "다형성"; echo "e"  # polymorphism
        case "캡슐화"; echo "z"  # encapsulation
        case "추상화"; echo "c"  # abstraction
        case "모듈화"; echo "a"  # modularization
        case "재사용성"; echo "w"  # reusability
        case "확장성"; echo "g"  # scalability
        case "유지보수성"; echo "b"  # maintainability
        case "테스트가능성"; echo "r"  # testability
        case "가독성"; echo "r"  # readability
        case "성능"; echo "t"  # performance
        case "최적화"; echo "w"  # optimization
        case "프로파일링"; echo "v"  # profiling
        case "벤치마킹"; echo "q"  # benchmarking
        case "메트릭"; echo "a"  # metric
        case "지표"; echo "w"  # indicator
        case "대시보드"; echo "e"  # dashboard
        case "알림"; echo "k"  # notification
        case "경고"; echo "r"  # alert
        case "예외"; echo "d"  # exception
        case "처리"; echo "c"  # handle
        case "캐치"; echo "z"  # catch
        case "던지기"; echo "e"  # throw
        case "재시도"; echo "w"  # retry
        case "폴백"; echo "v"  # fallback
        case "타임아웃"; echo "h"  # timeout
        case "회복"; echo "g"  # recovery
        case "스냅샷"; echo "t"  # snapshot
        case "체크포인트"; echo "c"  # checkpoint
        case "포워드"; echo "v"  # forward
        case "리버스"; echo "f"  # reverse
        case "되돌리기"; echo "e"  # undo
        case "다시하기"; echo "e"  # redo
        case "실행취소"; echo "t"  # cancel
        case "중단"; echo "w"  # abort
        case "강제종료"; echo "r"  # kill
        case "시그널"; echo "t"  # signal
        case "태스크"; echo "r"  # task
        case "작업"; echo "w"  # job
        case "큐"; echo "z"  # queue
        case "스택"; echo "t"  # stack
        case "힙"; echo "g"  # heap
        case "가비지컬렉션"; echo "r"  # garbage collection
        case "메모리릭"; echo "a"  # memory leak
        case "단편화"; echo "e"  # fragmentation
        case "압축"; echo "d"  # compaction
        case "스왑"; echo "t"  # swap
        case "페이지"; echo "v"  # page
        case "프레임"; echo "v"  # frame
        case "버퍼"; echo "q"  # buffer
        case "레지스터"; echo "f"  # register
        case "소켓"; echo "t"  # socket
        case "포트"; echo "v"  # port
        case "프로토콜"; echo "v"  # protocol
        case "웹훅"; echo "o"  # webhook
        case "미들웨어"; echo "a"  # middleware
        case "플러그인"; echo "v"  # plugin
        case "확장"; echo "g"  # extension
        case "애드온"; echo "d"  # addon
        case "플랫폼"; echo "v"  # platform
        case "개발환경"; echo "r"  # development environment
        case "운영환경"; echo "b"  # production environment
        case "테스트환경"; echo "r"  # test environment
        case "스테이징환경"; echo "t"  # staging environment
        case "로컬환경"; echo "f"  # local environment
        case "원격환경"; echo "d"  # remote environment
        case "클라우드"; echo "z"  # cloud
        case "온프레미스"; echo "d"  # on-premises
        case "하이브리드"; echo "g"  # hybrid
        case "마이크로서비스"; echo "a"  # microservices
        case "모놀리식"; echo "a"  # monolithic
        case "서버리스"; echo "t"  # serverless
        case "컨테이너"; echo "z"  # container
        case "도커"; echo "e"  # docker
        case "쿠버네티스"; echo "z"  # kubernetes
        case "오케스트레이션"; echo "d"  # orchestration
        case "스케일링"; echo "t"  # scaling
        case "오토스케일링"; echo "d"  # auto-scaling
        case "로드밸런싱"; echo "f"  # load balancing
        case "클러스터링"; echo "z"  # clustering
        case "리플리케이션"; echo "f"  # replication
        case "샤딩"; echo "t"  # sharding
        case "파티셔닝"; echo "v"  # partitioning
        case "비정규화"; echo "q"  # denormalization
        
        # 추가 자주 사용되는 한글 문자들 (ㄷ-ㄹ로 시작)
        case "다"; echo "ek"
        case "단"; echo "eks"
        case "달"; echo "ekf"
        case "담"; echo "eka"
        case "답"; echo "ekq"
        case "당"; echo "ekd"
        case "대"; echo "eo"
        case "덕"; echo "ejr"
        case "던"; echo "ejs"
        case "덜"; echo "ejf"
        case "덤"; echo "eja"
        case "덥"; echo "ejq"
        case "덩"; echo "ejd"
        case "데"; echo "ep"
        case "덱"; echo "epr"
        case "덴"; echo "eps"
        case "델"; echo "epf"
        case "뎀"; echo "epa"
        case "뎁"; echo "epq"
        case "뎃"; echo "ept"
        case "뎄"; echo "ept"
        case "뎅"; echo "epd"
        case "도"; echo "eh"
        case "독"; echo "ehr"
        case "돈"; echo "ehs"
        case "돌"; echo "ehf"
        case "돔"; echo "eha"
        case "돕"; echo "ehq"
        case "돗"; echo "eht"
        case "동"; echo "ehd"
        case "두"; echo "en"
        case "둑"; echo "enr"
        case "둔"; echo "ens"
        case "둘"; echo "enf"
        case "둠"; echo "ena"
        case "둡"; echo "enq"
        case "둣"; echo "ent"
        case "둥"; echo "end"
        case "드"; echo "em"
        case "득"; echo "emr"
        case "든"; echo "ems"
        case "듣"; echo "eme"
        case "들"; echo "emf"
        case "듬"; echo "ema"
        case "듭"; echo "emq"
        case "듯"; echo "emt"
        case "등"; echo "emd"
        case "디"; echo "el"
        case "딕"; echo "elr"
        case "딘"; echo "els"
        case "딛"; echo "eld"
        case "딜"; echo "elf"
        case "딤"; echo "ela"
        case "딥"; echo "elq"
        case "딧"; echo "elt"
        case "딨"; echo "elt"
        case "딩"; echo "eld"
        case "딪"; echo "elw"
        
        case "라"; echo "fk"
        case "락"; echo "fkr"
        case "란"; echo "fks"
        case "랄"; echo "fkf"
        case "람"; echo "fka"
        case "랍"; echo "fkq"
        case "랏"; echo "fkt"
        case "랑"; echo "fkd"
        case "래"; echo "fo"
        case "랙"; echo "for"
        case "랜"; echo "fos"
        case "랠"; echo "fof"
        case "램"; echo "foa"
        case "랩"; echo "foq"
        case "랫"; echo "fot"
        case "랬"; echo "fot"
        case "랭"; echo "fod"
        case "랴"; echo "fi"
        case "략"; echo "fir"
        case "랸"; echo "fis"
        case "랼"; echo "fif"
        case "럄"; echo "fia"
        case "량": echo "fid"
        case "러": echo "fj"
        case "럭": echo "fjr"
        case "런": echo "fjs"
        case "럴": echo "fjf"
        case "럼": echo "fja"
        case "럽": echo "fjq"
        case "럿": echo "fjt"
        case "렁": echo "fjd"
        case "레": echo "fp"
        case "렉": echo "fpr"
        case "렌": echo "fps"
        case "렐": echo "fpf"
        case "렘": echo "fpa"
        case "렙": echo "fpq"
        case "렛": echo "fpt"
        case "렜": echo "fpt"
        case "렝": echo "fpd"
        case "려": echo "fu"
        case "력": echo "fur"
        case "련": echo "fus"
        case "렬": echo "fuf"
        case "렴": echo "fua"
        case "렵": echo "fuq"
        case "렸": echo "fut"
        case "령": echo "fud"
        case "례": echo "fP"
        case "롄": echo "fPs"
        case "로": echo "fh"
        case "록": echo "fhr"
        case "론": echo "fhs"
        case "롤": echo "fhf"
        case "롬": echo "fha"
        case "롭": echo "fhq"
        case "롯": echo "fht"
        case "롱": echo "fhd"
        case "루": echo "fn"
        case "룩": echo "fnr"
        case "룬": echo "fns"
        case "룰": echo "fnf"
        case "룸": echo "fna"
        case "룹": echo "fnq"
        case "룻": echo "fnt"
        case "룽": echo "fnd"
        case "뤄": echo "fnj"
        case "뤘": echo "fnjs"
        case "뤠": echo "fnp"
        case "뤼": echo "fnl"
        case "뤽": echo "fnlr"
        case "륀": echo "fnls"
        case "류": echo "fb"
        case "륙": echo "fbr"
        case "륜": echo "fbs"
        case "률": echo "fbf"
        case "륨": echo "fba"
        case "륩": echo "fbq"
        case "륫": echo "fbt"
        case "륭": echo "fbd"
        case "르": echo "fm"
        case "륵": echo "fmr"
        case "른": echo "fms"
        case "를": echo "fmf"
        case "름": echo "fma"
        case "릅": echo "fmq"
        case "릇": echo "fmt"
        case "릉": echo "fmd"
        case "리": echo "fl"
        case "릭": echo "flr"
        case "린": echo "fls"
        case "릴": echo "flf"
        case "림": echo "fla"
        case "립": echo "flq"
        case "릿": echo "flt"
        case "링": echo "fld"
        
        # 기본적으로는 그대로 반환
        case "*"; echo $char
    end
end

function eng2kor
    # 영어 키보드 입력을 한글 자판으로 변환하는 함수
    set -l input $argv
    set -l result ""
    
    # 각 문자를 한글 자판으로 변환
    for i in (seq 1 (string length $input))
        set -l char (string sub -s $i -l 1 $input)
        
        # 영어 키보드 → 한글 자판 매핑
        switch $char
            # 자음
            case "q"; set char "ㅂ"
            case "w"; set char "ㅈ"
            case "e"; set char "ㄷ"
            case "r"; set char "ㄱ"
            case "t"; set char "ㅅ"
            case "y"; set char "ㅛ"
            case "u"; set char "ㅕ"
            case "i"; set char "ㅑ"
            case "o"; set char "ㅐ"
            case "p"; set char "ㅔ"
            case "a"; set char "ㅁ"
            case "s"; set char "ㄴ"
            case "d"; set char "ㅇ"
            case "f"; set char "ㄹ"
            case "g"; set char "ㅎ"
            case "h"; set char "ㅗ"
            case "j"; set char "ㅓ"
            case "k"; set char "ㅏ"
            case "l"; set char "ㅣ"
            case "z"; set char "ㅋ"
            case "x"; set char "ㅌ"
            case "c"; set char "ㅊ"
            case "v"; set char "ㅍ"
            case "b"; set char "ㅠ"
            case "n"; set char "ㅜ"
            case "m"; set char "ㅡ"
            
            # 대문자도 동일하게 처리
            case "Q"; set char "ㅂ"
            case "W"; set char "ㅈ"
            case "E"; set char "ㄷ"
            case "R"; set char "ㄱ"
            case "T"; set char "ㅅ"
            case "Y"; set char "ㅛ"
            case "U"; set char "ㅕ"
            case "I"; set char "ㅑ"
            case "O"; set char "ㅐ"
            case "P"; set char "ㅔ"
            case "A"; set char "ㅁ"
            case "S"; set char "ㄴ"
            case "D"; set char "ㅇ"
            case "F"; set char "ㄹ"
            case "G"; set char "ㅎ"
            case "H"; set char "ㅗ"
            case "J"; set char "ㅓ"
            case "K"; set char "ㅏ"
            case "L"; set char "ㅣ"
            case "Z"; set char "ㅋ"
            case "X"; set char "ㅌ"
            case "C"; set char "ㅊ"
            case "V"; set char "ㅍ"
            case "B"; set char "ㅠ"
            case "N"; set char "ㅜ"
            case "M"; set char "ㅡ"
            
            # 특수문자와 숫자는 그대로 유지
            case "*"; set char $char
        end
        
        set result $result$char
    end
    
    echo $result
end

function kor2eng
    # 입력 문자열 받아서 한글→영문 자판 변환
    set -l input $argv
    set -l hangul_chars "가-힣ㄱ-ㅎㅏ-ㅣ"
    
    if not string match -rq "[$hangul_chars]" -- $input
        echo $input
        return
    end
    
    # 일반적인 변환 처리
    set -l result ""
    for i in (seq 1 (string length $input))
        set -l char (string sub -s $i -l 1 $input)
        
        # 한글을 영어 키보드 매핑으로 변환 (decompose_hangul이 이미 처리함)
        set -l converted (decompose_hangul $char)
        set result $result$converted
    end
    
    echo $result
end

function convert_and_execute
    set -l cmd (commandline -b)
    
    # 한글이 포함되어 있는지 확인
    set -l hangul_chars "가-힣ㄱ-ㅎㅏ-ㅣ"
    if string match -rq "[$hangul_chars]" -- $cmd
        # 한글이 있으면 영어로 변환
        set -l converted_cmd (kor2eng $cmd)
        if test "$cmd" != "$converted_cmd"
            commandline -r $converted_cmd
            commandline -f execute
            return
        end
    else
        # 영어 키보드 입력이 한글 자판으로 변환되는 패턴인지 확인
        set -l eng_pattern "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"
        if string match -rq "[$eng_pattern]" -- $cmd
            # 영어 문자가 있으면 한글 자판으로 변환
            set -l converted_cmd (eng2kor $cmd)
            if test "$cmd" != "$converted_cmd"
                commandline -r $converted_cmd
                commandline -f execute
                return
            end
        end
    end
    
    # 변환할 필요가 없으면 그냥 실행
    commandline -f execute
end

# Enter 키에 함수 바인딩
bind \r 'convert_and_execute'
