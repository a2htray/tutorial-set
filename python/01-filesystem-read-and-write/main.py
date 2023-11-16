# -*- coding=utf-8 -*-
headers = ['name', 'gender']
filename = './students.csv'


def write_to_file(filename: str):
    """创建文件并写入内容"""
    file = open(filename, mode='w')
    file.write(','.join(headers) + '\n')

    students = [
        {
            'name': 'a2htray',
            'gender': 'male',
        }
    ]

    for student in students:
        file.write(f'{student["name"]},{student["gender"]}' + '\n')

    file.close()



def read_from_file(filename: str):
    """读取文件内容"""
    file = open(filename, mode='r')
    for line in file.readlines():
        # str.strip 方法可以去除字符串首尾空格、换行
        print(line.strip())
    file.close()


if __name__ == '__main__':
    write_to_file(filename)
    read_from_file(filename)

