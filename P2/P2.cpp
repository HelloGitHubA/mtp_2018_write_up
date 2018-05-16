// P2.cpp: 定义控制台应用程序的入口点。
//


#include <stdio.h>
#include <vector>
#include <windows.h>
#include "rc4.h"

#include "InfInt.h"
//#define InfInt long long
#define ll long long
#include "z3/z3.h"
#include "lces.h"
// #include "lua/lua.hpp"
// #include "lua/lopcodes.c"
auto getIntFromChar = [](char v) -> int {
    int buf = v;
    *((char*)&buf + 1) = 0;
    *((char*)&buf + 2) = 0;
    *((char*)&buf + 3) = 0;
    return buf;
};

char* verify_password3(char *str, int len) {
    std::vector<char> ret_vector;
    char key_table[] = "ld4LiOz3F0bpyCNgWQBkr6HahGM1f85ocJ9/VUeTEmwqDPIsuvnZYRKjX7+ASt2x";
    const char* raw = str;
    int index = 0;
    auto getByte = [&index, len, raw]()->char {
        if (index < len)
            return raw[index++];
        return 0;
    };
    char chr0, chr1, chr2;
    int cur;
    int byte1;
    int res1, res2;
    int x1, x2, x3, x;
    int i = 0;
    do {
        cur = getByte();
        if (cur == 0) {
            break;
        }
        byte1 = cur;
        res1 = byte1 * byte1;
        res1 *= byte1;
        res1 *= 14;
        res1 += byte1 * byte1 * 5;
        res1 += byte1 * 15;
        res1 += 125;
        i = 0;
        while (i < 4) {
            int temp = res1 >> (6 * i);
            temp = (temp & 63) + 1;
            ret_vector.push_back(key_table[temp - 1]);
            printf("%c ", key_table[temp - 1]);
            i += 1;
        }
        int temp = res1 >> (6 * i);
        int savebyte = temp % 256;

        x1 = getByte(); // 50
        x2 = getByte(); // 51
        x3 = getByte(); // 52

        x = (x2 * 256 + x1) + (x3 * 256 * 256);
        res2 = savebyte + (x % 149 * 256) + (x % 213 * 256 * 256);
        i = 0;
        while (i < 4) {
            int temp = res2 >> (6 * i);
            temp = (temp & 63) + 1;
            ret_vector.push_back(key_table[temp - 1]); //printf("%c ", key_table[temp - 1]);
            i += 1;
        }

        res2 = x % 142 + x % 66 * 256 + (x % 121 * 256 * 256);
        i = 0;
        while (i < 4) {
            int temp = res2 >> (6 * i);
            temp = (temp & 63) + 1;
            ret_vector.push_back(key_table[temp - 1]); //printf("%c ", key_table[temp - 1]);
            i += 1;
        }

        res2 = x % 143 + x % 78 * 256 + (x % 242 * 256 * 256);
        i = 0;
        while (i < 4) {
            int temp = res2 >> (6 * i);
            temp = (temp & 63) + 1;
            ret_vector.push_back(key_table[temp - 1]); // printf("%c ", key_table[temp - 1]);
            i += 1;
        }


    } while (index < len);
    ret_vector.push_back(0);
    printf("\n");
    int size = ret_vector.size();
    char* retBuff = (char*)malloc(size + 1);
    memset(retBuff, 0, size + 1);
    memcpy(retBuff, ret_vector.begin()._Ptr, size);
    return retBuff;
}
char* calc_password3(char *dstRes, int len) {
    std::vector<char> ret_vector;
    char key_table[] = "ld4LiOz3F0bpyCNgWQBkr6HahGM1f85ocJ9/VUeTEmwqDPIsuvnZYRKjX7+ASt2x";
    const char* raw = dstRes;
    int index = 0;
    auto getByte = [&index, len, raw]()->char {
        if (index < len)
            return raw[index++];
        return 0;
    };
    auto getByteIndex = [len, key_table](char byte)->char {
        for (size_t i = 0; i < sizeof(key_table); i++)
        {
            if (key_table[i] == byte)
                return i;
        }
        return 0;
    };

    char chr0, chr1, chr2;
    int cur;
    int byte1;
    int res1, res2;
    int x1, x2, x3, x;
    int i = 0;

    int pos0, pos1, pos2, pos3;
    do {

        pos0 = getByteIndex(getByte());
        pos1 = getByteIndex(getByte());
        pos2 = getByteIndex(getByte());
        pos3 = getByteIndex(getByte());
        // printf("\n%c%c%c%c ", key_table[pos0], key_table[pos1], key_table[pos2], key_table[pos3]);
        res1 = (pos3 << (6 * 3)) + (pos2 << (6 * 2)) + (pos1 << (6 * 1)) + (pos0 << (6 * 0));
        // 这里 res 有可能大于 24 位 长度， 因此高位会丢失.....


        // 14x^3 + 5x^2 + 15x + 125 - res1 = 0 
        // int R = res1;
        // int xx = -0.119048 + 0.0238095 * pow((36.3731 * sqrt(5292 * R* R - 1304600 * R + 80570875) + 2646 * R - 326150), 1 / 3) - 14.4048 / pow((36.3731* sqrt(5292 * R*R - 1304600 * R + 80570875) + 2646 * R - 326150), 1 / 3);
        // 打扰了 ...

        auto fuckSolve1 = [&x, &res1, pos0, pos1, pos2, pos3](int R)->bool {

            for (x = 32; x < 128; x++)
            {
                int byte1 = x;
                int res1 = byte1 * byte1;
                res1 *= byte1;
                res1 *= 14;
                res1 += byte1 * byte1 * 5;
                res1 += byte1 * 15;
                res1 += 125;
                // res 高位丢失, 因此这里才是准确的

                int temp0 = (res1 >> (6 * 0)) & 63;
                int temp1 = (res1 >> (6 * 1)) & 63;
                int temp2 = (res1 >> (6 * 2)) & 63;
                int temp3 = (res1 >> (6 * 3)) & 63;

                if (temp0 == pos0 && temp1 == pos1 && temp2 == pos2 && temp3 == pos3) {
                    return true;
                }
            }
            printf("\nCan't find x\n");
            return false;
        };

        if (fuckSolve1(res1)) {
            ret_vector.push_back(x);
            // printf("%c ", x);
        }


        pos0 = getByteIndex(getByte());
        pos1 = getByteIndex(getByte());
        pos2 = getByteIndex(getByte());
        pos3 = getByteIndex(getByte());
        // printf("\n%c%c%c%c ", key_table[pos0], key_table[pos1], key_table[pos2], key_table[pos3]);
        long a = (pos3 << (6 * 3)) + (pos2 << (6 * 2)) + (pos1 << (6 * 1)) + (pos0 << (6 * 0));

        pos0 = getByteIndex(getByte());
        pos1 = getByteIndex(getByte());
        pos2 = getByteIndex(getByte());
        pos3 = getByteIndex(getByte());
        // printf("\n%c%c%c%c ", key_table[pos0], key_table[pos1], key_table[pos2], key_table[pos3]);
        long b = (pos3 << (6 * 3)) + (pos2 << (6 * 2)) + (pos1 << (6 * 1)) + (pos0 << (6 * 0));

        pos0 = getByteIndex(getByte());
        pos1 = getByteIndex(getByte());
        pos2 = getByteIndex(getByte());
        pos3 = getByteIndex(getByte());
        // printf("\n%c%c%c%c ", key_table[pos0], key_table[pos1], key_table[pos2], key_table[pos3]);
        long c = (pos3 << (6 * 3)) + (pos2 << (6 * 2)) + (pos1 << (6 * 1)) + (pos0 << (6 * 0));

        auto fuckSolve2 = [res1, a, b, c](int *_x1, int *_x2, int*_x3)->bool {
            for (size_t x1 = 0; x1 < 128; x1++)
            {
                for (size_t x2 = 0; x2 < 128; x2++)
                {
                    for (size_t x3 = 0; x3 < 128; x3++)
                    {
                        int savebyte = (res1 >> (6 * 4)) % 256;
                        long x = (x2 * 256 + x1) + (x3 * 256 * 256);
                        if (a >> 8 == (savebyte + x % 149 * 256 + x % 213 * 256 * 256) >> 8 &&
                            b >> 8 == (x % 142 + x % 66 * 256 + x % 121 * 256 * 256) >> 8 &&
                            c >> 8 == (x % 143 + x % 78 * 256 + x % 242 * 256 * 256) >> 8) {
                            *_x1 = x1;
                            *_x2 = x2;
                            *_x3 = x3;
                            return true;
                        }
                    }
                }
            }
            printf("\nCan't find x,y,z\n");
            return false;
        };

        if (fuckSolve2(&x1, &x2, &x3)) {
            ret_vector.push_back(x1);
            // printf("%c ", x1);

            ret_vector.push_back(x2);
            // printf("%c ", x2);

            ret_vector.push_back(x3);
            // printf("%c ", x3);
        }

    } while (index < len);
    ret_vector.push_back(0);
    // printf("\n");
    int size = ret_vector.size();
    char* retBuff = (char*)malloc(size + 1);
    memset(retBuff, 0, size + 1);
    memcpy(retBuff, ret_vector.begin()._Ptr, size);
    return retBuff;
}


