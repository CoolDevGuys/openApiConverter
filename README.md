# OpenAPI Converter 🚀
Tool to convert Swagger files into HTML, it renders the classic swagger HTML editor.
It uses a python script from this repository: https://gist.github.com/oseiskar/dbd51a3727fc96dcf5ed189fca491fb3#file-swagger-yaml-to-html-py and the `swagger-cli` from apiDevTools: https://githubhelp.com/APIDevTools/swagger-cli

## How to use
Execute the script `swagger-convert` with the proper configuration flags:

-t: (String) Type (format) of the swagger file (yaml or json).

-o: (String) The output path and file where the converted file should be placed.

-m: (No value) Use the `-m` flag when you have splitted your swagger file into multiple files (for example you have different files per responses or payloads), the script will detect the imported files and merge the content into one file.

-s: (No value) Sometimes we have multiple level $ref files and the default merge strategy does not work, by passing this option the output will be bigger but it will solve the multilevel files problem by importing the $ref as many times as it defined 

example:
```bash
docker run --rm -i --volume $(current-dir)code:/code alexromer0/swagger-to-html swagger-convert -t yaml -o /code/apps/api/templates/pages/documentation/swagger.html.twig -m /code/etc/docs/swagger_api.yaml
```
