
      merge into `dbt-project-437116`.`snapshots`.`tripdata_snapshot` as DBT_INTERNAL_DEST
    using `dbt-project-437116`.`snapshots`.`tripdata_snapshot__dbt_tmp` as DBT_INTERNAL_SOURCE
    on DBT_INTERNAL_SOURCE.dbt_scd_id = DBT_INTERNAL_DEST.dbt_scd_id

    when matched
     and DBT_INTERNAL_DEST.dbt_valid_to is null
     and DBT_INTERNAL_SOURCE.dbt_change_type in ('update', 'delete')
        then update
        set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to

    when not matched
     and DBT_INTERNAL_SOURCE.dbt_change_type = 'insert'
        then insert (`_id`, `tripduration`, `starttime`, `stoptime`, `start station id`, `start station name`, `start station latitude`, `start station longitude`, `end station id`, `end station name`, `end station latitude`, `end station longitude`, `bikeid`, `usertype`, `birth year`, `gender`, `dbt_updated_at`, `dbt_valid_from`, `dbt_valid_to`, `dbt_scd_id`)
        values (`_id`, `tripduration`, `starttime`, `stoptime`, `start station id`, `start station name`, `start station latitude`, `start station longitude`, `end station id`, `end station name`, `end station latitude`, `end station longitude`, `bikeid`, `usertype`, `birth year`, `gender`, `dbt_updated_at`, `dbt_valid_from`, `dbt_valid_to`, `dbt_scd_id`)


  