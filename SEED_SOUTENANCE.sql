-- ================================================================
--  FLEET MANAGER — Données de soutenance complètes
--  Exécuter dans : Supabase → SQL Editor → Run
--  Contient : 1 admin + 50 clients + réservations + avis + factures
-- ================================================================

-- ── 1. NETTOYAGE (optionnel, commenter si données déjà en prod) ──
DELETE FROM reviews        WHERE true;
DELETE FROM invoices       WHERE true;
DELETE FROM reservations   WHERE true;
DELETE FROM notifications  WHERE true;
DELETE FROM users          WHERE email LIKE '%@fleet-demo.sn' OR email = 'admin@fleet.com';

-- ── 2. ADMIN ─────────────────────────────────────────────────────
INSERT INTO users (email, password_hash, first_name, last_name, phone, role, doc_status) VALUES
('admin@fleet.com',
 'pbkdf2:sha256:1000000$AsiENBtoyC4VxK5X$4fbc499bf0edb08351d0256a157405ba5f32c07c1f23a2a8c38525e9386a9d48',
 'Mamadou', 'Sarr', '776729740', 'admin', 'approuve');

-- ── 3. 50 CLIENTS ─────────────────────────────────────────────────
-- Mot de passe universel clients : Fleet2025!
-- hash : pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39

