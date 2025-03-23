- name: Create ZIP file
  run: |
    zip -r app.zip . -x "node_modules/*" ".git/*" ".github/*" "*.md" "scripts/*.sh"
