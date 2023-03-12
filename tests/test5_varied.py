import unittest
import math
import re

class TestVariety(unittest.TestCase):
   def test1(self):
      self.assertNotAlmostEqual(10.0/3,3)
   def test2(self):
      self.assertGreater(math.pi,3)
   def test3(self):
      self.assertRegexpMatches("Tutorials Pablo (I) Private Limited","Pablo")

if __name__ == '__main__':
   unittest.main()
