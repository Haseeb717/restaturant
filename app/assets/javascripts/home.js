function myFunction(id){
  var selected = [];
  total_price = 0;
  radio_button = $("#modal_"+id+" input:checked");
  menu_item_name = $("#menu_item_name_"+id).text();
  menu_item_price = $(".menu_item_price_"+id).text();
  quantity = $(".quantity"+id).val();

  description = $(".comment"+id).val();
  span = "<span class='block'></span> ";

  if(radio_button.length == 0){

  	if(description.length !=0){
			row = "<tr><td>" + quantity.toString() + " x " + menu_item_name +  span + "<br><span class='new_line'> + "+ description +"</span></td><td>" + quantity*menu_item_price + "</td></tr>";
		}
		else{
			row = "<tr><td>" + quantity.toString() + " x " + menu_item_name +  span + "</td><td>" + quantity*menu_item_price + "</td></tr>";
		}

		total_price = total_price + (quantity*menu_item_price);
  	$(".table_order").append(row);
  }
  else{
		$("#modal_"+id+" input:checked").each(function() {
			selected.push($(this).attr('value'));
		});

		column = "<td>"+ quantity.toString() + " x " + menu_item_name;
		$.each(selected,function(index,value){
			sides_item_id = value;
		  sides_item_name = $(".side_item_name_"+sides_item_id).text();
		  sides_item_price = $(".side_item_price_"+sides_item_id).text();
		  sides_item_type = $(".side_item_type_"+sides_item_id).text();

		  if(sides_item_price.length != 0) {
		  	if (sides_item_type == "Extra"){
		  		menu_item_price = (quantity*sides_item_price)+menu_item_price;
		  	}
		  	else{
			  	menu_item_price = sides_item_price;		  		
		  	}
		  }
		  column += "<br><span class='new_line'> + "+ sides_item_name +"</span>";
		});

		if(description.length !=0){
			column += "<br><span class='new_line'> + "+ description +"</span></td>";
		}
		else{
			column += "</td>";
		}
		
  	row = "<tr>" + column + "<td>" + quantity*menu_item_price + "</td></tr>";
  	total_price = total_price + (quantity*menu_item_price);

	  $(".table_order").append(row);
	}
	existing_total = parseFloat($("#total").text());
	total_price = total_price + existing_total;
	$("#total").text(total_price);
	$('#myModal'+id).modal('hide');
	total_price = 0;
}