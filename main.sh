#!/bin/bash

echo "=== 리눅스 프로젝트 과제 ==="
echo "1. 계산기 실행"
echo "2. 팩토리얼 실행"
echo "3. 최댓값 찾기"
echo "4. 정렬 하기"
echo "=========================="
echo -n "원하는 기능을 선택하세요: "
read choice

case $choice in
  1) ./scripts/calculator.sh ;; 
  2) ./scripts/factorial.sh ;;
  3) ./scripts/max_num.sh ;;
  4) ./scripts/sort.sh ;;
  *) echo "잘못된 입력입니다." ;;
esac