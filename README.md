# echo.sh
A Bash script that writes content of files in a directory to `echo.txt`.
This simple script useful for automating interactions with LLM by preparing multiple file contents for input as single file.

## Usage

```bash
./echo.sh
```
or
```bash
./echo.sh [path] [maxdepth]
```

- `path`: Directory to search (default: current directory)
- `maxdepth`: Maximum depth of search (default: 1)

## Output

Writes to `echo.txt`, containing:
- Filename as header
- File contents

## Example

```bash
./echo.sh . 2
```

Searches current directory and immediate subdirectories.

## Notes

- Ensure script is executable: `chmod +x echo.sh`
- Use caution with large directories or files
- Requires Bash and `find` command