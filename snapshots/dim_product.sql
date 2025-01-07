--
--
--SNAPSHOT_NAME=dim_product
--SOURCE_TABLE=product
--TARGET_TABLE=dim_product
--RUN_COMMAND="dbt snapshot -m ${SNAPSHOT_NAME}"
--
--
{% snapshot dim_product %}
    {{ config( source_table = 'prdoudct_stream',
               unique_key='pid', 
               strategy='timestamp',
               updated_at='updated_at'
              )
     }}

with product_stream_cte as
(
SELECT *
FROM product_stream
),
--
final as
(
SELECT *
FROM product_stream_cte
)
--
SELECT *
FROM final
--
{% endsnapshot %}
#
#
