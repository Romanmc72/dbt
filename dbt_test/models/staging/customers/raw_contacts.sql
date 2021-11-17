
-- Use the `ref` function to select from other models

select *
from {{ source('source_schema', 'contacts') }}
