
var projectName = '宠物寄养服务网站设计与实现';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

{
	name: '我的订单',
	url: '../shop-order/list.jsp'
},

{
	name: '我的地址',
	url: '../shop-address/list.jsp'
},

{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '门店信息',
	url: './pages/mendianxinxi/list.jsp'
}, 
{
	name: '服务信息',
	url: './pages/fuwuxinxi/list.jsp'
}, 
{
	name: '宠物医疗',
	url: './pages/chongwuyiliao/list.jsp'
}, 
{
	name: '商品信息',
	url: './pages/shangpinxinxi/list.jsp'
}, 
{
	name: '相册信息',
	url: './pages/xiangcexinxi/list.jsp'
}, 

{
	name: '宠物社区',
	url: './pages/forum/list.jsp'
}, 
{
	name: '公告信息',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmv15oi/index.jsp";

var cartFlag = false

var chatFlag = false


chatFlag = true
cartFlag = true


var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["新增","查看","修改","删除"],"menu":"宠物分类","menuJump":"列表","tableName":"chongwufenlei"}],"menu":"宠物分类管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["新增","查看","修改","删除"],"menu":"服务类型","menuJump":"列表","tableName":"fuwuleixing"}],"menu":"服务类型管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["新增","查看","修改","删除"],"menu":"商品分类","menuJump":"列表","tableName":"shangpinfenlei"}],"menu":"商品分类管理"},{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["新增","查看","修改","删除","查看评论"],"menu":"门店信息","menuJump":"列表","tableName":"mendianxinxi"}],"menu":"门店信息管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","修改","删除"],"menu":"宠物寄养","menuJump":"列表","tableName":"chongwujiyang"}],"menu":"宠物寄养管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["新增","查看","修改","删除","查看评论"],"menu":"服务信息","menuJump":"列表","tableName":"fuwuxinxi"}],"menu":"服务信息管理"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看","修改","删除"],"menu":"服务选择","menuJump":"列表","tableName":"fuwuxuanze"}],"menu":"服务选择管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除","查看评论"],"menu":"宠物医疗","menuJump":"列表","tableName":"chongwuyiliao"}],"menu":"宠物医疗管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","修改","删除","审核"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["新增","查看","修改","删除","查看评论"],"menu":"商品信息","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","修改","删除","查看评论"],"menu":"相册信息","menuJump":"列表","tableName":"xiangcexinxi"}],"menu":"相册信息管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["新增","查看","修改","删除"],"menu":"相册分类","menuJump":"列表","tableName":"xiangcefenlei"}],"menu":"相册分类管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["新增","查看","修改","删除"],"menu":"宠物社区","tableName":"forum"}],"menu":"宠物社区"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"appFrontIcon":"cuIcon-service","buttons":["新增","查看","修改","删除"],"menu":"在线客服","tableName":"chat"}],"menu":"系统管理"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["查看","删除","发货"],"menu":"已支付订单","tableName":"orders/已支付"},{"appFrontIcon":"cuIcon-clothes","buttons":["查看","删除"],"menu":"已退款订单","tableName":"orders/已退款"},{"appFrontIcon":"cuIcon-skin","buttons":["查看","删除"],"menu":"已完成订单","tableName":"orders/已完成"},{"appFrontIcon":"cuIcon-phone","buttons":["查看","删除"],"menu":"已发货订单","tableName":"orders/已发货"},{"appFrontIcon":"cuIcon-full","buttons":["查看","删除"],"menu":"未支付订单","tableName":"orders/未支付"},{"appFrontIcon":"cuIcon-clothes","buttons":["查看","删除"],"menu":"已取消订单","tableName":"orders/已取消"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","寄养"],"menu":"门店信息列表","menuJump":"列表","tableName":"mendianxinxi"}],"menu":"门店信息模块"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","上门服务"],"menu":"服务信息列表","menuJump":"列表","tableName":"fuwuxinxi"}],"menu":"服务信息模块"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["查看","预约"],"menu":"宠物医疗列表","menuJump":"列表","tableName":"chongwuyiliao"}],"menu":"宠物医疗模块"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["查看"],"menu":"相册信息列表","menuJump":"列表","tableName":"xiangcexinxi"}],"menu":"相册信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","删除","支付"],"menu":"宠物寄养","menuJump":"列表","tableName":"chongwujiyang"}],"menu":"宠物寄养管理"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看","删除","支付"],"menu":"服务选择","menuJump":"列表","tableName":"fuwuxuanze"}],"menu":"服务选择管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","删除"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["新增","查看","修改","删除","查看评论"],"menu":"相册信息","menuJump":"列表","tableName":"xiangcexinxi"}],"menu":"相册信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","寄养"],"menu":"门店信息列表","menuJump":"列表","tableName":"mendianxinxi"}],"menu":"门店信息模块"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","上门服务"],"menu":"服务信息列表","menuJump":"列表","tableName":"fuwuxinxi"}],"menu":"服务信息模块"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["查看","预约"],"menu":"宠物医疗列表","menuJump":"列表","tableName":"chongwuyiliao"}],"menu":"宠物医疗模块"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["查看"],"menu":"相册信息列表","menuJump":"列表","tableName":"xiangcexinxi"}],"menu":"相册信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
