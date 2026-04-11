<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DarkLightMode.aspx.cs" Inherits="TailwindConfiguration.DarkLightMode" %>

<!DOCTYPE html>
<html lang="en" class="">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tailwind Dark Mode</title>
    <link href="Assets/tailwind/output.css" rel="stylesheet" />

    <script>
        // Prevent flicker (apply theme before render)
        if (
            localStorage.getItem('theme') === 'dark' ||
            (!localStorage.getItem('theme') &&
                window.matchMedia('(prefers-color-scheme: dark)').matches)
        ) {
            document.documentElement.classList.add('dark');
        }
    </script>
</head>

<body class="bg-white text-black dark:bg-gray-950 dark:text-white transition">

    <!-- Navbar -->
    <nav class="flex justify-between items-center p-5 bg-gray-100 dark:bg-gray-900 shadow-md">
        <h1 class="text-xl font-bold text-indigo-500">MyApp</h1>

        <div class="flex items-center gap-4">
            <a href="Default.aspx" class="hover:text-indigo-500">Home</a>
            <a href="#" class="hover:text-indigo-500">About</a>

            <!-- Toggle -->
            <button id="themeToggle"
                class="px-3 py-2 rounded-lg bg-gray-200 dark:bg-gray-800 transition hover:scale-110">
                🌙
            </button>
        </div>
    </nav>

    <!-- Hero -->
    <section class="text-center py-20 bg-gradient-to-r from-indigo-500 to-purple-600 text-white">
        <h2 class="text-4xl font-bold mb-4">Dark Mode Ready UI</h2>
        <p class="max-w-xl mx-auto mb-6">
            Toggle between light and dark mode with smooth UI and modern Tailwind styling.
        </p>
        <button class="bg-white text-indigo-600 px-6 py-2 rounded-lg hover:scale-105 transition">
            Get Started
        </button>
    </section>

    <!-- Cards -->
    <section class="py-16 px-6 max-w-6xl mx-auto">
        <h3 class="text-2xl font-bold text-center mb-10">Features</h3>

        <div class="grid md:grid-cols-3 gap-6">

            <div class="p-6 rounded-xl bg-gray-100 dark:bg-gray-900 shadow hover:scale-105 transition">
                <h4 class="font-semibold text-indigo-500 mb-2">Fast</h4>
                <p class="text-gray-600 dark:text-gray-400">Optimized performance.</p>
            </div>

            <div class="p-6 rounded-xl bg-gray-100 dark:bg-gray-900 shadow hover:scale-105 transition">
                <h4 class="font-semibold text-indigo-500 mb-2">Responsive</h4>
                <p class="text-gray-600 dark:text-gray-400">Works on all devices.</p>
            </div>

            <div class="p-6 rounded-xl bg-gray-100 dark:bg-gray-900 shadow hover:scale-105 transition">
                <h4 class="font-semibold text-indigo-500 mb-2">Customizable</h4>
                <p class="text-gray-600 dark:text-gray-400">Easy to modify.</p>
            </div>

        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center py-6 bg-gray-100 dark:bg-gray-900">
        <p class="text-gray-600 dark:text-gray-400">© <span id="year"></span> MyApp</p>
    </footer>

    <!-- Toggle Script -->
    <script>
        document.getElementById("year").textContent = new Date().getFullYear();

        const toggle = document.getElementById('themeToggle');
        const html = document.documentElement;

        function updateIcon() {
            toggle.textContent = html.classList.contains('dark') ? '☀️' : '🌙';
        }

        updateIcon();

        toggle.addEventListener('click', () => {
            html.classList.toggle('dark');

            if (html.classList.contains('dark')) {
                localStorage.setItem('theme', 'dark');
            } else {
                localStorage.setItem('theme', 'light');
            }

            updateIcon();
        });
    </script>

</body>
</html>
