int __thiscall luaV_execute_10033530(_DWORD *this)
{
  // [COLLAPSED LOCAL DECLARATIONS. PRESS KEYPAD CTRL-"+" TO EXPAND]

  v1 = this;
  v296 = this;
  v2 = (int **)this[5];
  *((_WORD *)v2 + 17) |= 8u;
LABEL_2:
  v246 = v2;
LABEL_3:
  v3 = **v2;
  v329 = v3;
  v297 = *(_DWORD *)(*(_DWORD *)(v3 + 12) + 44);
  v4 = v246;
  v5 = (int)v246[4];
  v283 = (int)v246[4];
  while ( 2 )
  {
    v6 = v4[5];
    v7 = *v6;
    v246[5] = v6 + 1;
    v247 = v7;
    if ( v1[28] & 0xC )
    {
      v8 = v1[26]-- == 1;
      v9 = *((_BYTE *)v1 + 112);
      v10 = v1[5];
      v298 = v1[5];
      v308 = *((_BYTE *)v1 + 112);
      if ( v8 && v9 & 8 )
      {
        v284 = 1;
        v1[26] = v1[25];
      }
      else
      {
        v284 = 0;
        if ( !(v9 & 4) )
        {
LABEL_32:
          v5 = (int)v246[4];
          v283 = (int)v246[4];
          goto LABEL_33;
        }
      }
      v11 = *(_WORD *)(v10 + 34);
      if ( v11 & 0x40 )
      {
        *(_WORD *)(v10 + 34) = v11 & 0xFFBF;
        goto LABEL_32;
      }
      if ( v284 )
      {
        sub_10020DD0(-1);
        v10 = v298;
      }
      if ( v308 & 4 )
      {
        v315 = *(_DWORD *)(v10 + 20);
        v12 = *(_DWORD *)(**(_DWORD **)v10 + 12);
        v325 = *(_DWORD *)(v12 + 48);
        v13 = *(_DWORD *)(v12 + 56);
        if ( v13 )
          v272 = *(_DWORD *)(v13 + 4 * (((signed int)(v315 - v325) >> 2) - 1));
        else
          v272 = -1;
        if ( (signed int)(v315 - v325) >> 2 == 1 || (v14 = v1[6], v315 <= v14) )
        {
          v16 = v272;
        }
        else
        {
          if ( v13 )
            v15 = *(_DWORD *)(v13 + 4 * ((signed int)(v14 - v325) >> 2) - 4);
          else
            v15 = -1;
          v16 = v272;
          if ( v272 == v15 )
            goto LABEL_30;
        }
        sub_10020DD0(v16);
      }
LABEL_30:
      v8 = *((_BYTE *)v1 + 8) == 1;
      v1[6] = *(_DWORD *)(v298 + 20);
      if ( v8 )
      {
        if ( v284 )
          v1[26] = 1;
        *(_DWORD *)(v298 + 20) -= 4;
        *(_WORD *)(v298 + 34) |= 0x40u;
        *(_DWORD *)v298 = v1[3] - 16;
        sub_10020AA0(v1, 1);
      }
      v7 = v247;
      goto LABEL_32;
    }
LABEL_33:
    v273 = (unsigned __int8)(v7 >> 6);
    v285 = 4 * v273;
    v17 = (int *)(16 * v273 + v5);
    switch ( v7 & 0x3F )
    {
      case 1u:
        v41 = *(_OWORD ***)(v329 + 4 * (v7 >> 23) + 16);
        v316 = v41;
        **v41 = *(_OWORD *)v17;
        v42 = *v41;
        v4 = v246;
        if ( !(v42[8] & 0x40) )
          continue;
        v4 = v246;
        if ( v42 != (_BYTE *)(v316 + 2) || *(_BYTE *)(v1[4] + 61) > 1u || !(*(_BYTE *)(*(_DWORD *)v42 + 5) & 3) )
          continue;
        sub_10022550(v1[4]);
        v5 = v283;
        goto LABEL_7;
      case 2u:
        v24 = v7 >> 23;
        v25 = v7 >> 14;
        v1 = v296;
        v26 = **(_DWORD ***)(v329 + 4 * v24 + 16);
        if ( v25 & 0x100 )
          v27 = v297 + 16 * (unsigned __int8)v25;
        else
          v27 = v5 + 16 * (v25 & 0x1FF);
        v248 = v27;
        if ( v26[2] == 69 )
        {
          v28 = sub_1002F1B0(*v26, v27);
          if ( *(_DWORD *)(v28 + 8) )
          {
            v18 = *(_OWORD *)v28;
            goto LABEL_5;
          }
          v27 = v248;
        }
        else
        {
          v28 = 0;
        }
        sub_100324E0(v27, v17, v28);
        goto LABEL_52;
      case 3u:
        goto LABEL_534;
      case 4u:
        v243 = v7 >> 23;
        v271 = v243;
        if ( *(_DWORD *)(*(_DWORD *)(v329 + 12) + 28) > 0 )
        {
          sub_100222A0(v1, v5);
          v243 = v271;
        }
        if ( v243 )
          v244 = v243 - 1;
        else
          v244 = (v1[3] - (signed int)v17) >> 4;
        result = sub_10020E90(v17, v244);
        if ( !(*((_BYTE *)v246 + 34) & 8) )
        {
          v2 = (int **)v1[5];
          v246 = (int **)v1[5];
          if ( result )
            v1[3] = v2[1];
          goto LABEL_3;
        }
        return result;
      case 5u:
      case 9u:
      case 0xAu:
      case 0x25u:
        if ( (unsigned __int8)(v7 >> 6) )
        {
          sub_100222A0(v1, &v246[4][v285 - 4]);
          v7 = v247;
          v5 = v283;
        }
        goto LABEL_420;
      case 6u:
      case 7u:
      case 0x16u:
      case 0x1Bu:
        v18 = *(_OWORD *)(v5 + 16 * (v7 >> 23));
        goto LABEL_6;
      case 8u:
      case 0x11u:
      case 0x17u:
      case 0x36u:
        v18 = *(_OWORD *)**(_DWORD **)(v329 + 4 * (v7 >> 23) + 16);
        goto LABEL_6;
      case 0xCu:
        v222 = v7 >> 23;
        v223 = (v7 >> 14) & 0x1FF;
        v269 = v222;
        if ( !v222 )
        {
          v222 = ((v1[3] - (signed int)v17) >> 4) - 1;
          v269 = ((v1[3] - (signed int)v17) >> 4) - 1;
        }
        if ( !v223 )
        {
          v224 = v246[5];
          v223 = (unsigned int)*v224 >> 6;
          v246[5] = v224 + 1;
        }
        v225 = *v17;
        v226 = 50 * v223 + v222 - 50;
        v282 = v226;
        if ( v226 > *(_DWORD *)(*v17 + 8) )
        {
          if ( *(_DWORD *)(v225 + 20) )
            v227 = 1 << *(_BYTE *)(v225 + 7);
          else
            v227 = 0;
          sub_1002E9C0(v226, v227);
          v222 = v269;
          v226 = v282;
        }
        if ( v222 > 0 )
        {
          v322 = &v17[4 * v222];
          do
          {
            v228 = (int *)sub_1002F0B0(v226, 0);
            if ( v228 == &dword_1006D5E8 )
            {
              v372 = v282;
              v373 = 0;
              v374 = 19;
              v228 = (int *)sub_1002EEA0(&v372);
            }
            --v282;
            *(_OWORD *)v228 = *(_OWORD *)v322;
            if ( v322[2] & 0x40 && *(_BYTE *)(v225 + 5) & 4 && *(_BYTE *)(*v322 + 5) & 3 )
            {
              v229 = v296[4];
              *(_BYTE *)(v225 + 5) &= 0xFBu;
              *(_DWORD *)(v225 + 28) = *(_DWORD *)(v229 + 80);
              *(_DWORD *)(v229 + 80) = v225;
            }
            v322 -= 4;
            v226 = v282;
            --v269;
          }
          while ( v269 > 0 );
        }
        v1 = v296;
        v5 = v283;
        v296[3] = v246[1];
        goto LABEL_7;
      case 0xDu:
        v29 = v7;
        v30 = v7 >> 14;
        v31 = (_DWORD *)(v5 + 16 * (v29 >> 23));
        if ( v30 & 0x100 )
          v32 = v297 + 16 * (unsigned __int8)v30;
        else
          v32 = v5 + 16 * (v30 & 0x1FF);
        v249 = (int *)v32;
        if ( v31[2] != 69 )
        {
          sub_100324E0(v32, v17, 0);
          goto LABEL_52;
        }
        v33 = sub_1002F1B0(*v31, v32);
        goto LABEL_59;
      case 0xEu:
        v54 = v7;
        v55 = v7 >> 14;
        v56 = v5 + 16 * (v54 >> 23);
        if ( v55 & 0x100 )
          v57 = (int *)(v297 + 16 * (unsigned __int8)v55);
        else
          v57 = (int *)(v5 + 16 * (v55 & 0x1FF));
        v58 = *v57;
        v249 = v57;
        *((_OWORD *)v17 + 1) = *(_OWORD *)v56;
        if ( *(_DWORD *)(v56 + 8) == 69 )
        {
          v288 = *(_DWORD *)v56;
          v59 = *(_BYTE *)(v58 + 4);
          if ( v59 == 4 )
          {
            v33 = sub_1002F120(v288, v58);
          }
          else
          {
            v375 = v58;
            v376 = v59 | 0x40;
            v33 = sub_1002F160(v288, &v375);
          }
LABEL_59:
          if ( *(_DWORD *)(v33 + 8) )
          {
            v5 = v283;
            *(_OWORD *)v17 = *(_OWORD *)v33;
            goto LABEL_7;
          }
          sub_100324E0(v249, v17, v33);
        }
        else
        {
          sub_100324E0(v57, v17, 0);
        }
        goto LABEL_52;
      case 0xFu:
        v163 = 2 * (v7 >> 23);
        v164 = *(_DWORD *)(v5 + 8 * v163 + 8);
        if ( v164 && (v164 != 1 || *(_DWORD *)(v5 + 8 * v163)) )
        {
          v17[2] = 1;
          *v17 = 0;
        }
        else
        {
          *v17 = 1;
          v17[2] = 1;
        }
        goto LABEL_7;
      case 0x12u:
        v21 = v7 >> 23;
        v22 = v17 + 2;
        do
        {
          v23 = v21;
          *v22 = 0;
          --v21;
          v22 += 4;
        }
        while ( v23 );
        goto LABEL_7;
      case 0x13u:
        v86 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v87 = v297 + 16 * (unsigned __int8)v86;
        else
          v87 = v5 + 16 * v86;
        v88 = v7 >> 14;
        if ( v88 & 0x100 )
          v89 = v297 + 16 * (unsigned __int8)v88;
        else
          v89 = v5 + 16 * (v88 & 0x1FF);
        v256 = v89;
        if ( *(_DWORD *)(v87 + 8) == 3 )
        {
          v90 = *(double *)v87;
          v361 = *(double *)v87;
        }
        else
        {
          if ( !sub_100322F0(v87, &v361) )
          {
            v92 = v256;
            goto LABEL_194;
          }
          v90 = v361;
          v89 = v256;
        }
        if ( *(_DWORD *)(v89 + 8) == 3 )
        {
          v91 = *(double *)v89;
          v362 = *(double *)v89;
LABEL_192:
          v5 = v283;
          v17[2] = 3;
          *(double *)v17 = v90 / v91;
          goto LABEL_7;
        }
        v92 = v256;
        if ( sub_100322F0(v256, &v362) )
        {
          v91 = v362;
          v1 = v296;
          goto LABEL_192;
        }
LABEL_194:
        if ( !sub_100309E0(v92, v17, 11) )
          sub_10020770(v92, "perform arithmetic on");
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x14u:
        v235 = v7 >> 23;
        v236 = ((v5 - (signed int)*v246) >> 4) - *(unsigned __int8 *)(*(_DWORD *)(v329 + 12) + 6) - 1;
        v237 = 0;
        if ( v236 >= 0 )
          v237 = v236;
        v238 = v235 - 1;
        v307 = v237;
        if ( v238 < 0 )
        {
          v238 = v237;
          v270 = v237;
          if ( (v1[7] - v1[3]) >> 4 <= v237 )
          {
            sub_10020CB0(v1);
            v238 = v270;
            v237 = v307;
          }
          v17 = &v246[4][v285];
          v283 = (int)v246[4];
          v1[3] = &v17[4 * v237];
        }
        v4 = v246;
        v239 = 0;
        if ( v238 <= 0 )
          goto LABEL_4;
        v324 = v17;
        while ( v239 < v307 )
        {
          v240 = v239++;
          *(_OWORD *)v324 = *(_OWORD *)(v283 + 16 * (v240 - v307));
          v324 += 4;
          if ( v239 >= v238 )
          {
            v5 = v283;
            goto LABEL_7;
          }
        }
        v4 = v246;
        if ( v239 >= v238 )
        {
LABEL_4:
          v5 = v283;
          continue;
        }
        v241 = &v17[4 * v239 + 2];
        v242 = v238 - v239;
        do
        {
          *v241 = 0;
          v241 += 4;
          --v242;
        }
        while ( v242 );
        v5 = v283;
        goto LABEL_7;
      case 0x15u:
        v131 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v132 = v297 + 16 * (unsigned __int8)v131;
        else
          v132 = v5 + 16 * v131;
        v133 = v7 >> 14;
        v279 = (_QWORD *)v132;
        if ( v133 & 0x100 )
          v134 = (_DWORD *)(v297 + 16 * (unsigned __int8)v133);
        else
          v134 = (_DWORD *)(v5 + 16 * (v133 & 0x1FF));
        v262 = v134;
        if ( *(_DWORD *)(v132 + 8) == 19 )
        {
          if ( v134[2] == 19 )
          {
            v292 = *v134;
            v263 = v134[1];
            if ( __CFADD__(*v134, 1) + v263 || (unsigned int)(*v134 + 1) > 1 )
            {
              v303 = *(_DWORD *)(v132 + 4);
              v135 = *(_QWORD *)v132 % (signed __int64)__PAIR__(v263, v292);
              v280 = *v279 % (signed __int64)__PAIR__(v263, v292);
              if ( v135 )
              {
                LODWORD(v135) = v292;
                if ( (((v303 ^ v263) & 0x80000000) != 0 || v303 == v263) && ((v303 ^ v263) & 0x80000000) != 0 )
                {
                  HIDWORD(v135) = (v135 + __PAIR__(v263, v280)) >> 32;
                  v280 += v292;
                }
                LODWORD(v135) = v280;
              }
              v5 = v283;
              *(_QWORD *)v17 = v135;
              v17[2] = 19;
            }
            else
            {
              if ( !(v263 | v292) )
                sub_100209F0(v1, "attempt to perform 'n%%0'");
              v17[2] = 19;
              *v17 = 0;
              v17[1] = 0;
            }
            goto LABEL_7;
          }
        }
        else if ( *(_DWORD *)(v132 + 8) == 3 )
        {
          v363 = *(double *)v132;
          goto LABEL_333;
        }
        if ( !sub_100322F0(v132, &v363) )
        {
          v137 = v262;
          goto LABEL_341;
        }
        v134 = v262;
LABEL_333:
        if ( v134[2] == 3 )
        {
          v136 = *(double *)v134;
          v354 = *(double *)v134;
LABEL_337:
          v138 = v363;
          sub_10060250(v363);
          v331 = v138;
          v139 = v138;
          if ( v138 * v136 < 0.0 )
            v139 = v138 + v136;
          v5 = v283;
          *(double *)v17 = v139;
          v17[2] = 3;
          goto LABEL_7;
        }
        v137 = v262;
        if ( sub_100322F0(v262, &v354) )
        {
          v136 = v354;
          v1 = v296;
          goto LABEL_337;
        }
LABEL_341:
        if ( !sub_100309E0(v137, v17, 9) )
          sub_10020770(v137, "perform arithmetic on");
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x18u:
        v156 = (_DWORD *)(v5 + 16 * (v7 >> 23));
        v266 = v156;
        v157 = v156[2];
        if ( v157 == 19 )
        {
          v158 = v156[1];
          v205 = *v156 != 0;
          *v17 = -*v156;
          v5 = v283;
          v17[2] = 19;
          v17[1] = -(v205 + v158);
          goto LABEL_7;
        }
        if ( v157 == 3 )
        {
          v159 = *(_QWORD *)v156;
          v368 = *(_QWORD *)v156;
LABEL_397:
          *(_QWORD *)v17 = v159 ^ xmmword_10073700;
          v17[2] = 3;
          goto LABEL_7;
        }
        if ( sub_100322F0(v156, &v368) )
        {
          v159 = v368;
          v1 = v296;
          v5 = v283;
          goto LABEL_397;
        }
        if ( !sub_100309E0(v266, v17, 18) )
          sub_10020770(v266, "perform arithmetic on");
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x19u:
        v114 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v115 = v297 + 16 * (unsigned __int8)v114;
        else
          v115 = v5 + 16 * v114;
        v116 = v7 >> 14;
        v277 = v115;
        if ( v116 & 0x100 )
          v117 = (unsigned int *)(v297 + 16 * (unsigned __int8)v116);
        else
          v117 = (unsigned int *)(v5 + 16 * (v116 & 0x1FF));
        v260 = (int)v117;
        if ( *(_DWORD *)(v115 + 8) == 19 )
        {
          v346 = *(_QWORD *)v115;
        }
        else
        {
          if ( !sub_100323C0(&v346, v115, 0) )
          {
            v120 = v260;
            goto LABEL_280;
          }
          v117 = (unsigned int *)v260;
        }
        if ( v117[2] == 19 )
        {
          v118 = *v117;
          v119 = v117[1];
          v344 = *v117;
          v345 = v119;
          goto LABEL_264;
        }
        v120 = v260;
        if ( sub_100323C0(&v344, v260, 0) )
        {
          v119 = v345;
          v118 = v344;
          v1 = v296;
LABEL_264:
          if ( v119 > 0 )
          {
LABEL_269:
            v311 = 0i64;
          }
          else if ( v119 >= 0 )
          {
            if ( v119 < 0 )
              goto LABEL_657;
            if ( v119 > 0 )
              goto LABEL_269;
            if ( v118 < 0x40 )
            {
LABEL_657:
              v122 = v346;
LABEL_276:
              v121 = v122 << *(_OWORD *)&_mm_cvtsi32_si128(v118);
              goto LABEL_277;
            }
            v311 = 0i64;
          }
          else
          {
            if ( v119 <= -1 && (v119 < -1 || v118 <= 0xFFFFFFC0) )
              goto LABEL_269;
            v121 = v346 >> *(_OWORD *)&_mm_cvtsi32_si128(-v118);
LABEL_277:
            v311 = v121;
          }
LABEL_278:
          v5 = v283;
          *(_QWORD *)v17 = v311;
          v17[2] = 19;
          goto LABEL_7;
        }
LABEL_280:
        if ( !sub_100309E0(v120, v17, 16) )
        {
          if ( *(_DWORD *)(v277 + 8) == 3 )
          {
            v330 = *(double *)v277;
            goto LABEL_613;
          }
          if ( sub_100322F0(v277, &v330) )
          {
LABEL_613:
            if ( *(_DWORD *)(v120 + 8) == 3 || sub_100322F0(v120, &v330) )
              sub_100207B0(v120);
          }
          sub_10020770(v120, "perform bitwise operation on");
        }
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x1Au:
        v34 = **(_DWORD ***)(v329 + 4 * v273 + 16);
        v35 = v7 >> 23;
        v299 = **(int ***)(v329 + 4 * v273 + 16);
        if ( (v7 >> 23) & 0x100 )
          v36 = v297 + 16 * (unsigned __int8)v35;
        else
          v36 = v5 + 16 * v35;
        v37 = v7 >> 14;
        v286 = v36;
        if ( v37 & 0x100 )
          v38 = v297 + 16 * (unsigned __int8)v37;
        else
          v38 = v5 + 16 * (v37 & 0x1FF);
        v250 = (_BYTE *)v38;
        if ( v34[2] != 69 )
        {
          sub_10032640(v36, v38, 0);
          v4 = v246;
          v5 = (int)v246[4];
          v283 = (int)v246[4];
          continue;
        }
        v17 = (int *)sub_1002F1B0(*v34, v36);
        if ( !v17[2] )
        {
          sub_10032640(v286, v250, v17);
          v4 = v246;
          v5 = (int)v246[4];
          v283 = (int)v246[4];
          continue;
        }
        if ( v250[8] & 0x40 )
        {
          v39 = *v299;
          if ( *(_BYTE *)(*v299 + 5) & 4 )
          {
            if ( *(_BYTE *)(*(_DWORD *)v250 + 5) & 3 )
            {
              v40 = v296[4];
              *(_BYTE *)(v39 + 5) &= 0xFBu;
              *(_DWORD *)(v39 + 28) = *(_DWORD *)(v40 + 80);
              *(_DWORD *)(v40 + 80) = v39;
            }
          }
        }
        v18 = *(_OWORD *)v250;
        v1 = v296;
LABEL_5:
        v5 = v283;
LABEL_6:
        *(_OWORD *)v17 = v18;
        goto LABEL_7;
      case 0x1Cu:
        v100 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v101 = (int *)(v297 + 16 * (unsigned __int8)v100);
        else
          v101 = (int *)(v5 + 16 * v100);
        v102 = v7 >> 14;
        v275 = v101;
        if ( v102 & 0x100 )
          v103 = (int *)(v297 + 16 * (unsigned __int8)v102);
        else
          v103 = (int *)(v5 + 16 * (v102 & 0x1FF));
        v258 = (int)v103;
        if ( v101[2] == 19 )
        {
          v290 = *v101;
          v336 = *v101;
          v301 = v101[1];
          v337 = v101[1];
        }
        else
        {
          if ( !sub_100323C0(&v336, (int)v101, 0) )
          {
            v106 = v258;
            goto LABEL_230;
          }
          v103 = (int *)v258;
          v301 = v337;
          v290 = v336;
        }
        if ( v103[2] == 19 )
        {
          v104 = *v103;
          v105 = v103[1];
          v338 = *v103;
          v339 = v105;
LABEL_228:
          v17[1] = v301 | v105;
          v5 = v283;
          *v17 = v290 | v104;
          v17[2] = 19;
          goto LABEL_7;
        }
        v106 = v258;
        if ( sub_100323C0(&v338, v258, 0) )
        {
          v105 = v339;
          v104 = v338;
          v1 = v296;
          goto LABEL_228;
        }
LABEL_230:
        if ( !sub_100309E0(v106, v17, 14) )
        {
          if ( v275[2] == 3 )
          {
            v330 = *(double *)v275;
            goto LABEL_601;
          }
          if ( sub_100322F0(v275, &v330) )
          {
LABEL_601:
            if ( *(_DWORD *)(v106 + 8) == 3 || sub_100322F0(v106, &v330) )
              sub_100207B0(v106);
          }
          sub_10020770(v106, "perform bitwise operation on");
        }
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x1Du:
        v43 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v44 = v297 + 16 * (unsigned __int8)v43;
        else
          v44 = v5 + 16 * v43;
        v45 = v7 >> 14;
        v287 = v44;
        if ( v45 & 0x100 )
          v46 = v297 + 16 * (unsigned __int8)v45;
        else
          v46 = v5 + 16 * (v45 & 0x1FF);
        v251 = (_BYTE *)v46;
        if ( v17[2] != 69 )
        {
          sub_10032640(v44, v46, 0);
          v4 = v246;
          v5 = (int)v246[4];
          v283 = (int)v246[4];
          continue;
        }
        v47 = sub_1002F1B0(*v17, v44);
        v317 = v47;
        if ( !*(_DWORD *)(v47 + 8) )
        {
          sub_10032640(v287, v251, v47);
          v4 = v246;
          v5 = (int)v246[4];
          v283 = (int)v246[4];
          continue;
        }
        if ( v251[8] & 0x40 )
        {
          v48 = *v17;
          if ( *(_BYTE *)(*v17 + 5) & 4 )
          {
            if ( *(_BYTE *)(*(_DWORD *)v251 + 5) & 3 )
            {
              v49 = v296[4];
              *(_BYTE *)(v48 + 5) &= 0xFBu;
              *(_DWORD *)(v48 + 28) = *(_DWORD *)(v49 + 80);
              *(_DWORD *)(v49 + 80) = v48;
              v47 = v317;
            }
          }
        }
        v1 = v296;
        *(_OWORD *)v47 = *(_OWORD *)v251;
        v5 = v283;
        goto LABEL_7;
      case 0x1Eu:
        v78 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v79 = v297 + 16 * (unsigned __int8)v78;
        else
          v79 = v5 + 16 * v78;
        v80 = v7 >> 14;
        if ( v80 & 0x100 )
          v81 = v297 + 16 * (unsigned __int8)v80;
        else
          v81 = v5 + 16 * (v80 & 0x1FF);
        v82 = *(_DWORD *)(v79 + 8);
        v255 = v81;
        if ( v82 == 19 )
        {
          if ( *(_DWORD *)(v81 + 8) == 19 )
          {
            v5 = v283;
            *(_QWORD *)v17 = *(_QWORD *)v81 * *(_QWORD *)v79;
            v17[2] = 19;
            goto LABEL_7;
          }
        }
        else if ( v82 == 3 )
        {
          v83 = *(__int64 *)v79;
          v359 = *(_QWORD *)v79;
          goto LABEL_170;
        }
        if ( !sub_100322F0(v79, &v359) )
        {
          v85 = v255;
          goto LABEL_176;
        }
        v83 = v359;
        v81 = v255;
LABEL_170:
        v310 = *(double *)&v83;
        if ( *(_DWORD *)(v81 + 8) == 3 )
        {
          v84 = *(double *)v81;
          v360 = *(double *)v81;
LABEL_174:
          v5 = v283;
          v17[2] = 3;
          *(double *)v17 = v84 * v310;
          goto LABEL_7;
        }
        v85 = v255;
        if ( sub_100322F0(v255, &v360) )
        {
          v84 = v360;
          v1 = v296;
          goto LABEL_174;
        }
LABEL_176:
        if ( !sub_100309E0(v85, v17, 8) )
          sub_10020770(v85, "perform arithmetic on");
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x1Fu:
        v318 = v7 >> 23;
        v252 = (v7 >> 14) & 0x1FF;
        v50 = sub_1002EDF0(v1);
        v51 = v318;
        v52 = v252;
        *v17 = v50;
        v17[2] = 69;
        if ( v318 || v252 )
        {
          if ( v252 >= 8 )
            v52 = ((v252 & 7) + 8) << ((v252 >> 3) - 1);
          if ( v318 >= 8 )
            v51 = ((v318 & 7) + 8) << (((signed int)v318 >> 3) - 1);
          v53 = v52;
          v1 = v296;
          sub_1002E9C0(v51, v53);
        }
        else
        {
          v1 = v296;
        }
        goto LABEL_105;
      case 0x20u:
        v165 = v7;
        v166 = (v7 >> 14) & 0x1FF;
        v165 >>= 23;
        v296[3] = v5 + 16 * (v166 + 1);
        sub_10032F80(v296, v166 - v165 + 1);
        v165 *= 2;
        v5 = (int)v246[4];
        v167 = v5 + v285 * 4;
        v168 = *(_OWORD *)(v5 + 8 * v165);
        v169 = v5 + 8 * v165;
        v283 = (int)v246[4];
        v1 = v296;
        *(_OWORD *)(v5 + v285 * 4) = v168;
        v312 = v169;
        if ( *(_DWORD *)(v296[4] + 12) > 0 )
        {
          v170 = v167 + 16;
          if ( v167 < v312 )
            v170 = v312;
          v296[3] = v170;
          sub_10023AD0(v296);
          v296[3] = v246[1];
          v5 = (int)v246[4];
          v283 = (int)v246[4];
        }
        v296[3] = v246[1];
        goto LABEL_7;
      case 0x21u:
        v220 = v17 + 12;
        v220[2] = *((_OWORD *)v17 + 2);
        v220[1] = *((_OWORD *)v17 + 1);
        *v220 = *(_OWORD *)v17;
        v1[3] = v17 + 24;
        v1 = v296;
        luaD_call_sub_10021320((int (__cdecl **)(int))v17 + 12, (int)v296, (v247 >> 14) & 0x1FF);
        v5 = (int)v246[4];
        v296[3] = v246[1];
        v221 = v246[5];
        v283 = v5;
        v7 = *v221;
        v246[5] = v221 + 1;
        v17 = (int *)(v5 + 16 * (unsigned __int8)(v7 >> 6));
LABEL_534:
        if ( v17[6] )
        {
          *(_OWORD *)v17 = *((_OWORD *)v17 + 1);
LABEL_420:
          v246[5] += (v7 >> 14) - 0x1FFFF;
        }
        goto LABEL_7;
      case 0x22u:
      case 0x28u:
      case 0x29u:
      case 0x3Cu:
        v18 = *(_OWORD *)(v297 + 16 * (v7 >> 14));
        goto LABEL_6;
      case 0x23u:
      case 0x37u:
      case 0x39u:
      case 0x3Du:
        v191 = v7 >> 23;
        v192 = ((v7 >> 14) & 0x1FF) - 1;
        v268 = v192;
        if ( v191 )
          v1[3] = &v17[4 * v191];
        if ( !luaD_precall_10020FE0((int (__cdecl **)(int))v17, (int)v1, v192) )
        {
          v2 = (int **)v1[5];
          goto LABEL_2;
        }
        v1 = v296;
        if ( v268 < 0 )
        {
LABEL_52:
          v4 = v246;
          v5 = (int)v246[4];
          v283 = (int)v246[4];
        }
        else
        {
          v296[3] = v246[1];
          v4 = v246;
          v5 = (int)v246[4];
          v283 = (int)v246[4];
        }
        continue;
      case 0x24u:
        v140 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v141 = v297 + 16 * (unsigned __int8)v140;
        else
          v141 = v5 + 16 * v140;
        v142 = v7 >> 14;
        if ( v142 & 0x100 )
          v143 = (_DWORD *)(v297 + 16 * (unsigned __int8)v142);
        else
          v143 = (_DWORD *)(v5 + 16 * (v142 & 0x1FF));
        v264 = v143;
        if ( *(_DWORD *)(v141 + 8) != 19 )
        {
          if ( *(_DWORD *)(v141 + 8) == 3 )
          {
            v146 = *(double *)v141;
            v364 = *(double *)v141;
            goto LABEL_365;
          }
LABEL_363:
          if ( sub_100322F0(v141, &v364) )
          {
            v146 = v364;
            v143 = v264;
LABEL_365:
            if ( v143[2] == 3 )
            {
              v147 = *(double *)v143;
              v365 = *(double *)v143;
LABEL_369:
              v149 = floor(v146 / v147);
              v5 = v283;
              *(double *)v17 = v149;
              v17[2] = 3;
              goto LABEL_7;
            }
            v148 = v264;
            if ( sub_100322F0(v264, &v365) )
            {
              v147 = v365;
              v1 = v296;
              goto LABEL_369;
            }
          }
          else
          {
            v148 = v264;
          }
          if ( !sub_100309E0(v148, v17, 12) )
            sub_10020770(v148, "perform arithmetic on");
          v4 = v246;
          v1 = v296;
          v5 = (int)v246[4];
          v283 = (int)v246[4];
          continue;
        }
        if ( v143[2] != 19 )
          goto LABEL_363;
        v293 = *(_DWORD *)(v141 + 4);
        v319 = *v143;
        v326 = *(_DWORD *)v141;
        v304 = v143[1];
        v1 = v296;
        if ( __CFADD__(*v143, 1) + v304 || (unsigned int)(*v143 + 1) > 1 )
        {
          v281 = (signed __int64)__PAIR__(v293, v326) / (signed __int64)__PAIR__(v304, v319);
          LODWORD(v331) = (signed __int64)__PAIR__(v293, v326) % (signed __int64)__PAIR__(v304, v319);
          if ( (((v293 ^ v304) & 0x80000000) != 0 || v293 == v304) && ((v293 ^ v304) & 0x80000000) != 0 )
          {
            v144 = (signed __int64)__PAIR__(v293, v326) / (signed __int64)__PAIR__(v304, v319);
            v145 = (unsigned __int64)((signed __int64)__PAIR__(v293, v326) / (signed __int64)__PAIR__(v304, v319)) >> 32;
            if ( ((unsigned __int64)((signed __int64)__PAIR__(v293, v326) % (signed __int64)__PAIR__(v304, v319)) >> 32) | LODWORD(v331) )
            {
              v5 = v283;
              *v17 = v281 - 1;
              v17[2] = 19;
              v17[1] = (v281 != 0)
                     + ((unsigned __int64)((signed __int64)__PAIR__(v293, v326) / (signed __int64)__PAIR__(v304, v319)) >> 32)
                     - 1;
              goto LABEL_7;
            }
          }
          else
          {
            v145 = (unsigned __int64)((signed __int64)__PAIR__(v293, v326) / (signed __int64)__PAIR__(v304, v319)) >> 32;
            v144 = (signed __int64)__PAIR__(v293, v326) / (signed __int64)__PAIR__(v304, v319);
          }
          v5 = v283;
          *v17 = v144;
          v17[1] = v145;
          v17[2] = 19;
        }
        else
        {
          if ( !(v304 | v319) )
            sub_100209F0(v296, "attempt to divide by zero");
          *v17 = -v326;
          v17[2] = 19;
          v17[1] = (unsigned __int64)-(signed __int64)__PAIR__(v293, v326) >> 32;
        }
        goto LABEL_7;
      case 0x26u:
        v178 = v7 >> 14;
        if ( (v7 >> 14) & 0x100 )
          v179 = (_DWORD *)(v297 + 16 * (unsigned __int8)v178);
        else
          v179 = (_DWORD *)(v5 + 16 * ((v7 >> 14) & 0x1FF));
        v180 = v7 >> 23;
        if ( v180 & 0x100 )
          LOBYTE(v175) = sub_10032A20((_DWORD *)(v297 + 16 * (unsigned __int8)v180), (int)v1, v179);
        else
          LOBYTE(v175) = sub_10032A20((_DWORD *)(v5 + 16 * v180), (int)v1, v179);
        goto LABEL_428;
      case 0x27u:
        v193 = v7 >> 23;
        if ( v193 )
          v1[3] = &v17[4 * v193];
        if ( luaD_precall_10020FE0((int (__cdecl **)(int))v17, (int)v1, -1) )
          goto LABEL_52;
        v327 = (_DWORD *)v1[5];
        v2 = (int **)v327[2];
        v194 = (_OWORD *)*v327;
        v246 = v2;
        v294 = (_OWORD *)*v327;
        v305 = *v2;
        v320 = v327[4] + 16 * *(unsigned __int8 *)(*(_DWORD *)(*(_DWORD *)*v327 + 12) + 6);
        if ( *(_DWORD *)(*(_DWORD *)(v329 + 12) + 28) > 0 )
        {
          sub_100222A0(v1, v2[4]);
          v2 = v246;
        }
        v195 = 0;
        if ( (unsigned int)v194 < v320 )
        {
          v196 = 0;
          do
          {
            ++v195;
            *(_OWORD *)&v305[v196] = *v194;
            v196 = 4 * v195;
            v194 = &v294[v195];
          }
          while ( (unsigned int)v194 < v320 );
          v1 = v296;
          v2 = v246;
          v194 = v294;
        }
        v2[4] = (int *)((char *)v305 + ((v327[4] - (_DWORD)v194) & 0xFFFFFFF0));
        v197 = (unsigned int)v305 + ((v1[3] - (_DWORD)v194) & 0xFFFFFFF0);
        v1[3] = v197;
        v2[1] = (int *)v197;
        v198 = (int *)v327[5];
        *((_WORD *)v2 + 17) |= 0x20u;
        v2[5] = v198;
        v1[5] = v2;
        goto LABEL_3;
      case 0x2Au:
        v188 = (_DWORD *)(v5 + 16 * (v7 >> 23));
        v8 = (v7 & 0x7FC000) == 0;
        v189 = v188[2];
        if ( v8 )
        {
          if ( v189 )
          {
            if ( v189 != 1 )
              goto LABEL_454;
            if ( *v188 )
            {
              v4 = v246;
              ++v4[5];
              continue;
            }
          }
        }
        else if ( !v189 || v189 == 1 && !*v188 )
        {
          goto LABEL_454;
        }
        *(_OWORD *)v17 = *(_OWORD *)v188;
        v184 = v246;
        v185 = *v246[5];
        v190 = (unsigned __int8)((unsigned int)*v246[5] >> 6);
        LODWORD(v331) = *v246[5];
        if ( !v190 )
          goto LABEL_450;
        v187 = 4 * v190;
        goto LABEL_449;
      case 0x2Bu:
        v93 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v94 = (int *)(v297 + 16 * (unsigned __int8)v93);
        else
          v94 = (int *)(v5 + 16 * v93);
        v95 = v7 >> 14;
        v274 = v94;
        if ( v95 & 0x100 )
          v96 = (int *)(v297 + 16 * (unsigned __int8)v95);
        else
          v96 = (int *)(v5 + 16 * (v95 & 0x1FF));
        v257 = (int)v96;
        if ( v94[2] == 19 )
        {
          v289 = *v94;
          v352 = *v94;
          v300 = v94[1];
          v353 = v94[1];
        }
        else
        {
          if ( !sub_100323C0(&v352, (int)v94, 0) )
          {
            v99 = v257;
            goto LABEL_212;
          }
          v96 = (int *)v257;
          v300 = v353;
          v289 = v352;
        }
        if ( v96[2] == 19 )
        {
          v97 = *v96;
          v98 = v96[1];
          v334 = *v96;
          v335 = v98;
          goto LABEL_210;
        }
        v99 = v257;
        if ( sub_100323C0(&v334, v257, 0) )
        {
          v98 = v335;
          v97 = v334;
          v1 = v296;
LABEL_210:
          v17[1] = v300 & v98;
          v5 = v283;
          *v17 = v289 & v97;
          v17[2] = 19;
LABEL_7:
          v4 = v246;
          continue;
        }
LABEL_212:
        if ( !sub_100309E0(v99, v17, 13) )
        {
          if ( v274[2] == 3 )
          {
            v330 = *(double *)v274;
            goto LABEL_595;
          }
          if ( sub_100322F0(v274, &v330) )
          {
LABEL_595:
            if ( *(_DWORD *)(v99 + 8) == 3 || sub_100322F0(v99, &v330) )
              sub_100207B0(v99);
          }
          sub_10020770(v99, "perform bitwise operation on");
        }
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x2Cu:
        if ( v17[2] == 19 )
        {
          v199 = v17[9];
          v200 = *(_QWORD *)v17 + *((_QWORD *)v17 + 4);
          v1 = v296;
          if ( v199 < 0 || v199 <= 0 && !v17[8] )
          {
            if ( *((_QWORD *)v17 + 2) > v200 )
              goto LABEL_7;
LABEL_489:
            v246[5] += (v7 >> 14) - 0x1FFFF;
            *(_QWORD *)v17 = v200;
            *((_QWORD *)v17 + 6) = v200;
            v17[14] = 19;
            goto LABEL_7;
          }
          v201 = v17[5];
          if ( SHIDWORD(v200) < v201 || SHIDWORD(v200) <= v201 && (unsigned int)v200 <= v17[4] )
            goto LABEL_489;
        }
        else
        {
          v202 = 0;
          v203 = *((double *)v17 + 2);
          v204 = *((double *)v17 + 4) + *(double *)v17;
          if ( *((double *)v17 + 4) <= 0.0 )
            v205 = v204 < v203;
          else
            v205 = v203 < v204;
          LOBYTE(v202) = !v205;
          if ( v202 )
          {
            v246[5] += (v7 >> 14) - 0x1FFFF;
            *(double *)v17 = v204;
            *((double *)v17 + 6) = v204;
            v17[14] = 3;
          }
        }
        goto LABEL_7;
      case 0x2Du:
        v107 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v108 = (int *)(v297 + 16 * (unsigned __int8)v107);
        else
          v108 = (int *)(v5 + 16 * v107);
        v109 = v7 >> 14;
        v276 = v108;
        if ( v109 & 0x100 )
          v110 = (int *)(v297 + 16 * (unsigned __int8)v109);
        else
          v110 = (int *)(v5 + 16 * (v109 & 0x1FF));
        v259 = (int)v110;
        if ( v108[2] == 19 )
        {
          v291 = *v108;
          v340 = *v108;
          v302 = v108[1];
          v341 = v108[1];
        }
        else
        {
          if ( !sub_100323C0(&v340, (int)v108, 0) )
          {
            v113 = v259;
            goto LABEL_248;
          }
          v110 = (int *)v259;
          v302 = v341;
          v291 = v340;
        }
        if ( v110[2] == 19 )
        {
          v111 = *v110;
          v112 = v110[1];
          v342 = *v110;
          v343 = v112;
LABEL_246:
          v17[1] = v302 ^ v112;
          v5 = v283;
          *v17 = v291 ^ v111;
          v17[2] = 19;
          goto LABEL_7;
        }
        v113 = v259;
        if ( sub_100323C0(&v342, v259, 0) )
        {
          v112 = v343;
          v111 = v342;
          v1 = v296;
          goto LABEL_246;
        }
LABEL_248:
        if ( !sub_100309E0(v113, v17, 15) )
        {
          if ( v276[2] == 3 )
          {
            v330 = *(double *)v276;
            goto LABEL_607;
          }
          if ( sub_100322F0(v276, &v330) )
          {
LABEL_607:
            if ( *(_DWORD *)(v113 + 8) == 3 || sub_100322F0(v113, &v330) )
              sub_100207B0(v113);
          }
          sub_10020770(v113, "perform bitwise operation on");
        }
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x2Eu:
        v230 = *(_DWORD **)(*(_DWORD *)(*(_DWORD *)(v329 + 12) + 52) + 4 * (v7 >> 14));
        v328 = v230;
        v306 = v230[17];
        if ( !v306 )
          goto LABEL_565;
        v231 = v230[16];
        v323 = 0;
        if ( v230[3] <= 0 )
          goto LABEL_563;
        v232 = (_DWORD **)(v306 + 16);
        v233 = (unsigned __int8 *)(v231 + 5);
        v295 = v306 + 16;
        while ( 1 )
        {
          if ( *(v233 - 1) )
          {
            v234 = v283 + 16 * *v233;
          }
          else
          {
            v234 = **(_DWORD **)(v329 + 4 * *v233 + 16);
            v232 = (_DWORD **)v295;
          }
          if ( **v232 != v234 )
            break;
          v233 += 8;
          v232 = (_DWORD **)(v295 + 4);
          ++v323;
          v1 = v296;
          v295 += 4;
          if ( v323 >= v328[3] )
          {
LABEL_563:
            *v17 = v306;
            v17[2] = 70;
            goto LABEL_105;
          }
        }
        v5 = v283;
LABEL_565:
        sub_10033370(v329 + 16, v5, v17);
LABEL_105:
        v5 = v283;
        if ( *(_DWORD *)(v1[4] + 12) <= 0 )
          goto LABEL_7;
        v1[3] = v17 + 4;
        sub_10023AD0(v1);
        v1[3] = v246[1];
        v4 = v246;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x2Fu:
        v69 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v70 = v297 + 16 * (unsigned __int8)v69;
        else
          v70 = v5 + 16 * v69;
        v71 = v7 >> 14;
        if ( v71 & 0x100 )
          v72 = v297 + 16 * (unsigned __int8)v71;
        else
          v72 = v5 + 16 * (v71 & 0x1FF);
        v73 = *(_DWORD *)(v70 + 8);
        v254 = v72;
        if ( v73 == 19 )
        {
          if ( *(_DWORD *)(v72 + 8) == 19 )
          {
            v74 = *(_QWORD *)v70 - *(_QWORD *)v72;
            *v17 = v74;
            v5 = v283;
            v17[1] = HIDWORD(v74);
            v17[2] = 19;
            goto LABEL_7;
          }
        }
        else if ( v73 == 3 )
        {
          v75 = *(double *)v70;
          v357 = *(double *)v70;
          goto LABEL_149;
        }
        if ( !sub_100322F0(v70, &v357) )
        {
          v77 = v254;
          goto LABEL_155;
        }
        v75 = v357;
        v72 = v254;
LABEL_149:
        if ( *(_DWORD *)(v72 + 8) == 3 )
        {
          v76 = *(double *)v72;
          v358 = *(double *)v72;
LABEL_153:
          v5 = v283;
          v17[2] = 3;
          *(double *)v17 = v75 - v76;
          goto LABEL_7;
        }
        v77 = v254;
        if ( sub_100322F0(v254, &v358) )
        {
          v76 = v358;
          v1 = v296;
          goto LABEL_153;
        }
LABEL_155:
        if ( !sub_100309E0(v77, v17, 7) )
          sub_10020770(v77, "perform arithmetic on");
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x30u:
        v171 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v172 = (_DWORD *)(v297 + 16 * (unsigned __int8)v171);
        else
          v172 = (_DWORD *)(v5 + 16 * v171);
        v173 = v7 >> 14;
        if ( v173 & 0x100 )
          v174 = (_DWORD *)(v297 + 16 * (unsigned __int8)v173);
        else
          v174 = (_DWORD *)(v5 + 16 * (v173 & 0x1FF));
        v175 = sub_10032CE0(v172, (int)v1, v174);
        goto LABEL_428;
      case 0x31u:
        v60 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v61 = v297 + 16 * (unsigned __int8)v60;
        else
          v61 = v5 + 16 * v60;
        v62 = v7 >> 14;
        if ( v62 & 0x100 )
          v63 = v297 + 16 * (unsigned __int8)v62;
        else
          v63 = v5 + 16 * (v62 & 0x1FF);
        v64 = *(_DWORD *)(v61 + 8);
        v253 = v63;
        if ( v64 == 19 )
        {
          if ( *(_DWORD *)(v63 + 8) == 19 )
          {
            v65 = *(_QWORD *)v61 + *(_QWORD *)v63;
            *v17 = v65;
            v5 = v283;
            v17[1] = HIDWORD(v65);
            v17[2] = 19;
            goto LABEL_7;
          }
        }
        else if ( v64 == 3 )
        {
          v66 = *(__int64 *)v61;
          v355 = *(_QWORD *)v61;
          goto LABEL_128;
        }
        if ( !sub_100322F0(v61, &v355) )
        {
          v68 = v253;
          goto LABEL_134;
        }
        v66 = v355;
        v63 = v253;
LABEL_128:
        v309 = *(double *)&v66;
        if ( *(_DWORD *)(v63 + 8) == 3 )
        {
          v67 = *(double *)v63;
          v356 = *(double *)v63;
LABEL_132:
          v5 = v283;
          v17[2] = 3;
          *(double *)v17 = v67 + v309;
          goto LABEL_7;
        }
        v68 = v253;
        if ( sub_100322F0(v253, &v356) )
        {
          v67 = v356;
          v1 = v296;
          goto LABEL_132;
        }
LABEL_134:
        if ( !sub_100309E0(v68, v17, 6) )
          sub_10020770(v68, "perform arithmetic on");
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x32u:
        v206 = (int)(v17 + 4);
        if ( v17[2] != 19 || v17[10] != 19 )
          goto LABEL_519;
        v207 = v17[8];
        v321 = v17[9];
        if ( v17[9] >= 0 )
          v208 = 1;
        else
          v208 = 2;
        if ( sub_100323C0(&v332, (int)(v17 + 4), v208) )
        {
          v212 = v333;
          v211 = v332;
LABEL_512:
          v213 = 0;
          goto LABEL_514;
        }
        v209 = (double *)(v17 + 4);
        if ( v17[6] == 3 )
        {
          v210 = *v209;
          v369 = *v209;
LABEL_505:
          if ( v210 <= 0.0 )
          {
            v211 = 0;
            v212 = 2147483648;
            v332 = 0;
            v333 = 2147483648;
            if ( v321 < 0 )
            {
              v213 = 0;
              goto LABEL_514;
            }
            if ( v321 <= 0 )
            {
              v213 = 1;
              goto LABEL_514;
            }
          }
          else
          {
            v211 = -1;
            v212 = 0x7FFFFFFF;
            v332 = -1;
            v333 = 0x7FFFFFFF;
            if ( v321 >= 0 )
              goto LABEL_512;
          }
          v213 = 1;
LABEL_514:
          if ( v213 )
          {
            v214 = 0;
            v215 = 0;
          }
          else
          {
            v215 = (int (__cdecl *)(int))*v17;
            v214 = v17[1];
          }
          v17[4] = v211;
          v17[5] = v212;
          v17[6] = 19;
          *(_QWORD *)v17 = __PAIR__(v214, (unsigned int)v215) - *((_QWORD *)v17 + 4);
          v17[2] = 19;
          goto LABEL_532;
        }
        if ( sub_100322F0(v209, &v369) )
        {
          v210 = v369;
          goto LABEL_505;
        }
        v206 = (int)(v17 + 4);
LABEL_519:
        if ( *(_DWORD *)(v206 + 8) == 3 )
        {
          v216 = *(_QWORD *)v206;
          v370 = *(_QWORD *)v206;
        }
        else
        {
          if ( !sub_100322F0(v206, &v370) )
            sub_100209F0(v1, "'for' limit must be a number");
          v216 = v370;
          v206 = (int)(v17 + 4);
        }
        *(_QWORD *)v206 = v216;
        *(_DWORD *)(v206 + 8) = 3;
        v217 = (int)(v17 + 8);
        if ( v17[10] == 3 )
        {
          v218 = *(__int64 *)v217;
          v371 = *(_QWORD *)v217;
        }
        else
        {
          if ( !sub_100322F0(v17 + 8, &v371) )
            sub_100209F0(v1, "'for' step must be a number");
          v218 = v371;
          v217 = (int)(v17 + 8);
        }
        *(double *)v217 = *(double *)&v218;
        *(_DWORD *)(v217 + 8) = 3;
        v314 = *(double *)&v218;
        if ( v17[2] == 3 )
        {
          v219 = *(double *)v17;
          v330 = *(double *)v17;
        }
        else
        {
          if ( !sub_100322F0(v17, &v330) )
            sub_100209F0(v1, "'for' initial value must be a number");
          v219 = v330;
        }
        v17[2] = 3;
        *(double *)v17 = v219 - v314;
LABEL_532:
        v1 = v296;
        v246[5] += (v247 >> 14) - 0x1FFFF;
        v5 = v283;
        goto LABEL_7;
      case 0x33u:
        v160 = (int *)(v5 + 16 * (v7 >> 23));
        v267 = v160;
        if ( v160[2] == 19 )
        {
          v161 = *v160;
          v162 = v160[1];
          v350 = v161;
          v351 = v162;
LABEL_404:
          v17[2] = 19;
          *v17 = ~v161;
          v17[1] = ~v162;
          goto LABEL_7;
        }
        if ( sub_100323C0(&v350, (int)v160, 0) )
        {
          v162 = v351;
          v161 = v350;
          v1 = v296;
          v5 = v283;
          goto LABEL_404;
        }
        if ( !sub_100309E0(v267, v17, 19) )
        {
          if ( v267[2] == 3 )
          {
            v330 = *(double *)v267;
            goto LABEL_625;
          }
          if ( sub_100322F0(v267, &v330) )
          {
LABEL_625:
            if ( v267[2] == 3 || sub_100322F0(v267, &v330) )
              sub_100207B0(v267);
          }
          sub_10020770(v267, "perform bitwise operation on");
        }
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x34u:
        sub_10033250(v5 + 16 * (v7 >> 23));
        v4 = v246;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x35u:
        v181 = v7 >> 14;
        if ( (v7 >> 14) & 0x100 )
          v182 = v297 + 16 * (unsigned __int8)v181;
        else
          v182 = v5 + 16 * ((v7 >> 14) & 0x1FF);
        v175 = sub_10032B50(v182);
LABEL_428:
        if ( v175 == v273 )
        {
          v176 = *v246[5];
          v177 = (unsigned int)*v246[5] >> 6;
          v313 = *v246[5];
          if ( (_BYTE)v177 )
          {
            sub_100222A0(v1, &v246[4][4 * (unsigned __int8)v177 - 4]);
            v176 = v313;
          }
          v246[5] += (v176 >> 14) - 131070;
          v4 = v246;
          v5 = (int)v246[4];
          v283 = (int)v246[4];
        }
        else
        {
          v4 = v246;
          ++v4[5];
          v5 = (int)v246[4];
          v283 = (int)v246[4];
        }
        continue;
      case 0x38u:
        v183 = v17[2];
        if ( v7 & 0x7FC000 )
        {
          if ( !v183 || v183 == 1 && !*v17 )
            goto LABEL_454;
        }
        else if ( v183 && (v183 != 1 || *v17) )
        {
LABEL_454:
          v4 = v246;
          ++v4[5];
          continue;
        }
        v184 = v246;
        v185 = *v246[5];
        v186 = (unsigned __int8)((unsigned int)*v246[5] >> 6);
        LODWORD(v331) = *v246[5];
        if ( v186 )
        {
          v187 = 4 * v186;
LABEL_449:
          sub_100222A0(v1, &v184[4][v187 - 4]);
          v5 = v283;
          v185 = LODWORD(v331);
        }
LABEL_450:
        v184[5] += (v185 >> 14) - 131070;
        goto LABEL_7;
      case 0x3Au:
        v150 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v151 = v297 + 16 * (unsigned __int8)v150;
        else
          v151 = v5 + 16 * v150;
        v152 = v7 >> 14;
        if ( v152 & 0x100 )
          v153 = v297 + 16 * (unsigned __int8)v152;
        else
          v153 = v5 + 16 * (v152 & 0x1FF);
        v265 = v153;
        if ( *(_DWORD *)(v151 + 8) == 3 )
        {
          v154 = *(_QWORD *)v151;
          v366 = *(_QWORD *)v151;
        }
        else
        {
          if ( !sub_100322F0(v151, &v366) )
          {
            v155 = v265;
            goto LABEL_389;
          }
          v154 = v366;
          v153 = v265;
        }
        if ( *(_DWORD *)(v153 + 8) == 3 )
        {
          v367 = *(_QWORD *)v153;
LABEL_387:
          _libm_sse2_pow_precise();
          v5 = v283;
          *(_QWORD *)v17 = v154;
          v17[2] = 3;
          goto LABEL_7;
        }
        v155 = v265;
        if ( sub_100322F0(v265, &v367) )
        {
          v1 = v296;
          goto LABEL_387;
        }
LABEL_389:
        if ( !sub_100309E0(v155, v17, 10) )
          sub_10020770(v155, "perform arithmetic on");
        v4 = v246;
        v1 = v296;
        v5 = (int)v246[4];
        v283 = (int)v246[4];
        continue;
      case 0x3Bu:
        v17[2] = 1;
        *v17 = v7 >> 23;
        v4 = v246;
        if ( v7 & 0x7FC000 )
          ++v246[5];
        continue;
      case 0x3Eu:
        v19 = v246[5];
        v20 = (__int128 *)(v297 + 16 * ((unsigned int)*v19 >> 6));
        v246[5] = v19 + 1;
        v18 = *v20;
        goto LABEL_5;
      case 0x3Fu:
        v123 = v7 >> 23;
        if ( (v7 >> 23) & 0x100 )
          v124 = v297 + 16 * (unsigned __int8)v123;
        else
          v124 = v5 + 16 * v123;
        v125 = v7 >> 14;
        v278 = v124;
        if ( v125 & 0x100 )
          v126 = (int *)(v297 + 16 * (unsigned __int8)v125);
        else
          v126 = (int *)(v5 + 16 * (v125 & 0x1FF));
        v261 = (int)v126;
        if ( *(_DWORD *)(v124 + 8) == 19 )
        {
          v349 = *(_QWORD *)v124;
        }
        else
        {
          if ( !sub_100323C0(&v349, v124, 0) )
          {
            v129 = v261;
LABEL_309:
            if ( !sub_100309E0(v129, v17, 17) )
            {
              if ( *(_DWORD *)(v278 + 8) == 3 )
              {
                v330 = *(double *)v278;
                goto LABEL_619;
              }
              if ( sub_100322F0(v278, &v330) )
              {
LABEL_619:
                if ( *(_DWORD *)(v129 + 8) == 3 || sub_100322F0(v129, &v330) )
                  sub_100207B0(v129);
              }
              sub_10020770(v129, "perform bitwise operation on");
            }
            v4 = v246;
            v1 = v296;
            v5 = (int)v246[4];
            v283 = (int)v246[4];
            continue;
          }
          v126 = (int *)v261;
        }
        if ( v126[2] == 19 )
        {
          v127 = *v126;
          v128 = v126[1];
          v347 = *v126;
          v348 = v128;
        }
        else
        {
          v129 = v261;
          if ( !sub_100323C0(&v347, v261, 0) )
            goto LABEL_309;
          v128 = v348;
          v127 = v347;
          v1 = v296;
        }
        v118 = -v127;
        v130 = (unsigned __int64)-__PAIR__(v128, v118) >> 32;
        if ( v130 > 0 )
          goto LABEL_269;
        if ( v130 < 0 )
        {
          if ( v130 <= -1 )
          {
            if ( v130 < -1 )
              goto LABEL_269;
            if ( v118 <= 0xFFFFFFC0 )
            {
              v311 = 0i64;
              goto LABEL_278;
            }
          }
          v121 = v349 >> *(_OWORD *)&_mm_cvtsi32_si128(-v118);
          goto LABEL_277;
        }
        if ( v130 >= 0 )
        {
          if ( v130 > 0 )
            goto LABEL_269;
          if ( v118 >= 0x40 )
          {
            v311 = 0i64;
            goto LABEL_278;
          }
        }
        v122 = v349;
        goto LABEL_276;
      default:
        goto LABEL_7;
    }
  }
}