SELECT arcwo.workorderid AS "Request ID",
    arcrequester.first_name AS "Requester",
    arcwo.title AS "Subject",
    arcwo.deptname AS "Department",
    arcwo.sitename AS "Site",
    arcwo.queuename AS "Group",
        CASE
            WHEN arcwo.queuename = 'CH -- Capital Humano'::citext THEN 'CH - Capital Humano'::text
            WHEN arcwo.queuename = 'FA -- Facturacion/ Cobros'::citext THEN 'FA - Contabilidad'::text
            WHEN arcwo.queuename = 'CO -- Contabilidad'::citext THEN 'FA - Contabilidad'::text
            WHEN arcwo.queuename = 'CO -- Tesoreria'::citext THEN 'FA - Contabilidad'::text
            WHEN arcwo.queuename = 'FA - Integraciones'::citext THEN 'FA - Integraciones'::text
            WHEN arcwo.queuename = 'NE -- Productos'::citext THEN 'NE - Productos'::text
            WHEN arcwo.queuename = 'Not Assigned'::citext THEN 'Not Assigned'::text
            WHEN arcwo.queuename = 'Not Assigned'::citext THEN 'Not Assigned'::text
            WHEN arcwo.queuename = 'OP -- Abastecimiento'::citext THEN 'OP - Abastecimiento'::text
            WHEN arcwo.queuename = 'OP -- Soporte Operaciones'::citext THEN 'OP - Mantenimiento de ATMs'::text
            WHEN arcwo.queuename = 'OP -- Monitoreo'::citext THEN 'OP - Monitoreo de ATMs'::text
            WHEN arcwo.queuename = 'OP -- PMO'::citext THEN 'OP - PMO'::text
            WHEN arcwo.queuename = 'PMO -- Proyectos'::citext THEN 'OP - PMO'::text
            WHEN arcwo.queuename = 'CM -- Compras'::citext THEN 'OP - Procurement'::text
            WHEN arcwo.queuename = 'RG -- Análisis de Vulnerabilidades'::citext THEN 'RG - Analisis de Vulnerabilidades'::text
            WHEN arcwo.queuename = 'Areas Seguras'::citext THEN 'RG - Areas Seguras'::text
            WHEN arcwo.queuename = 'RG -- Comite de Incidentes'::citext THEN 'RG - Comite de Incidentes'::text
            WHEN arcwo.queuename = 'RG -- Cumplimiento'::citext THEN 'RG - Cumplimiento'::text
            WHEN arcwo.queuename = 'RG-- Reaccion ATM'::citext THEN 'RG - Reaccion ATM'::text
            WHEN arcwo.queuename = 'RG -- Riesgos Seguridad ATM´s'::citext THEN 'RG - Riesgos Seguridad ATMs'::text
            WHEN arcwo.queuename = 'SAC -- Analistas de Reclamos'::citext THEN 'SAC - Analista de Reclamos'::text
            WHEN arcwo.queuename = 'OP -- Servicios'::citext THEN 'SAC - Contact Center'::text
            WHEN arcwo.queuename = 'SAC -- Contact Center'::citext THEN 'SAC - Contact Center'::text
            WHEN arcwo.queuename = 'SAC - Coordinación'::citext THEN 'SAC - Coordinacion'::text
            WHEN arcwo.queuename = 'IT - Administración ATMs'::citext THEN 'TI - Administración ATMs'::text
            WHEN arcwo.queuename = 'IT -- Administración del Procesador TC'::citext THEN 'TI - Administración PTC'::text
            WHEN arcwo.queuename = 'IT - Administración PTC'::citext THEN 'TI - Administración PTC'::text
            WHEN arcwo.queuename = 'IT - Administración SWITCH'::citext THEN 'TI - Administración Switch'::text
            WHEN arcwo.queuename = 'IT - Analista Switch'::citext THEN 'TI - Analista Switch'::text
            WHEN arcwo.queuename = 'IT -- Supervisores OSI'::citext THEN 'TI - Analista Switch'::text
            WHEN arcwo.queuename = 'IT - Auxiliar ATMs'::citext THEN 'TI - Auxiliar ATMs'::text
            WHEN arcwo.queuename = 'IT -- OSI ATM'::citext THEN 'TI - Auxiliar ATMs'::text
            WHEN arcwo.queuename = 'IT -- OSI Operadores ATMs'::citext THEN 'TI - Auxiliar ATMs'::text
            WHEN arcwo.queuename = 'IT - Auxiliar PTC'::citext THEN 'TI - Auxiliar PTC'::text
            WHEN arcwo.queuename = 'IT -- Operadores Del Procesador TC'::citext THEN 'TI - Auxiliar PTC'::text
            WHEN arcwo.queuename = 'IT -- Base de Datos'::citext THEN 'TI - Base de Datos'::text
            WHEN arcwo.queuename = 'OP -- Creación HHD'::citext THEN 'TI - Creacion HHD'::text
            WHEN arcwo.queuename = 'IT -- Desarrollo Procesador TC'::citext THEN 'TI - Desarrollo PTC'::text
            WHEN arcwo.queuename = 'Mesa de Ayuda Desarrollo'::citext THEN 'TI - Desarrollo PTC'::text
            WHEN arcwo.queuename = 'IT -- Desarrollo Switch'::citext THEN 'TI - Desarrollo Switch'::text
            WHEN arcwo.queuename = 'IT -- Desarrollo y Soporte BOS'::citext THEN 'TI - Desarrollo Switch'::text
            WHEN arcwo.queuename = 'IT -- Desarrollo y Soporte SOA'::citext THEN 'TI - Desarrollo Switch'::text
            WHEN arcwo.queuename = 'IT -- Administracion Sistemas'::citext THEN 'TI - Infraestructura'::text
            WHEN arcwo.queuename = 'IT -- Administradores de Sistemas'::citext THEN 'TI - Infraestructura'::text
            WHEN arcwo.queuename = 'IT -- Operaciones de Sistemas'::citext THEN 'TI - Infraestructura'::text
            WHEN arcwo.queuename = 'IT - Seguridad'::citext THEN 'TI - Infraestructura'::text
            WHEN arcwo.queuename = 'IT -- Soporte CDE'::citext THEN 'TI - Infraestructura'::text
            WHEN arcwo.queuename = 'IT- INFRAESTRUCTURA'::citext THEN 'TI - Infraestructura'::text
            WHEN arcwo.queuename = 'Soporte de Sistemas'::citext THEN 'TI - Infraestructura'::text
            WHEN arcwo.queuename = 'TI - Soporte Infraestructura'::citext THEN 'TI - Infraestructura'::text
            WHEN arcwo.queuename = 'OP -- Instalaciones de Cajero'::citext THEN 'TI - Instalación de ATMs'::text
            WHEN arcwo.queuename = 'TI -- Factibilidades'::citext THEN 'TI - Instalación de ATMs'::text
            WHEN arcwo.queuename = 'IT - Producción'::citext THEN 'TI - Producción'::text
            WHEN arcwo.queuename = 'IT -- QA'::citext THEN 'TI - QA'::text
            WHEN arcwo.queuename = 'IT -- Soporte Desarrollo Procesador TC'::citext THEN 'TI - Soporte Desarrollo PTC'::text
            WHEN arcwo.queuename = 'IT -- Service Desk'::citext THEN 'TI - Soporte Tecnico'::text
            WHEN arcwo.queuename = 'IT -- Soporte Tecnico'::citext THEN 'TI - Soporte Tecnico'::text
            WHEN arcwo.queuename = 'IT -- Telecomunicaciones'::citext THEN 'TI - Telecomunicaciones'::text
            WHEN arcwo.queuename = 'CH - Capital Humano'::citext THEN 'CH - Capital Humano'::text
            WHEN arcwo.queuename = 'OP - Compras'::citext THEN 'OP - Compras'::text
            WHEN arcwo.queuename = 'FA - Contabilidad'::citext THEN 'FA - Contabilidad'::text
            WHEN arcwo.queuename = 'TI - Administración ATMs'::citext THEN 'TI - Administración ATMs'::text
            WHEN arcwo.queuename = 'TI - Administración PTC'::citext THEN 'TI - Administración PTC'::text
            WHEN arcwo.queuename = 'TI - Administración SWITCH'::citext THEN 'TI - Administración Switch'::text
            WHEN arcwo.queuename = 'TI - Analista Switch'::citext THEN 'TI - Analista Switch'::text
            WHEN arcwo.queuename = 'TI - Infraestructura'::citext THEN 'TI - Infraestructura'::text
            WHEN arcwo.queuename = 'TI - Base de Datos'::citext THEN 'TI - Base de Datos'::text
            WHEN arcwo.queuename = 'TI - Creacion HHD'::citext THEN 'TI - Creacion HHD'::text
            WHEN arcwo.queuename = 'TI - Instalaciones de ATM'::citext THEN 'TI - Instalación de ATMs'::text
            WHEN arcwo.queuename = 'OP - Mantenimiento de ATMs'::citext THEN 'OP - Mantenimiento de ATMs'::text
            WHEN arcwo.queuename = 'TI - Auxiliar ATMs'::citext THEN 'TI - Auxiliar ATMs'::text
            WHEN arcwo.queuename = 'TI - Auxiliar PTC'::citext THEN 'TI - Auxiliar PTC'::text
            WHEN arcwo.queuename = 'TI - Producción'::citext THEN 'TI - Producción'::text
            WHEN arcwo.queuename = 'TI - Desarrollo PTC'::citext THEN 'TI - Desarrollo PTC'::text
            WHEN arcwo.queuename = 'TI - Desarrollo y Soporte BOS'::citext THEN 'TI - Desarrollo Switch'::text
            WHEN arcwo.queuename = 'TI - QA'::citext THEN 'TI - QA'::text
            WHEN arcwo.queuename = 'TI - Soporte CDE'::citext THEN 'TI - Soporte CDE'::text
            WHEN arcwo.queuename = 'TI - Soporte Desarrollo PTC'::citext THEN 'TI - Soporte Desarrollo PTC'::text
            WHEN arcwo.queuename = 'TI - Soporte Tecnico'::citext THEN 'TI - Soporte Tecnico'::text
            WHEN arcwo.queuename = 'TI - Telecomunicaciones'::citext THEN 'TI - Telecomunicaciones'::text
            WHEN arcwo.queuename = 'NE - Productos'::citext THEN 'NE - Productos'::text
            WHEN arcwo.queuename = 'OP - Abastecimientos de ATM'::citext THEN 'OP - Abastecimientos de ATM'::text
            WHEN arcwo.queuename = 'OP - Monitoreo de ATMs'::citext THEN 'OP - Monitoreo de ATMs'::text
            WHEN arcwo.queuename = 'OP - PMO'::citext THEN 'OP - PMO'::text
            WHEN arcwo.queuename = 'RFA - Nuevo RFA'::citext THEN 'RFA - Nuevo RFA'::text
            WHEN arcwo.queuename = 'RFA -Template'::citext THEN 'RFA -Template'::text
            WHEN arcwo.queuename = 'RI - Análisis de Vulnerabilidades'::citext THEN 'RI - Análisis de Vulnerabilidades'::text
            WHEN arcwo.queuename = 'RI - Comite de Incidentes'::citext THEN 'RI - Comite de Incidentes'::text
            WHEN arcwo.queuename = 'RI - Cumplimiento'::citext THEN 'RI - Cumplimiento'::text
            WHEN arcwo.queuename = 'RI - Riesgos Seguridad ATMs'::citext THEN 'RI - Riesgos Seguridad ATMs'::text
            WHEN arcwo.queuename = 'RI - Reaccion ATM'::citext THEN 'RI - Reaccion ATM'::text
            WHEN arcwo.queuename = 'SAC - Analistas de Reclamos'::citext THEN 'SAC - Analistas de Reclamos'::text
            WHEN arcwo.queuename = 'SAC - Contact Center'::citext THEN 'SAC - Contact Center'::text
            WHEN arcwo.queuename = 'TI - CMDB'::citext THEN 'TI - CMDB'::text
            ELSE NULL::text
        END AS "GRUPO_OFICIAL",
   FROM arc_workorder arcwo
     LEFT JOIN aaauser arcrequester ON arcwo.requesterid = arcrequester.user_id
     LEFT JOIN aaauser arctech ON arcwo.ownerid = arctech.user_id
     LEFT JOIN aaausercontactinfo auci ON arcrequester.user_id = auci.user_id
     LEFT JOIN aaacontactinfo aci ON auci.contactinfo_id = aci.contactinfo_id
  WHERE arcwo.statusname <> 'Cancelado'::citext OR arcwo.statusname IS NULL
  NUEVA PRUEBA
