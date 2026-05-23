# Medium Blog CRUD Fullstack App

A medium-size fullstack blog CRUD application built with:

- React + Vite
- Node.js + Express.js
- MySQL
- JWT authentication
- Role-based access: `admin`, `author`, `reader`
- Blog posts, categories, comments, dashboard, modern UI
- Prepared for later AWS 3-tier deployment, CI/CD, CloudFormation, Terraform, and Docker

## Project Structure

```txt
medium-blog-crud-app/
  client/        React frontend
  server/        Express backend API
```

## Features

### Authentication
- Register
- Login
- JWT access token
- Protected routes
- Role-based authorization

### Blog
- Create post
- Read posts
- Update post
- Delete post
- Publish / draft status
- Category filtering
- Search
- Comments

### Admin / Author Dashboard
- View own posts
- Create posts
- Edit posts
- Delete posts
- Manage categories

## Local Setup

### 1. Create MySQL Database

```sql
CREATE DATABASE modern_blog_db;
```

Then run:

```bash
mysql -u root -p modern_blog_db < server/src/sql/schema.sql
mysql -u root -p modern_blog_db < server/src/sql/seed.sql
```

### 2. Setup Backend

```bash
cd server
cp .env.example .env
npm install
npm run dev
```

Backend runs on:

```txt
http://localhost:5000
```

### 3. Setup Frontend

Open another terminal:

```bash
cd client
cp .env.example .env
npm install
npm run dev
```

Frontend runs on:

```txt
http://localhost:5173
```

## Demo Accounts

After running seed.sql:

```txt
Admin:
email: admin@example.com
password: Admin@123

Author:
email: author@example.com
password: Author@123
```

## Important API Routes

```txt
POST   /api/auth/register
POST   /api/auth/login
GET    /api/auth/me

GET    /api/posts
GET    /api/posts/:id
POST   /api/posts
PUT    /api/posts/:id
DELETE /api/posts/:id

GET    /api/categories
POST   /api/categories
DELETE /api/categories/:id

GET    /api/posts/:postId/comments
POST   /api/posts/:postId/comments
DELETE /api/comments/:id
```

## AWS Deployment Later

This app is structured so we can later deploy it as:

```txt
Route 53
  ↓
ACM SSL Certificate
  ↓
Application Load Balancer
  ↓
Auto Scaling Group - Frontend EC2 instances
  ↓
Auto Scaling Group - Backend EC2 instances
  ↓
RDS MySQL in private subnet
```

Later steps:
1. Run locally
2. Push to GitHub
3. Manual AWS 3-tier deployment
4. CI/CD using GitHub + CodePipeline + CodeBuild + CodeDeploy
5. Convert infrastructure to CloudFormation
6. Convert infrastructure to Terraform
7. Dockerize frontend/backend
8. Deploy Docker version to EC2/ECS
