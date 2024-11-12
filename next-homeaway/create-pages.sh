#!/bin/bash

# 要建立的頁面名稱列表
pages=("bookings" "checkout" "favorites" "profile" "properties" "rentals" "reviews")

# 目標根目錄
root_dir="app"

# 檢查是否有 app 目錄，若沒有則建立
if [ ! -d "$root_dir" ]; then
  mkdir "$root_dir"
fi

# 函數：將字串首字母大寫
capitalize() {
  echo "$1" | awk '{print toupper(substr($0, 1, 1)) tolower(substr($0, 2))}'
}

# 遍歷每個頁面，建立資料夾與 page.tsx 檔案
for page in "${pages[@]}"; do
  dir="$root_dir/$page"
  file="$dir/page.tsx"
  page_title=$(capitalize "$page")

  # 建立資料夾
  mkdir -p "$dir"

  # 建立 page.tsx 檔案，並寫入範本內容
  cat <<EOF > "$file"
export default function ${page_title}Page() {
  return <h1 className='text-3xl'>${page_title} Page</h1>;
}
EOF

  echo "Created: $file"
done

echo "All pages have been created successfully!"
