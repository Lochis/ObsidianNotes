su root

user add comp301_dummyUser
passwd comp301_dummyUser

groupadd comp301_403


-- usermod, specify group and then user, binds group to user
usermod -a -G comp301_403 comp301_dummyUser