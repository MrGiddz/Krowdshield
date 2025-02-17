CREATE TABLE incidents (
 id SERIAL PRIMARY KEY,
 title VARCHAR(255) NOT NULL,
 description TEXT NOT NULL,
 location VARCHAR(255) NOT NULL,
 reported_by VARCHAR(100) NOT NULL,
 created_at TIMESTAMP DEFAULT NOW()
);
I

INSERT INTO incidents (title, description, location, reported_by, created_at) 
VALUES ('Armed robbery in progress', 'A robbery is taking place at Location A.', 'Location A', 'Reporter A', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Pick Pocket', 'A pickpocket was spotted at Location B.', 'Location B', 'Reporter B', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Illegal parking', 'A car was parked illegally at Location C.','Location C','Reporter C', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Car theft in progress', 'A car is being stolen at Location D.','Location D','Reporter D', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Littering', 'Littering observed in Location E.','Location E','Reporter E', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Pick Pocket','A pickpocket was spotted at Location F.','Location F', 'Reporter F', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Armed robbery in progress','A robbery is taking place at Location G.', 'Location G', 'Reporter G', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Illegal parking', 'A car was parked illegally at Location H.','Location H','Reporter H', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Car theft in progress','A car is being stolen at Location I.','Location I','Reporter I', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Littering', 'Littering observed in Location J.','Location J','Reporter J', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Pick Pocket','A pickpocket was spotted at Location K.','Location K', 'Reporter K', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Armed robbery in progress','A robbery is taking place at Location L.', 'Location L','Reporter L', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Illegal parking', 'A car was parked illegally at Location M.', 'Location M','Reporter M', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Car theft in progress', 'A car is being stolen at Location N.','Location N','Reporter N', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Littering', 'Littering observed in Location O.', 'Location O','Reporter O', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Pick Pocket', 'A pickpocket was spotted at Location P.', 'Location P','Reporter P', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Armed robbery in progress', 'A robbery is taking place at Location Q.','Location Q', 'Reporter Q', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Illegal parking', 'A car was parked illegally at Location R.', 'Location R', 'Reporter R', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Car theft in progress', 'A car is being stolen at Location S.','Location S', 'Reporter S', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() *  31))),
('Littering', 'Littering observed in Location T.', 'Location T', 'Reporter T', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Pick Pocket', 'A pickpocket was spotted at Location U.', 'Location U', 'Reporter U', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Armed robbery in progress', 'A robbery is taking place at Location V.', 'Location V', 'Reporter V', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Illegal parking', 'A car was parked illegally at Location W.', 'Location W', 'Reporter W', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Car theft in progress', 'A car is being stolen at Location X.', 'Location X', 'Reporter X', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Littering', 'Littering observed in Location Y.', 'Location Y', 'Reporter Y', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Pick Pocket', 'A pickpocket was spotted at Location Z.', 'Location Z', 'Reporter Z', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Armed robbery in progress', 'A robbery is taking place at LocationAA.', 'Location AA', 'Reporter AA', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Illegal parking', 'A car was parked illegally at Location BB.', 'Location BB', 'Reporter BB', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() *  31))),
('Car theft in progress', 'A car is being stolen at Location CC.', 'Location CC', 'Reporter CC', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Littering', 'Littering observed in Location DD.', 'Location DD', 'Reporter DD', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Pick Pocket', 'A pickpocket was spotted at Location EE.', 'LocationEE', 'Reporter EE', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Armed robbery in progress', 'A robbery is taking place at LocationFF.', 'Location FF', 'Reporter FF', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Illegal parking', 'A car was parked illegally at Location GG.', 'Location GG', 'Reporter GG', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Car theft in progress', 'A car is being stolen at Location HH.','Location HH', 'Reporter HH', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Littering', 'Littering observed in Location II.', 'Location II', 'Reporter II', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Pick Pocket', 'A pickpocket was spotted at Location JJ.', 'LocationJJ', 'Reporter JJ', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Armed robbery in progress', 'A robbery is taking place at LocationKK.', 'Location KK', 'Reporter KK', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Illegal parking', 'A car was parked illegally at Location LL.', 'Location LL', 'Reporter LL', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Car theft in progress', 'A car is being stolen at Location MM.','Location MM', 'Reporter MM', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Littering', 'Littering observed in Location NN.', 'Location NN','Reporter NN', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Pick Pocket', 'A pickpocket was spotted at Location OO.', 'LocationOO', 'Reporter OO', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Armed robbery in progress', 'A robbery is taking place at LocationPP.', 'Location PP', 'Reporter PP', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Illegal parking', 'A car was parked illegally at Location QQ.', 'Location QQ', 'Reporter QQ', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31))),
('Car theft in progress', 'A car is being stolen at Location RR.', 'Location RR', 'Reporter RR', NOW() - INTERVAL '1 day' * (FLOOR(RANDOM() * 31)));


-- This is the query string

SELECT * FROM incidents WHERE created_at >= NOW() - INTERVAL '7 days'
ORDER BY created_at DESC
LIMIT 10;