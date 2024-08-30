-- Existing data
insert into USERS (ID, EMAIL, PASSWORD, USERNAME, ENABLED)
VALUES (0, 'anonymous@example.com', '', 'anonymous', true);
insert into USERS (ID, EMAIL, PASSWORD, USERNAME, ENABLED)
VALUES (1, 'admin@example.com', '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'admin', true);
insert into USERS (ID, EMAIL, PASSWORD, USERNAME, ENABLED)
VALUES (2, 'user@example.com', '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'user', true);

-- Authorities and associations
insert into AUTHORITIES (ID, AUTHORITY)
VALUES (0, 'ROLE_ANONYMOUS');
insert into AUTHORITIES (ID, AUTHORITY)
VALUES (1, 'ROLE_ADMIN');
insert into AUTHORITIES (ID, AUTHORITY)
VALUES (2, 'ROLE_USER');

insert into USERS_AUTHORITIES (USER_ID, AUTHORITY_ID)
VALUES (1, 1);
insert into USERS_AUTHORITIES (USER_ID, AUTHORITY_ID)
VALUES (1, 2);
insert into USERS_AUTHORITIES (USER_ID, AUTHORITY_ID)
VALUES (2, 2);

-- Posts
insert into POSTS (ID, BODY, CREATION_DATE, TITLE, USER_ID)
VALUES (1, 'Artificial Intelligence (AI) refers to the creation of intelligent machines that can mimic human behavior. AI can perform a range of tasks that require human-like cognitive functions, such as visual perception, language processing, and problem-solving. It has widespread applications in industries such as healthcare, finance, and robotics. As AI continues to evolve, it promises to drive innovations in automation, decision-making, and personalized experiences.', '2020-01-10', 'Understanding Artificial Intelligence', 2);

insert into POSTS (ID, BODY, CREATION_DATE, TITLE, USER_ID)
VALUES (2, 'Machine Learning (ML) is a field of AI that allows computers to learn and improve from experience without being explicitly programmed. It involves algorithms that can process large datasets, identify patterns, and make decisions based on data. ML is the driving force behind technologies such as recommendation systems, predictive analytics, and self-driving cars. By continuously learning from new data, ML systems are becoming increasingly accurate and effective in solving complex problems.', '2020-02-20', 'Introduction to Machine Learning', 1);

insert into POSTS (ID, BODY, CREATION_DATE, TITLE, USER_ID)
VALUES (3, 'Deep Learning is a subset of machine learning that uses artificial neural networks to model complex patterns in data. These networks are inspired by the structure of the human brain and contain multiple layers that process information in hierarchical steps. Deep learning excels in tasks such as image recognition, natural language processing, and speech synthesis. It is a key technology behind innovations like virtual assistants, autonomous vehicles, and advanced medical diagnostics.', '2020-03-30', 'Exploring Deep Learning', 2);


-- Comments
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (1, 'comentras a', current_timestamp(), 1, 0);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (2, 'comentras a', current_timestamp(), 1, 2);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (3, 'comentras a', current_timestamp(), 1, 0);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (4, 'comentras a', current_timestamp(), 2, 0);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (5, 'comentras a', current_timestamp(), 2, 1);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (6, 'comentras a', current_timestamp(), 1, 0);