do $$
begin
update accounts
set balance = balance -transactions.amount
from transactions
where account_id=transactions.src_account and transactions.status='init';


if 0 < (select count(*) from accounts where balance<accounts."limit") then
    update accounts
    set
        balance = balance + transactions.amount
    from transactions
    where account_id=transactions.src_account and transactions.status='init';
    update transactions
    set
        transactions.status='rollback'
    from accounts
    where account_id=transactions.src_account and transactions.status='init';

    else
    update accounts
    set balance = balance + transactions.amount
    from transactions
    where account_id=transactions.dst_account and transactions.status='init';

    update transactions
    set status='commit'
    from accounts
    where account_id=transactions.dst_account and transactions.status='init';

    end if;
end
$$