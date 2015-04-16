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
  import std.algorithm, std.range, std.array, std.stdio;
  auto maxLenString   = repeat("ab").take(50).array.join("");
  auto expectedString = repeat("a").take(50).array.join("");
  assert(pickOdd(maxLenString) == expectedString);
}

unittest
{
  assert(pickOdd("12 ") == "1 ");
}
