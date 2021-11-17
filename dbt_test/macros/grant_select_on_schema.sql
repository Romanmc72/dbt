/*
 * This will grant select privileges to the group specified for all schemas
 * passed to the macro. Call the macro like so
 * `grant_select_on_schemas(schemas: list[str], group: str)`
 * then all tables existing and all future tables will receive read privileges.
 */

{% macro grant_select_on_schemas(schemas, group) %}
  {% for schema in schemas %}
    GRANT USAGE ON SCHEMA {{ schema }}
    TO GROUP {{ group }}
    ;
    GRANT SELECT ON ALL TABLES IN SCHEMA {{ schema }}
    TO GROUP {{ group }}
    ;
    ALTER DEFAULT PRIVILEGES IN SCHEMA {{ schema }}
    GRANT SELECT ON TABLES TO GROUP {{ group }}
    ;
  {% endfor %}
{% endmacro %}
