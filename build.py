# -*- coding: utf-8 -*-

import datetime
import pathlib
import subprocess
import typing

import click


ROOT = pathlib.Path(__file__).parent
DOCUMENTATION_ROOT = ROOT / 'documentation'


@click.command()
@click.option('-o', '--output', type=click.Path(exists=False, dir_okay=True, readable=True, writable=True))
def main(
    output: typing.Optional[str] = None
):
    """
    Builds documentation. Assumes Typst is installed and is available as a CLI tool on PATH as `typst`.
    """

    output_path = pathlib.Path(output or 'output')
    output_path.mkdir(exist_ok=True)

    documentation_files = DOCUMENTATION_ROOT.glob("**/main.typ")

    for documentation_file in documentation_files:
        relative_to_documentation = documentation_file.relative_to(DOCUMENTATION_ROOT)
        relative_to_output = relative_to_documentation.parent.with_suffix(".pdf")
        output_file = output_path / relative_to_output

        print(documentation_file.relative_to(ROOT))
        print("=>", output_file)

        inputs = {
            "compile_time": datetime.datetime.now(datetime.UTC).isoformat()
        }

        typst_inputs: typing.List[str] = []

        for key, value in inputs.items():
            typst_inputs.append('--input')
            typst_inputs.append(f"{key}={value}")

        output_file.parent.mkdir(exist_ok=True, parents=True)

        subprocess.run([
            "typst",
            "compile",
            str(documentation_file),
            str(output_file),
            "--root",
            ".",
            *typst_inputs
        ])


if __name__ == '__main__':
    main()
