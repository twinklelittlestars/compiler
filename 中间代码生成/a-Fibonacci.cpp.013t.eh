
;; Function main (main, funcdef_no=1731, decl_uid=44205, cgraph_uid=465, symbol_order=495)

int main ()
{
  struct basic_ostream & D.49117;
  struct basic_ostream & D.49116;
  struct basic_ostream & D.49115;
  int n;
  int t;
  int i;
  int b;
  int a;
  int D.49113;

  a = 0;
  b = 1;
  i = 1;
  std::basic_istream<char>::operator>> (&cin, &n);
  D.49115 = std::basic_ostream<char>::operator<< (&cout, a);
  _1 = D.49115;
  std::basic_ostream<char>::operator<< (_1, endl);
  D.49116 = std::basic_ostream<char>::operator<< (&cout, b);
  _2 = D.49116;
  std::basic_ostream<char>::operator<< (_2, endl);
  goto <D.44267>;
  <D.44268>:
  t = b;
  b = b + a;
  D.49117 = std::basic_ostream<char>::operator<< (&cout, b);
  _3 = D.49117;
  std::basic_ostream<char>::operator<< (_3, endl);
  a = t;
  i = i + 1;
  <D.44267>:
  n.0_4 = n;
  if (i < n.0_4) goto <D.44268>; else goto <D.44266>;
  <D.44266>:
  D.49113 = 0;
  goto <D.49119>;
  <D.49119>:
  n = {CLOBBER};
  goto <D.49114>;
  D.49113 = 0;
  goto <D.49114>;
  <D.49114>:
  return D.49113;
  <D.49118>:
  n = {CLOBBER};
  resx 1
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2231, decl_uid=49105, cgraph_uid=965, symbol_order=1022)

void __static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.49121>; else goto <D.49122>;
  <D.49121>:
  if (__priority == 65535) goto <D.49123>; else goto <D.49124>;
  <D.49123>:
  std::ios_base::Init::Init (&__ioinit);
  __cxxabiv1::__cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.49125>;
  <D.49124>:
  <D.49125>:
  goto <D.49126>;
  <D.49122>:
  <D.49126>:
  return;
}



;; Function _GLOBAL__sub_I_main (_GLOBAL__sub_I_main, funcdef_no=2232, decl_uid=49111, cgraph_uid=966, symbol_order=1141)

void _GLOBAL__sub_I_main ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}


