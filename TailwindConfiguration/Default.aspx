<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TailwindConfiguration.Default" %>

<!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFlow - Modern Digital Solutions</title>
    <link href="Assets/tailwind/output.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap');
        
        * {
            font-family: 'Inter', sans-serif;
        }
        
        .gradient-text {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        
        .hover-lift {
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }
        
        .hover-lift:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }
        
        .float-animation {
            animation: float 6s ease-in-out infinite;
        }
        
        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }
        
        .slide-in {
            animation: slideIn 0.5s ease-out forwards;
            opacity: 0;
        }
        
        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        .gradient-bg {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        
        .glass-effect {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }
        
        .dark .glass-effect {
            background: rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .counter {
            transition: all 0.5s ease-out;
        }
        
        .testimonial-card {
            min-height: 250px;
        }
        
        .blob {
            position: absolute;
            border-radius: 50%;
            filter: blur(40px);
            opacity: 0.7;
            animation: blob 7s infinite;
        }
        
        @keyframes blob {
            0%, 100% { transform: translate(0px, 0px) scale(1); }
            33% { transform: translate(30px, -50px) scale(1.1); }
            66% { transform: translate(-20px, 20px) scale(0.9); }
        }
    </style>
</head>
<body class="bg-gray-50 dark:bg-gray-900 transition-colors duration-300">
    <!-- Navigation -->
    <nav class="fixed top-0 w-full z-50 glass-effect transition-all duration-300" id="navbar">
        <div class="container mx-auto px-6 py-4">
            <div class="flex items-center justify-between">
                <div class="flex items-center space-x-2">
                    <div class="w-10 h-10 gradient-bg rounded-lg flex items-center justify-center">
                        <i class="fas fa-rocket text-white"></i>
                    </div>
                    <span class="text-2xl font-bold text-gray-800 dark:text-white">TechFlow</span>
                </div>
                
                <div class="hidden md:flex items-center space-x-8">
                    <a href="#home" class="nav-link text-gray-600 dark:text-gray-300 hover:text-purple-600 dark:hover:text-purple-400 transition-colors">Home</a>
                    <a href="#features" class="nav-link text-gray-600 dark:text-gray-300 hover:text-purple-600 dark:hover:text-purple-400 transition-colors">Features</a>
                    <a href="#pricing" class="nav-link text-gray-600 dark:text-gray-300 hover:text-purple-600 dark:hover:text-purple-400 transition-colors">Pricing</a>
                    <a href="#testimonials" class="nav-link text-gray-600 dark:text-gray-300 hover:text-purple-600 dark:hover:text-purple-400 transition-colors">Testimonials</a>
                    <a href="#contact" class="nav-link text-gray-600 dark:text-gray-300 hover:text-purple-600 dark:hover:text-purple-400 transition-colors">Contact</a>
                </div>
                
                <div class="flex items-center space-x-4">
                    <button id="darkModeToggle" class="p-2 rounded-lg bg-gray-200 dark:bg-gray-700 hover:bg-gray-300 dark:hover:bg-gray-600 transition-colors">
                        <i class="fas fa-moon text-gray-700 dark:text-yellow-400"></i>
                    </button>
                    <button id="mobileMenuToggle" class="md:hidden p-2">
                        <i class="fas fa-bars text-gray-700 dark:text-gray-300 text-xl"></i>
                    </button>
                </div>
            </div>
            
            <!-- Mobile Menu -->
            <div id="mobileMenu" class="hidden md:hidden mt-4 pb-4">
                <a href="#home" class="block py-2 text-gray-600 dark:text-gray-300 hover:text-purple-600">Home</a>
                <a href="#features" class="block py-2 text-gray-600 dark:text-gray-300 hover:text-purple-600">Features</a>
                <a href="#pricing" class="block py-2 text-gray-600 dark:text-gray-300 hover:text-purple-600">Pricing</a>
                <a href="#testimonials" class="block py-2 text-gray-600 dark:text-gray-300 hover:text-purple-600">Testimonials</a>
                <a href="#contact" class="block py-2 text-gray-600 dark:text-gray-300 hover:text-purple-600">Contact</a>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="relative min-h-screen flex items-center justify-center overflow-hidden pt-20">
        <div class="blob w-96 h-96 bg-purple-400 -top-48 -right-48"></div>
        <div class="blob w-96 h-96 bg-blue-400 -bottom-48 -left-48"></div>
        
        <div class="container mx-auto px-6 relative z-10">
            <div class="text-center">
                <h1 class="text-5xl md:text-7xl font-bold mb-6 slide-in">
                    <span class="gradient-text">Transform Your</span><br>
                    <span class="text-gray-800 dark:text-white">Digital Presence</span>
                </h1>
                <p class="text-xl text-gray-600 dark:text-gray-300 mb-8 max-w-2xl mx-auto slide-in" style="animation-delay: 0.2s;">
                    Unlock the power of modern web design with our cutting-edge solutions. Build, scale, and succeed in the digital world.
                </p>
                <div class="flex flex-col sm:flex-row gap-4 justify-center slide-in" style="animation-delay: 0.4s;">
                    <button class="px-8 py-4 gradient-bg text-white rounded-full font-semibold hover:shadow-xl transform hover:scale-105 transition-all duration-300">
                        Get Started Free
                    </button>
                    <button class="px-8 py-4 bg-white dark:bg-gray-800 text-gray-800 dark:text-white rounded-full font-semibold border-2 border-gray-300 dark:border-gray-600 hover:shadow-xl transform hover:scale-105 transition-all duration-300">
                        Watch Demo
                    </button>
                </div>
                
                <div class="mt-16 grid grid-cols-3 gap-8 max-w-2xl mx-auto slide-in" style="animation-delay: 0.6s;">
                    <div class="text-center">
                        <div class="text-4xl font-bold gradient-text counter" data-target="1000">0</div>
                        <div class="text-gray-600 dark:text-gray-400 mt-2">Happy Clients</div>
                    </div>
                    <div class="text-center">
                        <div class="text-4xl font-bold gradient-text counter" data-target="500">0</div>
                        <div class="text-gray-600 dark:text-gray-400 mt-2">Projects Done</div>
                    </div>
                    <div class="text-center">
                        <div class="text-4xl font-bold gradient-text counter" data-target="99">0</div>
                        <div class="text-gray-600 dark:text-gray-400 mt-2">Success Rate</div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="absolute bottom-10 left-1/2 transform -translate-x-1/2 animate-bounce">
            <i class="fas fa-chevron-down text-2xl text-gray-400"></i>
        </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="py-20 bg-white dark:bg-gray-800">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-gray-800 dark:text-white mb-4">Powerful Features</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300 max-w-2xl mx-auto">
                    Everything you need to build amazing digital experiences
                </p>
            </div>
            
            <div class="grid md:grid-cols-3 gap-8">
                <div class="feature-card hover-lift bg-gray-50 dark:bg-gray-700 p-8 rounded-2xl">
                    <div class="w-16 h-16 gradient-bg rounded-xl flex items-center justify-center mb-6">
                        <i class="fas fa-bolt text-white text-2xl"></i>
                    </div>
                    <h3 class="text-2xl font-semibold text-gray-800 dark:text-white mb-4">Lightning Fast</h3>
                    <p class="text-gray-600 dark:text-gray-300">
                        Optimized performance that delivers blazing-fast load times and smooth interactions.
                    </p>
                </div>
                
                <div class="feature-card hover-lift bg-gray-50 dark:bg-gray-700 p-8 rounded-2xl">
                    <div class="w-16 h-16 gradient-bg rounded-xl flex items-center justify-center mb-6">
                        <i class="fas fa-shield-alt text-white text-2xl"></i>
                    </div>
                    <h3 class="text-2xl font-semibold text-gray-800 dark:text-white mb-4">Secure by Default</h3>
                    <p class="text-gray-600 dark:text-gray-300">
                        Enterprise-grade security features to protect your data and your users.
                    </p>
                </div>
                
                <div class="feature-card hover-lift bg-gray-50 dark:bg-gray-700 p-8 rounded-2xl">
                    <div class="w-16 h-16 gradient-bg rounded-xl flex items-center justify-center mb-6">
                        <i class="fas fa-chart-line text-white text-2xl"></i>
                    </div>
                    <h3 class="text-2xl font-semibold text-gray-800 dark:text-white mb-4">Analytics Ready</h3>
                    <p class="text-gray-600 dark:text-gray-300">
                        Built-in analytics and insights to track your growth and optimize performance.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Pricing Section -->
    <section id="pricing" class="py-20 bg-gray-50 dark:bg-gray-900">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-gray-800 dark:text-white mb-4">Simple Pricing</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300 max-w-2xl mx-auto">
                    Choose the perfect plan for your needs
                </p>
            </div>
            
            <div class="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
                <div class="pricing-card bg-white dark:bg-gray-800 rounded-2xl p-8 hover-lift border-2 border-gray-200 dark:border-gray-700">
                    <h3 class="text-2xl font-bold text-gray-800 dark:text-white mb-2">Starter</h3>
                    <div class="text-4xl font-bold gradient-text mb-6">$9<span class="text-lg text-gray-500">/month</span></div>
                    <ul class="space-y-3 mb-8">
                        <li class="flex items-center text-gray-600 dark:text-gray-300">
                            <i class="fas fa-check text-green-500 mr-3"></i>
                            5 Projects
                        </li>
                        <li class="flex items-center text-gray-600 dark:text-gray-300">
                            <i class="fas fa-check text-green-500 mr-3"></i>
                            10GB Storage
                        </li>
                        <li class="flex items-center text-gray-600 dark:text-gray-300">
                            <i class="fas fa-check text-green-500 mr-3"></i>
                            Basic Support
                        </li>
                        <li class="flex items-center text-gray-400">
                            <i class="fas fa-times text-gray-400 mr-3"></i>
                            Analytics
                        </li>
                    </ul>
                    <button class="w-full py-3 border-2 border-purple-600 text-purple-600 rounded-full font-semibold hover:bg-purple-600 hover:text-white transition-all duration-300">
                        Get Started
                    </button>
                </div>
                
                <div class="pricing-card bg-gradient-to-br from-purple-600 to-blue-600 rounded-2xl p-8 hover-lift transform scale-105 shadow-2xl">
                    <div class="bg-white/20 text-white text-sm font-semibold px-3 py-1 rounded-full inline-block mb-4">
                        MOST POPULAR
                    </div>
                    <h3 class="text-2xl font-bold text-white mb-2">Professional</h3>
                    <div class="text-4xl font-bold text-white mb-6">$29<span class="text-lg text-white/80">/month</span></div>
                    <ul class="space-y-3 mb-8">
                        <li class="flex items-center text-white">
                            <i class="fas fa-check text-white mr-3"></i>
                            Unlimited Projects
                        </li>
                        <li class="flex items-center text-white">
                            <i class="fas fa-check text-white mr-3"></i>
                            100GB Storage
                        </li>
                        <li class="flex items-center text-white">
                            <i class="fas fa-check text-white mr-3"></i>
                            Priority Support
                        </li>
                        <li class="flex items-center text-white">
                            <i class="fas fa-check text-white mr-3"></i>
                            Advanced Analytics
                        </li>
                    </ul>
                    <button class="w-full py-3 bg-white text-purple-600 rounded-full font-semibold hover:bg-gray-100 transition-all duration-300">
                        Get Started
                    </button>
                </div>
                
                <div class="pricing-card bg-white dark:bg-gray-800 rounded-2xl p-8 hover-lift border-2 border-gray-200 dark:border-gray-700">
                    <h3 class="text-2xl font-bold text-gray-800 dark:text-white mb-2">Enterprise</h3>
                    <div class="text-4xl font-bold gradient-text mb-6">$99<span class="text-lg text-gray-500">/month</span></div>
                    <ul class="space-y-3 mb-8">
                        <li class="flex items-center text-gray-600 dark:text-gray-300">
                            <i class="fas fa-check text-green-500 mr-3"></i>
                            Unlimited Everything
                        </li>
                        <li class="flex items-center text-gray-600 dark:text-gray-300">
                            <i class="fas fa-check text-green-500 mr-3"></i>
                            1TB Storage
                        </li>
                        <li class="flex items-center text-gray-600 dark:text-gray-300">
                            <i class="fas fa-check text-green-500 mr-3"></i>
                            24/7 Dedicated Support
                        </li>
                        <li class="flex items-center text-gray-600 dark:text-gray-300">
                            <i class="fas fa-check text-green-500 mr-3"></i>
                            Custom Features
                        </li>
                    </ul>
                    <button class="w-full py-3 border-2 border-purple-600 text-purple-600 rounded-full font-semibold hover:bg-purple-600 hover:text-white transition-all duration-300">
                        Contact Sales
                    </button>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section id="testimonials" class="py-20 bg-white dark:bg-gray-800">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-gray-800 dark:text-white mb-4">What Our Clients Say</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300 max-w-2xl mx-auto">
                    Don't just take our word for it
                </p>
            </div>
            
            <div class="relative max-w-4xl mx-auto">
                <div id="testimonialSlider" class="overflow-hidden">
                    <div class="testimonial-container flex transition-transform duration-500">
                        <div class="testimonial-card min-w-full px-4">
                            <div class="bg-gray-50 dark:bg-gray-700 p-8 rounded-2xl">
                                <div class="flex items-center mb-6">
                                    <img src="https://picsum.photos/seed/user1/60/60" alt="User" class="w-16 h-16 rounded-full mr-4">
                                    <div>
                                        <h4 class="text-xl font-semibold text-gray-800 dark:text-white">Sarah Johnson</h4>
                                        <p class="text-gray-600 dark:text-gray-400">CEO at TechStart</p>
                                    </div>
                                </div>
                                <div class="flex mb-4">
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                </div>
                                <p class="text-gray-600 dark:text-gray-300 italic">
                                    "TechFlow transformed our online presence completely. The results exceeded our expectations!"
                                </p>
                            </div>
                        </div>
                        
                        <div class="testimonial-card min-w-full px-4">
                            <div class="bg-gray-50 dark:bg-gray-700 p-8 rounded-2xl">
                                <div class="flex items-center mb-6">
                                    <img src="https://picsum.photos/seed/user2/60/60" alt="User" class="w-16 h-16 rounded-full mr-4">
                                    <div>
                                        <h4 class="text-xl font-semibold text-gray-800 dark:text-white">Michael Chen</h4>
                                        <p class="text-gray-600 dark:text-gray-400">Product Manager</p>
                                    </div>
                                </div>
                                <div class="flex mb-4">
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                </div>
                                <p class="text-gray-600 dark:text-gray-300 italic">
                                    "The best investment we've made for our digital strategy. Highly recommended!"
                                </p>
                            </div>
                        </div>
                        
                        <div class="testimonial-card min-w-full px-4">
                            <div class="bg-gray-50 dark:bg-gray-700 p-8 rounded-2xl">
                                <div class="flex items-center mb-6">
                                    <img src="https://picsum.photos/seed/user3/60/60" alt="User" class="w-16 h-16 rounded-full mr-4">
                                    <div>
                                        <h4 class="text-xl font-semibold text-gray-800 dark:text-white">Emily Davis</h4>
                                        <p class="text-gray-600 dark:text-gray-400">Marketing Director</p>
                                    </div>
                                </div>
                                <div class="flex mb-4">
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                </div>
                                <p class="text-gray-600 dark:text-gray-300 italic">
                                    "Outstanding service and incredible results. Our conversion rates doubled!"
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <button id="prevTestimonial" class="absolute left-0 top-1/2 transform -translate-y-1/2 bg-white dark:bg-gray-700 p-3 rounded-full shadow-lg hover:shadow-xl transition-shadow">
                    <i class="fas fa-chevron-left text-gray-600 dark:text-gray-300"></i>
                </button>
                <button id="nextTestimonial" class="absolute right-0 top-1/2 transform -translate-y-1/2 bg-white dark:bg-gray-700 p-3 rounded-full shadow-lg hover:shadow-xl transition-shadow">
                    <i class="fas fa-chevron-right text-gray-600 dark:text-gray-300"></i>
                </button>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-20 bg-gray-50 dark:bg-gray-900">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-gray-800 dark:text-white mb-4">Get In Touch</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300 max-w-2xl mx-auto">
                    Ready to start your next project? Let's talk!
                </p>
            </div>
            
            <div class="max-w-2xl mx-auto">
                <form id="contactForm" class="bg-white dark:bg-gray-800 p-8 rounded-2xl shadow-xl">
                    <div class="grid md:grid-cols-2 gap-6 mb-6">
                        <div>
                            <label class="block text-gray-700 dark:text-gray-300 mb-2">Name</label>
                            <input type="text" id="name" class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:outline-none focus:border-purple-600 dark:bg-gray-700 dark:text-white" required>
                        </div>
                        <div>
                            <label class="block text-gray-700 dark:text-gray-300 mb-2">Email</label>
                            <input type="email" id="email" class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:outline-none focus:border-purple-600 dark:bg-gray-700 dark:text-white" required>
                        </div>
                    </div>
                    
                    <div class="mb-6">
                        <label class="block text-gray-700 dark:text-gray-300 mb-2">Subject</label>
                        <input type="text" id="subject" class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:outline-none focus:border-purple-600 dark:bg-gray-700 dark:text-white" required>
                    </div>
                    
                    <div class="mb-6">
                        <label class="block text-gray-700 dark:text-gray-300 mb-2">Message</label>
                        <textarea id="message" rows="5" class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:outline-none focus:border-purple-600 dark:bg-gray-700 dark:text-white" required></textarea>
                    </div>
                    
                    <button type="submit" class="w-full py-4 gradient-bg text-white rounded-lg font-semibold hover:shadow-xl transform hover:scale-105 transition-all duration-300">
                        Send Message
                    </button>
                </form>
                
                <div id="successMessage" class="hidden mt-4 p-4 bg-green-100 dark:bg-green-900 text-green-700 dark:text-green-300 rounded-lg">
                    <i class="fas fa-check-circle mr-2"></i>
                    Your message has been sent successfully!
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-12">
        <div class="container mx-auto px-6">
            <div class="grid md:grid-cols-4 gap-8 mb-8">
                <div>
                    <div class="flex items-center space-x-2 mb-4">
                        <div class="w-10 h-10 gradient-bg rounded-lg flex items-center justify-center">
                            <i class="fas fa-rocket text-white"></i>
                        </div>
                        <span class="text-2xl font-bold">TechFlow</span>
                    </div>
                    <p class="text-gray-400">
                        Transforming ideas into digital reality.
                    </p>
                </div>
                
                <div>
                    <h4 class="font-semibold mb-4">Quick Links</h4>
                    <ul class="space-y-2 text-gray-400">
                        <li><a href="#" class="hover:text-white transition-colors">About Us</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Services</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Portfolio</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Blog</a></li>
                    </ul>
                </div>
                
                <div>
                    <h4 class="font-semibold mb-4">Support</h4>
                    <ul class="space-y-2 text-gray-400">
                        <li><a href="#" class="hover:text-white transition-colors">Help Center</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Documentation</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">API Reference</a></li>
                        <li><a href="#" class="hover:text-white transition-colors">Status</a></li>
                    </ul>
                </div>
                
                <div>
                    <h4 class="font-semibold mb-4">Newsletter</h4>
                    <p class="text-gray-400 mb-4">Subscribe to get updates</p>
                    <div class="flex">
                        <input type="email" placeholder="Your email" class="px-4 py-2 bg-gray-800 text-white rounded-l-lg flex-1 focus:outline-none">
                        <button class="px-4 py-2 gradient-bg rounded-r-lg hover:opacity-90 transition-opacity">
                            <i class="fas fa-paper-plane"></i>
                        </button>
                    </div>
                </div>
            </div>
            
            <div class="border-t border-gray-800 pt-8 flex flex-col md:flex-row justify-between items-center">
                <p class="text-gray-400 mb-4 md:mb-0">
                    © <span id="year"></span> TechFlow. All rights reserved.
                </p>
                <div class="flex space-x-4">
                    <a href="#" class="text-gray-400 hover:text-white transition-colors">
                        <i class="fab fa-twitter text-xl"></i>
                    </a>
                    <a href="#" class="text-gray-400 hover:text-white transition-colors">
                        <i class="fab fa-facebook text-xl"></i>
                    </a>
                    <a href="#" class="text-gray-400 hover:text-white transition-colors">
                        <i class="fab fa-linkedin text-xl"></i>
                    </a>
                    <a href="#" class="text-gray-400 hover:text-white transition-colors">
                        <i class="fab fa-github text-xl"></i>
                    </a>
                </div>
            </div>
        </div>
    </footer>

    <script>
        document.getElementById("year").textContent = new Date().getFullYear();
        // Dark Mode Toggle
        const darkModeToggle = document.getElementById('darkModeToggle');
        const html = document.documentElement;
        
        // Check for saved dark mode preference
        if (localStorage.getItem('darkMode') === 'true') {
            html.classList.add('dark');
        }
        
        darkModeToggle.addEventListener('click', () => {
            html.classList.toggle('dark');
            localStorage.setItem('darkMode', html.classList.contains('dark'));
        });
        
        // Mobile Menu Toggle
        const mobileMenuToggle = document.getElementById('mobileMenuToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        
        mobileMenuToggle.addEventListener('click', () => {
            mobileMenu.classList.toggle('hidden');
        });
        
        // Close mobile menu when clicking links
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.classList.add('hidden');
            });
        });
        
        // Navbar scroll effect
        window.addEventListener('scroll', () => {
            const navbar = document.getElementById('navbar');
            if (window.scrollY > 50) {
                navbar.classList.add('bg-white/90', 'dark:bg-gray-900/90', 'shadow-lg');
            } else {
                navbar.classList.remove('bg-white/90', 'dark:bg-gray-900/90', 'shadow-lg');
            }
        });
        
        // Counter Animation
        const counters = document.querySelectorAll('.counter');
        const speed = 200;
        
        const animateCounters = () => {
            counters.forEach(counter => {
                const target = +counter.getAttribute('data-target');
                const count = +counter.innerText;
                const increment = target / speed;
                
                if (count < target) {
                    counter.innerText = Math.ceil(count + increment);
                    setTimeout(() => animateCounters(), 10);
                } else {
                    counter.innerText = target + (counter.getAttribute('data-target') === '99' ? '%' : '+');
                }
            });
        };
        
        // Intersection Observer for animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -100px 0px'
        };
        
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    if (entry.target.classList.contains('counter')) {
                        animateCounters();
                        observer.unobserve(entry.target);
                    }
                    entry.target.classList.add('slide-in');
                }
            });
        }, observerOptions);
        
        counters.forEach(counter => {
            observer.observe(counter);
        });
        
        // Testimonial Slider
        const testimonialContainer = document.querySelector('.testimonial-container');
        const prevBtn = document.getElementById('prevTestimonial');
        const nextBtn = document.getElementById('nextTestimonial');
        let currentTestimonial = 0;
        const totalTestimonials = 3;
        
        function updateTestimonial() {
            testimonialContainer.style.transform = `translateX(-${currentTestimonial * 100}%)`;
        }
        
        prevBtn.addEventListener('click', () => {
            currentTestimonial = (currentTestimonial - 1 + totalTestimonials) % totalTestimonials;
            updateTestimonial();
        });
        
        nextBtn.addEventListener('click', () => {
            currentTestimonial = (currentTestimonial + 1) % totalTestimonials;
            updateTestimonial();
        });
        
        // Auto-rotate testimonials
        setInterval(() => {
            currentTestimonial = (currentTestimonial + 1) % totalTestimonials;
            updateTestimonial();
        }, 5000);
        
        // Contact Form
        const contactForm = document.getElementById('contactForm');
        const successMessage = document.getElementById('successMessage');
        
        contactForm.addEventListener('submit', (e) => {
            e.preventDefault();
            
            // Simulate form submission
            setTimeout(() => {
                successMessage.classList.remove('hidden');
                contactForm.reset();
                
                setTimeout(() => {
                    successMessage.classList.add('hidden');
                }, 5000);
            }, 500);
        });
        
        // Smooth scroll for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });
        
        // Add hover effect to cards
        document.querySelectorAll('.feature-card, .pricing-card').forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-8px)';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0)';
            });
        });
    </script>
</body>
</html>
