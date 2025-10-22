# استخدم Node 20 (مناسب لآخر نسخة Strapi)
FROM node:20

# حدد مجلد العمل
WORKDIR /app

# انسخ ملفات package.json أولاً
COPY package*.json ./

# ثبّت الـ dependencies
RUN npm install

# انسخ باقي المشروع
COPY . .

# ابنِ مشروع Strapi
RUN npm run build

# افتح البورت 1337
EXPOSE 1337

# أمر التشغيل
CMD ["npm", "start"]