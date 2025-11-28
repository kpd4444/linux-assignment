#!/bin/bash

echo "=== 숫자 정렬 모드 ==="
echo -n "숫자들을 공백으로 구분하여 입력하세요 (예: 5 1 9 3): "
read nums

# 1. echo $nums : 입력받은 숫자 출력
# 2. tr ' ' '\n' : 공백(가로)을 줄바꿈(세로)으로 변경 (sort 명령어를 쓰기 위해)
# 3. sort -n     : 숫자로 인식하여(-n) 오름차순 정렬
# 4. tr '\n' ' ' : 다시 줄바꿈을 공백으로 변경하여 한 줄로 출력

sorted_nums=$(echo "$nums" | tr ' ' '\n' | sort -n | tr '\n' ' ')

echo "정렬 결과(오름차순): $sorted_nums"