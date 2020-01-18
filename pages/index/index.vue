<template>
	<view>
		<swiper :indicator-dots="true" :autoplay="true" :interval="3000" :duration="1000">
			<swiper-item v-for="(item,index) in swiper" :key='index'>
				<view class="swiper-item" >
					<image class="swiper-image" :src="item.image"></image>
				</view>
			</swiper-item>
		</swiper>
		<title title='SAT考团'></title>
		<view v-for="(item,index) in kaotuanList" :key='index'>
			<uni-card  mode='style' :title='item.title' note='true' :extra='item.desc' :thumbnail='item.image' @click='goDetail(item.id)'>
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
	import {uniCard} from '@dcloudio/uni-ui';
	import title from '../../components/title.vue';
	//import mock from '../../mock/mock.js';
	export default {
		components:{uniCard,title},
		data() {
			return {
				swiper:[],
				kaotuanList:[],
			}
		},
		onLoad() {
			let that=this;
			uni.request({
				url:'https://promotion.mzsat.cn/api/kaotuan/index',
				success(res) {
					getApp().globalData.swiper=res.data.data.swiper;
					getApp().globalData.kaotuanList=res.data.data.kaotuanList;
					that.swiper=getApp().globalData.swiper;
					that.kaotuanList=getApp().globalData.kaotuanList;
				}
			})
			
					
		},
		methods: {
			goDetail(id){
				uni.navigateTo({
					url:`../detail/detail?id=${id}`
				})
			}
		}
	}
</script>

<style>
	.swiper-image{
		width: 750upx;
		height:100% ;
	}
	.uni-card-image{
		width: 100%;
	}
	.uni-card-footer{
		display: flex;
		justify-content: space-between;
	}
	.uni-card-text{
		font-size: 24upx;
	}
	
</style>
