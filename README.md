# Report Format Template for PHYS107&108 Courses at METU

This repository provides a LaTeX template for the PHYS107 and PHYS108 lab courses at Middle East Technical University. It is designed to help students create well-structured and professional-looking lab reports.

## Table of Contents

- [Getting Started](#getting-started)
- [Usage](#usage)
- [File Structure](#file-structure)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

To get started with this template, you can either clone the repository using Git or download the ZIP file.

### Cloning the Repository

```bash
git clone https://github.com/leventkaan/METU-PHYS107-108-Report-Template.git
```

### Downloading the ZIP File

Click on the "<> Code" button and select "Download ZIP".

## Usage

The easiest way to use this template is with [Overleaf](https://www.overleaf.com), an online LaTeX editor that provides all the necessary tools and allows for collaboration.

1. **Sign up or log in to Overleaf.**
2. **Create a new "Blank Project".**
3. **Upload the files from this repository.** Do not upload the ZIP file directly; decompress it first.
4. **Compile the `main.tex` file.** This will generate the report.
5. **Start writing your report!** You can use the `examples.tex` file to see examples of how to use LaTeX.

### Local Development

If you prefer to work locally, you will need to install a LaTeX distribution such as [MiKTeX](https://miktex.org/) for Windows or [TeX Live](https://www.tug.org/texlive/) for Unix-like systems.

## File Structure

Here is the recommended file structure for your lab reports:

```
Experiment_X_Y/
├── images/
├── code/
│   ├── matlab/
│   └── python/
├── output/
├── plot/
├── misc/
└── data/
    ├── xlsx/
    └── csv/
```

- **`images/`**: Store your images and figures in this directory.
- **`code/`**: Keep your scripts (e.g., MATLAB, Python) in this directory.
- **`output/`**: Store the output files of your code, such as `.eps` or `.pdf` files.
- **`plot/`**: Store your plots in this directory.
- **`misc/`**: For any other miscellaneous files.
- **`data/`**: Keep your data files (e.g., `.xlsx`, `.csv`) in this directory.

When using this structure, make sure to update the paths to your figures, bibliography, and other files in your `main.tex` file.

## Contributing

Contributions are welcome! Please read our [Contributing Guidelines](CONTRIBUTING.md) to learn how you can help improve this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
