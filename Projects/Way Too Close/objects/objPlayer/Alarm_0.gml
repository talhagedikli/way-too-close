var _inst = gridPlace(gridPos.x + moveDir.x, gridPos.y + moveDir.y, objItemParent);
if (instance_exists(_inst)) 
{
	show("found a " + _inst.item.name);
	ds_list_add(inventory, _inst.item);
	_inst.fadeOut = true;
	attackDelay.stop();
	moveTween.stop();
	state.change("attack");
}

var _inst = gridPlace(gridPos.x + moveDir.x, gridPos.y + moveDir.y, objEnemyParent);
if (instance_exists(_inst)) 
{
	_inst.fadeOut = true;
	attackDelay.stop();
	moveTween.stop();
	state.change("attack");
}
// Seperate states
// colliding = gridPlace(gridPos.x + moveDir.x, gridPos.y + moveDir.y, objItemParent);
// if (instance_exists(colliding))
// {
// 	ds_list_add(inventory, _inst.item);
// 	_inst.fadeOut = true;
// }
// else 
// {
// 	colliding = gridPlace(gridPos.x + moveDir.x, gridPos.y + moveDir.y, objEnemyParent);
// }

// if (instance_exists(colliding))
// {
// 	attackDelay.stop();
// 	moveTween.stop();
// 	state.change("attack");	
// }
