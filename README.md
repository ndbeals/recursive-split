# Recursive-Split

A pair of simple bash scripts to aid in easily and recusively splitting all files over a given size within a given directory (split-direcotry) and then later on merging and verifying the split files (unsplit-directory)

## Installation
### Recommended
```
git clone https://github.com/ndbeals/recursive-split.git
cd recursive-split
chmod +x *-directory
sudo cp *-directory /usr/local/bin
```
### Lazy Way
```
curl -s https://raw.githubusercontent.com/ndbeals/recursive-split/master/install.sh | sudo bash
```

---

## split-directory

### Usage
```
split-directory <path-to-directory> [split-size]

```
- \<path-to-directory> is the path to the directory you want to split all files within, this is also where the splitfiles.txt list will be saved.
- [split-size] is the size files will be split up into if files are larger than this size, uses same format as find E.G: 1M, 10G. (OPTIONAL, DEFAULT: 10G)

## unsplit-directory

### Usage
```
unsplit-directory <path-to-directory>
```
- \<path-to-directory> is the path to the directory that contains the splitfiles.txt file.
