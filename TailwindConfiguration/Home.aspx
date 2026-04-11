<%@ Page Title="Form Controls Demo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TailwindConfiguration.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Page-specific styles */
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-purple-600 to-pink-600 text-white py-12 mb-12">
        <div class="container mx-auto px-6">
            <div class="text-center">
                <h1 class="text-4xl md:text-5xl font-bold mb-4">Form Controls Demo</h1>
                <p class="text-lg text-purple-100">A comprehensive showcase of all form elements and UI controls built with Tailwind CSS</p>
            </div>
        </div>
    </section>

    <!-- Main Content -->
    <div class="container mx-auto px-6 py-8">
        <!-- Text Inputs Section -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Text Inputs</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="grid md:grid-cols-2 gap-6">
                    <!-- Basic Input -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Basic Input</label>
                        <input type="text" placeholder="Enter text here" 
                               class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                    </div>
                    
                    <!-- Input with Icon -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Input with Icon</label>
                        <div class="relative">
                            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                <i class="fas fa-user text-gray-400"></i>
                            </div>
                            <input type="text" placeholder="Username" 
                                   class="w-full pl-10 pr-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                        </div>
                    </div>
                    
                    <!-- Input with Success State -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Success State</label>
                        <div class="relative">
                            <input type="text" value="Valid input" 
                                   class="w-full px-4 py-2 border-2 border-green-500 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            <div class="absolute inset-y-0 right-0 pr-3 flex items-center">
                                <i class="fas fa-check-circle text-green-500"></i>
                            </div>
                        </div>
                        <p class="mt-1 text-sm text-green-600">This field is valid!</p>
                    </div>
                    
                    <!-- Input with Error State -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Error State</label>
                        <div class="relative">
                            <input type="text" value="Invalid input" 
                                   class="w-full px-4 py-2 border-2 border-red-500 rounded-lg focus:ring-2 focus:ring-red-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            <div class="absolute inset-y-0 right-0 pr-3 flex items-center">
                                <i class="fas fa-exclamation-circle text-red-500"></i>
                            </div>
                        </div>
                        <p class="mt-1 text-sm text-red-600">This field has an error!</p>
                    </div>
                    
                    <!-- Disabled Input -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Disabled Input</label>
                        <input type="text" value="Disabled" disabled 
                               class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-gray-100 dark:bg-gray-700 text-gray-500 cursor-not-allowed">
                    </div>
                    
                    <!-- Input with Helper Text -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Input with Helper Text</label>
                        <input type="email" placeholder="email@example.com" 
                               class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                        <p class="mt-1 text-sm text-gray-500 dark:text-gray-400">We'll never share your email with anyone else.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Floating Labels -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Floating Labels</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="relative focus-within">
                        <input type="text" id="float1" class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white peer">
                        <label for="float1" class="floating-label absolute left-4 top-3 text-gray-500 dark:text-gray-400 pointer-events-none peer-focus:text-purple-500 peer-[:not(:placeholder-shown)]:-top-6 peer-[:not(:placeholder-shown)]:text-sm peer-[:not(:placeholder-shown)]:text-purple-500 transition-all">
                            Name
                        </label>
                    </div>
                    
                    <div class="relative focus-within">
                        <input type="email" id="float2" placeholder=" " class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white peer">
                        <label for="float2" class="absolute left-4 top-3 text-gray-500 dark:text-gray-400 pointer-events-none transition-all peer-placeholder-shown:top-3 peer-[:not(:placeholder-shown)]:-top-6 peer-[:not(:placeholder-shown)]:text-sm peer-[:not(:placeholder-shown)]:text-purple-500">
                            Email
                        </label>
                    </div>
                    
                    <div class="relative focus-within">
                        <input type="tel" id="float3" placeholder=" " class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white peer">
                        <label for="float3" class="absolute left-4 top-3 text-gray-500 dark:text-gray-400 pointer-events-none transition-all peer-placeholder-shown:top-3 peer-[:not(:placeholder-shown)]:-top-6 peer-[:not(:placeholder-shown)]:text-sm peer-[:not(:placeholder-shown)]:text-purple-500">
                            Phone
                        </label>
                    </div>
                </div>
            </div>
        </section>

        <!-- Textarea -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Textareas</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="grid md:grid-cols-2 gap-6">
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Basic Textarea</label>
                        <textarea rows="4" placeholder="Enter your message here" 
                                  class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white resize-none"></textarea>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Resizable Textarea</label>
                        <textarea rows="4" placeholder="This textarea is resizable" 
                                  class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white resize"></textarea>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">With Character Count</label>
                        <div class="relative">
                            <textarea id="charCount" rows="4" maxlength="100" placeholder="Max 100 characters" 
                                      class="w-full px-4 py-2 pr-16 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white resize-none"
                                      oninput="document.getElementById('count').textContent = this.value.length"></textarea>
                            <span id="count" class="absolute bottom-2 right-2 text-sm text-gray-500">0</span>
                        </div>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Auto-growing Textarea</label>
                        <textarea rows="2" placeholder="This will grow as you type..." 
                                  class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white resize-none"
                                  oninput="this.style.height = 'auto'; this.style.height = this.scrollHeight + 'px'"></textarea>
                    </div>
                </div>
            </div>
        </section>

        <!-- Select Dropdowns -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Select Dropdowns</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Basic Select</label>
                        <select class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            <option>Choose an option</option>
                            <option>Option 1</option>
                            <option>Option 2</option>
                            <option>Option 3</option>
                        </select>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Multi Select</label>
                        <select multiple size="4" 
                                class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            <option>Option 1</option>
                            <option>Option 2</option>
                            <option>Option 3</option>
                            <option>Option 4</option>
                            <option>Option 5</option>
                        </select>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Grouped Select</label>
                        <select class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            <optgroup label="Group 1">
                                <option>Option 1.1</option>
                                <option>Option 1.2</option>
                            </optgroup>
                            <optgroup label="Group 2">
                                <option>Option 2.1</option>
                                <option>Option 2.2</option>
                            </optgroup>
                        </select>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Disabled Select</label>
                        <select disabled 
                                class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-gray-100 dark:bg-gray-700 text-gray-500 cursor-not-allowed">
                            <option>Disabled option</option>
                        </select>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">With Icon</label>
                        <div class="relative">
                            <select class="w-full px-10 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white appearance-none">
                                <option>Choose country</option>
                                <option>USA</option>
                                <option>Canada</option>
                                <option>UK</option>
                            </select>
                            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                <i class="fas fa-globe text-gray-400"></i>
                            </div>
                            <div class="absolute inset-y-0 right-0 pr-3 flex items-center pointer-events-none">
                                <i class="fas fa-chevron-down text-gray-400"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Checkboxes and Radio Buttons -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Checkboxes & Radio Buttons</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="grid md:grid-cols-2 gap-8">
                    <!-- Checkboxes -->
                    <div>
                        <h3 class="text-lg font-semibold mb-4 text-gray-800 dark:text-white">Checkboxes</h3>
                        
                        <div class="space-y-3">
                            <label class="flex items-center cursor-pointer">
                                <input type="checkbox" class="w-4 h-4 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                                <span class="ml-2 text-gray-700 dark:text-gray-300">Basic Checkbox</span>
                            </label>
                            
                            <label class="flex items-center cursor-pointer">
                                <input type="checkbox" checked class="w-4 h-4 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                                <span class="ml-2 text-gray-700 dark:text-gray-300">Checked Checkbox</span>
                            </label>
                            
                            <label class="flex items-center cursor-pointer">
                                <input type="checkbox" disabled class="w-4 h-4 text-gray-300 border-gray-300 rounded">
                                <span class="ml-2 text-gray-500">Disabled Checkbox</span>
                            </label>
                            
                            <label class="flex items-center cursor-pointer">
                                <input type="checkbox" disabled checked class="w-4 h-4 text-gray-300 border-gray-300 rounded">
                                <span class="ml-2 text-gray-500">Disabled Checked</span>
                            </label>
                            
                            <label class="flex items-center cursor-pointer">
                                <input type="checkbox" class="w-5 h-5 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                                <span class="ml-3 text-gray-700 dark:text-gray-300">Large Checkbox</span>
                            </label>
                            
                            <label class="flex items-center cursor-pointer">
                                <div class="relative">
                                    <input type="checkbox" class="sr-only peer">
                                    <div class="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 rounded-full peer dark:bg-gray-700 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></div>
                                </div>
                                <span class="ml-3 text-gray-700 dark:text-gray-300">Toggle Switch</span>
                            </label>
                        </div>
                        
                        <!-- Checkbox Groups -->
                        <div class="mt-6">
                            <h4 class="font-medium mb-3 text-gray-700 dark:text-gray-300">Select Interests</h4>
                            <div class="space-y-2">
                                <label class="flex items-center cursor-pointer">
                                    <input type="checkbox" class="w-4 h-4 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                                    <span class="ml-2 text-gray-700 dark:text-gray-300">Development</span>
                                </label>
                                <label class="flex items-center cursor-pointer">
                                    <input type="checkbox" class="w-4 h-4 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                                    <span class="ml-2 text-gray-700 dark:text-gray-300">Design</span>
                                </label>
                                <label class="flex items-center cursor-pointer">
                                    <input type="checkbox" class="w-4 h-4 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                                    <span class="ml-2 text-gray-700 dark:text-gray-300">Marketing</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Radio Buttons -->
                    <div>
                        <h3 class="text-lg font-semibold mb-4 text-gray-800 dark:text-white">Radio Buttons</h3>
                        
                        <div class="space-y-3">
                            <label class="flex items-center cursor-pointer">
                                <input type="radio" name="radio1" class="w-4 h-4 text-purple-600 border-gray-300 focus:ring-purple-500">
                                <span class="ml-2 text-gray-700 dark:text-gray-300">Option 1</span>
                            </label>
                            
                            <label class="flex items-center cursor-pointer">
                                <input type="radio" name="radio1" checked class="w-4 h-4 text-purple-600 border-gray-300 focus:ring-purple-500">
                                <span class="ml-2 text-gray-700 dark:text-gray-300">Option 2 (Selected)</span>
                            </label>
                            
                            <label class="flex items-center cursor-pointer">
                                <input type="radio" name="radio1" disabled class="w-4 h-4 text-gray-300 border-gray-300">
                                <span class="ml-2 text-gray-500">Disabled Option</span>
                            </label>
                            
                            <label class="flex items-center cursor-pointer">
                                <input type="radio" name="radio2" class="w-5 h-5 text-purple-600 border-gray-300 focus:ring-purple-500">
                                <span class="ml-3 text-gray-700 dark:text-gray-300">Large Radio</span>
                            </label>
                        </div>
                        
                        <!-- Radio Groups -->
                        <div class="mt-6">
                            <h4 class="font-medium mb-3 text-gray-700 dark:text-gray-300">Select Plan</h4>
                            <div class="space-y-2">
                                <label class="flex items-center cursor-pointer p-3 border border-gray-300 dark:border-gray-600 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-700">
                                    <input type="radio" name="plan" class="w-4 h-4 text-purple-600 border-gray-300 focus:ring-purple-500">
                                    <div class="ml-3">
                                        <div class="font-medium text-gray-700 dark:text-gray-300">Free Plan</div>
                                        <div class="text-sm text-gray-500">Basic features</div>
                                    </div>
                                </label>
                                
                                <label class="flex items-center cursor-pointer p-3 border border-gray-300 dark:border-gray-600 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-700">
                                    <input type="radio" name="plan" class="w-4 h-4 text-purple-600 border-gray-300 focus:ring-purple-500">
                                    <div class="ml-3">
                                        <div class="font-medium text-gray-700 dark:text-gray-300">Pro Plan</div>
                                        <div class="text-sm text-gray-500">Advanced features</div>
                                    </div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Input Groups -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Input Groups</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="grid md:grid-cols-2 gap-6">
                    <!-- Input with Prefix -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">With Prefix</label>
                        <div class="flex">
                            <span class="inline-flex items-center px-3 text-sm text-gray-900 bg-gray-200 border border-r-0 border-gray-300 rounded-l-md dark:bg-gray-600 dark:text-gray-300 dark:border-gray-600">
                                @
                            </span>
                            <input type="text" class="rounded-none rounded-r-lg bg-gray-50 border text-gray-900 focus:ring-purple-500 focus:border-purple-500 block flex-1 min-w-0 w-full text-sm border-gray-300 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white" placeholder="username">
                        </div>
                    </div>
                    
                    <!-- Input with Suffix -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">With Suffix</label>
                        <div class="flex">
                            <input type="text" class="rounded-none rounded-l-lg bg-gray-50 border text-gray-900 focus:ring-purple-500 focus:border-purple-500 block flex-1 min-w-0 w-full text-sm border-gray-300 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white" placeholder="Amount">
                            <span class="inline-flex items-center px-3 text-sm text-gray-900 bg-gray-200 border border-l-0 border-gray-300 rounded-r-md dark:bg-gray-600 dark:text-gray-300 dark:border-gray-600">
                                USD
                            </span>
                        </div>
                    </div>
                    
                    <!-- Input with Button -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">With Button</label>
                        <div class="flex">
                            <input type="text" class="rounded-none rounded-l-lg bg-gray-50 border text-gray-900 focus:ring-purple-500 focus:border-purple-500 block flex-1 min-w-0 w-full text-sm border-gray-300 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white" placeholder="Search...">
                            <button class="gradient-bg text-white px-4 rounded-r-md hover:opacity-90 transition-opacity">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                    
                    <!-- Input with Dropdown -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">With Dropdown</label>
                        <div class="flex">
                            <button class="flex-shrink-0 z-10 inline-flex items-center py-2.5 px-4 text-sm font-medium text-center text-gray-900 bg-gray-100 border border-gray-300 rounded-l-lg hover:bg-gray-200 focus:ring-4 focus:outline-none focus:ring-gray-100 dark:bg-gray-700 dark:hover:bg-gray-600 dark:focus:ring-gray-700 dark:text-white dark:border-gray-600" type="button">
                                Options <i class="fas fa-chevron-down ml-2"></i>
                            </button>
                            <input type="text" class="rounded-none rounded-r-lg bg-gray-50 border text-gray-900 focus:ring-purple-500 focus:border-purple-500 block flex-1 min-w-0 w-full text-sm border-gray-300 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white" placeholder="Choose...">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- File Inputs -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">File Inputs</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="grid md:grid-cols-2 gap-6">
                    <!-- Basic File Input -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Basic File Input</label>
                        <input type="file" class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400">
                    </div>
                    
                    <!-- Multiple Files -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Multiple Files</label>
                        <input type="file" multiple class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400">
                    </div>
                    
                    <!-- Styled File Upload -->
                    <div class="md:col-span-2">
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Styled File Upload</label>
                        <div class="flex items-center justify-center w-full">
                            <label class="flex flex-col items-center justify-center w-full h-64 border-2 border-gray-300 border-dashed rounded-lg cursor-pointer bg-gray-50 dark:hover:bg-bray-800 dark:bg-gray-700 hover:bg-gray-100 dark:border-gray-600 dark:hover:border-gray-500 dark:hover:bg-gray-600">
                                <div class="flex flex-col items-center justify-center pt-5 pb-6">
                                    <i class="fas fa-cloud-upload-alt text-4xl text-gray-400 mb-4"></i>
                                    <p class="mb-2 text-sm text-gray-500 dark:text-gray-400"><span class="font-semibold">Click to upload</span> or drag and drop</p>
                                    <p class="text-xs text-gray-500 dark:text-gray-400">SVG, PNG, JPG or GIF (MAX. 800x400px)</p>
                                </div>
                                <input type="file" class="hidden" />
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Range Sliders -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Range Sliders</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="grid md:grid-cols-2 gap-6">
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Basic Range</label>
                        <input type="range" class="w-full" min="0" max="100" value="50">
                        <div class="flex justify-between text-xs text-gray-500 mt-1">
                            <span>0</span>
                            <span>100</span>
                        </div>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Range with Value Display</label>
                        <input type="range" id="rangeValue" class="w-full" min="0" max="100" value="30" oninput="document.getElementById('valueDisplay').textContent = this.value">
                        <div class="text-center mt-2">
                            <span id="valueDisplay" class="text-2xl font-bold text-purple-600">30</span>
                        </div>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Step Range</label>
                        <input type="range" class="w-full" min="0" max="100" value="25" step="25">
                        <div class="flex justify-between text-xs text-gray-500 mt-1">
                            <span>0</span>
                            <span>25</span>
                            <span>50</span>
                            <span>75</span>
                            <span>100</span>
                        </div>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Disabled Range</label>
                        <input type="range" class="w-full" min="0" max="100" value="50" disabled>
                    </div>
                </div>
            </div>
        </section>

        <!-- Date & Time Inputs -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Date & Time Inputs</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Date Input</label>
                        <input type="date" class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Time Input</label>
                        <input type="time" class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Date & Time</label>
                        <input type="datetime-local" class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Month</label>
                        <input type="month" class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Week</label>
                        <input type="week" class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Color Picker</label>
                        <div class="flex items-center space-x-2">
                            <input type="color" value="#9333ea" class="h-10 w-20 border border-gray-300 dark:border-gray-600 rounded cursor-pointer">
                            <span class="text-sm text-gray-600 dark:text-gray-400">#9333ea</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Buttons -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Buttons</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="space-y-6">
                    <!-- Button Sizes -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Button Sizes</h3>
                        <div class="flex flex-wrap gap-3">
                            <button class="px-2 py-1 text-xs bg-purple-600 text-white rounded hover:bg-purple-700 transition-colors">Extra Small</button>
                            <button class="px-3 py-1.5 text-sm bg-purple-600 text-white rounded hover:bg-purple-700 transition-colors">Small</button>
                            <button class="px-4 py-2 text-sm bg-purple-600 text-white rounded hover:bg-purple-700 transition-colors">Base</button>
                            <button class="px-6 py-3 text-base bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors">Large</button>
                            <button class="px-8 py-4 text-lg bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors">Extra Large</button>
                        </div>
                    </div>
                    
                    <!-- Button Variants -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Button Variants</h3>
                        <div class="flex flex-wrap gap-3">
                            <button class="px-4 py-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors">Primary</button>
                            <button class="px-4 py-2 bg-gray-600 text-white rounded-lg hover:bg-gray-700 transition-colors">Secondary</button>
                            <button class="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 transition-colors">Success</button>
                            <button class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors">Danger</button>
                            <button class="px-4 py-2 bg-yellow-500 text-white rounded-lg hover:bg-yellow-600 transition-colors">Warning</button>
                            <button class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors">Info</button>
                        </div>
                    </div>
                    
                    <!-- Outline Buttons -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Outline Buttons</h3>
                        <div class="flex flex-wrap gap-3">
                            <button class="px-4 py-2 border-2 border-purple-600 text-purple-600 rounded-lg hover:bg-purple-600 hover:text-white transition-colors">Primary</button>
                            <button class="px-4 py-2 border-2 border-gray-600 text-gray-600 rounded-lg hover:bg-gray-600 hover:text-white transition-colors">Secondary</button>
                            <button class="px-4 py-2 border-2 border-green-600 text-green-600 rounded-lg hover:bg-green-600 hover:text-white transition-colors">Success</button>
                            <button class="px-4 py-2 border-2 border-red-600 text-red-600 rounded-lg hover:bg-red-600 hover:text-white transition-colors">Danger</button>
                        </div>
                    </div>
                    
                    <!-- Ghost Buttons -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Ghost Buttons</h3>
                        <div class="flex flex-wrap gap-3">
                            <button class="px-4 py-2 text-purple-600 hover:bg-purple-100 dark:hover:bg-purple-900 rounded-lg transition-colors">Primary</button>
                            <button class="px-4 py-2 text-gray-600 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-lg transition-colors">Secondary</button>
                            <button class="px-4 py-2 text-green-600 hover:bg-green-100 dark:hover:bg-green-900 rounded-lg transition-colors">Success</button>
                            <button class="px-4 py-2 text-red-600 hover:bg-red-100 dark:hover:bg-red-900 rounded-lg transition-colors">Danger</button>
                        </div>
                    </div>
                    
                    <!-- Button States -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Button States</h3>
                        <div class="flex flex-wrap gap-3">
                            <button class="px-4 py-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors">Normal</button>
                            <button class="px-4 py-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors hover:scale-105 transform">Hover</button>
                            <button class="px-4 py-2 bg-purple-700 text-white rounded-lg shadow-lg">Active</button>
                            <button class="px-4 py-2 bg-gray-300 text-gray-500 rounded-lg cursor-not-allowed" disabled>Disabled</button>
                            <button class="px-4 py-2 bg-purple-600 text-white rounded-lg">
                                <i class="fas fa-spinner animate-spin mr-2"></i>
                                Loading
                            </button>
                        </div>
                    </div>
                    
                    <!-- Icon Buttons -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Icon Buttons</h3>
                        <div class="flex flex-wrap gap-3">
                            <button class="p-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors">
                                <i class="fas fa-search"></i>
                            </button>
                            <button class="p-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors">
                                <i class="fas fa-heart"></i>
                            </button>
                            <button class="p-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors">
                                <i class="fas fa-download"></i>
                            </button>
                            <button class="p-2 border-2 border-purple-600 text-purple-600 rounded-lg hover:bg-purple-600 hover:text-white transition-colors">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="px-4 py-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors">
                                <i class="fas fa-plus mr-2"></i>
                                Add Item
                            </button>
                            <button class="px-4 py-2 border-2 border-red-600 text-red-600 rounded-lg hover:bg-red-600 hover:text-white transition-colors">
                                <i class="fas fa-trash mr-2"></i>
                                Delete
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Progress Bars -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Progress Bars</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="space-y-4">
                    <div>
                        <div class="flex justify-between mb-1">
                            <span class="text-sm font-medium text-gray-700 dark:text-gray-300">Basic Progress</span>
                            <span class="text-sm font-medium text-gray-700 dark:text-gray-300">45%</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5 dark:bg-gray-700">
                            <div class="bg-purple-600 h-2.5 rounded-full" style="width: 45%"></div>
                        </div>
                    </div>
                    
                    <div>
                        <div class="flex justify-between mb-1">
                            <span class="text-sm font-medium text-gray-700 dark:text-gray-300">Success Progress</span>
                            <span class="text-sm font-medium text-green-600">100%</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5 dark:bg-gray-700">
                            <div class="bg-green-600 h-2.5 rounded-full" style="width: 100%"></div>
                        </div>
                    </div>
                    
                    <div>
                        <div class="flex justify-between mb-1">
                            <span class="text-sm font-medium text-gray-700 dark:text-gray-300">Warning Progress</span>
                            <span class="text-sm font-medium text-yellow-600">75%</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5 dark:bg-gray-700">
                            <div class="bg-yellow-500 h-2.5 rounded-full" style="width: 75%"></div>
                        </div>
                    </div>
                    
                    <div>
                        <div class="flex justify-between mb-1">
                            <span class="text-sm font-medium text-gray-700 dark:text-gray-300">Danger Progress</span>
                            <span class="text-sm font-medium text-red-600">25%</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5 dark:bg-gray-700">
                            <div class="bg-red-600 h-2.5 rounded-full" style="width: 25%"></div>
                        </div>
                    </div>
                    
                    <!-- Striped Progress -->
                    <div>
                        <div class="flex justify-between mb-1">
                            <span class="text-sm font-medium text-gray-700 dark:text-gray-300">Striped Progress</span>
                            <span class="text-sm font-medium text-gray-700 dark:text-gray-300">60%</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5 dark:bg-gray-700">
                            <div class="bg-purple-600 h-2.5 rounded-full" style="width: 60%; background-image: linear-gradient(45deg, rgba(255,255,255,.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,.15) 50%, rgba(255,255,255,.15) 75%, transparent 75%, transparent); background-size: 1rem 1rem;"></div>
                        </div>
                    </div>
                    
                    <!-- Animated Progress -->
                    <div>
                        <div class="flex justify-between mb-1">
                            <span class="text-sm font-medium text-gray-700 dark:text-gray-300">Animated Progress</span>
                            <span class="text-sm font-medium text-gray-700 dark:text-gray-300">80%</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5 dark:bg-gray-700">
                            <div class="bg-purple-600 h-2.5 rounded-full animate-pulse" style="width: 80%"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Badges & Tags -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Badges & Tags</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="space-y-6">
                    <!-- Basic Badges -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Basic Badges</h3>
                        <div class="flex flex-wrap gap-2">
                            <span class="px-2 py-1 text-xs font-semibold text-gray-800 bg-gray-200 rounded-full dark:bg-gray-700 dark:text-gray-300">Default</span>
                            <span class="px-2 py-1 text-xs font-semibold text-purple-800 bg-purple-200 rounded-full dark:bg-purple-900 dark:text-purple-300">Purple</span>
                            <span class="px-2 py-1 text-xs font-semibold text-green-800 bg-green-200 rounded-full dark:bg-green-900 dark:text-green-300">Success</span>
                            <span class="px-2 py-1 text-xs font-semibold text-red-800 bg-red-200 rounded-full dark:bg-red-900 dark:text-red-300">Danger</span>
                            <span class="px-2 py-1 text-xs font-semibold text-yellow-800 bg-yellow-200 rounded-full dark:bg-yellow-900 dark:text-yellow-300">Warning</span>
                            <span class="px-2 py-1 text-xs font-semibold text-blue-800 bg-blue-200 rounded-full dark:bg-blue-900 dark:text-blue-300">Info</span>
                        </div>
                    </div>
                    
                    <!-- Badge Sizes -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Badge Sizes</h3>
                        <div class="flex items-center gap-2">
                            <span class="px-1.5 py-0.5 text-xs font-semibold text-purple-800 bg-purple-200 rounded-full dark:bg-purple-900 dark:text-purple-300">XS</span>
                            <span class="px-2 py-1 text-xs font-semibold text-purple-800 bg-purple-200 rounded-full dark:bg-purple-900 dark:text-purple-300">Small</span>
                            <span class="px-3 py-1.5 text-sm font-semibold text-purple-800 bg-purple-200 rounded-full dark:bg-purple-900 dark:text-purple-300">Medium</span>
                            <span class="px-4 py-2 text-base font-semibold text-purple-800 bg-purple-200 rounded-full dark:bg-purple-900 dark:text-purple-300">Large</span>
                        </div>
                    </div>
                    
                    <!-- Pill Badges -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Pill Badges</h3>
                        <div class="flex flex-wrap gap-2">
                            <span class="px-3 py-1 text-sm font-semibold text-white bg-purple-600 rounded-full">New</span>
                            <span class="px-3 py-1 text-sm font-semibold text-white bg-green-600 rounded-full">Verified</span>
                            <span class="px-3 py-1 text-sm font-semibold text-white bg-red-600 rounded-full">Required</span>
                            <span class="px-3 py-1 text-sm font-semibold text-gray-800 bg-gray-400 rounded-full">Optional</span>
                        </div>
                    </div>
                    
                    <!-- Icon Badges -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Icon Badges</h3>
                        <div class="flex flex-wrap gap-3">
                            <span class="inline-flex items-center px-3 py-1 text-sm font-semibold text-purple-800 bg-purple-200 rounded-full dark:bg-purple-900 dark:text-purple-300">
                                <i class="fas fa-star mr-1"></i>
                                Featured
                            </span>
                            <span class="inline-flex items-center px-3 py-1 text-sm font-semibold text-green-800 bg-green-200 rounded-full dark:bg-green-900 dark:text-green-300">
                                <i class="fas fa-check mr-1"></i>
                                Completed
                            </span>
                            <span class="inline-flex items-center px-3 py-1 text-sm font-semibold text-red-800 bg-red-200 rounded-full dark:bg-red-900 dark:text-red-300">
                                <i class="fas fa-exclamation mr-1"></i>
                                Alert
                            </span>
                        </div>
                    </div>
                    
                    <!-- Notification Badges -->
                    <div>
                        <h3 class="text-lg font-semibold mb-3 text-gray-800 dark:text-white">Notification Badges</h3>
                        <div class="flex items-center gap-6">
                            <button class="relative p-2 text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white">
                                <i class="fas fa-bell text-xl"></i>
                                <span class="absolute top-0 right-0 inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-white transform translate-x-1/2 -translate-y-1/2 bg-red-600 rounded-full">3</span>
                            </button>
                            <button class="relative p-2 text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white">
                                <i class="fas fa-envelope text-xl"></i>
                                <span class="absolute top-0 right-0 inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-white transform translate-x-1/2 -translate-y-1/2 bg-blue-600 rounded-full">12</span>
                            </button>
                            <button class="relative p-2 text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white">
                                <i class="fas fa-shopping-cart text-xl"></i>
                                <span class="absolute top-0 right-0 inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-white transform translate-x-1/2 -translate-y-1/2 bg-green-600 rounded-full">5</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Complete Form Example -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6 gradient-text">Complete Form Example</h2>
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <form class="space-y-6">
                    <div class="grid md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">First Name *</label>
                            <input type="text" required class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Last Name *</label>
                            <input type="text" required class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                        </div>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Email Address *</label>
                        <input type="email" required class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Country</label>
                        <select class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            <option>United States</option>
                            <option>Canada</option>
                            <option>United Kingdom</option>
                            <option>Australia</option>
                            <option>Other</option>
                        </select>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Interests</label>
                        <div class="space-y-2">
                            <label class="flex items-center">
                                <input type="checkbox" class="w-4 h-4 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                                <span class="ml-2 text-gray-700 dark:text-gray-300">Development</span>
                            </label>
                            <label class="flex items-center">
                                <input type="checkbox" class="w-4 h-4 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                                <span class="ml-2 text-gray-700 dark:text-gray-300">Design</span>
                            </label>
                            <label class="flex items-center">
                                <input type="checkbox" class="w-4 h-4 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                                <span class="ml-2 text-gray-700 dark:text-gray-300">Marketing</span>
                            </label>
                        </div>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Message</label>
                        <textarea rows="4" class="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white resize-none"></textarea>
                    </div>
                    
                    <div class="flex items-center">
                        <input type="checkbox" class="w-4 h-4 text-purple-600 border-gray-300 rounded focus:ring-purple-500">
                        <label class="ml-2 text-sm text-gray-700 dark:text-gray-300">I agree to the <a href="#" class="text-purple-600 hover:underline">Terms and Conditions</a></label>
                    </div>
                    
                    <div class="flex gap-3">
                        <button type="submit" class="px-6 py-2 gradient-bg text-white rounded-lg hover:opacity-90 transition-opacity">
                            Submit Form
                        </button>
                        <button type="reset" class="px-6 py-2 border-2 border-gray-300 text-gray-700 dark:border-gray-600 dark:text-gray-300 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors">
                            Reset
                        </button>
                    </div>
                </form>
            </div>
        </section>
    </div>

    <script>
        // Form validation example
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.querySelector('form');
            if (form) {
                form.addEventListener('submit', function(e) {
                    // Remove the preventDefault if you want to allow server-side posting
                    // e.preventDefault();
                    // Uncomment below if you want client-side validation
                    // alert('Form submitted successfully!');
                });
            }
        });
    </script>

</asp:Content>
