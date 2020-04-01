const add_ingredient_field = function () {
    const date = new Date();
    const sec = date.getTime();
    let field_name_id = "recipe_ingredient_0_name".replace("0", sec);
    let field_name = "recipe[ingredient_names][0][name]".replace("0",sec);
    let field_quantity_id = "recipe_ingredient_0_quantity".replace("0",sec);
    let field_quantity = "recipe[ingredient_quantities][0][quantity]".replace("0",sec);
    
    let li = document.createElement("li");
    li.classList.add("list-group-item");
    
    let name_label = document.createElement("label");
    name_label.setAttribute("for",field_name);
    li.appendChild(name_label);

    let name_input = document.createElement("INPUT");
    name_input.setAttribute("type", "text");
    name_input.setAttribute("id",field_name_id);
    name_input.setAttribute("name",field_name);
    li.appendChild(name_input);

    let quantity_label = document.createElement("label");
    quantity_label.setAttribute("for",field_quantity);
    li.appendChild(quantity_label);

    let quantity_input = document.createElement("INPUT");
    quantity_input.setAttribute("type","text");
    quantity_input.setAttribute("id",field_quantity_id);
    quantity_input.setAttribute("name",field_quantity);
    li.appendChild(quantity_input);

    document.getElementById("ingredient_inputs").appendChild(li);

};