char* verify_password3_jinjie(char *str, int len) {
    std::vector<char> ret_vector;
    char key_table[] = "VChf+BoN8qw43JzinLRQm95F/u7D6M0bYIeSTypAktsjOgWE2dUHrlGaPK1cZXvx";
    const char* raw = str;
    int index = 0;
    auto getByte = [&index, len, raw]()->char {
        if (index < len)
            return raw[index++];
        return 0;
    };
    char chr0, chr1, chr2;
    int cur;
    InfInt byte1, byte2;
    InfInt res1, res2, res3, res4, x;
    int x1, x2, x3, x4, x5, x6;
    int i = 0;
    do {
        cur = getByte(); // 49
        byte1 = cur;
        byte2 = getByte(); // 50

        byte1 = byte1 + byte2 * 256;
        res1 = byte1 * byte1;
        res1 *= byte1;
        res1 *= 8;
        res1 += byte1 * byte1 * 13;
        res1 += byte1 * 26;
        res1 += 87;
        std::cout << "one " << res1 << std::endl;
        i = 0;
        while (i < 8) {
            InfInt temp = res1 >> (6 * i);
            temp = (temp & 63);
            ret_vector.push_back(key_table[temp.toInt()]);
            // printf("%c \n", key_table[temp]);
            i += 1;
        }
        InfInt savebyte = (res1 >> (6 * i)) % 256;
        std::cout << "savebyte: " << savebyte << std::endl;


        x1 = getByte(); // 51
        x2 = getByte(); // 52
        x3 = getByte(); // 53
        x = (x2 * 256 + x1) + (x3 * 256 * 256);
        InfInt base = 256 * 256 * 256;

        x4 = getByte(); // 54
        x5 = getByte(); // 0
        x6 = getByte(); // 0
        x = x + base * (x5 * 256 + x4 + x6 * 256 * 256);
        std::cout << "x: " << x << std::endl;

        res2 = savebyte;
        res2 = res2 + (x % 61454 * 256);
        std::cout << "\nres = " << res2 << std::endl;
        i = 0;
        while (i < 4) {
            InfInt temp = res2 >> (6 * i);
            temp = (temp & 63);
            ret_vector.push_back(key_table[temp.toInt()]);
            // printf("%c ", temp, key_table[temp]);
            i += 1;
        }

        res2 = x % 54732;
        res3 = x % 5136;
        res2 = res2 + (res3 % 256 * 256 * 256);
        std::cout << "\nres = " << res2 << std::endl;
        i = 0;
        while (i < 4) {
            InfInt temp = res2 >> (6 * i);
            temp = (temp & 63);
            ret_vector.push_back(key_table[temp.toInt()]);
            // printf("%c ", key_table[temp - 1]);
            i += 1;
        }


        res2 = x % 25548;
        res2 = res2 * 256;
        res2 = (res3 >> 8) + res2;
        std::cout << "\nres = " << res2 << std::endl;
        i = 0;
        while (i < 4) {
            InfInt temp = res2 >> (6 * i);
            temp = (temp & 63);
            ret_vector.push_back(key_table[temp.toInt()]);
            // printf("%c ", key_table[temp - 1]);
            i += 1;
        }

        printf("\n\n");

    } while (index < len);
    ret_vector.push_back(0);
    printf("\n");
    int size = ret_vector.size();
    char* retBuff = (char*)malloc(size + 1);
    memset(retBuff, 0, size + 1);
    memcpy(retBuff, ret_vector.begin()._Ptr, size);
    return retBuff;
}
char* calc_password3_jinjie(char *dstRes, int len) {
    std::vector<char> ret_vector;
    char key_table[] = "VChf+BoN8qw43JzinLRQm95F/u7D6M0bYIeSTypAktsjOgWE2dUHrlGaPK1cZXvx";
    const char* raw = dstRes;
    int index = 0;
    auto getByte = [&index, len, raw]()->char {
        if (index < len)
            return raw[index++];
        return 0;
    };
    auto getByteIndex = [len, key_table](char byte)->char {
        for (size_t i = 0; i < sizeof(key_table); i++)
        {
            if (key_table[i] == byte)
                return i;
        }
        return 0;
    };

    char chr0, chr1, chr2;
    int cur;
    ll byte1, byte2;
    ll res1, res2, res3, res4, x;
    int x0, x1, x2, x3, x4, x5, x6;
    int i = 0;

    ll pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7;
    do {

        pos0 = getByteIndex(getByte());
        pos1 = getByteIndex(getByte());
        pos2 = getByteIndex(getByte());
        pos3 = getByteIndex(getByte());
        pos4 = getByteIndex(getByte());
        pos5 = getByteIndex(getByte());
        pos6 = getByteIndex(getByte());
        pos7 = getByteIndex(getByte());

        auto fuckSolve1 = [&x0, &x1, &res1, pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7]()->bool {

            for (x0 = 32; x0 < 128; x0++)
                for (x1 = 32; x1 < 128; x1++)
                {
                    ll byte1 = x0;
                    ll byte2 = x1;
                    byte1 = byte1 + byte2 * 256;
                    res1 = byte1 * byte1;
                    res1 *= byte1;
                    res1 *= 8;
                    res1 += byte1 * byte1 * 13;
                    res1 += byte1 * 26;
                    res1 += 87;
                    // res 高位丢失, 因此这里才是准确的

                    ll temp0 = ((res1 >> (6 * 0)) & 63);
                    ll temp1 = ((res1 >> (6 * 1)) & 63);
                    ll temp2 = ((res1 >> (6 * 2)) & 63);
                    ll temp3 = ((res1 >> (6 * 3)) & 63);
                    ll temp4 = ((res1 >> (6 * 4)) & 63);
                    ll temp5 = ((res1 >> (6 * 5)) & 63);
                    ll temp6 = ((res1 >> (6 * 6)) & 63);
                    ll temp7 = ((res1 >> (6 * 7)) & 63);

                    if (temp0 == pos0 && temp1 == pos1 && temp2 == pos2 && temp3 == pos3 && temp4 == pos4 && temp5 == pos5 && temp6 == pos6 && temp7 == pos7) {
                        return true;
                    }
                }
            printf("\nCan't find x\n");
            return false;
        };

        if (fuckSolve1()) {
            ret_vector.push_back(x0);
            ret_vector.push_back(x1);
        }


        pos0 = getByteIndex(getByte());
        pos1 = getByteIndex(getByte());
        pos2 = getByteIndex(getByte());
        pos3 = getByteIndex(getByte());
        // printf("\n%c%c%c%c ", key_table[pos0], key_table[pos1], key_table[pos2], key_table[pos3]);
        ll r1 = (pos3 << (6 * 3)) + (pos2 << (6 * 2)) + (pos1 << (6 * 1)) + (pos0 << (6 * 0));

        pos0 = getByteIndex(getByte());
        pos1 = getByteIndex(getByte());
        pos2 = getByteIndex(getByte());
        pos3 = getByteIndex(getByte());
        // printf("\n%c%c%c%c ", key_table[pos0], key_table[pos1], key_table[pos2], key_table[pos3]);
        ll r2 = (pos3 << (6 * 3)) + (pos2 << (6 * 2)) + (pos1 << (6 * 1)) + (pos0 << (6 * 0));

        pos0 = getByteIndex(getByte());
        pos1 = getByteIndex(getByte());
        pos2 = getByteIndex(getByte());
        pos3 = getByteIndex(getByte());
        // printf("\n%c%c%c%c ", key_table[pos0], key_table[pos1], key_table[pos2], key_table[pos3]);
        ll r3 = (pos3 << (6 * 3)) + (pos2 << (6 * 2)) + (pos1 << (6 * 1)) + (pos0 << (6 * 0));

        auto fuckSolve2 = [&res2, &res3, res1, r1, r2, r3](int *_x1, int *_x2, int*_x3, int *_x4, int *_x5, int*_x6)->bool {
            ll savebyte = (res1 >> (6 * 8)) % 256;

            ll a1 = (r1 - savebyte) >> 8;
            ll a2 = r2 & 0xFFFF;
            ll a3 = (r2 & 0xFF0000) >> 16;
            a3 += (r3 & 0xFF) << 8;
            ll a4 = r3 >> 8;

            // 256 == 2**8 
            // InfInt x = (x2 * 256 + x1) + (x3 * 256 * 256);
            // x = x + 256 * 256 * 256 * (x5 * 256 + x4 + x6 * 256 * 256);


            // savebyte + (x % 61454 * 256) == r1
            // (x % 54732) + ((x % 5136) % 256 * 256 * 256) == r2
            // (x % 25548) * 256 + ((x % 5136) >> 8) == r3

            // ll x = SuperMixSolve(a1, a2, a3, a4);
            ll x = GDSSolve(a1, a2, a3, a4); // for better performace
            if (x) {
                *_x1 = (x & 0xFF);
                *_x2 = (x & 0xFF00) >> (4 * 2);
                *_x3 = (x & 0xFF0000) >> (4 * 4);
                *_x4 = (x & 0xFF000000) >> (4 * 6);
                *_x5 = (x & 0xFF00000000) >> (4 * 8);
                *_x6 = (x & 0xFF0000000000) >> (4 * 10);
                return true;
            }

            std::cout << "x%61454=" << a1 << "," << std::endl;
            std::cout << "x%54732=" << a2 << "," << std::endl;
            std::cout << "x%5136=" << a3 << "," << std::endl;
            std::cout << "x%25548=" << a4 << "," << std::endl;

            printf("\nCan't find x,y,z\n");
            return false;
        };

        if ((r1 || r2 || r3) && fuckSolve2(&x1, &x2, &x3, &x4, &x5, &x6)) {
            ret_vector.push_back(x1);
            // printf("%c ", x1);

            ret_vector.push_back(x2);
            // printf("%c ", x2);

            ret_vector.push_back(x3);
            // printf("%c ", x3);
            ret_vector.push_back(x4);
            ret_vector.push_back(x5);
            ret_vector.push_back(x6);
        }

    } while (index < len);
    ret_vector.push_back(0);
    // printf("\n");
    int size = ret_vector.size();
    char* retBuff = (char*)malloc(size + 1);
    memset(retBuff, 0, size + 1);
    memcpy(retBuff, ret_vector.begin()._Ptr, size);
    return retBuff;
}


