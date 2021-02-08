package test.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import test.cafe.Americano;
import test.cafe.Latte;
import test.cafe.Milk;

@Aspect
@Component
public class CafeAspect {
	@Around("execution(void order*(..))")
	public void starbucksConcern(ProceedingJoinPoint joinPoint) throws Throwable {
		//인자로 전달된 객체의 참조값을 Objext[]로 얻어내기
		Object[] args=joinPoint.getArgs();
		for(Object tmp:args) {
			if(tmp instanceof Americano) {//instanceof 연산자를 이용해서 type 확인
				//Americano type 이 맞으면 안전하게 casting 할수 있다.
				Americano a=(Americano)tmp;
				a.drinkAmericano();				
			}else if(tmp instanceof Latte) {
				Latte l=(Latte)tmp;
				l.drinkLatte();
			}else if(tmp instanceof Milk) {
				Milk m=(Milk)tmp;
				m.drinkMilk();
			}
		}
		System.out.println("sarbucksConcern() 입니다.");
		joinPoint.proceed();
	}
}