INSERT INTO users (email, password_hash, first_name, last_name, phone, role, doc_status) VALUES
('ibrahima.fall@fleet-demo.sn',    'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Ibrahima',   'Fall',       '771100001', 'client', 'approuve'),
('fatou.diop@fleet-demo.sn',       'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Fatou',      'Diop',       '771100002', 'client', 'approuve'),
('amadou.ba@fleet-demo.sn',        'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Amadou',     'Ba',         '771100003', 'client', 'approuve'),
('mariama.ndiaye@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Mariama',    'Ndiaye',     '771100004', 'client', 'approuve'),
('ousmane.sow@fleet-demo.sn',      'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Ousmane',    'Sow',        '771100005', 'client', 'approuve'),
('aissatou.mbaye@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Aissatou',   'Mbaye',      '771100006', 'client', 'approuve'),
('cheikh.gueye@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Cheikh',     'Gueye',      '771100007', 'client', 'approuve'),
('rokhaya.diallo@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Rokhaya',    'Diallo',     '771100008', 'client', 'approuve'),
('moussa.traore@fleet-demo.sn',    'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Moussa',     'Traore',     '771100009', 'client', 'approuve'),
('ndey.faye@fleet-demo.sn',        'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Ndey',       'Faye',       '771100010', 'client', 'approuve'),
('pape.niang@fleet-demo.sn',       'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Pape',       'Niang',      '771100011', 'client', 'approuve'),
('awa.toure@fleet-demo.sn',        'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Awa',        'Toure',      '771100012', 'client', 'approuve'),
('lamine.diouf@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Lamine',     'Diouf',      '771100013', 'client', 'approuve'),
('seynabou.cisse@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Seynabou',   'Cisse',      '771100014', 'client', 'approuve'),
('modou.lo@fleet-demo.sn',         'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Modou',      'Lo',         '771100015', 'client', 'approuve'),
('khady.badji@fleet-demo.sn',      'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Khady',      'Badji',      '771100016', 'client', 'approuve'),
('alioune.diagne@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Alioune',    'Diagne',     '771100017', 'client', 'approuve'),
('coumba.wane@fleet-demo.sn',      'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Coumba',     'Wane',       '771100018', 'client', 'approuve'),
('babacar.ndir@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Babacar',    'Ndir',       '771100019', 'client', 'approuve'),
('ndeye.sarr@fleet-demo.sn',       'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Ndeye',      'Sarr',       '771100020', 'client', 'approuve'),
('tidiane.seck@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Tidiane',    'Seck',       '771100021', 'client', 'approuve'),
('binta.diakhaby@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Binta',      'Diakhaby',   '771100022', 'client', 'approuve'),
('assane.diouf@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Assane',     'Diouf',      '771100023', 'client', 'approuve'),
('mame.diarra@fleet-demo.sn',      'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Mame',       'Diarra',     '771100024', 'client', 'approuve'),
('elhadji.kane@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'El Hadji',   'Kane',       '771100025', 'client', 'approuve'),
('sokhna.mboup@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Sokhna',     'Mboup',      '771100026', 'client', 'approuve'),
('malick.niasse@fleet-demo.sn',    'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Malick',     'Niasse',     '771100027', 'client', 'approuve'),
('yaye.ndoye@fleet-demo.sn',       'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Yaye',       'Ndoye',      '771100028', 'client', 'approuve'),
('papa.diaw@fleet-demo.sn',        'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Papa',       'Diaw',       '771100029', 'client', 'approuve'),
('aminata.coulibaly@fleet-demo.sn','pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Aminata',    'Coulibaly',  '771100030', 'client', 'approuve'),
-- 31-40 : dossiers en attente ou rejetés (réalisme)
('samba.camara@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Samba',      'Camara',     '771100031', 'client', 'en_attente'),
('maimouna.barry@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Maimouna',   'Barry',      '771100032', 'client', 'en_attente'),
('ibou.dieng@fleet-demo.sn',       'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Ibou',       'Dieng',      '771100033', 'client', 'en_attente'),
('fatima.tall@fleet-demo.sn',      'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Fatima',     'Tall',       '771100034', 'client', 'en_attente'),
('daouda.coly@fleet-demo.sn',      'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Daouda',     'Coly',       '771100035', 'client', 'rejete'),
('anta.ba@fleet-demo.sn',          'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Anta',       'Ba',         '771100036', 'client', 'en_attente'),
('mamadou.diallo@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Mamadou',    'Diallo',     '771100037', 'client', 'approuve'),
('adja.sene@fleet-demo.sn',        'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Adja',       'Sene',       '771100038', 'client', 'approuve'),
('saliou.mbengue@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Saliou',     'Mbengue',    '771100039', 'client', 'approuve'),
('oumou.kouyate@fleet-demo.sn',    'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Oumou',      'Kouyate',    '771100040', 'client', 'approuve'),
-- 41-50 : nouveaux comptes (aucun doc)
('pierre.mendy@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Pierre',     'Mendy',      '771100041', 'client', 'aucun'),
('francoise.gomis@fleet-demo.sn',  'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Françoise',  'Gomis',      '771100042', 'client', 'aucun'),
('alpha.diallo@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Alpha',      'Diallo',     '771100043', 'client', 'aucun'),
('nafi.ndiaye@fleet-demo.sn',      'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Nafi',       'Ndiaye',     '771100044', 'client', 'aucun'),
('boubacar.diop@fleet-demo.sn',    'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Boubacar',   'Diop',       '771100045', 'client', 'aucun'),
('kadiatou.balde@fleet-demo.sn',   'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Kadiatou',   'Balde',      '771100046', 'client', 'aucun'),
('serigne.faye@fleet-demo.sn',     'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Serigne',    'Faye',       '771100047', 'client', 'aucun'),
('ndoye.toure@fleet-demo.sn',      'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Ndoye',      'Toure',      '771100048', 'client', 'aucun'),
('tening.diedhiou@fleet-demo.sn',  'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Tening',     'Diedhiou',   '771100049', 'client', 'aucun'),
('waly.ndiaye@fleet-demo.sn',      'pbkdf2:sha256:1000000$qCHtazEYJuRTdfYe$5cfad6df3e5938abcd0de34e98aa3aea7082a77093d41f90ed36aef48eb38d39', 'Waly',       'Ndiaye',     '771100050', 'client', 'aucun');

-- ── 4. RÉSERVATIONS RÉALISTES ──────────────────────────────────
-- On utilise les IDs dynamiquement via un bloc DO $$
DO $$
DECLARE
  -- Vehicles (on prend les 5 premiers disponibles)
  v1 INT; v2 INT; v3 INT; v4 INT; v5 INT;
  -- Clients approuvés (les 10 premiers)
  u1 INT; u2 INT; u3 INT; u4 INT; u5 INT;
  u6 INT; u7 INT; u8 INT; u9 INT; u10 INT;
  u11 INT; u12 INT; u13 INT; u14 INT; u15 INT;
  r1 INT; r2 INT; r3 INT; r4 INT; r5 INT;
  r6 INT; r7 INT; r8 INT; r9 INT; r10 INT;
  r11 INT; r12 INT; r13 INT; r14 INT; r15 INT;
  p1 NUMERIC; p2 NUMERIC; p3 NUMERIC; p4 NUMERIC; p5 NUMERIC;
BEGIN
  -- Récupérer les véhicules
  SELECT id, price_per_day INTO v1, p1 FROM vehicles ORDER BY id LIMIT 1;
  SELECT id, price_per_day INTO v2, p2 FROM vehicles ORDER BY id OFFSET 1 LIMIT 1;
  SELECT id, price_per_day INTO v3, p3 FROM vehicles ORDER BY id OFFSET 2 LIMIT 1;
  SELECT id, price_per_day INTO v4, p4 FROM vehicles ORDER BY id OFFSET 3 LIMIT 1;
  SELECT id, price_per_day INTO v5, p5 FROM vehicles ORDER BY id OFFSET 4 LIMIT 1;
  IF v2 IS NULL THEN v2:=v1; p2:=p1; END IF;
  IF v3 IS NULL THEN v3:=v1; p3:=p1; END IF;
  IF v4 IS NULL THEN v4:=v2; p4:=p2; END IF;
  IF v5 IS NULL THEN v5:=v3; p5:=p3; END IF;

  -- Récupérer les clients approuvés
  SELECT id INTO u1  FROM users WHERE email='ibrahima.fall@fleet-demo.sn';
  SELECT id INTO u2  FROM users WHERE email='fatou.diop@fleet-demo.sn';
  SELECT id INTO u3  FROM users WHERE email='amadou.ba@fleet-demo.sn';
  SELECT id INTO u4  FROM users WHERE email='mariama.ndiaye@fleet-demo.sn';
  SELECT id INTO u5  FROM users WHERE email='ousmane.sow@fleet-demo.sn';
  SELECT id INTO u6  FROM users WHERE email='aissatou.mbaye@fleet-demo.sn';
  SELECT id INTO u7  FROM users WHERE email='cheikh.gueye@fleet-demo.sn';
  SELECT id INTO u8  FROM users WHERE email='rokhaya.diallo@fleet-demo.sn';
  SELECT id INTO u9  FROM users WHERE email='moussa.traore@fleet-demo.sn';
  SELECT id INTO u10 FROM users WHERE email='ndey.faye@fleet-demo.sn';
  SELECT id INTO u11 FROM users WHERE email='pape.niang@fleet-demo.sn';
  SELECT id INTO u12 FROM users WHERE email='awa.toure@fleet-demo.sn';
  SELECT id INTO u13 FROM users WHERE email='lamine.diouf@fleet-demo.sn';
  SELECT id INTO u14 FROM users WHERE email='alioune.diagne@fleet-demo.sn';
  SELECT id INTO u15 FROM users WHERE email='elhadji.kane@fleet-demo.sn';

  -- ─ RÉSERVATIONS TERMINÉES (historique riche) ─────────────────
  -- R1 : Ibrahima — 3 mois ago
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u1,v1,CURRENT_DATE-95,CURRENT_DATE-90, p1*5,'terminee','Voyage affaires Dakar-Saint-Louis')
  RETURNING id INTO r1;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r1,u1,p1*5,'emise');
  INSERT INTO reviews(reservation_id,user_id,vehicle_id,comfort_note,cleanliness_note,reliability_note,service_note,comment)
  VALUES(r1,u1,v1,5,5,4,5,'Excellent service, véhicule impeccable. Je recommande vivement !');

  -- R2 : Fatou — 2.5 mois ago
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u2,v2,CURRENT_DATE-75,CURRENT_DATE-72, p2*3,'terminee','Weekend famille')
  RETURNING id INTO r2;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r2,u2,p2*3,'emise');
  INSERT INTO reviews(reservation_id,user_id,vehicle_id,comfort_note,cleanliness_note,reliability_note,service_note,comment)
  VALUES(r2,u2,v2,4,5,5,4,'Très bon véhicule, propre et fiable. Livraison ponctuelle.');

  -- R3 : Amadou — 2 mois ago
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u3,v3,CURRENT_DATE-62,CURRENT_DATE-55, p3*7,'terminee','Mission professionnelle')
  RETURNING id INTO r3;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r3,u3,p3*7,'emise');
  INSERT INTO reviews(reservation_id,user_id,vehicle_id,comfort_note,cleanliness_note,reliability_note,service_note,comment)
  VALUES(r3,u3,v3,5,4,5,5,'La plateforme de réservation est moderne et intuitive. Parfait.');

  -- R4 : Mariama — 7 semaines ago
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u4,v1,CURRENT_DATE-51,CURRENT_DATE-47, p1*4,'terminee','Événement familial')
  RETURNING id INTO r4;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r4,u4,p1*4,'emise');
  INSERT INTO reviews(reservation_id,user_id,vehicle_id,comfort_note,cleanliness_note,reliability_note,service_note,comment)
  VALUES(r4,u4,v1,4,4,5,4,'Bonne expérience globale. Je reviendrai.');

  -- R5 : Ousmane — 6 semaines ago
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u5,v2,CURRENT_DATE-44,CURRENT_DATE-39, p2*5,'terminee','Déplacement Ziguinchor')
  RETURNING id INTO r5;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r5,u5,p2*5,'emise');
  INSERT INTO reviews(reservation_id,user_id,vehicle_id,comfort_note,cleanliness_note,reliability_note,service_note,comment)
  VALUES(r5,u5,v2,5,5,5,5,'Service 5 étoiles. Le meilleur de Dakar !');

  -- R6 : Aissatou — 5 semaines ago
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u6,v4,CURRENT_DATE-37,CURRENT_DATE-34, p4*3,'terminee','Déménagement')
  RETURNING id INTO r6;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r6,u6,p4*3,'emise');

  -- R7 : Cheikh — 4 semaines ago
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u7,v5,CURRENT_DATE-29,CURRENT_DATE-25, p5*4,'terminee','Séminaire entreprise')
  RETURNING id INTO r7;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r7,u7,p5*4,'emise');
  INSERT INTO reviews(reservation_id,user_id,vehicle_id,comfort_note,cleanliness_note,reliability_note,service_note,comment)
  VALUES(r7,u7,v5,4,5,4,5,'Véhicule spacieux, idéal pour notre équipe de 4 personnes.');

  -- R8 : Rokhaya — 3 semaines ago
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u8,v1,CURRENT_DATE-22,CURRENT_DATE-19, p1*3,'terminee','Mariage')
  RETURNING id INTO r8;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r8,u8,p1*3,'emise');
  INSERT INTO reviews(reservation_id,user_id,vehicle_id,comfort_note,cleanliness_note,reliability_note,service_note,comment)
  VALUES(r8,u8,v1,5,5,5,5,'Parfait pour le jour J. Merci à toute l''équipe !');

  -- R9 : Moussa — 2 semaines ago
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u9,v3,CURRENT_DATE-15,CURRENT_DATE-11, p3*4,'terminee','Voyage Thiès')
  RETURNING id INTO r9;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r9,u9,p3*4,'emise');

  -- R10 : Ndey — semaine dernière
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u10,v2,CURRENT_DATE-8,CURRENT_DATE-5, p2*3,'terminee','Visite médicale')
  RETURNING id INTO r10;
  INSERT INTO invoices(reservation_id,user_id,amount,status) VALUES(r10,u10,p2*3,'emise');
  INSERT INTO reviews(reservation_id,user_id,vehicle_id,comfort_note,cleanliness_note,reliability_note,service_note,comment)
  VALUES(r10,u10,v2,4,4,4,4,'Bon rapport qualité-prix. Réservation facile en ligne.');

  -- ─ RÉSERVATIONS CONFIRMÉES (en cours) ────────────────────────
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u11,v4,CURRENT_DATE-2,CURRENT_DATE+3, p4*5,'confirmee','Déplacement professionnel')
  RETURNING id INTO r11;

  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u12,v5,CURRENT_DATE,CURRENT_DATE+4, p5*4,'confirmee','Voyage de noces')
  RETURNING id INTO r12;

  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u13,v1,CURRENT_DATE+1,CURRENT_DATE+6, p1*5,'confirmee','Formation régionale')
  RETURNING id INTO r13;

  -- ─ RÉSERVATIONS EN ATTENTE ────────────────────────────────────
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u14,v2,CURRENT_DATE+3,CURRENT_DATE+7, p2*4,'en_attente','Réunion famille Touba')
  RETURNING id INTO r14;

  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u15,v3,CURRENT_DATE+5,CURRENT_DATE+9, p3*4,'en_attente','Conférence internationale')
  RETURNING id INTO r15;

  -- ─ ANNULÉE (réalisme) ─────────────────────────────────────────
  INSERT INTO reservations (user_id,vehicle_id,date_start,date_end,total_price,status,notes)
  VALUES (u3,v4,CURRENT_DATE-30,CURRENT_DATE-27, p4*3,'annulee','Annulé — raison personnelle');

  RAISE NOTICE 'Seed completed: 15 reservations, 10 reviews, invoices generated.';
