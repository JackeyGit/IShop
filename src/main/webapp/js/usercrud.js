
var url;
		function newUser(){
			$('#dlg').dialog('open').dialog('setTitle','����û�');
			$('#fm').form('clear');
			url = '${pageContext.request.contextPath}/addUser.action';
		}
		function editUser(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$('#dlg').dialog('open').dialog('setTitle','�޸���Ϣ');
				$('#fm').form('load',row);
				url = '${pageContext.request.contextPath}/userUpdateById.action?id='+row.id;
			}
		}
		function saveUser(){
			$('#fm').form('submit',{
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					var result = eval('('+result+')');
					if (result.success){
						$('#dlg').dialog('close');		// close the dialog
						$('#dg').datagrid('reload');	// reload the user data
					} else {
						$.messager.show({
							title: 'Error',
							msg: result.msg
						});
					}
				}
			});
		}
		function destroyUser(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$.messager.confirm('��ʾ','ȷ��ɾ��������Ϣ?',function(r){
					if (r){
						$.post('${pageContext.request.contextPath}/userDelete.action',{id:row.id},function(result){
							if (result.success){
								$('#dg').datagrid('reload');	// reload the user data
							} else {
								$.messager.show({	// show error message
									title: 'Error',
									msg: result.msg
								});
							}
						},'json');
					}
				});
			}
		}
