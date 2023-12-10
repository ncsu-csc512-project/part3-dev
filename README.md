# Part 3 - Integrating previous 2 parts

## General Project Submission Info

<!-- https://gist.github.com/tddschn/7c81e97b3aa088a999cb1d06639d222c -->

<details>
<summary>Click to expand</summary>

### Project Submission 

Authors:

- Teddy Xinyuan Chen (xchen87) - Part 1 & 3
- Haojie Zhou (hzhou33) - Part 2


### GitHub Links

<!-- The repositories are all private, please email [xchen87@ncsu.edu](mailto:xchen87@ncsu.edu) to request for access. -->

- [https://github.com/ncsu-csc512-project/part1-dev](https://github.com/ncsu-csc512-project/part1-dev/)
- [https://github.com/ncsu-csc512-project/part1-submission](https://github.com/ncsu-csc512-project/part1-submission)
- [https://github.com/ncsu-csc512-project/part2-dev](https://github.com/ncsu-csc512-project/part2-dev)
- [https://github.com/ncsu-csc512-project/part2-submission](https://github.com/ncsu-csc512-project/part2-submission)
- [https://github.com/ncsu-csc512-project/part3-dev](https://github.com/ncsu-csc512-project/part3-dev)
- [https://github.com/ncsu-csc512-project/part3-submission](https://github.com/ncsu-csc512-project/part3-submission)

<!-- Two important rules:

Make sure you have an empty line after the closing </summary> tag, otherwise the markdown/code blocks won't show correctly.
Make sure you have an empty line after the closing </details> tag if you have multiple collapsible sections. -->
</details>

## Running

We decided that it's best to keep 2 passes separated so that our software is more modular and easier to maintain and develop. So to run part3, you just need to pass both passes to `opt`:

> [!NOTE]  
> Please follow through previous [2 parts](https://github.com/ncsu-csc512-project/) to get the .so files for each pass.
> Part 1's Makefile also contains convenient commands to install LLVM 17 and setting up the environment (just run ==`make || make`== on a **clean** VCL machine).

```bash
# don't just copy and run! replace $VARIABLES with your own values
# use opt-17 & clang-17 if you come from part 1
opt -load-pass-plugin $PATH_TO_PART1_REPO/build/BranchPointerPass/libBranchPointerPass.so $PATH_TO_PART2_SO_FILE -passes=branch-pointer-pass,$PASS2_NAME inputs/input.ll  # replace with your own .ll file emitted by clang
```

## Test C programs

They are located in `./tests` directory, all from the [TheAlgorithms/C](https://github.com/TheAlgorithms/C) repository, and are real-world programs, each program is around 700 lines.

Please note that they require C standard of at least C99.

```
tests
├── hash_blake2b.c
├── kohonen_som_topology.c
├── mcnaughton_yamada_thompson.c
└── red_black_tree.c
```