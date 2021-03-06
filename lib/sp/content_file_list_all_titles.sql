--iterator
SELECT
    cfile.id as fileid,
    cfile.title,
    cfile.artist,
    cfile.album,
    cfile.content_type,
    cfile.name,
    cfolder.path,
    cfolder.id as folderid
FROM
    content_file as cfile
LEFT JOIN
    content_folder as cfolder
ON
    cfile.parent_id = cfolder.id
ORDER BY
    cfile.title,
    cfile.artist
