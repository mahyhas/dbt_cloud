-- هذا الجزء يسمى الـ Configuration
{{ config(materialized='table') }}

with raw_orders as (
    -- جلب البيانات من المصدر الذي عرفناه في الخطوة الأولى
    select * from dbt_cloud.raw_schema.orders
),

transformed as (
    select
        order_id,
        customer_id,
        order_date,
        -- تحويل الحالة إلى حروف صغيرة لتوحيد البيانات
        lower(status) as order_status,
        total_amount,
        shipping_city,
        payment_method,
        -- إضافة عمود جديد لحساب ضريبة افتراضية (مثلاً 15%)
        total_amount * 0.15 as tax_amount,
        case 
            when total_amount > 500 then 'High Value'
            else 'Standard'
        end as order_category
    from raw_orders
)

select * from transformed