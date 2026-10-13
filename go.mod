title: La Ferme du Moulin Neuf
baseURL: /

module:
  imports:
    - path: github.com/HugoBlox/kit/modules/blox

security:
  exec:
    allow:
      - '^(dart-)?sass$'
      - '^go$'
      - '^git$'
      - '^node$'
      - '^postcss$'
      - '^tailwindcss$'
  node:
    permissions:
      allowAddons:
        - 'tailwindcss'
      allowChildProcess:
        - 'tailwindcss'
      allowWorker:
        - 'tailwindcss'

build:
  binaries:
    tailwindcss:
      command: tailwindcss
      is_node_script: false
  jsConfig:
    compilerOptions:
      jsx: react-jsx
      jsxImportSource: preact
