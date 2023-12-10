# Part 3 - Integrating previous 2 parts

We decided that it's best to keep 2 passes separated so that our software is more modular and easier to maintain. So to run part3, you just need to pass both passes to `opt`:

> [!NOTE]  
> Please follow through previous 2 parts to get the .so files for each pass.
> Part 1's Makefile also contains convenient commands to install LLVM 17 and setting up the environment.

```bash
# use opt-17 & clang-17 if you come from part 1
opt -load-pass-plugin $PATH_TO_PART1_REPO/build/BranchPointerPass/libBranchPointerPass.so $PATH_TO_PART2_SO_FILE -passes=branch-pointer-pass,$PASS2_NAME inputs/input.ll  # replace with your own .ll file emitted by clang
```