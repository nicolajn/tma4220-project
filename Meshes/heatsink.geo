// Gmsh project created on Wed Oct 26 12:42:13 2016
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {1, 0, 0, 1.0};
//+
Point(3) = {1, 1, 0, 1.0};
//+
Point(4) = {0, 1, 0, 1.0};
//+
Line(1) = {4, 1};
//+
Line(2) = {2, 3};
//+
Line(3) = {4, 3};
//+
Line(4) = {2, 1};
//+
Line Loop(5) = {1, -4, 2, -3};
//+
Plane Surface(6) = {5};
//+
Extrude {0, 0, 0.05} {
  Surface{6};
}
//+
Delete {
  Volume{1};
}
//+
Delete {
  Surface{28, 27, 23, 19, 15};
}
//+
Delete {
  Line{9, 11};
}
//+
Point(15) = {0.15, 0, 0.05, 1.0};
//+
Point(16) = {0.25, 0, 0.05, 1.0};
//+
Point(17) = {0.45, 0, 0.05, 1.0};
//+
Point(18) = {0.55, 0, 0.05, 1.0};
//+
Point(19) = {0.75, 0, 0.05, 1.0};
//+
Point(20) = {0.85, 0, 0.05, 1.0};
//+
Point(21) = {0.85, 1, 0.05, 1.0};
//+
Point(22) = {0.75, 1, 0.05, 1.0};
//+
Point(23) = {0.55, 1, 0.05, 1.0};
//+
Point(24) = {0.45, 1, 0.05, 1.0};
//+
Point(25) = {0.25, 1, 0.05, 1.0};
//+
Point(26) = {0.15, 1, 0.05, 1.0};
//+
Line(27) = {5, 26};
//+
Line(28) = {26, 25};
//+
Line(29) = {25, 24};
//+
Line(30) = {24, 23};
//+
Line(31) = {23, 22};
//+
Line(32) = {22, 21};
//+
Line(33) = {21, 14};
//+
Line(34) = {10, 20};
//+
Line(35) = {20, 19};
//+
Line(36) = {19, 18};
//+
Line(37) = {18, 17};
//+
Line(38) = {17, 16};
//+
Line(39) = {16, 15};
//+
Line(40) = {15, 6};
//+
Line(41) = {26, 15};
//+
Line(42) = {16, 25};
//+
Line(43) = {17, 24};
//+
Line(44) = {23, 18};
//+
Line(45) = {22, 19};
//+
Line(46) = {20, 21};
//+
Line Loop(47) = {41, -39, 42, -28};
//+
Plane Surface(48) = {47};
//+
Line Loop(49) = {43, 30, 44, 37};
//+
Plane Surface(50) = {49};
//+
Line Loop(51) = {45, -35, 46, -32};
//+
Plane Surface(52) = {51};
//+
Extrude {0, 0, 1.05} {
  Surface{48, 50, 52};
}
//+
Delete {
  Volume{1, 2, 3};
}
//+
Delete {
  Surface{48, 50, 52};
}
//+
Line Loop(119) = {10, -22, -2, 18};
//+
Plane Surface(120) = {119};
//+
Line Loop(121) = {34, 35, 36, 37, 38, 39, 40, -14, -4, 18};
//+
Plane Surface(122) = {121};
//+
Line Loop(123) = {33, -22, -3, 13, 27, 28, 29, 30, 31, 32};
//+
Plane Surface(124) = {123};
//+
Line Loop(125) = {8, -14, -1, 13};
//+
Plane Surface(126) = {125};
//+
Line Loop(127) = {10, -33, -46, -34};
//+
Plane Surface(128) = {127};
//+
Line Loop(129) = {36, -44, 31, 45};
//+
Plane Surface(130) = {129};
//+
Line Loop(131) = {29, -43, 38, 42};
//+
Plane Surface(132) = {131};
//+
Line Loop(133) = {41, 40, -8, 27};
//+
Plane Surface(134) = {133};
//+
Surface Loop(135) = {122, 128, 120, 124, 6, 126, 134, 61, 65, 69, 132, 83, 87, 91, 130, 105, 109, 113, 117, 118, 95, 96, 73, 74};
//+
Volume(136) = {135};
