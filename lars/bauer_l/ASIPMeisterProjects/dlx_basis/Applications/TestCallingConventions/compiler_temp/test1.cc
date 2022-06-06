#define COSY

int function1(int a, int b) { return a+b; }


int function2(int i1, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
  return i1+i2+i3+i4+i5+i6+i7+i8+i9+i10+i11+i12+i13;
}

int function3(int i1, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, int i28, int i29, int i30, int i31, int i32, int i33) {
  return i1+i2+i3+i4+i5+i6+i7+i8+i9+i10+i11+i12+i13+i14+i15+i16+i17+i18+i19+i20+i21+i22+i23+i24+i25+i26+i27+i28+i29+i30+i31+i32+i33;
}

int g8=0, g9=0, g10=10, g11=11;
static int g12=12, g13=13;

int main() {
  int i3=3, i4=4, i5=5, i6=6, i7=7;
  
  return ( function3(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33) + 
         function1(42, 23) ) * function2(42, 23, i3, i4, i5, i6, i7, g8, g9, g10, g11, g12, g13);
}
