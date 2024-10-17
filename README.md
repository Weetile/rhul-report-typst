# rhul-template-typst

Unofficial report template for reports at Royal Holloway, University of London.

Created by Otto Helen-Goldring and heavily modified from [light-report-uia](https://typst.app/universe/package/light-report-uia/).

## Usage

In the root directory, run the following command:

```bash
typst c --root . ./template/main.typ
```

Alternatively, use the following Docker command:

```bash
docker run --rm -v "$(pwd):/workspace" -w /workspace ghcr.io/typst/typst:latest c --root . ./template/main.typ
```

![image](https://github.com/user-attachments/assets/56876603-1145-4ecd-88b8-cc0ad4cb5dbe)
