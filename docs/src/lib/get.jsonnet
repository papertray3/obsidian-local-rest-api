{
  parameters: [],
  responses: {
    '200': {
      description: 'Success',
      content: {
        'text/markdown': {
          schema: {
            type: 'string',
            example: '# This is my document\n\nsomething else here\n',
          },
        },
        'application/vnd.olrapi.note+json': {
          schema: {
            '$ref': '#/components/schemas/NoteJson',
          },
        },
        'application/vnd.olrapi.note+html': {
          schema: {
            type: 'string',
            description: 'Rendered HTML content from the markdown file',
            example: '<h1>This is my document</h1>\n<p>something else here</p>\n',
          },
        },
      },
    },
    '404': {
      description: 'File does not exist',
    },
  },
}
