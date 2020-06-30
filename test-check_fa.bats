#!/usr/bin/env bats

@test "check param if output is equal to zero" {
  run ./check_fa.sh 0
  [ $output = "全て" ]
}

@test "check param if output is set" {
  run ./check_fa.sh test
  [ $output = "test" ]
}

###@test "check param if arg is not set" {
###  run ./check_fa.sh ""
###  [ $status -eq 1 ]
###  [ ${lines[0]} = "You need to set arg" ]
###}
