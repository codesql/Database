select GROUP_NUMBER group#,DISK_NUMBER disk#,MOUNT_STATUS, HEADER_STATUS,MODE_STATUS,STATE,NAME,PATH, total_mb,free_mb from v$asm_disk;


  GROUP#     DISK# MOUNT_S HEADER_STATU MODE_ST STATE   NAME                     PATH                             TOTAL_MB   FREE_MB
---------- ---------- ------- ------------ ------- -------- ------------------------- ------------------------------ ---------- ----------
         1         0 CACHED MEMBER       ONLINE NORMAL   DGROUP1_0000             /dev/asm_disk01                     30720       2324
         1         1 CACHED MEMBER       ONLINE NORMAL   DGROUP1_0001             /dev/asm_disk02                     30720       2401
         1         2 CACHED MEMBER       ONLINE NORMAL   DGROUP1_0002             /dev/asm_disk03                     30720       2346

