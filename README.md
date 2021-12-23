# OpenAPI Converter 🚀
Tool to convert Swagger files into HTML, it renders the classic swagger HTML editor.

## How to use
Execute the script `swagger-convert` with the proper configuration flags:

-t: (String) Type (format) of the swagger file (yaml or json).

-o: (String) The output path and file where the converted file should be placed.

-m: (Boolean) Use the `-m` flag when you have splitted your swagger file into multiple files (for example you have different files per responses or payloads), the script will detect the imported files and merge the content into one file.

example:
```bash
swagger-convert -t yaml -o /code/apps/api/templates/pages/documentation/swagger.html.twig -m /code/etc/docs/swagger_api.yaml
```
