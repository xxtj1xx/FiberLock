# FiberLock Deployment Guide (Supabase + Vercel - 2026 Ready)

## 1. Supabase Backend
1. Create free Supabase project at supabase.com
2. Run `backend/supabase_schema.sql` in SQL editor
3. Enable Row Level Security + Realtime
4. Add your Supabase URL and anon key to Flutter & React env vars

## 2. Vercel Frontend Deployment
- **Mobile (Flutter Web)**: Connect GitHub repo → Vercel auto-detects Flutter
- **Engineer Portal (React)**: Same repo, deploy `/web` folder
- Full tutorial: https://www.youtube.com/watch?v=V6khiLrp9Xo (Supabase+Vercel)
- Flutter Web: https://www.youtube.com/watch?v=HzHVFz-am3s
- React: https://www.youtube.com/watch?v=2YtjBXK5vGw

## 3. Live Demo Links (after deploy)
- Mobile: https://fiberlock-mobile.vercel.app (placeholder)
- Web Portal: https://fiberlock-engineer.vercel.app

Environment variables needed: SUPABASE_URL, SUPABASE_ANON_KEY, NOC_MOCK_URL

One-click deploy ready!