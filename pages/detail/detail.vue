<template>
	<view>
		<image class="head-image" src="" mode=""></image>
		<title2></title2>
		<view class="detail">
			<view class="detail-title">时长</view>
			<text class="detail-content">6天5夜</text>
		</view>
		<view class="detail">
			<view class="detail-title">参考价格</view>
			<text class="detail-content">￥18000(根据机票价格上下浮动)</text>
		</view>
		<view class="detail">
			<view class="detail-title">入驻酒店</view>
			<text class="detail-content">Hilton Los Angeles Airport</text>
		</view>
		<view class="detail">
			<view class="detail-title">参考航班</view>
			<text class="detail-content">AA180/AA181</text>
		</view>
		<view class="detail">
			<view class="detail-title">推荐考场</view>
			<text class="detail-content">Susan Miller Senior High School </text>
		</view>
		<view class="detail">
			<view class="detail-title">保险种类</view>
			<text class="detail-content">境外保险</text>
		</view>
		<view class="detail">
			<view class="detail-title">额外服务</view>
			<text class="detail-content">赠送一张美国电话卡</text>
		</view>
		<view class="detail">
			<view class="detail-title">考团特色</view>
			<text class="detail-content">小考场中国人少，考试环境舒适轻松，利于发挥；四星级酒店，生活便利；全程老师带队，安全有保障！</text>
		</view>
		<title2 title='日程安排'></title2>
		<title2 title='签证协助'></title2>
		<title2 title='费用说明'></title2>
		<title2 title='其他事项'></title2>
		<title2 title='报名方式'></title2>
		<foot></foot>
	</view>
</template>

<script>
	import title2 from '../../components/title2.vue'
	import foot from '../../components/foot.vue'
	export default {
		components:{title2,foot},
		data() {
			return {
				
			}
		},
		methods: {
			
		}
	}
</script>

<style>
	.head-image{
		width: 750upx;
		height: 350upx;
	}
	.detail{
		margin: 0 30upx;
		width: 690upx;
		border-bottom: dashed 1upx #999999;
		display: flex;
		padding: 15upx 0;
	}
	.detail-title{
		width: 200upx;
		font-size: 30upx;
		color: #808080;
		
	}
	.detail-content{
		width: 490upx;
		font-size: 30upx;
		flex:1
	}
	

</style>
