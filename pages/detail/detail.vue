<template>
	<view>
		<image class="head-image" :src="detail.image" mode=""></image>
		<title2></title2>
		<view class="detail">
			<view class="detail-title">时长</view>
			<text class="detail-content">{{detail.time}}</text>
		</view>
		<view class="detail">
			<view class="detail-title">参考价格</view>
			<text class="detail-content">￥{{detail.price}}(根据机票价格上下浮动)</text>
		</view>
		<view class="detail">
			<view class="detail-title">入驻酒店</view>
			<text class="detail-content">{{detail.hotel}}</text>
		</view>
		<view class="detail">
			<view class="detail-title">参考航班</view>
			<text class="detail-content">{{detail.flight}}</text>
		</view>
		<view class="detail">
			<view class="detail-title">推荐考场</view>
			<text class="detail-content">{{detail.center}} </text>
		</view>
		<view class="detail">
			<view class="detail-title">保险种类</view>
			<text class="detail-content">{{detail.insurance}}</text>
		</view>
		<view class="detail">
			<view class="detail-title">额外服务</view>
			<text class="detail-content">{{detail.extra}}</text>
		</view>
		<view class="detail">
			<view class="detail-title">考团特色</view>
			<text class="detail-content">{{detail.feature}}</text>
		</view>
		<!-- <title2 title='日程安排'></title2>
		<title2 title='签证协助'></title2>
		<title2 title='费用说明'></title2>
		<title2 title='其他事项'></title2>
		<title2 title='报名方式'></title2> -->
		<foot></foot>
	</view>
</template>

<script>
	import title2 from '../../components/title2.vue'
	import foot from '../../components/foot.vue'
	//import mock from '../../mock/mock.js'
	export default {
		components: {
			title2,
			foot
		},
		data() {
			return {
				detail: {}
			}
		},
		onLoad(options) {
			let id=options.id;
			this.detail = getApp().globalData.kaotuanList.find(item => item.id==id);
			console.log(this.detail)
		},
		methods: {

		}
	}
</script>

<style>
	.head-image {
		width: 750upx;
		height: 350upx;
	}

	.detail {
		margin: 0 30upx;
		width: 690upx;
		border-bottom: dashed 1upx #999999;
		display: flex;
		padding: 15upx 0;
	}

	.detail-title {
		width: 200upx;
		font-size: 30upx;
		color: #808080;

	}

	.detail-content {
		width: 490upx;
		font-size: 30upx;
		flex: 1
	}
</style>
