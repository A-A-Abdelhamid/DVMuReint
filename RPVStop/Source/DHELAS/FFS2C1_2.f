C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     (ProjP(2,1)) * C(51,2) * C(52,1)
C     
      SUBROUTINE FFS2C1_2(F2, S3, COUP, M1, W1,F1)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(6)
      COMPLEX*16 F2(*)
      REAL*8 M1
      REAL*8 P1(0:3)
      COMPLEX*16 S3(*)
      REAL*8 W1
      COMPLEX*16 DENOM
      F1(1) = +F2(1)+S3(1)
      F1(2) = +F2(2)+S3(2)
      P1(0) = -DBLE(F1(1))
      P1(1) = -DBLE(F1(2))
      P1(2) = -DIMAG(F1(2))
      P1(3) = -DIMAG(F1(1))
      DENOM = COUP/(P1(0)**2-P1(1)**2-P1(2)**2-P1(3)**2 - M1 * (M1 -CI
     $ * W1))
      F1(3)= DENOM*CI * S3(3)*(F2(5)*(P1(0)-P1(3))+F2(6)*(-P1(1)+CI
     $ *(P1(2))))
      F1(4)= DENOM*(-CI )* S3(3)*(F2(5)*(P1(1)+CI*(P1(2)))-F2(6)*(P1(0)
     $ +P1(3)))
      F1(5)= DENOM*CI * F2(5)*M1*S3(3)
      F1(6)= DENOM*CI * F2(6)*M1*S3(3)
      END


