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
