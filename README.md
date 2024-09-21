# CIS Benchmark Docs and Controls Generator For Steampipe

This is an utility tool to generate docs and controls for steampipe dashboard.
This tool is an effort to reduce the manual effort in creating, updating and validating docs and controls.

**NOTE**:
- This tool is still in development and may not work as expected.
- This tool is tested with CIS Microsoft Azure Foundations Benchmark v3.0.0 - XLSX
- This tool requires one to have the CIS Secure Suite Membership to download the CIS benchmarks in XLSX format.

## Prerequisites

- Python 3.9 or higher

## Installation

```bash
git clone --depth=1 https://github.com/subho57/cis-benchmark-docs-and-controls-generator.git
cd cis-benchmark-docs-and-controls-generator
make install
```

## Usage

Download the latest CIS benchmark in XLSX format from [https://workbench.cisecurity.org/files](https://workbench.cisecurity.org/files)
For example, download the latest CIS Microsoft Azure Foundations Benchmark v3.0.0 - XLSX from [https://workbench.cisecurity.org/files/5568/download](https://workbench.cisecurity.org/files/5568/download)

```bash
python3 generate.py --benchmark <path_to_cis_benchmark_xlsx_file> --docs --controls --output <output_directory>
```

## Testing

```bash
make test
```

## Dry Run

```bash
make dry-run
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Known Issues

- It does not add `bash` to all code blocks. It is recommended to manually add `bash` to all code blocks.
- 