int main()
{



    // 基础版
    printf("------- [1] ----------\n");
    char key[128] = { "F8998657AFE06DD5AA593D88FB3DB3E4" };
    char data[512] = { 30, 201, 134, 139, 51, 104, 209, 164, 173, 123, 134, 116, 7, 28, 238, 110, 135, 120, 129, 71, 107, 187, 237, 152, 111, 202, 218, 192, 212, 86, 218, 209 };
    struct rc4_state *s;
    s = (struct rc4_state *) malloc(sizeof(struct rc4_state));
    rc4_setup(s, (unsigned char *)key, strlen(key));
    rc4_crypt(s, (unsigned char *)data, strlen(data));
    printf("key  : %s\n", data); // C3F6B4473DB70B38B554F6F3C2E6058C

    printf("------- [2] ----------\n");
    int ecx = 0xB0D858;
    int eax = 0x2804;
    printf("key  : ");
    printf("tencent_mobile_game+%d\n", 0xBC754200);


    printf("------- [3] ----------\n");
    char vmbs[] = { 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 3, 0, 0, 0, 99, 117, 114, 17, 64, 0, 0, 0, 108, 100, 52, 76, 105, 79, 122, 51, 70, 48, 98, 112, 121, 67, 78, 103, 87, 81, 66, 107, 114, 54, 72, 97, 104, 71, 77, 49, 102, 56, 53, 111, 99, 74, 57, 47, 86, 85, 101, 84, 69, 109, 119, 113, 68, 80, 73, 115, 117, 118, 110, 90, 89, 82, 75, 106, 88, 55, 43, 65, 83, 116, 50, 120, 2, 3, 0, 0, 0, 98, 54, 52, 1, 3, 0, 0, 0, 99, 117, 114, 0, 0, 0, 0, 0, 14, 9, 59, 6, 0, 0, 1, 3, 0, 0, 0, 99, 117, 114, 2, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 5, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 5, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 14, 0, 0, 0, 5, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 5, 0, 5, 0, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 0, 15, 0, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 125, 0, 0, 0, 3, 2, 4, 0, 0, 0, 114, 101, 115, 49, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 0, 6, 0, 0, 0, 0, 4, 0, 0, 0, 5, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 0, 0, 1, 0, 0, 7, 2, 8, 0, 0, 0, 115, 97, 118, 101, 98, 121, 116, 101, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 2, 0, 0, 0, 120, 49, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 2, 0, 0, 0, 120, 50, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 2, 0, 0, 0, 120, 51, 1, 2, 0, 0, 0, 120, 49, 1, 2, 0, 0, 0, 120, 50, 0, 0, 1, 0, 0, 5, 3, 1, 2, 0, 0, 0, 120, 51, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 1, 0, 0, 0, 120, 1, 8, 0, 0, 0, 115, 97, 118, 101, 98, 121, 116, 101, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 149, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 213, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 1, 1, 0, 0, 0, 120, 0, 142, 0, 0, 0, 7, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 66, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 121, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 1, 1, 0, 0, 0, 120, 0, 143, 0, 0, 0, 7, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 78, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 242, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 3, 0, 0, 0, 99, 117, 114, 0, 0, 0, 0, 0, 9, 178, 249, 255, 255 };
    char dstRes[] = { "mCJ4lu/IDuuOVdLV8GvdlccdzuckNdckm/mddV90eXZylbLqJ75QdlZiMJ46rmL6k5gOlDY8uFZ0YG4EOrf0lEjN4bkMnF/X0mXWliucL5QHafQH1AEQlVQPTYkM58kMG3V3lik4WGlBFJiBOrf0lyLiWWZMcGi7Orf0lW/ViXWQVX/s1AEQlXkcd2Zi5rYiogfglF/ynF/ynF/y" };
    char *key3 = calc_password3(dstRes, strlen(dstRes));
    printf("key  : %s\n", key3);

    printf("\n\n", key3);


    printf("------- [进阶版 1] ----------\n");
    char key2[128] = { "CDD8AAAA500CA8EF8713E1C758175003" };
    char data2[512] = { 196, 243, 228, 110, 198, 157, 94, 18, 69, 27, 52, 91, 68, 162, 205, 155, 56, 241, 34, 116, 158, 77, 111, 66, 152, 103, 174, 84, 123, 234, 91, 133 };
    char xorr[512] = { 115, -128, 100, 10, -52, 81, 15, 29, 88, 67, 119, 44, 104, -54, 7, -100, -92, 85, 119, 3, -99, -48, -65, -3, 101, 2, -84, -8, -125, 105, 50, -73 };
    struct rc4_state *s2;
    s2 = (struct rc4_state *) malloc(sizeof(struct rc4_state));
    rc4_setup(s2, (unsigned char *)key2, strlen(key2));
    rc4_crypt(s2, (unsigned char *)data2, strlen(data2));
    for (size_t i = 0; i < 32; i++)
        data2[i] ^= xorr[i];
    printf("key  : %s\n", data2); // E0EA72E0E1C1BFFBC26E8B47AD9D809C


    printf("------- [进阶版 2] ----------\n");
    int ecxx = 0xB0D858;
    int eaxx = 0x2804;
    printf("key  : ");
    printf("tencent_mobile_game+%d\n", -999893888);


    printf("------- [进阶版 3] ----------\n");
    char dstRes2[] = { "ETKdgxteV6FHLzDCwmaVb9pYU5kSV6paNicOnO/wA0ZzM4CzVmALImn0CmxRhx0xSq/jV3Ad9i6s4+jQF0TUY3vCVm2obdcm8OozofmjlnCCVPBoT7qk+2n+bzN+jhz6VPJEw8OkfkuCoGRJRlftVYv+6uwKRYPza/RnlFVfVkgw+zofoVN8p1MPmI1WV6JUD2PnN3IBU4B3dEhCVPU0Z9f0oV7QFGpWJq0IVnzbhay2fkzLbrnQ4fCCV/J5GGpB4/RRNFpEEDhCV3yqFqXVoZX8brnQ4fCCVPiEP0fK8YN4F0K0k5CjV++eLc6BJ+oqhxo0pthCVkQG3D+8hYLRp96Kge8/VVsS2poXCnN9p1MPmI1WVkibZhh2+ne8oTsV82sgV+WTB1FIV+soomcyLBPWVmB7fWZ/N6goo5eD9MP0V88SnGo+qVMBoGRJRlftVYBL33+lBVWqFzIcSDYYV+o3M2F1++4iUOo3QIlbV6iyITQzRTRqoQE/POgBVO9jyGn0o+/iUj9rYop+VOyaiUU/NOimEjIz90M8VY0h7ZSVfk25Nga5DP8BVVubYGCgV29oEB/cQdhCV/0sv9STR/lfUaoit/N2V6f0dLQWnmK5aGLJ5CV0VVHgnkhch2RJFGVmkPyHVZep9hMvqmNfFveis+ypVrDrqVnUoTHop1o1HCJsVY9czBjc88+3bYfUGVUSVm9rQwUI+3IJEXcDKqnsV8o3m1V6hVZfUaoiEm4sV2k48R8YBnLCit16Z6WSVPT40lOgq/c3b2CfswUIVOdKMmRBiT+4bzntqb2SV6VAE2KmV6HQU4JOQ532VYc+WJsOz/j8brnQ4fCCVr48iac8J6jCoGRJRlftVOr3a9Gkf6jhiuDhZKifVrFVaeKjN6k3bpq/XxB/V8ymVYV94Y1hU4B3dEhCVT+cSfZNwOgiF5GfL1ILV+m4jUUD46aqo5OMT1shVkIlYEo2n2MBhxo0pthCV2QYkCN+L2OJF0K0k5CjVO0wL3FKB+eQFvi58sUEVZYVNhriQ38LFvi58sUEVkFCTg4WNY0oEXOskiCrVZN4XaL3B+89xlpIdJB2V2S/ocTJq/W8A8KTorrbVkNrn+Vu+neRhxo0pthCVZ+3bwr33Zahx8p2UkETVT0ruIFl4TLVFvi58sUEV8bRki8oo2hQbvo5FPJsVTmYHsddi6X4hxiXaAotVY+QZj+dJVg4U4tnHhooVVVVVVVVVVVV" };

    char input[] = { "123456abcdefgh123456abcdefgh" };
    // char *testss = verify_password3_jinjie(input, strlen(input));
    // printf("test  : %s\n", testss);


    char *key32 = calc_password3_jinjie(dstRes2, strlen(dstRes2));
    printf("key  : %s\n", key32);


    /*
    for (size_t i = 0; i < 47; i++)
    {
        bool find = false;
        lu_byte en = -1;// en_op_codes(i);
        for (size_t e = 0; e < 0xff; e++)
        {
            if (de_op_codes(e) == i) {
                en = e;
                find = true;
                break;
            }
        }


        if (find) {
            printf("decode: %02X -> %02X , %02X == %02X  %d\n", en, i, luaP_opmodes[i], de_op_modes(en), luaP_opmodes[i] == de_op_modes(en));

        }
        else
            for (size_t en = 0xFe; en > 0; en--)
            {
                if (luaP_opmodes[i] == de_op_modes(en) && de_op_codes(en) == 0) {
                    printf("en: 0x%02X  de: 0x%02X; \n", en, i);
                    // break;
                }
            }

    }
    */

Exit:
    printf("\n\n");
    system("pause");
    return 0;
}

