SELECT TOP 500000
   p.objid,p.ra,p.dec,p.u,p.g,p.r,p.i,p.z,
   p.run, p.rerun, p.camcol, p.field,
   p.modelFlux_u, p.modelFlux_g,p.modelFlux_r,
   p.modelFlux_i,p.modelFlux_z,
   s.specobjid, s.class, s.z as redshift,
   s.plate, s.mjd, s.fiberid
FROM PhotoObj AS p
   JOIN SpecObj AS s ON s.bestobjid = p.objid
WHERE s.class IN ('STAR', 'GALAXY')
