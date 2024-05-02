package com.mycompany.springframework.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.springframework.dao.mybatis.Ch13AccountDao;
import com.mycompany.springframework.dto.Ch15Account;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch15Service {
	@Autowired 	// 필요한 의존 객체의 타입에 해당하는 빈을 찾아 주입
	private Ch13AccountDao accountDao;
	
	public List<Ch15Account> getAccountList() {
		List<Ch15Account> accountList = accountDao.selectAll();
		return accountList;
	}
	
	@Transactional	// 입출금의 성공 실패 여부를 일괄 처리함
					// 내부에서 2개 이상의 DML 작업을 하는 경우 붙여줘야함
	public void transfer(int fromAno, int toAno, int amount) {	// 계좌 이체 기능 -> 입출금 기능 중 하나라도 오류가 나면 기능이 실패 처리 됨
		// 출금 작업
		Ch15Account fromAccount = accountDao.selectByAno(fromAno);	// 출금 금액
		if(fromAccount == null) {
			throw new RuntimeException("출금 계좌 없음");
		}
		
		fromAccount.setBalance(fromAccount.getBalance() - amount); // 계좌 잔액을 가져와서 출금 금액을 뺀 금액이 출금 후 계좌 잔액이 됨
		accountDao.updateBalance(fromAccount);	// 출금 후 계좌 상태 업데이트
		
		// 입금 작업
		Ch15Account toAccount = accountDao.selectByAno(toAno);	// 입금 금액
		if(toAccount == null) {
			throw new RuntimeException("입금 계좌 없음");
		}
		
		toAccount.setBalance(toAccount.getBalance() + amount); // 계좌 잔액을 가져와서 입금 금액을 더한 금액이 입금 후 계좌 잔액이 됨
		accountDao.updateBalance(toAccount);	// 입금 후 계좌 상태 업데이트
	}
}
