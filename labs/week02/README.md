# BS0030 Week 2 Lab

**Syntax, BNF/EBNF, parsing, ASTs, and a Tiny Language**

This is the first hands-on programming lab in BS0030. Week 1 concentrated on course orientation, reading, and language comparison.

## Before you start

Use **your fork** of `ValRCS/RBS_BS0030_Programming_Languages`. Your fork is your permanent course repository; the Codespace is a disposable development environment.

1. Fork the public course repository if you have not already done so.
2. Open **your fork** on GitHub.
3. Create a Codespace and choose the **BS0030 Core — Python, C++ and JavaScript** Dev Container configuration.
4. Wait for the Codespace to finish building.

From the repository root, verify the environment:

```bash
bash scripts/check-core-environment.sh
```

## Create your Week 2 work area

The `starter/` directory is instructor-managed. **Do not edit it directly.** Copy the starter files into `work/` once, then make all of your changes there.

From the repository root:

```bash
cp labs/week02/starter/tiny_language.py labs/week02/work/
cp labs/week02/starter/test_tiny_language.py labs/week02/work/
cp labs/week02/grammar-exercises.md labs/week02/work/
cd labs/week02/work
```

If you have already started the lab and the files exist in `work/`, do **not** run the copy commands again.

Check that the Python starter imports:

```bash
python3 -m py_compile tiny_language.py
```

Run only the tokenizer tests first:

```bash
python3 -m unittest -v test_tiny_language.TokenizerTests
```

You should begin with **four passing tokenizer tests**. Parser-dependent tests are intentionally not run yet because the three parser methods still contain `TODO` markers.

## Continue with the lab

Read [`assignment.md`](assignment.md) for the full sequence.

The reference grammar is [`examples/tiny-language.ebnf`](examples/tiny-language.ebnf). Complete the written exercises in your copied file:

```text
labs/week02/work/grammar-exercises.md
```

Your programming work goes in:

```text
labs/week02/work/tiny_language.py
labs/week02/work/test_tiny_language.py
```

When finished, commit the contents of `labs/week02/work/` to **your fork**.

> **Course workflow:** Codespace = disposable laboratory. GitHub fork = permanent course portfolio.
