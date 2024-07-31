---
id: AspenExport
aliases:
  - AspenExport
tags: []
---

# Aspen Export

## Will need a few more fields that exist on Emergency Contact Form:

1. Guardian?
2. Access to Records?
3. Lives with? - _Can be used for calculation of **LIVING_WITH** field_

| Column Name          | Aspen Table     | Field Name                                               | Notes                    |
| -------------------- | --------------- | -------------------------------------------------------- | ------------------------ |
| STUDENT_NUMBER       | Student         | stdIDLocal                                               |                          |
| STATE_STUDENT_NUMBER | Student         | stdIDState                                               |
| STUDENTPERS_GUID     | Student         | stdGUID                                                  |
| SCHOOLID             | School          | schoolID -> mapped -> numbered id in DB                  |
| GRADE_LEVEL          | Student         | stdGradeLevel                                            |
| HOME_ROOM            | Student         | stdHomeroom                                              |
| LEGAL_LAST_NAME      | Person          | psnFieldC001                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB003                                             |
| LEGAL_FIRST_NAME     | Person          | psnFieldB002                                             |
| DOB                  | Person          | psnDob                                                   |
| DOB_SOURCE_DOC       | Person          | [DocSourceEnums](eStudentVerification/DOB_SOURCE_DOC.md) |
| CUSTODY              | Student_Contact | ctjFieldA004                                             | **Might not be needed.** |
| COURT_ORDER          | **Unknown**     | **Unknown**                                              |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
| LEGAL_MIDDLE_NAME    | Person          | psnFieldB002                                             |
