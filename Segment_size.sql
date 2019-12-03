-- Show segment size  in  bytes and wich table this below

Select  a.owner, a.table_name, a.segment_name, b.bytes
From DBA_LOBS a
INNER JOIN DBA_SEGMENTS b ON b.SEGMENT_NAME=a.segment_name
ORDER BY b.bytes desc
