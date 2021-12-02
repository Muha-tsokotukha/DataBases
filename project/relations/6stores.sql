create table store(
    s_id serial primary key ,
    location varchar not null ,
    schedule varchar
);

create table store_products (
    s_id integer,
    upc integer,
    foreign key (s_id) references store( s_id),
    foreign key (upc) references products( upc)
);

insert into  store (location, schedule) values ('WashingtonDC', '10:00-00:00');
insert into  store (location, schedule) values ('LasVegas', '09:00-00:00');
insert into  store (location, schedule) values ('NewYork', '08:00-02:00');
insert into  store (location, schedule) values ('California', '08:00-02:00');
insert into  store (location, schedule) values ('Arizona', '08:00-02:00');
insert into  store (location, schedule) values ('Toronto', '06:00-22:00');

INSERT INTO store_products values(3,48);
INSERT INTO store_products values(2,113);
INSERT INTO store_products values(3,385);
INSERT INTO store_products values(1,218);
INSERT INTO store_products values(3,241);
INSERT INTO store_products values(5,11);
INSERT INTO store_products values(6,233);
INSERT INTO store_products values(1,283);
INSERT INTO store_products values(6,30);
INSERT INTO store_products values(5,400);
INSERT INTO store_products values(1,207);
INSERT INTO store_products values(1,344);
INSERT INTO store_products values(4,379);
INSERT INTO store_products values(6,169);
INSERT INTO store_products values(6,100);
INSERT INTO store_products values(3,36);
INSERT INTO store_products values(4,4);
INSERT INTO store_products values(1,230);
INSERT INTO store_products values(1,201);
INSERT INTO store_products values(2,377);
INSERT INTO store_products values(6,25);
INSERT INTO store_products values(2,392);
INSERT INTO store_products values(3,376);
INSERT INTO store_products values(4,49);
INSERT INTO store_products values(5,358);
INSERT INTO store_products values(5,17);
INSERT INTO store_products values(5,57);
INSERT INTO store_products values(2,390);
INSERT INTO store_products values(4,215);
INSERT INTO store_products values(3,378);
INSERT INTO store_products values(3,295);
INSERT INTO store_products values(2,382);
INSERT INTO store_products values(2,28);
INSERT INTO store_products values(6,331);
INSERT INTO store_products values(5,86);
INSERT INTO store_products values(4,116);
INSERT INTO store_products values(2,37);
INSERT INTO store_products values(1,399);
INSERT INTO store_products values(1,211);
INSERT INTO store_products values(5,164);
INSERT INTO store_products values(3,140);
INSERT INTO store_products values(4,21);
INSERT INTO store_products values(4,202);
INSERT INTO store_products values(2,249);
INSERT INTO store_products values(4,287);
INSERT INTO store_products values(2,139);
INSERT INTO store_products values(4,165);
INSERT INTO store_products values(2,313);
INSERT INTO store_products values(6,40);
INSERT INTO store_products values(4,198);
INSERT INTO store_products values(1,245);
INSERT INTO store_products values(1,220);
INSERT INTO store_products values(3,355);
INSERT INTO store_products values(4,83);
INSERT INTO store_products values(2,183);
INSERT INTO store_products values(3,172);
INSERT INTO store_products values(4,77);
INSERT INTO store_products values(4,339);
INSERT INTO store_products values(1,261);
INSERT INTO store_products values(1,85);
INSERT INTO store_products values(5,26);
INSERT INTO store_products values(4,280);
INSERT INTO store_products values(3,5);
INSERT INTO store_products values(4,234);
INSERT INTO store_products values(4,66);
INSERT INTO store_products values(6,97);
INSERT INTO store_products values(1,10);
INSERT INTO store_products values(4,381);
INSERT INTO store_products values(1,187);
INSERT INTO store_products values(2,374);
INSERT INTO store_products values(6,267);
INSERT INTO store_products values(1,195);
INSERT INTO store_products values(1,365);
INSERT INTO store_products values(4,342);
INSERT INTO store_products values(1,366);
INSERT INTO store_products values(1,148);
INSERT INTO store_products values(5,53);
INSERT INTO store_products values(6,98);
INSERT INTO store_products values(6,227);
INSERT INTO store_products values(6,357);
INSERT INTO store_products values(6,307);
INSERT INTO store_products values(5,103);
INSERT INTO store_products values(3,369);
INSERT INTO store_products values(2,318);
INSERT INTO store_products values(5,119);
INSERT INTO store_products values(6,285);
INSERT INTO store_products values(1,251);
INSERT INTO store_products values(6,281);
INSERT INTO store_products values(3,149);
INSERT INTO store_products values(2,147);
INSERT INTO store_products values(5,223);
INSERT INTO store_products values(2,252);
INSERT INTO store_products values(1,254);
INSERT INTO store_products values(1,106);
INSERT INTO store_products values(3,15);
INSERT INTO store_products values(5,87);
INSERT INTO store_products values(5,91);
INSERT INTO store_products values(1,133);
INSERT INTO store_products values(3,396);
INSERT INTO store_products values(3,388);
INSERT INTO store_products values(4,375);
INSERT INTO store_products values(2,89);
INSERT INTO store_products values(5,167);
INSERT INTO store_products values(6,380);
INSERT INTO store_products values(6,189);
INSERT INTO store_products values(6,337);
INSERT INTO store_products values(6,101);
INSERT INTO store_products values(6,237);
INSERT INTO store_products values(1,327);
INSERT INTO store_products values(3,229);
INSERT INTO store_products values(1,134);
INSERT INTO store_products values(5,141);
INSERT INTO store_products values(6,258);
INSERT INTO store_products values(5,236);
INSERT INTO store_products values(5,111);
INSERT INTO store_products values(2,121);
INSERT INTO store_products values(3,332);
INSERT INTO store_products values(6,222);
INSERT INTO store_products values(3,292);
INSERT INTO store_products values(2,206);
INSERT INTO store_products values(4,262);
INSERT INTO store_products values(2,64);
INSERT INTO store_products values(3,278);
INSERT INTO store_products values(6,52);
INSERT INTO store_products values(4,269);
INSERT INTO store_products values(5,216);
INSERT INTO store_products values(4,279);
INSERT INTO store_products values(2,320);
INSERT INTO store_products values(3,154);
INSERT INTO store_products values(1,6);
INSERT INTO store_products values(4,193);
INSERT INTO store_products values(3,310);
INSERT INTO store_products values(4,225);
INSERT INTO store_products values(6,247);
INSERT INTO store_products values(5,324);
INSERT INTO store_products values(5,112);
INSERT INTO store_products values(4,124);
INSERT INTO store_products values(1,208);
INSERT INTO store_products values(6,315);
INSERT INTO store_products values(6,75);
INSERT INTO store_products values(1,302);
INSERT INTO store_products values(2,263);
INSERT INTO store_products values(6,42);
INSERT INTO store_products values(6,94);
INSERT INTO store_products values(4,226);
INSERT INTO store_products values(3,146);
INSERT INTO store_products values(2,275);
INSERT INTO store_products values(3,19);
INSERT INTO store_products values(4,13);
INSERT INTO store_products values(1,190);
INSERT INTO store_products values(2,317);
INSERT INTO store_products values(4,312);
INSERT INTO store_products values(3,336);
INSERT INTO store_products values(3,264);
INSERT INTO store_products values(4,145);
INSERT INTO store_products values(4,209);
INSERT INTO store_products values(1,284);
INSERT INTO store_products values(6,137);
INSERT INTO store_products values(5,163);
INSERT INTO store_products values(2,361);
INSERT INTO store_products values(6,391);
INSERT INTO store_products values(6,253);
INSERT INTO store_products values(4,12);
INSERT INTO store_products values(5,155);
INSERT INTO store_products values(6,72);
INSERT INTO store_products values(5,63);
INSERT INTO store_products values(5,200);
INSERT INTO store_products values(2,125);
INSERT INTO store_products values(2,58);
INSERT INTO store_products values(6,288);
INSERT INTO store_products values(5,328);
INSERT INTO store_products values(1,92);
INSERT INTO store_products values(3,74);
INSERT INTO store_products values(6,1);
INSERT INTO store_products values(2,256);
INSERT INTO store_products values(5,311);
INSERT INTO store_products values(4,90);
INSERT INTO store_products values(5,235);
INSERT INTO store_products values(5,81);
INSERT INTO store_products values(5,232);
INSERT INTO store_products values(5,393);
INSERT INTO store_products values(2,80);
INSERT INTO store_products values(5,171);
INSERT INTO store_products values(3,162);
INSERT INTO store_products values(1,76);
INSERT INTO store_products values(6,316);
INSERT INTO store_products values(2,212);
INSERT INTO store_products values(4,60);
INSERT INTO store_products values(5,282);
INSERT INTO store_products values(5,128);
INSERT INTO store_products values(5,243);
INSERT INTO store_products values(3,293);
INSERT INTO store_products values(1,255);
INSERT INTO store_products values(6,395);
INSERT INTO store_products values(5,185);
INSERT INTO store_products values(3,272);
INSERT INTO store_products values(5,348);
INSERT INTO store_products values(6,132);
INSERT INTO store_products values(2,394);
INSERT INTO store_products values(2,300);
INSERT INTO store_products values(2,340);
INSERT INTO store_products values(3,244);
INSERT INTO store_products values(1,170);
INSERT INTO store_products values(5,136);
INSERT INTO store_products values(5,161);
INSERT INTO store_products values(4,321);
INSERT INTO store_products values(3,373);
INSERT INTO store_products values(3,359);
INSERT INTO store_products values(2,335);
INSERT INTO store_products values(1,156);
INSERT INTO store_products values(2,123);
INSERT INTO store_products values(5,67);
INSERT INTO store_products values(6,228);
INSERT INTO store_products values(6,107);
INSERT INTO store_products values(5,330);
INSERT INTO store_products values(1,266);
INSERT INTO store_products values(6,296);
INSERT INTO store_products values(2,78);
INSERT INTO store_products values(2,238);
INSERT INTO store_products values(6,88);
INSERT INTO store_products values(3,68);
INSERT INTO store_products values(3,8);
INSERT INTO store_products values(4,159);
INSERT INTO store_products values(2,334);
INSERT INTO store_products values(1,47);
INSERT INTO store_products values(3,319);
INSERT INTO store_products values(4,322);
INSERT INTO store_products values(4,27);
INSERT INTO store_products values(4,144);
INSERT INTO store_products values(3,303);
INSERT INTO store_products values(1,51);
INSERT INTO store_products values(4,114);
INSERT INTO store_products values(1,118);
INSERT INTO store_products values(3,173);
INSERT INTO store_products values(1,277);
INSERT INTO store_products values(2,23);
INSERT INTO store_products values(6,160);
INSERT INTO store_products values(6,199);
INSERT INTO store_products values(1,69);
INSERT INTO store_products values(3,210);
INSERT INTO store_products values(3,59);
INSERT INTO store_products values(2,138);
INSERT INTO store_products values(3,181);
INSERT INTO store_products values(2,372);
INSERT INTO store_products values(3,96);
INSERT INTO store_products values(4,387);
INSERT INTO store_products values(1,323);
INSERT INTO store_products values(4,219);
INSERT INTO store_products values(4,178);
INSERT INTO store_products values(3,364);
INSERT INTO store_products values(6,248);
INSERT INTO store_products values(6,260);
INSERT INTO store_products values(2,152);
INSERT INTO store_products values(4,246);
INSERT INTO store_products values(3,306);
INSERT INTO store_products values(2,356);
INSERT INTO store_products values(2,127);
INSERT INTO store_products values(1,343);
INSERT INTO store_products values(2,360);
INSERT INTO store_products values(3,301);
INSERT INTO store_products values(1,54);
INSERT INTO store_products values(4,84);
INSERT INTO store_products values(5,20);
INSERT INTO store_products values(6,24);
INSERT INTO store_products values(4,197);
INSERT INTO store_products values(2,34);
INSERT INTO store_products values(6,214);
INSERT INTO store_products values(3,265);
INSERT INTO store_products values(2,192);
INSERT INTO store_products values(6,184);
INSERT INTO store_products values(1,130);
INSERT INTO store_products values(1,304);
INSERT INTO store_products values(4,371);
INSERT INTO store_products values(5,179);
INSERT INTO store_products values(1,346);
INSERT INTO store_products values(3,18);
INSERT INTO store_products values(6,368);
INSERT INTO store_products values(4,270);
INSERT INTO store_products values(1,191);
INSERT INTO store_products values(6,180);
INSERT INTO store_products values(3,7);
INSERT INTO store_products values(5,240);
INSERT INTO store_products values(4,108);
INSERT INTO store_products values(2,168);
INSERT INTO store_products values(3,50);
INSERT INTO store_products values(3,3);
INSERT INTO store_products values(1,350);
INSERT INTO store_products values(1,99);
INSERT INTO store_products values(1,150);
INSERT INTO store_products values(6,297);
INSERT INTO store_products values(6,44);
INSERT INTO store_products values(1,286);
INSERT INTO store_products values(5,56);
INSERT INTO store_products values(1,102);
INSERT INTO store_products values(3,383);
INSERT INTO store_products values(3,370);
INSERT INTO store_products values(4,43);
INSERT INTO store_products values(5,131);
INSERT INTO store_products values(5,82);
INSERT INTO store_products values(2,109);
INSERT INTO store_products values(5,14);
INSERT INTO store_products values(2,62);
INSERT INTO store_products values(5,224);
INSERT INTO store_products values(3,122);
INSERT INTO store_products values(2,290);
INSERT INTO store_products values(1,2);
INSERT INTO store_products values(4,273);
INSERT INTO store_products values(4,308);
INSERT INTO store_products values(3,22);
INSERT INTO store_products values(6,135);
INSERT INTO store_products values(1,65);
INSERT INTO store_products values(6,268);
INSERT INTO store_products values(2,276);
INSERT INTO store_products values(6,349);
INSERT INTO store_products values(4,299);
INSERT INTO store_products values(6,294);
INSERT INTO store_products values(3,259);
INSERT INTO store_products values(5,93);
INSERT INTO store_products values(4,70);
INSERT INTO store_products values(5,291);
INSERT INTO store_products values(6,333);
INSERT INTO store_products values(3,176);
INSERT INTO store_products values(4,354);
INSERT INTO store_products values(6,9);
INSERT INTO store_products values(1,194);
INSERT INTO store_products values(1,398);
INSERT INTO store_products values(3,105);
INSERT INTO store_products values(3,389);
INSERT INTO store_products values(4,174);
INSERT INTO store_products values(5,338);
INSERT INTO store_products values(5,61);
INSERT INTO store_products values(2,274);
INSERT INTO store_products values(4,182);
INSERT INTO store_products values(1,151);
INSERT INTO store_products values(4,221);
INSERT INTO store_products values(5,41);
INSERT INTO store_products values(6,104);
INSERT INTO store_products values(2,204);
INSERT INTO store_products values(6,33);
INSERT INTO store_products values(6,143);
INSERT INTO store_products values(4,345);
INSERT INTO store_products values(2,38);
INSERT INTO store_products values(3,188);
INSERT INTO store_products values(1,32);
INSERT INTO store_products values(5,158);
INSERT INTO store_products values(5,129);
INSERT INTO store_products values(2,362);
INSERT INTO store_products values(2,46);
INSERT INTO store_products values(6,71);
INSERT INTO store_products values(4,397);
INSERT INTO store_products values(2,55);
INSERT INTO store_products values(3,242);
INSERT INTO store_products values(5,186);
INSERT INTO store_products values(1,384);
INSERT INTO store_products values(2,166);
INSERT INTO store_products values(4,386);
INSERT INTO store_products values(4,367);
INSERT INTO store_products values(1,363);
INSERT INTO store_products values(6,341);
INSERT INTO store_products values(3,79);
INSERT INTO store_products values(1,157);
INSERT INTO store_products values(5,110);
INSERT INTO store_products values(1,314);
INSERT INTO store_products values(1,271);
INSERT INTO store_products values(3,205);
INSERT INTO store_products values(5,196);
INSERT INTO store_products values(3,73);
INSERT INTO store_products values(6,289);
INSERT INTO store_products values(6,347);
INSERT INTO store_products values(3,217);
INSERT INTO store_products values(2,95);
INSERT INTO store_products values(5,153);
INSERT INTO store_products values(1,126);
INSERT INTO store_products values(6,352);
INSERT INTO store_products values(2,298);
INSERT INTO store_products values(3,45);
INSERT INTO store_products values(6,353);
INSERT INTO store_products values(5,16);
INSERT INTO store_products values(5,239);
INSERT INTO store_products values(4,305);
INSERT INTO store_products values(4,35);
INSERT INTO store_products values(2,351);
INSERT INTO store_products values(1,115);
INSERT INTO store_products values(3,29);
INSERT INTO store_products values(1,309);
INSERT INTO store_products values(6,175);
INSERT INTO store_products values(3,231);
INSERT INTO store_products values(3,257);
INSERT INTO store_products values(3,39);
INSERT INTO store_products values(1,117);
INSERT INTO store_products values(6,329);
INSERT INTO store_products values(3,203);
INSERT INTO store_products values(2,31);
INSERT INTO store_products values(2,142);
INSERT INTO store_products values(1,177);
INSERT INTO store_products values(1,250);
INSERT INTO store_products values(2,325);
INSERT INTO store_products values(3,326);
INSERT INTO store_products values(5,120);
INSERT INTO store_products values(1,213);



