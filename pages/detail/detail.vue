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
		<title2 title='日程安排'></title2>
		<view class="agenda" v-for="(item,index) in detail.agenda" :key='index'>
			{{item}}
		</view>
		<title2 title='签证协助'></title2>
		<view class="agenda" v-for="(item,index) in detail.visa" :key='index'>
			{{item}}
		</view>
		<title2 title='费用说明'></title2>
		<view class="agenda" v-for="(item,index) in detail.fee" :key='index'>
			{{item}}
		</view>
		<title2 title='其他事项'></title2>
		<view class="agenda" v-for="(item,index) in detail.others" :key='index'>
			{{item}}
		</view>
		<title2 title='报名方式'>
		</title2>
		<view class="agenda">
			可直接点击底部报名按钮进行报名
		</view>
		<image v-if="detail.images.length>0" class="detail-images" :src="item" mode="" v-for="(item,index) in detail.images" :key='index'></image>
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
			let id = options.id;
			let detail={};
			detail = getApp().globalData.kaotuanList.find(item => item.id == id);
			detail.agenda=detail.agenda.split('|');
			detail.visa=detail.visa.split('|');
			detail.fee=detail.fee.split('|');
			detail.others=detail.others.split('|');
			this.detail=detail;
			console.log(this.detail)
		},
		methods: {

		},

		onShow() {
			// #ifdef MP-BAIDU
			swan.setPageInfo({
				title: this.detail.title + '-明志教育',
				keywords: '明志,明志教育,考团,SAT,ACT,韩国考团,日本考团,新加坡考团,美国考团,洛杉矶考团,香港考团,吉隆坡考团',
				description: '明志教育专业SAT、ACT考团，美国洛杉矶考团，日本东京考团，韩国首尔考团，香港考团，新加坡考团，马来西亚吉隆坡考团，入驻四星级以上酒店，小考场舒适轻松，全程教师送考',
				articleTitle: '2020年明志考团给您最专业的服务！',
				releaseDate: '2019-01-02 12:01:30',
				image: [
					'https://promotion.mzsat.cn/uploads/sin.jpeg',
					'https://promotion.mzsat.cn/uploads/tokyo.jpeg',
					'https://promotion.mzsat.cn/uploads/kl.jpeg'
				],
				visit: {
					pv: '1000',
					uv: '100',
					sessionDuration: '130'
				},
				likes: '75',
				comments: '13',
				collects: '23',
				shares: '8',
				followers: '35',
				success: res => {
					console.log(this.detail.title);
				},
				fail: err => {
					console.log('setPageInfo fail', err);
				}
			})
			// #endif


		},

		onShareAppMessage() {
			return{
				title:`明志${this.detail.title}欢迎您`,
				imageUrl:`${this.detail.image}`,
				desc:'让你考高分的考团'
			}

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
		font-size:15upx 30upx;
		color: #808080;

	}

	.detail-content {
		width: 490upx;
		font-size: 30upx;
		flex: 1
	}

	.agenda {
		margin: 30upx;
		width: 690upx;
		font-size: 30upx;
	}
	.detail-images{
		margin: 30upx;
		width: 690upx;
		height: 500upx;
	}
</style>
