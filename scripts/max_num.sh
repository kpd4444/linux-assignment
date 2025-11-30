#!/bin/bash

echo "=== 최대값 찾기 모드 ==="
echo -n "숫자들을 공백으로 구분하여 입력하세요 (예: 10 50 30 20): "
read -a nums  # 입력받은 숫자들을 배열(nums)로 저장

# 첫 번째 숫자를 일단 최대값으로 설정
max=${nums[0]}

# 배열의 모든 숫자를 하나씩 꺼내서 비교
for i in "${nums[@]}"; do
    # 현재 숫자($i)가 max보다 크면 max를 교체
    if [ "$i" -gt "$max" ]; then
        max=$i
    fi
done

echo "최대값: $max"