END $$;

-- ── 5. NOTIFICATIONS POUR L'ADMIN ────────────────────────────────
DO $$
DECLARE adm INT;
BEGIN
  SELECT id INTO adm FROM users WHERE email='admin@fleet.com';
  IF adm IS NOT NULL THEN
    INSERT INTO notifications(user_id,title,message,type,read) VALUES
    (adm,'Dossier reçu — Samba Camara','Samba Camara a soumis ses documents pour validation.','warning',false),
    (adm,'Dossier reçu — Maimouna Barry','Maimouna Barry attend la validation de son dossier.','warning',false),
    (adm,'Dossier reçu — Ibou Dieng','Ibou Dieng a déposé ses pièces justificatives.','warning',false),
    (adm,'Dossier reçu — Fatima Tall','Fatima Tall a soumis son dossier complet.','warning',false),
    (adm,'Nouvelle réservation','Alioune Diagne — Demande de réservation en attente de confirmation.','info',false),
    (adm,'Nouvelle réservation','El Hadji Kane — Demande de réservation à traiter.','info',false),
    (adm,'Rapport mensuel','Le CA du mois dépasse l''objectif fixé. Consultez le tableau Analytics.','success',true);
  END IF;
END $$;

-- ── 6. VÉRIFICATION ──────────────────────────────────────────────
SELECT '=== RÉSUMÉ ===' as info;
SELECT
  (SELECT COUNT(*) FROM users WHERE role='client') as total_clients,
  (SELECT COUNT(*) FROM users WHERE doc_status='approuve' AND role='client') as approuves,
  (SELECT COUNT(*) FROM users WHERE doc_status='en_attente') as en_attente,
  (SELECT COUNT(*) FROM reservations) as total_reservations,
  (SELECT COUNT(*) FROM reservations WHERE status='terminee') as terminees,
  (SELECT COUNT(*) FROM reviews) as avis,
  (SELECT COUNT(*) FROM invoices) as factures,
  (SELECT SUM(total_price) FROM reservations WHERE status='terminee') as ca_total;
