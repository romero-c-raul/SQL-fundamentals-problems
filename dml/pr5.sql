SELECT devices.name, count(devices.id) AS number_of_parts
  FROM devices
  LEFT JOIN parts ON ( devices.id = parts.device_id )
  GROUP BY devices.name;