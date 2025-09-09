proc iml;
    /* 1. 원본 데이터 정의 (모두 행 벡터로 정의) */
    x1R = {1, 2, 0};
    x2R = {2, 0, 0}; /* x2, x3도 원본임을 명확히 하기 위해 이름 변경 (선택 사항) */
    x3R = {1, 0, 1};

    /* 2. 모든 벡터를 열 벡터로 변환 */
    x1 = t(x1R); /* 3x1 */
    x2 = t(x2R); /* 3x1 */
    x3 = t(x3R); /* 3x1 */

    /* 3. 수평 연결 (Column binding) */
    X = x1 // x2 // x3;

    print X;
quit;

proc iml;
    /* 1. 원본 데이터 정의 */
    x1R = {1, 2, 0}; /* 1x3 */
    x2 = {2, 0, 0};  /* 1x3 */
    x3 = {1, 0, 1};  /* 1x3 */

    /* 2. 수직 연결 (Row binding) */
    /* t(x1R) 대신 x1R 사용 */
    X = x1R || x2 || x3;
	print X;	
    T1 = T(X);
    print T1;	
    T2 = X`;
    print T2;
quit;

