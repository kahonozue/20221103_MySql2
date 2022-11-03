SELECT user.user_name, comments.comments
FROM user
INNER JOIN post on post.fk_user_id = user.user_id
INNER JOIN comments on comments.fk_post_id = post.fk_user_id;

SELECT user.user_name, lauguage.lauguage, gender.gender, blood_type.blood_type
FROM user
LEFT JOIN lauguage on lauguage.lauguage_id = user.fk_lauguage_id
LEFT JOIN gender on gender.gender_id = user.fk_gender_id
LEFT JOIN profile on profile.fk_user_id = user.user_id
LEFT JOIN blood_type on blood_type.blood_type_id = profile.fk_blood_type_id;

SELECT user.user_name, lauguage.lauguage
FROM user
RIGHT JOIN lauguage on lauguage.lauguage_id = user.fk_lauguage_id;

-- without "GROUP by", data of language will be shown only when they are used in user table...
-- languages that aren't used in user table wouldn't be shown in a result.
SELECT lauguage.lauguage, COUNT(user.user_name)
FROM lauguage
LEFT JOIN user on lauguage.lauguage_id = user.fk_lauguage_id
GROUP by lauguage.lauguage_id;