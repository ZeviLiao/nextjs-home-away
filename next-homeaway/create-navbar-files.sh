#!/bin/bash

# 目標資料夾
root_dir="components/navbar"

# 檢查是否存在 `components/navbar` 目錄，若沒有則建立
mkdir -p "$root_dir"

# 檔案列表
files=("DarkMode" "LinksDropdown" "Logo" "Navbar" "NavSearch" "SignOutLink" "UserIcon")

# 遍歷每個檔案，建立對應的 .tsx 檔案
for file in "${files[@]}"; do
  file_path="$root_dir/$file.tsx"
  
  # 建立 .tsx 檔案並寫入範本內容
  cat <<EOF > "$file_path"
function ${file}() {
  return (
    <div>${file}</div>
  )
}

export default ${file};
EOF

  echo "Created: $file_path"
done

echo "All navbar components have been created successfully in components/navbar!"
