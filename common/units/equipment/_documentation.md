# Equipment

# 装备

语法：
equipments = {
	<装备类型名称> = {
	year = <4位年份>	
	is_archetype = <yes|no>                # 是否为原型
	is_buildable = <yes|no>                # 是否可建造
	priority = <数值>                      # 优先级
	archetype = <装备原型名称>             # 原型名称
	parent = <装备类型名称>                # 父级装备类型
	is_frame = <yes|no>                    # 默认为yes（模块化装备），非模块化装备不适用。"框架"指坦克底盘、舰船船体、飞机机身

	# 陆军类型
	type = <armor|infantry|motorized|mechanized|anti_air|artillery|anti_tank|rocket|support>
	# 或海军类型
	type = <capital_ship|submarine|screen_ship|carrier|convoy|naval_transport>
	# 或空军类型
	type = <air_transport|fighter|cas|interceptor|tactical_bomber|strategic_bomber|naval_bomber|missile|suicide>
	
	# 限制可分配给该类型的军事工厂或造船厂数量
	# 军事工厂类型（铁道炮除外）
	max_military_factories = <数量>
	# 造船厂
	max_dockyard_factories = <数量>
	

	# AI默认使用'type'将原型与策略（例如unit_ratio）连接。可通过ai_type覆盖此行为
	# 例如：战斗机、舰载战斗机和重型战斗机均可设为'fighter'类型，但能指定不同的unit_ratio
	ai_type = <cv_fighter|cv_interceptor|cv_cas|cv_naval_bomber|cv_suicide|heavy_fighter>

	upgrades = {
		# 升级名称列表
	}

	can_be_produced = {
		# 判断国家能否生产此装备类型/原型的触发条件
	}
	
	can_be_lend_leased = {
		# 判断国家能否向其他国家租借的触发条件（作用域为国家，from为租借目标国）
	}
	
	module_slots = {
		# 模块插槽及其详细配置
		
		# 固定插槽在装备设计窗口中分组显示，名称以"fixed_"开头
		# 表示用于单一或相关用途的插槽
		# 通常限制允许的模块类别，且多为必选
		fixed_<插槽名称> = {
			required = <yes|no>            # 是否必选
			allowed_module_categories = {  # 允许的模块类别
				# 模块类别名称列表
			}
		}
		
		# 自定义插槽名称不能以"fixed_"开头
		# 表示多功能插槽，通常允许灵活配置模块类别
		<自定义插槽名称> = {
			required = <yes|no>
			allowed_module_categories = {
				# 模块类别名称列表
			}
		}
		
		# 后续插槽可继承先前插槽的属性
		<插槽名称> = <先前插槽名称>
		
		# 插槽可继承父级装备类型的属性
		<插槽名称> = inherit
	}
	
	# 或直接完全继承父级的所有模块插槽
	module_slots = inherit
	
	# 可定义任意数量的模块数量限制
	# 限制会自动被子装备类型继承
	# 若子类型定义完全相同的匹配条件，则覆盖继承的限制
	module_count_limit = {
		# 匹配条件：模块或插槽只需满足任一条件即应用限制
		module = <模块名称>   # 匹配特定模块
		category = <模块类别> # 匹配属于某类别的模块
		module = any          # 匹配任意模块
		category = any        # 匹配任意类别
		module = empty        # 匹配空插槽
		
		# 定义匹配模块的数量限制
		count < <数量>       # 最大数量
		count > <数量>       # 最小数量
		count = <数量>       # 精确数量
		count = any           # 任意数量（用于覆盖继承的限制）

		# 可选：覆盖工具提示中显示的限制标题
		title = <文本或本地化键>
	}
	
	default_modules = {
		# 默认装备方案分配的模块
		<插槽名称> = <模块名称>
		
		# 明确设置为空插槽
		<插槽名称> = empty
	}

	# 基础单位属性值（未计算升级和模块加成）
	<单位属性名称> = <数值>
	
	# 生产单件装备所需资源
	resources = {
		<资源名称> = <数量>
	}
	
	# 生产单件装备所需人力（仅海军）
	manpower = <数值>
}
}