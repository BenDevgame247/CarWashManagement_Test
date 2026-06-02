
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="min-h-screen flex items-center justify-center bg-slate-300">
        <main class="w-full max-w-md rounded-3xl bg-white px-8 py-10 shadow-lg">
            <div class="flex flex-col items-center gap-2">
                <i class="fa-regular fa-circle-user text-3xl font-medium"></i>
                <h1 class="text-2xl font-bold border-b-[2px] border-black">Đăng ký tài khoản</h1>
            </div>
            
            <form action="${pageContext.request.contextPath}/register" method="post" class="mt-2 px-2 py-2">
                <div class="mt-2 flex flex-col gap-1">
                    <label for="fullName" class="block text-slate-700 text-base font-medium">Họ tên</label>
                    <input id="fullName" type="text" name="fullName" placeholder="Nhập họ tên của bạn." required class="w-full px-2 py-2 bg-slate-50 outline-none border border-l border-slate-300 rounded-lg transition placeholder:text-slate-400 focus:ring-2 focus:ring-[#093C5D]/2">
                </div>
                
                <div class="mt-2 flex flex-col gap-1">
                    <label for="email" class="block text-slate-700 text-base font-medium">Địa chỉ email</label>
                    <input id="email" type="email" name="email" placeholder="username@gmail.com" required class="w-full px-2 py-2 bg-slate-50 outline-none border border-l border-slate-300 rounded-lg transition placeholder:text-slate-400 focus:ring-2 focus:ring-[#093C5D]/2">
                </div>
                
                <div class="mt-2 flex flex-col gap-1">
                    <label for="phone" class="block text-slate-700 text-base font-medium">Số điện thoại</label>
                    <input id="phone" type="tel" name="phone" placeholder="Nhập số điện thoại của bạn." pattern="[0-9]{10}" required class="w-full px-2 py-2 bg-slate-50 outline-none border border-l border-slate-300 rounded-lg transition placeholder:text-slate-400 focus:ring-2 focus:ring-[#093C5D]/2">
                </div>
                
                <div class="mt-2 mb-2 flex flex-col gap-1">
                    <label for="password" class="block text-slate-700 text-base font-medium">Password</label>
                    <input id="password" type="password" name="password" placeholder="Nhập mật khẩu của bạn." required class="w-full px-2 py-2 bg-slate-50 outline-none border border-l border-slate-300 rounded-lg transition placeholder:text-slate-400 focus:ring-2 focus:ring-[#093C5D]/2">
                </div>
                
                <div class="mt-4 mb-4 flex gap-1">
                    <label for="address" class="block text-slate-700 text-base font-medium">Vui lòng chọn chi nhánh</label>
                    <select id="address" name="address" class="w-full px-2 py-2 bg-slate-50 outline-none border border-l border-slate-300 rounded-lg transition placeholder:text-slate-400 focus:ring-2 focus:ring-[#093C5D]/2">
                        <option value="">-- Chọn địa chỉ --</option>
                        <option value="hcm">Hồ Chí Minh</option>
                        <option value="hn">Hà Nội</option>
                        <option value="dn">Đà Nẵng</option>
                    </select>
                </div>
                
                <div class="mt-4 flex flex-col text-base text-slate-700">
                    <label class="flex items-center gap-2">
                        <input type="checkbox" name="terms" required class="h-4 w-4">
                        <span>Tôi đồng ý với Điều khoản Dịch vụ.</span>
                    </label>

                    <label class="flex items-center gap-2">
                        <input type="checkbox" name="policy" required class="h-4 w-4">
                        <span>Tôi đồng ý với Chính sách Bảo mật.</span>
                    </label>

                    <label class="flex items-center gap-2">
                        <input type="checkbox" name="info" required class="h-4 w-4">
                        <span>Tôi xác nhận rằng thông tin của tôi là chính xác.</span>
                    </label>
                </div>
                
                <button class="mt-6 w-full px-4 py-3 bg-[#093C5D] text-white font-bold text-xl border rounded-2xl hover:bg-[#3B7597]" type="submit">
                    ĐĂNG KÝ
                </button>
                
                <div class="mt-2 flex items-center justify-center text-slate-700">
                    <p class="mr-1">Đã có tài khoản?</p>
                    <a href="${pageContext.request.contextPath}/login" class="text-[#2563EB] hover:text-[#1D4ED8] hover:font-medium">Đăng nhập</a>
                </div>
            </form>
        </main>
    </body>
</html>
