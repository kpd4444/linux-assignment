#!/bin/bash

# 기능 D: 팩토리얼 계산
echo "=== 팩토리얼 계산기 ==="
echo -n "양의 정수를 입력하세요: "
read num

if [ $num -lt 0 ]; then
    echo "오류: 양수만 입력 가능합니다."
    exit 1
fi

fact=1
for (( i=1; i<=num; i++ ))
do
    fact=$((fact * i))
done

echo "$num! = $fact"