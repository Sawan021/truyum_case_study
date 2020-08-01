/* Menu Item table details*/
	insert into menu_items values
    (1, 'Sandwich', 99.00, 'Yes',  '2017-03-15', 'Main Course', 'Yes'),
	(2, 'Burger', 129.00, 'Yes',  '2017-12-23', 'Main Course', 'No'),
	(3, 'Pizza', 149.00, 'Yes',  '2017-08-21', 'Main Course', 'No'),
	(4, 'French Fries', 57.00, 'No',  '2017-07-02', 'Starters', 'Yes'),
	(5, 'Chocolate Brownie', 32.00, 'Yes',  '2022-11-02', 'Dessert', 'Yes');
	
/*User details */
    insert into user values
    (1, 'Sawan'),
	(2, 'Dharm'); 
    
/* view menu items */
    select * from menu_items;

/* View Menu Item List Customer*/
	select * from menu_items
	where menu_Active="Yes" AND menu_date<= trunc(current_date);

/* cart table details */
	insert into cart
	values (1,1),
	(1,2),(1,3);

/* Edit menu item  */
    select * from menu_items 
	where menu_id = "1";
    
	update menu_item 
	set menu_name='Samosa',
	menu_price=10.0,me_category='Starters'
	where menu_id=2;

/*  View Cart  */
	select m.menu_name, m.menu_free_delivery, m.menu_price, m.menu_category
	from menu_item m
	inner join cart c on m.menu_id = c.menu_id
	where c.user_id = 1; 

/*Get the total price of all menu items in a particular user’s cart */
	select sum(m.menu_price) as Total from menu_item m
	inner join cart c on m.menu_id = c.menu_id
	where c.user_id = 1; 

 /* Remove Item from Cart */
    delete from cart where user_id=1 and menu_id=2;