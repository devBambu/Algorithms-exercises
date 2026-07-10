import tempfile
import unittest
from pathlib import Path

from scripts.generate_readme import discover_platforms, render_readme


class GenerateReadmeTests(unittest.TestCase):
    def test_discovers_platforms_in_configured_order(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            self._problem(root, "LeetCode/0001-two-sum")
            self._problem(root, "백준/Bronze/1000.\u2005A+B")
            self._problem(root, "프로그래머스/0/120583.\u2005중복된\u2005숫자\u2005개수")

            platforms = discover_platforms(root)

            self.assertEqual([platform.name for platform in platforms], ["프로그래머스", "백준", "LeetCode"])
            self.assertEqual(platforms[0].groups[0].name, "Level 0")
            self.assertEqual(platforms[1].groups[0].name, "Bronze")
            self.assertEqual(platforms[2].groups[0].name, "Solved")

    def test_render_readme_uses_relative_links_and_summary(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            self._problem(root, "프로그래머스/0/120583.\u2005중복된\u2005숫자\u2005개수")
            self._problem(root, "백준/Bronze/1000.\u2005A+B")
            self._problem(root, "LeetCode/0001-two-sum")

            readme = render_readme(discover_platforms(root))

            self.assertIn("| 프로그래머스 | 1 |", readme)
            self.assertLess(readme.index("## 프로그래머스"), readme.index("## 백준"))
            self.assertLess(readme.index("## 백준"), readme.index("## LeetCode"))
            self.assertIn("[120583. 중복된 숫자 개수](./%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4/0/120583.%E2%80%85%EC%A4%91%EB%B3%B5%EB%90%9C%E2%80%85%EC%88%AB%EC%9E%90%E2%80%85%EA%B0%9C%EC%88%98)", readme)
            self.assertIn("[0001-two-sum](./LeetCode/0001-two-sum)", readme)

    def _problem(self, root, relative_path):
        directory = root / relative_path
        directory.mkdir(parents=True)
        (directory / "README.md").write_text("# problem\n", encoding="utf-8")


if __name__ == "__main__":
    unittest.main()
