#!/usr/bin/python3

with open("test_output.txt") as f:
    line = f.readline()
    answer_flag = False
    counter_hour = -1
    while line:
        if ("ANSWER SECTION" in line):
            answer_flag = True
        if ("WHEN:" in line):
            time = line.split(" ")[5]
            temp_list = time.split(":")
            hour = temp_list[0]
            minute = temp_list[1]
            if (counter_hour == -1):
                counter_hour = hour
                counter_minute = minute
                good = 0
                bad = 0
            elif (
                counter_hour != hour or
                counter_minute != minute
            ):
                message = counter_hour + ":" + counter_minute + "\t" + str(good) + "\t" + str(bad)
                print(message)
                counter_hour = hour
                counter_minute = minute
                good = 0
                bad = 0
            if (answer_flag):
                answer_flag = False
                good += 1
            else:
                bad += 1
        line = f.readline()
