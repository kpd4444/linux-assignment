#!/bin/bash

# 기능 A: 사칙연산 계산기
echo "=== 계산기 모드 ==="
echo -n "첫 번째 숫자를 입력하세요: "
read num1
echo -n "연산자를 입력하세요 (+, -, *, /): "
read op
echo -n "두 번째 숫자를 입력하세요: "
read num2

if [ "$op" == "/" ] && [ "$num2" == "0" ]; then
    echo "오류: 0으로 나눌 수 없습니다."
else
    # bc 명령어를 사용하여 계산 (소수점 가능)
    result=$(echo "$num1 $op $num2" | bc)
    echo "결과: $result"
fi