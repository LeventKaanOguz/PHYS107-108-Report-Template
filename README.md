# Report Format Template for PHYS107&108 Courses at METU

## Introduction

I started writing my reports in $\LaTeX$ from the very beginning of the PHYS107 course. However, I realized some of my friends were struggling with writing their reports with MS Word, which is the most popular "word" editor of our time. In this repository, you can find a report template, I try to continuously update with the newer report format. 

## How to Use This Repo?

- You can see the happy green button that says `<> Code`, just click on that and either clone the repository using git tool, or download the zip file and decompress it.
- Sign up/in to [Overleaf](overleaf.com), this website provides you necessary $\LaTeX$ tools and also allows you to write reports with friends or collegues. Create a "Blank Project", then upload everything from the downloaded folder, *not from the zip file*, and continue with below steps.
- Check `examples.tex` file to understand basics of $\LaTeX$ with some examples I have created. When it is open at your screen, just click the big green button that says "Compile". You will most probably need all the examples from this file in, almost, every report you are writing.
- If you are finished, remove all files *except* `main.tex`, this file will be your report format template. 
- **If you get stuck with anything, use Google. I am no expert of either LaTeX or report writing. But you are always welcome to create an `Issue` using GitHub --I will create a template for that to simplify the process--.**

- If you want something to change, get added, or removed, create a poll request or send me a mail with your request/inquiry. (My email is [l.kaanoguz@gmail.com](mailto:l.kaanoguz@gmail.com), you can also try to reach me from my [LinkedIn](https://www.linkedin.com/in/leventkaanoguz/))

### Suggested Usage

Now, since you know how to use basics of using $\LaTeX$ and git/GitHub, it is time to recommend a basic structure for your report files. You can use the following file structure to keep your files organized and easily accessible. It is simple, efficient, reproducible, and easy to maintain. You can change `example_filestructure` with your desired name, but my suggestion would be using `Experiment_X_Y` structure with this folder inside your `PHYS107` or `PHYS108` folder. **Do not forget to change the references to figures, bibliography, and other files in your `main.tex` file.**

```bash
example_filestructure/
├── images/
├── code/
├── ├── matlab/
├── output/
├── plot/
├── misc/
├── data/
├── ├── xlsx/
├── ├── csv/
```
- Also, as you can predict, you can create your own folders -- like `python` under `code` folder -- to suit the structure to your needs. 
- You can use this structure for your other projects if not mentioned otherwise. 
- If you are using Overleaf, you can upload the files directly to the website, or you can use the git tool to push your files to the repository. It also allows you to collaborate with your friends or colleagues.
- If you are using git, you can push your files to your repository and clone it to your local machine to work on it. You can also use the git tool to collaborate with your friends or colleagues.
- `output` folder is for the output files of your code, like `.esp`, `.pdf` files.


### General Suggestions for Using $\LaTeX$

- Using [Overleaf](overleaf.com) is the easiest way to start using $\LaTeX$; however, if you insist to use it locally, you should install a $\LaTeX$ distribution like [MiKTeX](https://miktex.org/) for Windows or [TeX Live](https://www.tug.org/texlive/) for Unix-like systems. You can also use [TeXShop](http://pages.uoregon.edu/koch/texshop/) for MacOS --did not tested this one--. Even though installation is quite straightforward, it may take really long, and I also insist on using Overleaf for the first time.
- After you get comfortable with your tools, know how to search Google for your problems, the process is quite straightforward.
- Please consider using [BibTeX](https://www.bibtex.com/) for your references --the template uses it, but you might want to configure it-- , it is a great tool to keep your references organized and easily accessible. You can also use [Zotero](https://www.zotero.org/) to keep your references organized and export them to BibTeX format.
- You can also use [Mendeley](https://www.mendeley.com/) to keep your references organized and export them to BibTeX format.
- Do not try to use the same format in your all projects/reports/papers, it is not a good idea. You can use this template as a starting point and modify it to suit your needs. You can also create your own template from scratch, but it is a bit more challenging.
- You must make use of packages while using $\LaTeX$, or sometimes you want to make your own commands. I will create a blogpost in [my blog](https://leventkaanoguz.com) to explain some of the basic and advanced usage of $\LaTeX$.

## Known Bugs & Acknowledgements
- If you see a line that includes `\setcounter...` remove or comment it out (you can comment a line with using % before the part you want to comment), it is problematic and your references may not work.
- References *MUST* be in `references.bib` file in appropriate format, you can check it from internet (most of the time you can find already existing or transform it)
- Do not forget to add your signature as `image.png` inside of `images` folder and make necessary size adjustments.
- I am too lazy to organize my files, will do that in a later day. 
