#!/bin/bash

# 기능 A: 사칙연산 계산기
echo "=== 계산기 모드 ==="
echo -n "첫 번째 숫자를 입력하세요: "
read num1

echo -n "연산자를 입력하세요 (+, -, *, /): "
read op

echo -n "두 번째 숫자를 입력하세요: "
read num2

# 연산자에 따라 분기 처리
case "$op" in
    "+")
        # 덧셈: $(( )) 사용 (정수 연산)
        result=$((num1 + num2))
        ;;
    "-")
        # 뺄셈: $(( )) 사용
        result=$((num1 - num2))
        ;;
    "*")
        # 곱셈: $(( )) 사용
        result=$((num1 * num2))
        ;;
    "/")
        # 나눗셈 (0으로 나누기 예외처리 포함)
        if [ "$num2" == "0" ]; then
            echo "오류: 0으로 나눌 수 없습니다."
            exit 1
        else
            # 나눗셈: bc 대신 awk 사용 (소수점 계산 가능)
            # 윈도우 Git Bash에서도 잘 작동함
            result=$(awk "BEGIN {printf \"%.2f\", $num1 / $num2}")
        fi
        ;;
    *)
        # 잘못된 연산자 입력 시
        echo "오류: 지원하지 않는 연산자입니다 (+, -, *, / 중에서 선택)."
        exit 1
        ;;
esac

# 최종 결과 출력
echo "결과: $result"

# 계산기 코드 수정 완료