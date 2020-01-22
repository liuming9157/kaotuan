<template>
	<view>
		<swiper :indicator-dots="true" :autoplay="true" :interval="3000" :duration="1000">
			<swiper-item v-for="(item,index) in swiper" :key='index'>
				<view class="swiper-item">
					<image class="swiper-image" :src="item.image"></image>
				</view>
			</swiper-item>
		</swiper>
		<title title='SAT考团'></title>
		<view v-for="(item,index) in kaotuanList" :key='index'>
			<uni-card mode='style' :title='item.title' note='true' :extra='item.desc' :thumbnail='item.image' @click='goDetail(item.id)'>
				<template v-slot:footer>
					<view class="uni-card-footer">
						<view class="uni-card-text">
							{{item.time}}
						</view>
						<view class="uni-card-text">
							{{item.insurance}}
						</view>
						<view class="uni-card-text">
							查看详情>
						</view>
					</view>
				</template>
			</uni-card>
		</view>

	</view>
</template>

<script>
	import {
		uniCard
	} from '@dcloudio/uni-ui';
	import title from '../../components/title.vue';
	//import mock from '../../mock/mock.js';
	export default {
		components: {
			uniCard,
			title
		},
		data() {
			return {
				swiper: [],
				kaotuanList: [],
			}
		},
		onLoad() {
			let that = this;
			uni.request({
				url: 'https://promotion.mzsat.cn/api/kaotuan/index',
				success(res) {
					getApp().globalData.swiper = res.data.data.swiper;
					getApp().globalData.kaotuanList = res.data.data.kaotuanList;
					that.swiper = getApp().globalData.swiper;
					that.kaotuanList = getApp().globalData.kaotuanList;
				}
			})


		},
		methods: {
			goDetail(id) {
				uni.navigateTo({
					url: `../detail/detail?id=${id}`
				})
			}
		},
		onShow() {
			// #ifdef MP-BAIDU
			swan.setPageInfo({
				title: '明志SAT/ACT考团陪你一起过大年！-明志教育',
				keywords: '明志,明志教育,考团,SAT,ACT,韩国考团,日本考团,新加坡考团,美国考团,洛杉矶考团,香港考团,吉隆坡考团',
				description: '明志教育专业SAT、ACT考团，美国洛杉矶考团，日本东京考团，韩国首尔考团，香港考团，新加坡考团，马来西亚吉隆坡考团，入驻四星级以上酒店，小考场舒适轻松，全程教师送考',
				articleTitle: '2020年明志考团给您最专业的服务！',
				releaseDate: '2019-01-02 12:01:30',
				image: [
					'https://promotion.mzsat.cn/uploads/1.png',
					'https://promotion.mzsat.cn/uploads/2.png',
					'https://promotion.mzsat.cn/uploads/3.png'
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
					console.log('setPageInfo success');
				},
				fail: err => {
					console.log('setPageInfo fail', err);
				}
			})
			// #endif


		},
		onShareAppMessage() {

		}
	}
</script>

<style>
	.swiper-image {
		width: 750upx;
		height: 350upx;
	}

	.uni-card-image {
		width: 100%;
	}

	.uni-card-footer {
		display: flex;
		justify-content: space-between;
	}

	.uni-card-text {
		font-size: 24upx;
	}
</style>
