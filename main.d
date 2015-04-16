string pickOdd(string origStr)
{
  string oddStr = "";

  foreach (idx, ch; origStr) {
    if (idx % 2 == 0) {
      oddStr ~= ch;
    }
  }

  return oddStr;
}


unittest
{
  assert(pickOdd("") == "");
}


unittest
{
  assert(pickOdd("a") == "a");
}


unittest
{
  assert(pickOdd("ab") == "a");
}

unittest
{
  assert(pickOdd("123456789") == "13579");
}

unittest
{
  assert(pickOdd("12 ") == "1 ");
}
