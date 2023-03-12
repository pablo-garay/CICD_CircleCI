import unittest

def cuboid_volume(l):
    if type(l) not in [int, float]: 
        raise TypeError('Length of cuboid can only be a valid integer/float')
    return (l*l*l)

class TestCuboid(unittest.TestCase):
    def test_volume(self):
        self.assertAlmostEqual(cuboid_volume(2),8)
        self.assertAlmostEqual(cuboid_volume(1),1)

    def test_input_value(self):
        self.assertRaises(TypeError, cuboid_volume, True)

if __name__ == '__main__':
    unittest.main()
