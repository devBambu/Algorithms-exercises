#!/usr/bin/env python3
from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
from urllib.parse import quote
import re


ROOT = Path(__file__).resolve().parents[1]
PLATFORM_ORDER = ("프로그래머스", "백준", "LeetCode")


@dataclass(frozen=True)
class Problem:
    title: str
    path: Path


@dataclass(frozen=True)
class ProblemGroup:
    name: str
    problems: tuple[Problem, ...]


@dataclass(frozen=True)
class Platform:
    name: str
    groups: tuple[ProblemGroup, ...]

    @property
    def count(self) -> int:
        return sum(len(group.problems) for group in self.groups)


def discover_platforms(root: Path = ROOT) -> tuple[Platform, ...]:
    return tuple(
        platform
        for platform_name in PLATFORM_ORDER
        if (platform := discover_platform(root, platform_name)) is not None
    )


def discover_platform(root: Path, platform_name: str) -> Platform | None:
    platform_path = root / platform_name
    if not platform_path.is_dir():
        return None

    if platform_name == "LeetCode":
        problems = discover_problems(platform_path, root)
        groups = (ProblemGroup("Solved", problems),) if problems else ()
    else:
        groups = tuple(
            ProblemGroup(format_group_name(platform_name, group_path.name), discover_problems(group_path, root))
            for group_path in sorted((path for path in platform_path.iterdir() if path.is_dir()), key=natural_key)
        )
        groups = tuple(group for group in groups if group.problems)

    return Platform(platform_name, groups)


def discover_problems(group_path: Path, root: Path) -> tuple[Problem, ...]:
    problems = []
    for path in sorted((path for path in group_path.iterdir() if path.is_dir()), key=natural_key):
        if (path / "README.md").is_file():
            problems.append(Problem(normalize_title(path.name), path.relative_to(root)))
    return tuple(problems)


def format_group_name(platform_name: str, name: str) -> str:
    if platform_name == "프로그래머스":
        return f"Level {name}"
    return name


def normalize_title(name: str) -> str:
    return re.sub(r"\s+", " ", name).strip()


def natural_key(path_or_text: Path | str) -> list[int | str]:
    text = path_or_text.name if isinstance(path_or_text, Path) else path_or_text
    return [int(part) if part.isdigit() else part for part in re.split(r"(\d+)", text)]


def markdown_link(problem: Problem) -> str:
    encoded_path = quote(problem.path.as_posix(), safe="/.-_")
    return f"[{problem.title}](./{encoded_path})"


def render_readme(platforms: tuple[Platform, ...]) -> str:
    total = sum(platform.count for platform in platforms)
    lines = [
        "# ✏️ 알고리즘 연습하기",
        "코딩 테스트 문제 제공 웹사이트에서 풀이한 문제를 저장합니다.",
        "",
        "> 이 README는 GitHub Actions로 자동 생성됩니다.",
        "",
        "## 풀이 현황",
        "",
        f"총 {total}문제를 풀이했습니다.",
        "",
        "| 플랫폼 | 문제 수 |",
        "| --- | ---: |",
    ]

    for platform in platforms:
        lines.append(f"| {platform.name} | {platform.count} |")

    for platform in platforms:
        lines.extend(["", f"## {platform.name}", ""])
        for group in platform.groups:
            lines.extend([f"### {group.name}", "", "| 문제 |", "| --- |"])
            lines.extend(f"| {markdown_link(problem)} |" for problem in group.problems)
            lines.append("")
        if lines[-1] == "":
            lines.pop()

    return "\n".join(lines) + "\n"


def main() -> None:
    readme = render_readme(discover_platforms(ROOT))
    (ROOT / "README.md").write_text(readme, encoding="utf-8")


if __name__ == "__main__":
    main()
