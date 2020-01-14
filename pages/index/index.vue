<template>
	<view>
		<swiper :indicator-dots="true" :autoplay="true" :interval="3000" :duration="1000">
			<swiper-item v-for="(item,index) in swiper" :key='index'>
				<view class="swiper-item" >
					<image :src="item.image"></image>
				</view>
			</swiper-item>
		</swiper>
		<title title='SAT考团'></title>
		<view v-for="(item,index) in kaotuanList" :key='index'>
			<uni-card  mode='style' :title='item.title' note='true' :extra='item.desc' :thumbnail='item.image' >
			<template v-slot:footer>
				<view class="uni-card-footer">
					<view class="uni-card-text" v-for='(childItem,childIndex) in item.note' :key='childIndex'>
						{{childItem}}
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
	import mock from '../../mock/mock.js';
	export default {
		components:{uniCard,title},
		data() {
			return {
				swiper:[],
				kaotuanList:[],
			}
		},
		onLoad() {
			this.swiper=mock.swiper;
			this.kaotuanList=mock.kaotuanList;
		},
		methods: {

		}
	}
</script>

<style>
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
