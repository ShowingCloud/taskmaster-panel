-- Fix Supabase Auth OTP expiry configuration
-- Update the auth configuration to set a more secure OTP expiry time
UPDATE auth.config 
SET otp_exp = 600  -- 10 minutes instead of default 1 hour
WHERE name = 'OTP_EXPIRY';