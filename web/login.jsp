
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="min-h-screen flex items-center justify-center bg-slate-300">
        <main class="w-full max-w-md rounded-3xl bg-white px-8 py-10 shadow-lg">
            <div class="flex flex-col items-center gap-2">
                <i class="fa-regular fa-circle-user text-3xl font-medium"></i>
                <h1 class="text-2xl font-bold border-b-[2px] border-black">LOGIN ACCOUNT</h1>
            </div>
            
            <form action="${pageContext.request.contextPath}/login" method="post" class="mt-4 px-2 py-2">
                <div class="flex flex-col gap-1">
                    <label for="email" class="block text-slate-700 text-base font-medium">Email</label>
                    <input id="email" type="email" name="email" placeholder="username@gmail.com" required class="w-full  px-2 py-2 bg-slate-50 outline-none border border-l border-slate-300 rounded-lg transition placeholder:text-slate-400 focus:ring-2 focus:ring-[#093C5D]/2">
                </div>
                
                <div class="flex flex-col gap-1">
                    <label for="password" class="mt-4 block text-slate-700 text-base font-medium">Password</label>
                    <input id="password" type="password" name="password" placeholder="Enter your password here." required class="w-full  px-2 py-2 bg-slate-50 outline-none border border-l border-slate-300 rounded-lg transition placeholder:text-slate-400 focus:ring-2 focus:ring-[#093C5D]/2">
                </div>
                
                <div class="mt-2">
                    <a href="" class="text-[#2563EB] hover:text-[#1D4ED8] hover:font-medium">Forgot your password?</a>
                </div>
                
                <button class="mt-6 w-full px-4 py-3 bg-[#093C5D] text-white font-bold text-xl border rounded-2xl hover:bg-[#3B7597]" type="submit">
                    LOGIN
                </button>
                
                <div class="mt-2 flex items-center justify-center text-slate-700">
                    <p class="mr-1">Don't have any account?</p>
                    <a href="${pageContext.request.contextPath}/register" class="text-[#2563EB] hover:text-[#1D4ED8] hover:font-medium">Register</a>
                </div>
            </form>
        </main>
    </body>
</html>
