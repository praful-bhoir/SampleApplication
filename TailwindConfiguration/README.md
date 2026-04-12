# Integrating Tailwind CSS in ASP.NET Web Forms (C#)

This guide explains how to integrate **Tailwind CSS** into an ASP.NET Web Forms application using simple and scalable approaches.

---

## 📌 Prerequisites

- Visual Studio (2019 or later recommended)
- .NET Framework Web Forms project
- Node.js

---

### Step 1: Initialize npm in your project
- npm init -y

check if package.json is created

### Step 2: Install Tailwind CSS
- npm install tailwindcss @tailwindcss/cli

### Step 3: Create input & output CSS file

Folder Structure:
```
Assets
    /css
      └── output.css
/Styles
  └── tailwind.css
```

add bewlow code in input.css file
```css
@import "tailwindcss";
@custom-variant dark (&:where(.dark, .dark *));
```

### Step 4: Add Tailwind CLI build script

in .csproj file add below code
```xml
<Target Name="Tailwind" BeforeTargets="Build;PrepareForPublish">
    <Exec Command="npm install" />
    <Exec Command="npx @tailwindcss/cli -i ./Assets/tailwind/input.css -o ./Assets/tailwind/output.css --minify" />
    <ItemGroup>
      <Content Include="Assets/tailwind/output.css" CopyToPublishDirectory="Always" />
    </ItemGroup>
</Target>
  ```



```html


```


